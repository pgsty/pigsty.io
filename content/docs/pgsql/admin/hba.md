---
title: HBA Management
weight: 2002
description: "PostgreSQL and Pgbouncer HBA rule management operations: refresh, reload, verify, and troubleshoot."
icon: fa-solid fa-key
module: [PGSQL]
categories: [Admin]
---

> HBA rule changes require re-rendering configuration files and reloading services. This article covers HBA rule daily management operations.


----------------

## Quick Reference

| Operation | Command |
|-----------|---------|
| Refresh cluster HBA | `bin/pgsql-hba <cls>` |
| Refresh specific instances | `bin/pgsql-hba <cls> <ip>...` |
| Refresh PostgreSQL only | `./pgsql.yml -l <cls> -t pg_hba,pg_reload` |
| Refresh Pgbouncer only | `./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload` |
| View current HBA | `psql -c "TABLE pg_hba_file_rules"` |
| Verify HBA config | `psql -c "SELECT pg_reload_conf()"` |


----------------

## Refresh HBA Rules

After modifying HBA rules in `pigsty.yml`, you need to re-render configuration files and reload services.


### Using the Admin Script

The recommended approach is using the `bin/pgsql-hba` script to refresh PostgreSQL and Pgbouncer HBA in one step:

```bash
# Refresh entire cluster's HBA rules
bin/pgsql-hba pg-meta

# Refresh specific instances (multiple IPs separated by spaces)
bin/pgsql-hba pg-meta 10.10.10.10
bin/pgsql-hba pg-meta 10.10.10.11 10.10.10.12

# View script help
bin/pgsql-hba --help
```

The script internally executes:

```bash
./pgsql.yml -l <cluster> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload
```


### Using Ansible Playbook

Directly use the relevant tags from the `pgsql.yml` playbook:

```bash
# Refresh PostgreSQL HBA and reload
./pgsql.yml -l pg-meta -t pg_hba,pg_reload

# Refresh Pgbouncer HBA and reload
./pgsql.yml -l pg-meta -t pgbouncer_hba,pgbouncer_reload

# Refresh both
./pgsql.yml -l pg-meta -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload

# Use extra variables to force reload
./pgsql.yml -l pg-meta -e pg_reload=true -t pg_hba,pg_reload
```


### Related Tags

| Tag | Description |
|-----|-------------|
| `pg_hba` | Render PostgreSQL HBA configuration file |
| `pg_reload` | Reload PostgreSQL config (requires `pg_reload=true`) |
| `pgbouncer_hba` | Render Pgbouncer HBA configuration file |
| `pgbouncer_reload` | Reload Pgbouncer config |


----------------

## Configuration File Locations

HBA configuration files are rendered by Ansible:

| Service | Config File Path | Template File |
|---------|------------------|---------------|
| PostgreSQL | `/pg/data/pg_hba.conf` | `roles/pgsql/templates/pg_hba.conf` |
| Pgbouncer | `/etc/pgbouncer/pgb_hba.conf` | `roles/pgsql/templates/pgbouncer.hba` |

> **Warning**: Don't edit these files directly—they will be overwritten the next time a playbook runs. All changes should be made in `pigsty.yml`.


----------------

## Verify HBA Rules

### View Currently Active HBA Rules

```bash
# Use psql to view PostgreSQL HBA rules
psql -c "TABLE pg_hba_file_rules"

# Or view the config file directly
cat /pg/data/pg_hba.conf

# View Pgbouncer HBA rules
cat /etc/pgbouncer/pgb_hba.conf
```

### Check HBA Configuration Syntax

```bash
# PostgreSQL config reload (validates syntax)
psql -c "SELECT pg_reload_conf()"

# If there are syntax errors, check the logs
tail -f /pg/log/postgresql-*.log
```

### Test Connection Authentication

```bash
# Test connection for specific user from specific address
psql -h <host> -p 5432 -U <user> -d <database> -c "SELECT 1"

# See which HBA rule matches the connection
psql -c "SELECT * FROM pg_hba_file_rules WHERE database @> ARRAY['<dbname>']::text[]"
```


----------------

## Common Management Scenarios

### Add New HBA Rule

1. Edit `pigsty.yml`, add rule to the cluster's `pg_hba_rules`:

```yaml
pg-meta:
  vars:
    pg_hba_rules:
      - {user: new_user, db: new_db, addr: '192.168.1.0/24', auth: pwd, title: 'new app access'}
```

2. Execute refresh:

```bash
bin/pgsql-hba pg-meta
```


### Emergency IP Block

When detecting a malicious IP, quickly add a blocklist rule:

1. Add high-priority (`order: 0`) deny rule:

```yaml
pg_hba_rules:
  - {user: all, db: all, addr: '10.1.1.100/32', auth: deny, order: 0, title: 'emergency block'}
```

2. Refresh immediately:

```bash
bin/pgsql-hba pg-meta
```


### Role-Based Rules

Configure different HBA rules for primary and replica:

```yaml
pg_hba_rules:
  # Only primary allows write users
  - {user: writer, db: all, addr: intra, auth: pwd, role: primary, title: 'writer on primary'}

  # Replicas allow read-only users
  - {user: reader, db: all, addr: world, auth: ssl, role: replica, title: 'reader on replica'}
```

After refresh, rules are automatically enabled or disabled based on the instance's `pg_role`.


### Refresh HBA After Cluster Expansion

When new instances are added to the cluster, rules using `addr: cluster` need refresh to include new members:

```bash
# Add new instance
./pgsql.yml -l 10.10.10.14

# Refresh all instances' HBA (includes new member IPs)
bin/pgsql-hba pg-meta
```


### Refresh HBA After Failover

After Patroni failover, instance `pg_role` may not match the configuration. If HBA rules use `role` filtering:

1. Update role definitions in `pigsty.yml`
2. Refresh HBA rules

```bash
# Refresh after updating roles in config file
bin/pgsql-hba pg-meta
```


----------------

## Troubleshooting

### Connection Rejected

**Symptom**: `FATAL: no pg_hba.conf entry for host "x.x.x.x", user "xxx", database "xxx"`

**Troubleshooting steps**:

1. Check current HBA rules:
```bash
psql -c "TABLE pg_hba_file_rules"
```

2. Confirm if client IP, username, database matches any rule

3. Check rule order (first match wins)

4. Add corresponding rule and refresh


### Authentication Failed

**Symptom**: `FATAL: password authentication failed for user "xxx"`

**Troubleshooting steps**:

1. Confirm password is correct
2. Check password encryption method (`pg_pwd_enc`) compatibility with client
3. Check if user exists: `\du` or `SELECT * FROM pg_roles WHERE rolname = 'xxx'`


### HBA Rules Not Taking Effect

**Troubleshooting steps**:

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

HBA uses first-match-wins logic. If rules aren't working as expected:

1. Check `order` values
2. Use `psql -c "TABLE pg_hba_file_rules"` to view actual order
3. Adjust `order` values or rule positions


----------------

## Online HBA Modification (Not Recommended)

While you can directly edit `/pg/data/pg_hba.conf` and reload, this is **not recommended**:

```bash
# Direct edit (not recommended)
vi /pg/data/pg_hba.conf

# Reload config
psql -c "SELECT pg_reload_conf()"
# Or
pg_ctl reload -D /pg/data
# Or
systemctl reload postgresql
```

**Problem**: Manual changes will be overwritten the next time an Ansible playbook runs.

**Correct approach**: Always modify in `pigsty.yml`, then run `bin/pgsql-hba` to refresh.


----------------

## Pgbouncer HBA Management

Pgbouncer HBA management is similar to PostgreSQL, with some differences:

### Configuration Differences

- Config file: `/etc/pgbouncer/pgb_hba.conf`
- Doesn't support `db: replication`
- Authentication method: local connections use `peer` instead of `ident`

### Refresh Commands

```bash
# Refresh Pgbouncer HBA only
./pgsql.yml -l pg-meta -t pgbouncer_hba,pgbouncer_reload

# Or use unified script (refreshes both PostgreSQL and Pgbouncer)
bin/pgsql-hba pg-meta
```

### View Pgbouncer HBA

```bash
cat /etc/pgbouncer/pgb_hba.conf
```


----------------

## Best Practices

1. **Always manage in config files**: Don't directly edit `pg_hba.conf`—all changes through `pigsty.yml`
2. **Verify in test environment first**: HBA changes can cause connection issues—verify in test environment first
3. **Use order to control priority**: Blocklist rules use `order: 0` to ensure priority matching
4. **Refresh promptly**: Refresh HBA after adding/removing instances or failover
5. **Principle of least privilege**: Only open necessary access—avoid `addr: world` + `auth: trust`
6. **Monitor authentication failures**: Watch for authentication failures in `pg_stat_activity`
7. **Backup configuration**: Backup `pigsty.yml` before important changes


----------------

## Command Quick Reference

```bash
# Refresh HBA (recommended)
bin/pgsql-hba <cluster>

# View PostgreSQL HBA
psql -c "TABLE pg_hba_file_rules"
cat /pg/data/pg_hba.conf

# View Pgbouncer HBA
cat /etc/pgbouncer/pgb_hba.conf

# Reload PostgreSQL config
psql -c "SELECT pg_reload_conf()"

# Test connection
psql -h <host> -U <user> -d <db> -c "SELECT 1"

# View authentication failure logs
tail -f /pg/log/postgresql-*.log | grep -i auth
```


----------------

## Related Documentation

- [**HBA Configuration**](/docs/pgsql/config/hba/): HBA rule configuration syntax and parameter details
- [**User Management**](/docs/pgsql/admin/user/): User and role management operations
- [**Access Control**](/docs/pgsql/config/acl/): Role system and permission model
- [**Security & Compliance**](/docs/pgsql/arch/sec/): PostgreSQL cluster security features
