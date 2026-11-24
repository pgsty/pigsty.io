# Metrics

> VAULT labels, 14 recording rules, and raw OpenBao metrics used by the monitoring dashboard.

---

LLMS index: [llms.txt](/llms.txt)

---

This page distinguishes **raw OpenBao telemetry** from **recording metrics evaluated by vmalert**. [`files/victoria/rules/vault.yml`](https://github.com/pgsty/pigsty/blob/main/files/victoria/rules/vault.yml) defines **14 recording rules**. Their results are not available from `/v1/sys/metrics`.

Raw metrics vary with OpenBao version, member role, and runtime state. The metrics below are those used by Vault Overview and its rules, not the full telemetry output. See [OpenBao telemetry metrics](https://openbao.org/docs/internals/telemetry/metrics/) for the complete list.


--------

## Labels

VAULT metrics use these labels:

| Label | Meaning | Example |
|:---|:---|:---|
| `job` | Scrape job | `vault` |
| `cls` | Cluster name, [`vault_cluster`](/docs/vault/param#vault_cluster) | `vault` |
| `ins` | Instance name, `<vault_cluster>-<vault_seq>` | `vault-1` |
| `ip` | Member address | `10.10.10.11` |
| `instance` | Scrape address | `10.10.10.11:8200` |
{.full-width}

Recording rules use `vault:ins:*` for instances and `vault:cls:*` for clusters.


--------

## Raw Metric Behavior

OpenBao retains Vault's `vault_` prefix and exports Prometheus metrics through go-metrics. Note:

- **Counters lack a `_total` suffix**, for example `vault_raft_apply` and `vault_token_creation`.
- **Summaries use milliseconds**: quantiles and `_sum` for `vault_core_handle_request` are in milliseconds. Recording rules divide average latency by 1,000 to convert it to seconds.
- **Some counters appear only after their first event**, such as `vault_audit_log_request_failure`. Rules use `increase_pure` to count increases from zero.
- **Only the leader reports Autopilot and follower metrics**. They persist for 24 hours after it steps down (`prometheus_retention_time`). Rules use only the current active member's values and map `node_id` / `peer_id` back to `ins`.
- **Usage gauges** (tokens, KV secrets, identity entities) are computed every ten minutes (`usage_gauge_period`).


--------

## Recording Rules

Expressions preserve source semantics. `ins` and `cls` indicate instance and cluster aggregation; actual retained labels follow the `by` and vector-matching clauses.

| Recording Metric | Description | Expression |
|:---|:---|:---|
| `vault:ins:req_rps` | Non-login requests per second per instance | `rate(vault_core_handle_request_count{job="vault"}[1m])` |
| `vault:ins:login_rps` | Login requests per second per instance | `rate(vault_core_handle_login_request_count{job="vault"}[1m])` |
| `vault:ins:req_rt_avg_5m` | Five-minute mean instance request latency, in seconds | `rate(vault_core_handle_request_sum{job="vault"}[5m]) / rate(vault_core_handle_request_count{job="vault"}[5m]) / 1000` |
| `vault:cls:req_rt_avg_5m` | Five-minute mean cluster request latency, weighted by request volume, in seconds | `sum by (job,cls) (rate(vault_core_handle_request_sum{job="vault"}[5m])) / sum by (job,cls) (rate(vault_core_handle_request_count{job="vault"}[5m])) / 1000` |
| `vault:cls:unsealed` | Number of unsealed cluster members | `sum by (job,cls) (vault_core_unsealed{job="vault"}) or (0 * count by (job,cls) (up{job="vault"}))` |
| `vault:cls:active` | Number of active cluster members; normally exactly one | `sum by (job,cls) (vault_core_active{job="vault"}) or (0 * count by (job,cls) (up{job="vault"}))` |
| `vault:cls:autopilot_healthy` | Cluster health as reported by the active member | `max by (job,cls) (vault_autopilot_healthy{job="vault"} and on(ins) (vault_core_active{job="vault"} == 1))` |
| `vault:cls:failure_tolerance` | Cluster fault tolerance as reported by the active member | `max by (job,cls) (vault_autopilot_failure_tolerance{job="vault"} and on(ins) (vault_core_active{job="vault"} == 1))` |
| `vault:ins:autopilot_healthy` | Member health as reported by the active member | `max by (job,cls,ins) (label_replace(vault_autopilot_node_healthy{job="vault"} and on(ins) (vault_core_active{job="vault"} == 1), "ins", "$1", "node_id", "(.+)"))` |
| `vault:ins:raft_lag` | Number of log entries by which a follower's applied index trails the leader | `max by (job,cls,ins) (label_replace(vault_raft_storage_follower_applied_index_delta{job="vault"} and on(ins) (vault_core_active{job="vault"} == 1), "ins", "$1", "peer_id", "(.+)"))` |
| `vault:ins:raft_heartbeat_ms` | Milliseconds since the follower's last heartbeat | `max by (job,cls,ins) (label_replace(vault_raft_storage_follower_last_heartbeat_ms{job="vault"} and on(ins) (vault_core_active{job="vault"} == 1), "ins", "$1", "peer_id", "(.+)"))` |
| `vault:ins:audit_failure_5m` | Audit write failures per instance over five minutes | `sum by (job,cls,ins,ip,instance) (increase_pure({__name__=~"vault_audit_log_(request\|response)_failure",job="vault"}[5m]))` |
| `vault:ins:backup_time` | Unix timestamp of the instance's latest successful snapshot | `max by (ip) (vault_backup_last_success_timestamp_seconds) + on(ip) group_right() vault_up * 0` |
| `vault:ins:backup_size` | Size of the instance's latest successful snapshot, in bytes | `max by (ip) (vault_backup_size_bytes) + on(ip) group_right() vault_up * 0` |
{.full-width .wide .expand}

With no requests in a time window, average latency is `0/0 = NaN`, which is discarded and appears as no data.

`vault_up` comes from INFRA's [shared aliveness rules](/docs/infra/metric#shared-liveness-recording-rules), based on `up{job="vault"}`. It is not counted among the module's rules. It indicates scrape success, not whether a member is unsealed or serving requests.


--------

## Common Raw Metrics

**State and requests**

| Metric | Type | Description |
|:---|:---|:---|
| `vault_core_unsealed` | Gauge | Whether the member is unsealed; `1` means unsealed |
| `vault_core_active` | Gauge | Whether the member is active; `1` means active |
| `vault_core_handle_request` | Summary (ms) | Non-login request duration, including quantiles, `_sum`, and `_count` |
| `vault_core_handle_login_request` | Summary (ms) | Login request duration |
| `vault_ha_rpc_client_forward_count` / `_errors` | Summary / Counter | Standby-to-active request forwarding count and errors |
| `vault_ha_rpc_client_echo_count` / `_errors` | Summary / Counter | Standby-to-active heartbeat count and errors |
{.full-width}

**Raft and Autopilot**

| Metric | Type | Description |
|:---|:---|:---|
| `vault_raft_storage_stats_commit_index` | Gauge | Member Raft commit index |
| `vault_raft_storage_stats_applied_index` | Gauge | Member Raft applied index |
| `vault_raft_storage_stats_fsm_pending` | Gauge | Log entries pending application to the state machine |
| `vault_raft_storage_follower_applied_index_delta` | Gauge | Follower lag in log entries; reported only by the leader, with `peer_id` |
| `vault_raft_storage_follower_last_heartbeat_ms` | Gauge | Milliseconds since follower heartbeat; leader only, with `peer_id` |
| `vault_raft_state_leader` | Counter | Times this member became leader; used to observe elections |
| `vault_raft_peers` | Gauge | Number of Raft peers |
| `vault_raft_apply` | Counter | Raft log writes |
| `vault_raft_commitTime` | Summary (ms) | Raft log commit duration |
| `vault_raft_leader_lastContact` | Summary (ms) | Time since the leader last contacted a follower |
| `vault_raft_storage_bolt_page_bytes_allocated` | Gauge | Allocated BoltDB page bytes |
| `vault_raft_storage_bolt_freelist_used_bytes` | Gauge | BoltDB freelist bytes |
| `vault_autopilot_healthy` | Gauge | Cluster health; leader only |
| `vault_autopilot_failure_tolerance` | Gauge | Cluster fault tolerance; leader only |
| `vault_autopilot_node_healthy` | Gauge | Member health; leader only, with `node_id` |
{.full-width}

**Secrets, tokens, and audit**

| Metric | Type | Description |
|:---|:---|:---|
| `vault_expire_num_leases` | Gauge | Current lease count |
| `vault_expire_renew_count` / `vault_expire_revoke_count` | Summary | Lease renewals and revocations |
| `vault_token_count` | Gauge | Token count (usage gauge) |
| `vault_token_creation` | Counter | Token creations |
| `vault_secret_kv_count` | Gauge | KV secret count (usage gauge) |
| `vault_identity_num_entities` | Gauge | Identity entity count |
| `vault_audit_log_request_count` / `vault_audit_log_response_count` | Summary | Requests and responses recorded by audit devices |
| `vault_audit_log_request_failure` / `vault_audit_log_response_failure` | Counter | Audit write failures; appears only after the first failure |
{.full-width}

**Runtime**

| Metric | Type | Description |
|:---|:---|:---|
| `vault_runtime_num_goroutines` | Gauge | Goroutine count |
| `vault_runtime_alloc_bytes` / `vault_runtime_sys_bytes` | Gauge | Allocated heap memory and memory requested from the OS |
| `vault_runtime_heap_objects` | Gauge | Heap object count |
| `vault_runtime_total_gc_pause_ns` / `vault_runtime_total_gc_runs` | Gauge | Cumulative GC pause time and number of GC runs |
{.full-width}

**Snapshot backups** (from node_exporter's textfile collector, under the node scrape job)

| Metric | Type | Description |
|:---|:---|:---|
| `vault_backup_last_success_timestamp_seconds` | Gauge | Unix timestamp of the latest successful local snapshot |
| `vault_backup_size_bytes` | Gauge | Size of the latest successful local snapshot, in bytes |
{.full-width}

`vault-backup` writes these two metrics to `/var/lib/node_exporter/textfile/vault.prom` only after success. The file is deleted when a member is removed.
