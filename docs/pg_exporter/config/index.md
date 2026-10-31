# Configuration

LLMS index: [llms.txt](/llms.txt)

---

Each business metric in `pg_exporter` comes from a YAML **collector** definition.
A collector contains one SQL query and its execution conditions: version, role, tags, and predicates.
It also controls caching and timeout. This page describes all collector settings.

Use one YAML file, such as the default `pg_exporter.yml`, or a directory of YAML files.
The official default bundle combines 58 YAML files from [`config/`](https://github.com/pgsty/pg_exporter/tree/main/config) in lexicographic order: 57 collector files and one configuration reference. It defines 96 branches, 59 namespaces, and 460 distinct metric names, including disabled collectors and two unexpanded histogram definitions.

## Configuration Loading

PG Exporter searches for configuration in the following order:

1. Command-line argument: `--config=/path/to/config`
2. Environment variable: `PG_EXPORTER_CONFIG=/path/to/config`
3. Current directory: `./pg_exporter.yml`
4. System config file: `/etc/pg_exporter.yml`
5. System config directory: `/etc/pg_exporter/`

Directory mode details:

- The exporter loads only `.yml` / `.yaml` files in the specified directory. It does not read subdirectories.
- It merges files in lexicographic order. A later file overrides an earlier collector definition with the same top-level name.
- If the directory contains YAML files but none can be parsed, the exporter returns an error.
- If only some files fail, the exporter logs their errors and loads the valid files. Directory loading is not all-or-nothing.
- An empty individual YAML file is a valid empty configuration; reloading it clears the collectors. A reload that fails parsing preserves the previous plan and caches.

## Collector Structure

Define each collector as a top-level YAML object with a unique name and the required properties:

```yaml
collector_branch_name:           # Unique identifier for this collector
  name: metric_namespace         # Metric prefix (defaults to branch name)
  desc: "Collector description"  # Human-readable description
  query: |                       # SQL query to execute
    SELECT column1, column2
    FROM table

  # Execution Control
  ttl: 10                        # Cache time-to-live in seconds
  timeout: 0.1                   # Query timeout in seconds
  fatal: false                   # If true, failure fails entire scrape
  skip: false                    # If true, collector is disabled

  # Version Compatibility
  min_version: 100000            # Minimum PostgreSQL version (inclusive)
  max_version: 999999            # Maximum PostgreSQL version (exclusive)

  # Execution Tags
  tags: [cluster, primary]       # Conditions for execution

  # Predicate Queries (optional)
  predicate_queries:
    - name: "check_function"
      predicate_query: |
        SELECT EXISTS (...)

  # Metric Definitions
  metrics:
    - column_name:
        usage: GAUGE             # GAUGE, COUNTER, HISTOGRAM, LABEL, or DISCARD
        rename: metric_name      # Optional: rename the metric
        description: "Help text" # Metric description
        default: 0               # Default value if NULL
        scale: 1000              # Scale factor for the value
        bucket: [1, 10, 100]     # Bucket upper bounds for HISTOGRAM columns (strictly increasing, +Inf appended)
```

Validation rules:

- Each entry in `metrics` must define exactly one column mapping.
- Each collector must expose at least one `GAUGE`, `COUNTER`, or `HISTOGRAM` column.
- `usage` accepts only `GAUGE`, `COUNTER`, `HISTOGRAM`, `LABEL`, or `DISCARD`.
- A `HISTOGRAM` column must define `bucket` with finite upper bounds in strictly increasing order. The exporter appends the `+Inf` bucket.
- Metric and label names must follow Prometheus naming rules. The exporter checks them during loading and rejects invalid configurations immediately.
- Constant labels cannot conflict with query labels or built-in dynamic labels such as `datname` and `query`. The exporter checks this during loading. If any collector uses `HISTOGRAM`, `le` is reserved and cannot be a constant label.
- The SQL result must include every `LABEL` column. From `v1.4.1`, a missing label column fails the entire collector scrape. The collector does not emit an empty label or keep stale results. Other non-fatal collectors continue.
- In one-line inline `metrics` definitions, enclose `description` values in double quotes to prevent YAML ambiguity.

## Core Configuration Elements

### Collector Branch Name

The top-level key uniquely identifies a collector across the entire configuration:

```yaml
pg_stat_database:  # Must be unique
  name: pg_db      # Actual metric namespace
```

### Query Definition

The SQL query that retrieves metrics:

```yaml
query: |
  SELECT 
    datname,
    numbackends,
    xact_commit,
    xact_rollback,
    blks_read,
    blks_hit
  FROM pg_stat_database
  WHERE datname NOT IN ('template0', 'template1')
```

### Metric Types

Each column in the query result must be mapped to a metric type:

| Usage       | Description                                                      | Example                      |
|-------------|------------------------------------------------------------------|------------------------------|
| `GAUGE`     | Instantaneous value that can go up or down                       | Current connections          |
| `COUNTER`   | Cumulative value that only increases                             | Total transactions           |
| `HISTOGRAM` | Snapshot histogram deriving `_bucket` / `_count` / `_sum` series | Transaction age distribution |
| `LABEL`     | Use as a Prometheus label                                        | Database name                |
| `DISCARD`   | Ignore this column                                               | Internal values              |

### Histogram Columns (HISTOGRAM)

Version `v1.4.0` adds the `HISTOGRAM` column type.
Each query result row is one observation. The exporter groups observations by label to produce a classic Prometheus histogram snapshot.
It generates three series families: `<name>_bucket`, `<name>_count`, and `<name>_sum`.
The bucket series includes the `le` label and the `+Inf` bucket:

```yaml
pg_xact_age:
  name: pg_xact_age
  desc: "Open transaction age distribution histogram"
  query: |
    SELECT datname,
           greatest(0, extract(epoch FROM now() - xact_start)) AS seconds
    FROM pg_stat_activity
    WHERE pid <> pg_backend_pid() AND backend_type = 'client backend'
      AND datname IS NOT NULL AND xact_start IS NOT NULL;
  ttl: 10
  tags: [cluster]
  metrics:
    - datname: {usage: LABEL, description: "Database name"}
    - seconds:
        usage: HISTOGRAM
        bucket: [1, 3, 10, 30, 100, 300, 1000, 3000, 10000, 30000, 100000]
        description: "Open transaction age snapshot in seconds"
```

Usage notes:

- This is a **snapshot** histogram. Each scrape rebuilds the full distribution. Bucket counts can increase or decrease, as gauges do. Use `histogram_quantile()` directly. Do not use `rate()` / `increase()` on `_count` / `_sum`; these operations have no meaning for a snapshot.
- By default, the exporter ignores SQL `NULL` observations. If you set `default`, it counts them with that value.
- The exporter applies `scale` before it assigns a bucket. As with scalar columns, `scale` does not apply to timestamps or booleans.
- For a reference implementation, see the default [`pg_xact_age`](https://github.com/pgsty/pg_exporter/blob/main/config/0450-pg_xact_age.yml) collector.

### Cache Control (TTL)

The `ttl` parameter controls result caching:

```yaml
# Fast queries - minimal caching
pg_stat_activity:
  ttl: 1  # Cache for 1 second

# Expensive queries - longer caching
pg_table_bloat:
  ttl: 3600  # Cache for 1 hour
```

Best practices:
- Set TTL less than your scrape interval
- Use longer TTL for expensive queries
- TTL of 0 disables caching
- Collector and predicate TTLs must be finite, nonnegative, and fit in Go `time.Duration`. v1.5.0 rejects NaN, infinities, and excessively large values.

### Timeout Control

Prevent queries from running too long:

```yaml
timeout: 0.1   # 100ms default
timeout: 1.0   # 1 second for complex queries
timeout: -1    # Disable timeout (not recommended)
```

Omitting `timeout` or setting it to `0` selects the 100ms default; a finite negative value disables the query deadline. v1.5.0 rejects NaN, infinities, and positive timeouts that would overflow. The timeout covers the predicates and main query together.

### Version Compatibility

Control which PostgreSQL versions can run this collector:

```yaml
min_version: 100000  # PostgreSQL 10.0+
max_version: 140000  # Below PostgreSQL 14.0
```

Version numbers follow PostgreSQL `server_version_num` rules:

- `100000` = 10.0
- `130002` = 13.2
- `160001` = 16.1
- `190000` = 19.0
- `90600` = 9.6, relevant when using the legacy config bundle

## Execution Model

Use the execution model to find why a metric is missing:

1. **Planning** runs on the first scrape, configuration reload, or metadata change. It checks each branch's target type (PostgreSQL / pgBouncer), `min_version` / `max_version`, `tags`, and `skip` setting. Tags must match the server role and exporter tags. A branch that fails any check is not installed on the target. Use `curl localhost:9630/explain` to see each decision.
2. **Scraping** runs on each `/metrics` request. An installed collector returns cached results while they are within `ttl`. Otherwise, it first runs `predicate_queries`. A false result skips the collector for this round and increments `pg_exporter_query_scrape_predicate_skip_count`. If all predicates pass, the main query runs with `timeout`. The exporter converts the results to metrics and caches them.
3. **Failure semantics**: a normal collector failure affects only that collector. It increments `pg_exporter_query_scrape_error_count` and omits its metric group for this round. A failed collector with `fatal: true` fails the entire server scrape.

In v1.5.0, a successful precheck compares the username, schemas, and extensions. A change triggers replanning; adding or removing a schema or extension does not require a manual reload. Unchanged sets preserve plans and caches; replanning resets query caches and statistics.

## Tag System

Tags control when and where collectors execute:

### Built-in Tags

| Tag                   | Description                         |
|-----------------------|-------------------------------------|
| `cluster`             | Execute once per PostgreSQL cluster |
| `primary` / `master`  | Only on primary servers             |
| `standby` / `replica` | Only on replica servers             |
| `pgbouncer`           | Only for pgBouncer connections      |

### Prefixed Tags

| Prefix       | Example                        | Description                 |
|--------------|--------------------------------|-----------------------------|
| `dbname:`    | `dbname:postgres`              | Only on specific database   |
| `username:`  | `username:monitor`             | Only with specific user     |
| `extension:` | `extension:pg_stat_statements` | Only if extension installed |
| `schema:`    | `schema:public`                | Only if schema exists       |
| `not:`       | `not:slow`                     | NOT when exporter has tag   |

### Custom Tags

Pass custom tags to the exporter:

```bash
pg_exporter --tag="production,critical"
```

Then use the tags in the configuration:

```yaml
expensive_metrics:
  tags: [critical]  # Only runs with 'critical' tag
```

## Predicate Queries

Run conditional checks before the main query:

```yaml
predicate_queries:
  - name: "Check pg_stat_statements"
    predicate_query: |
      SELECT EXISTS (
        SELECT 1 FROM pg_extension 
        WHERE extname = 'pg_stat_statements'
      )
```

The main query only executes if all predicates return `true`.

## Metric Definition

### Basic Definition

```yaml
metrics:
  - numbackends:
      usage: GAUGE
      description: "Number of backends connected"
```

### Advanced Options

```yaml
metrics:
  - checkpoint_write_time:
      usage: COUNTER
      rename: write_time        # Rename metric
      scale: 0.001              # Convert ms to seconds
      default: 0                # Use 0 if NULL
      description: "Checkpoint write time in seconds"
```

## Collector Organization

PG Exporter ships with pre-organized collectors:

| Range | Category      | Description                     |
|-------|---------------|---------------------------------|
| 0xx   | Documentation | Examples and documentation      |
| 1xx   | Basic         | Server info, settings, metadata |
| 2xx   | Replication   | Replication, slots, receivers   |
| 3xx   | Persistence   | I/O, checkpoints, WAL           |
| 4xx   | Activity      | Connections, locks, queries     |
| 5xx   | Progress      | Vacuum, index creation progress |
| 6xx   | Database      | Per-database statistics         |
| 7xx   | Objects       | Tables, indexes, functions      |
| 8xx   | Optional      | Expensive/optional metrics      |
| 9xx   | pgBouncer     | Connection pooler metrics       |
| 10xx+ | Extensions    | Extension-specific metrics      |
{.full-width}

## Real-World Examples

### Simple Gauge Collector

```yaml
pg_connections:
  desc: "Current database connections"
  query: |
    SELECT 
      count(*) as total,
      count(*) FILTER (WHERE state = 'active') as active,
      count(*) FILTER (WHERE state = 'idle') as idle,
      count(*) FILTER (WHERE state = 'idle in transaction') as idle_in_transaction
    FROM pg_stat_activity
    WHERE pid != pg_backend_pid()
  ttl: 1
  metrics:
    - total: {usage: GAUGE, description: "Total connections"}
    - active: {usage: GAUGE, description: "Active connections"}
    - idle: {usage: GAUGE, description: "Idle connections"}
    - idle_in_transaction: {usage: GAUGE, description: "Idle in transaction"}
```

### Counter with Labels

```yaml
pg_table_stats:
  desc: "Table statistics"
  query: |
    SELECT 
      schemaname,
      relname AS tablename,
      n_tup_ins,
      n_tup_upd,
      n_tup_del,
      n_live_tup,
      n_dead_tup
    FROM pg_stat_user_tables
  ttl: 10
  metrics:
    - schemaname: {usage: LABEL}
    - tablename: {usage: LABEL}
    - n_tup_ins: {usage: COUNTER, description: "Tuples inserted"}
    - n_tup_upd: {usage: COUNTER, description: "Tuples updated"}
    - n_tup_del: {usage: COUNTER, description: "Tuples deleted"}
    - n_live_tup: {usage: GAUGE, description: "Live tuples"}
    - n_dead_tup: {usage: GAUGE, description: "Dead tuples"}
```

### Version-Specific Collector

```yaml
pg_wal_stats:
  desc: "WAL statistics (PG 14–17)"
  min_version: 140000
  max_version: 180000
  query: |
    SELECT 
      wal_records,
      wal_bytes,
      wal_buffers_full,
      wal_write_time,
      wal_sync_time
    FROM pg_stat_wal
  ttl: 10
  tags: [cluster]
  metrics:
    - wal_records: {usage: COUNTER}
    - wal_bytes: {usage: COUNTER}
    - wal_buffers_full: {usage: COUNTER}
    - wal_write_time: {usage: COUNTER, scale: 0.001}
    - wal_sync_time: {usage: COUNTER, scale: 0.001}
```

### Extension-Dependent Collector

```yaml
pg_stat_statements_metrics:
  desc: "Query performance statistics"
  tags: [extension:pg_stat_statements]
  query: |
    SELECT 
      sum(calls) as total_calls,
      sum(total_exec_time) as total_time,
      sum(mean_exec_time * calls) / sum(calls) as mean_time
    FROM pg_stat_statements
  ttl: 60
  metrics:
    - total_calls: {usage: COUNTER}
    - total_time: {usage: COUNTER, scale: 0.001}
    - mean_time: {usage: GAUGE, scale: 0.001}
```

## Custom Collectors

### Creating Your Own Metrics

1. Create a new YAML file in your config directory:

```yaml
# /etc/pg_exporter/custom_metrics.yml
app_metrics:
  desc: "Application-specific metrics"
  query: |
    SELECT 
      (SELECT count(*) FROM users WHERE active = true) as active_users,
      (SELECT count(*) FROM orders WHERE created_at > NOW() - '1 hour'::interval) as recent_orders,
      (SELECT avg(processing_time) FROM jobs WHERE completed_at > NOW() - '5 minutes'::interval) as avg_job_time
  ttl: 30
  metrics:
    - active_users: {usage: GAUGE, description: "Currently active users"}
    - recent_orders: {usage: GAUGE, description: "Orders in last hour"}
    - avg_job_time: {usage: GAUGE, description: "Average job processing time"}
```

2. Test your collector:

```bash
pg_exporter --explain --config=/etc/pg_exporter/
```

### Conditional Metrics

Use predicate queries for conditional metrics:

```yaml
partition_metrics:
  desc: "Partitioned table metrics"
  predicate_queries:
    - name: "Check if partitioning is used"
      predicate_query: |
        SELECT EXISTS (
          SELECT 1 FROM pg_class 
          WHERE relkind = 'p' LIMIT 1
        )
  query: |
    SELECT 
      parent.relname as parent_table,
      count(*) as partition_count,
      sum(pg_relation_size(child.oid)) as total_size
    FROM pg_inherits
    JOIN pg_class parent ON parent.oid = pg_inherits.inhparent
    JOIN pg_class child ON child.oid = pg_inherits.inhrelid
    WHERE parent.relkind = 'p'
    GROUP BY parent.relname
  ttl: 300
  metrics:
    - parent_table: {usage: LABEL}
    - partition_count: {usage: GAUGE}
    - total_size: {usage: GAUGE}
```

## Performance Optimization

### Query Optimization Tips

1. **Use appropriate TTL values**:
    - Fast queries: 1-10 seconds
    - Medium queries: 10-60 seconds
    - Expensive queries: 300-3600 seconds

2. **Set realistic timeouts**:
    - Default: 100ms
    - Complex queries: 500ms-1s
    - Never disable timeout in production

3. **Use cluster-level tags**:
   ```yaml
   tags: [cluster]  # Run once per cluster, not per database
   ```

4. **Disable expensive collectors**:
   ```yaml
   pg_table_bloat:
     skip: true  # Disable if not needed
   ```

### Monitoring Collector Performance

Check collector execution statistics:

```bash
# View collector statistics (hit / error / skip counters and durations)
curl http://localhost:9630/stat

# Per-collector duration and error counters, by datname/query
curl -s http://localhost:9630/metrics | grep -E 'pg_exporter_query_scrape_(duration|error_count)'
```

## Metric and Alert Upgrade Checks {#metric-compatibility}

When upgrading the exporter, merge and deploy the matching collector YAML. Replacing only the binary does not apply SQL, label, or state-code corrections. For instances managed by Pigsty, also verify that the deployed configuration contains these definitions. After a PostgreSQL major-version upgrade, check the newly selected collector branches.

- **Exporter v1.4.1 → v1.5.0:** bundled SQL metric names, types, and units stay unchanged, but `pg_sub_*` adds `datname` and `pg_recv_state` corrects its state codes. Review joins/aggregations for subscriptions with the same name in different databases, and Grafana value mappings.
- **PG18 → PG19:** existing metrics are not removed or renamed, but `pg_sub_sync_error_count` broadens to table plus sequence synchronization errors, and `pg_subrel_count` includes sequences. `pg_sub_has_worker` distinguishes a subscription row from a running apply worker; the presence of `pg_sub_id` alone is insufficient.
- **Crossing PG17 / PG18:** some `pg_bgwriter_*` metrics need to move to `pg_checkpointer_*` or backend-filtered I/O metrics. From PG18 onward, `pg_wal_write`, `pg_wal_sync`, `pg_wal_write_time`, and `pg_wal_sync_time` need to move to `pg_io_*{object="wal"}`, with corresponding label aggregation changes. See the [metric-by-metric migration table](https://exp.pgsty.com/compatibility/#older-postgresql-metrics).

See the [v1.5.0 release notes](/docs/pg_exporter/release/#v150-metric-compatibility) and [PG19 metric table](https://exp.pgsty.com/compatibility/#postgresql-19-metrics) for the full changes. PG19 support first shipped in v1.3.0, and acceptance evidence refers to 19 RC1; these notes do not establish runtime validation of every dashboard.

Before and after deployment, inspect `/metrics`, `/explain`, `/stat`, `pg_exporter_query_scrape_error_count`, and the logs. Evaluate the actual dashboard, recording-rule, and alert expressions, checking returned series, labels, units, and state mappings. Use `promtool check rules` for syntax and `promtool test rules` for both normal and missing-series input. HTTP 200, `up == 1`, or `pg_up == 1` does not prove that every expected metric exists; an empty vector is not a healthy zero.

For PG19 targets expected to expose the bundled WAL collector, use this per-target missing-metric check with `for: 5m` in the alert rule:

```promql
(pg_up{job="pg19"} == 1)
unless on (job, instance)
pg_wal_bytes{job="pg19"}
```

`job="pg19"` is an example: replace it with the actual target selector and include any additional identity labels in matching. Monitor `up` and `pg_up` failures separately. Scope absence checks by version, primary/replica role, and expected objects; for example, a primary should not require `pg_recovery_state_*`. Do not mask missing input with an unconditional `or vector(0)`. Fleet-wide `absent(metric)` also misses one target's disappearance while other targets still emit data. See the [complete missing-metric rule](https://exp.pgsty.com/compatibility/#missing-metric-alerts).

## Troubleshooting Configuration

### Validate Configuration

```bash
# Dry run - shows parsed configuration
pg_exporter --dry-run

# Explain - shows planned queries
pg_exporter --explain
```

### Common Issues

| Problem           | Solution                                             |
|-------------------|------------------------------------------------------|
| Metrics missing   | Check tags and version compatibility                 |
| Slow scrapes      | Increase TTL, add timeout, disable expensive queries |
| High memory usage | Reduce result set size, use LIMIT                    |
| Permission errors | Verify query permissions for monitoring user         |

### Debug Logging

Enable debug logging to troubleshoot:

```bash
pg_exporter --log.level=debug
```
