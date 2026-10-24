# Managing PostgreSQL HBA Rules

> HBA management - refresh rules, verify config, troubleshoot, Pgbouncer HBA

---

LLMS index: [llms.txt](/llms.txt)

---

## Quick Start

Pigsty manages HBA rules declaratively.
First [**define HBA rules**](/docs/pgsql/config/hba) in the [**inventory**](/docs/concept/iac/inventory).
Then run `bin/pgsql-hba <cls>` to refresh them.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_hba_rules:                            # <--- Define HBA rules here!
      - {user: dbuser_app, db: app, addr: intra, auth: pwd, title: 'app access'}
      - {user: dbuser_api, db: all, addr: world, auth: ssl, title: 'api ssl access'}
```


```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-hba <cls>              # Refresh PostgreSQL and Pgbouncer HBA rules for cluster
bin/pgsql-hba <cls> <ip>...      # Refresh HBA rules for specific instances
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls> -t pg_hba,pg_reload                 # Refresh PostgreSQL HBA only
./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload   # Refresh Pgbouncer HBA only
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload  # Refresh both
```

```bash {tab="Example" value="example"}
bin/pgsql-hba pg-meta                      # Refresh pg-meta cluster HBA rules
bin/pgsql-hba pg-meta 10.10.10.10          # Refresh specific instance only
bin/pgsql-hba pg-meta 10.10.10.11 10.10.10.12  # Refresh multiple instances
```

For rule syntax, see [**HBA Configuration**](/docs/pgsql/config/hba). For authentication methods, default boundaries, and credential management, see [**Authentication**](/docs/concept/sec/auth).

| Action                                      | Description                                         | Risk |
|:--------------------------------------------|:----------------------------------------------------|:----:|
| [**Refresh HBA Rules**](#refresh-hba-rules) | Re-render config files and reload service           | Low  |
| [**Verify HBA Rules**](#verify-hba-rules)   | View current rules, test connection auth            | Read |
| [**Common Scenarios**](#common-scenarios)   | Add rules, block IP, role-based, post-expansion     | Low  |
| [**Troubleshooting**](#troubleshooting)     | Connection rejected, auth failed, rules not applied |  -   |
| [**Pgbouncer HBA**](#pgbouncer-hba)         | Pgbouncer connection pool HBA management            | Low  |
{.full-width}


[demo\/pgsql\-hba\.cast](/demo/pgsql-hba.cast)


----------------

## Refresh HBA Rules

After you change HBA rules in `pigsty.yml`, generate the configuration files again and reload the services.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-hba <cls>              # Refresh entire cluster HBA (PostgreSQL + Pgbouncer)
bin/pgsql-hba <cls> <ip>...      # Refresh specific instances (multiple IPs space-separated)
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls> -t pg_hba,pg_reload                 # Refresh PostgreSQL HBA only
./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload   # Refresh Pgbouncer HBA only
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload  # Refresh both
```

```bash {tab="Example" value="example"}
bin/pgsql-hba pg-meta                      # Refresh pg-meta cluster
bin/pgsql-hba pg-meta 10.10.10.10          # Refresh 10.10.10.10 instance only
```

**Result**: Pigsty generates PostgreSQL and Pgbouncer HBA configuration files from inventory definitions.
It then reloads the services to apply the rules.

**Config file locations**

| Service    | Config File Path                  | Template File                             |
|:-----------|:----------------------------------|:------------------------------------------|
| PostgreSQL | `/pg/data/pg_hba.conf`            | `roles/pgsql/templates/pg_hba.conf`       |
| Pgbouncer  | `/etc/pgbouncer/pgb_hba.conf`     | `roles/pgsql/templates/pgbouncer.hba`     |
{.full-width}

> [!WARNING] Don't edit config files directly
> Direct changes to `/pg/data/pg_hba.conf` or `/etc/pgbouncer/pgb_hba.conf` work temporarily.
> The next Ansible playbook run overwrites them.
> Make all HBA rule changes in `pigsty.yml`, then run `bin/pgsql-hba` to refresh the rules.

**Related Tags**

| Tag                | Description                                       |
|:-------------------|:--------------------------------------------------|
| `pg_hba`           | Render PostgreSQL HBA config file                 |
| `pg_reload`        | Reload PostgreSQL config (needs `pg_reload=true`) |
| `pgbouncer_hba`    | Render Pgbouncer HBA config file                  |
| `pgbouncer_reload` | Reload Pgbouncer config                           |
{.full-width}


----------------

## Verify HBA Rules

After you refresh HBA rules, verify that the configuration applies correctly.

**View current HBA rules**

```sql {tab="SQL" group="sql-bash-test-connection" value="sql"}
-- View PostgreSQL HBA rules (recommended)
TABLE pg_hba_file_rules;

-- View matching rules for specific database
SELECT * FROM pg_hba_file_rules WHERE database @> ARRAY['mydb']::text[];
```

```bash {tab="Bash" value="bash"}
# View PostgreSQL HBA config file
cat /pg/data/pg_hba.conf

# View Pgbouncer HBA config file
cat /etc/pgbouncer/pgb_hba.conf

# View config file header (confirm if updated)
head -20 /pg/data/pg_hba.conf
```

```bash {tab="Test Connection" value="test-connection"}
# Test connection for specific user from specific address
psql -h <host> -p 5432 -U <user> -d <database> -c "SELECT 1"

# Test connection through Pgbouncer
psql -h <host> -p 6432 -U <user> -d <database> -c "SELECT 1"
```

**Check HBA config syntax**

```bash
# Reload config (validates syntax)
psql -c "SELECT pg_reload_conf()"

# If syntax errors, check logs
tail -f /pg/log/postgresql-*.log
```


----------------

## Common Scenarios

### Add New HBA Rule

Add the rule to `pg_hba_rules` in the cluster configuration.
Then refresh the rules:

```yaml
pg-meta:
  vars:
    pg_hba_rules:
      - {user: new_user, db: new_db, addr: '192.168.1.0/24', auth: pwd, title: 'new app access'}
```

```bash
bin/pgsql-hba pg-meta
```


### Emergency IP Block

If you detect a malicious IP address, add a deny rule with high priority (`order: 0`):

```yaml
pg_hba_rules:
  - {user: all, db: all, addr: '10.1.1.100/32', auth: deny, order: 0, title: 'emergency block'}
```

```bash
bin/pgsql-hba pg-meta    # Refresh immediately
```


### Role-Based Rules

Configure different HBA rules for primary and replica using `role` parameter:

```yaml
pg_hba_rules:
  # Only primary allows write users
  - {user: writer, db: all, addr: intra, auth: pwd, role: primary, title: 'writer on primary'}
  # Replicas allow read-only users
  - {user: reader, db: all, addr: world, auth: ssl, role: replica, title: 'reader on replica'}
```

After a refresh, the instance `pg_role` determines which rules are enabled.


### Refresh HBA After Expansion

After you add cluster instances, refresh rules that use `addr: cluster`.
The refreshed rules include the new members:

```bash
./pgsql.yml -l 10.10.10.14       # Add new instance
bin/pgsql-hba pg-meta            # Refresh all instances' HBA (includes new member IPs)
```


### Refresh HBA After Failover

After a Patroni failover, instance roles may differ from `pg_role` values in the configuration.
If HBA rules filter by `role`, update the configuration and refresh the rules:

```bash
# Update role definitions in pigsty.yml then refresh
bin/pgsql-hba pg-meta
```


----------------

## Troubleshooting

### Connection Rejected

**Symptom**: `FATAL: no pg_hba.conf entry for host "x.x.x.x", user "xxx", database "xxx"`

**Steps**:

1. Check current HBA rules, confirm if matching rule exists:
```bash
psql -c "TABLE pg_hba_file_rules"
```

2. Confirm client IP, username, database matches any rule

3. Check rule order (HBA uses first-match-wins)

4. Add corresponding rule and refresh:
```bash
bin/pgsql-hba <cls>
```


### Authentication Failed

**Symptom**: `FATAL: password authentication failed for user "xxx"`

**Steps**:

1. Confirm password is correct
2. Check password encryption method ([**`pg_pwd_enc`**](/docs/pgsql/param#pg_pwd_enc)) compatibility with client
3. Check if user exists:
```sql
SELECT * FROM pg_roles WHERE rolname = 'xxx';
```


### HBA Rules Not Applied

**Steps**:

1. Confirm refresh command was executed
2. Check if Ansible execution succeeded
3. Confirm PostgreSQL reloaded:
```bash
psql -c "SELECT pg_reload_conf()"
```

4. Check if config file was updated:
```bash
head -20 /pg/data/pg_hba.conf
```


### Rule Order Issues

HBA uses the first matching rule.
If rules do not work as expected:

1. Check `order` values in rule definitions
2. Use `psql -c "TABLE pg_hba_file_rules"` to view actual order
3. Adjust `order` values (lower numbers = higher priority)


----------------

## Pgbouncer HBA

Pgbouncer HBA management is similar to PostgreSQL, with some differences.

**Config differences**

| Difference  | PostgreSQL                 | Pgbouncer                     |
|:------------|:---------------------------|:------------------------------|
| Config file | `/pg/data/pg_hba.conf`     | `/etc/pgbouncer/pgb_hba.conf` |
| Replication | Supports `db: replication` | Not supported                 |
| Local auth  | Uses `ident`               | Uses `peer`                   |
{.full-width}

**Refresh Pgbouncer HBA**

```bash {tab="Script" group="script-playbook-view" value="script"}
bin/pgsql-hba <cls>    # Refresh both PostgreSQL and Pgbouncer
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload   # Refresh Pgbouncer HBA only
```

```bash {tab="View" value="view"}
cat /etc/pgbouncer/pgb_hba.conf    # View Pgbouncer HBA rules
```


----------------

## Best Practices

1. **Manage rules in the inventory**: Make all changes in `pigsty.yml`. Do not edit `pg_hba.conf` directly.
2. **Test first**: Verify HBA changes in a test environment first. Changes can cause connection problems.
3. **Set rule priority**: Use `order: 0` for blocklist rules to match them first.
4. **Refresh promptly**: Refresh HBA after you add or remove instances, or after failover.
5. **Grant minimum access**: Allow only necessary access. Avoid `addr: world` with `auth: trust`.
6. **Monitor authentication failures**: Check `pg_stat_activity` for authentication failures.
7. **Back up configuration**: Back up `pigsty.yml` before important changes.


----------------

## Related Documentation

- [**HBA Configuration**](/docs/pgsql/config/hba/): HBA rule config syntax and parameter details
- [**User Management**](/docs/pgsql/admin/user/): User and role management operations
- [**Access Control**](/docs/pgsql/config/acl/): Role system and permission model
- [**Authentication**](/docs/concept/sec/auth): Authentication methods, default boundaries, and credential management
- [**Encrypted Communication**](/docs/concept/sec/ca): TLS and client certificate verification
