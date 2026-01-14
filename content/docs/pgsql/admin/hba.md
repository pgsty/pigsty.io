---
title: Managing PostgreSQL HBA Rules
linkTitle: HBA Admin
weight: 50
description: HBA management - refresh rules, verify config, troubleshoot, Pgbouncer HBA
draft: trues
icon: fa-solid fa-key
module: [PGSQL]
categories: [Task]
---

## Quick Start

Pigsty uses declarative management: first [**define HBA rules**](/docs/pgsql/config/hba) in the [**inventory**](/docs/concept/iac/inventory), then use `bin/pgsql-hba <cls>` to refresh.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_hba_rules:                            # <--- Define HBA rules here!
      - {user: dbuser_app, db: app, addr: intra, auth: pwd, title: 'app access'}
      - {user: dbuser_api, db: all, addr: world, auth: ssl, title: 'api ssl access'}
```


{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-hba <cls>              # Refresh PostgreSQL and Pgbouncer HBA rules for cluster
bin/pgsql-hba <cls> <ip>...      # Refresh HBA rules for specific instances
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls> -t pg_hba,pg_reload                 # Refresh PostgreSQL HBA only
./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload   # Refresh Pgbouncer HBA only
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload  # Refresh both
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-hba pg-meta                      # Refresh pg-meta cluster HBA rules
bin/pgsql-hba pg-meta 10.10.10.10          # Refresh specific instance only
bin/pgsql-hba pg-meta 10.10.10.11 10.10.10.12  # Refresh multiple instances
```
{{% /tab %}}
{{< /tabpane >}}

For complete HBA rule definition reference, see [**HBA Configuration**](/docs/pgsql/config/hba). For overall access control design, see [**Security & Compliance**](/docs/concept/sec/).

| Action                             | Description                              | Risk |
|:-----------------------------------|:-----------------------------------------|:----:|
| [**Refresh HBA Rules**](#refresh-hba-rules) | Re-render config files and reload service | Low  |
| [**Verify HBA Rules**](#verify-hba-rules) | View current rules, test connection auth | Read |
| [**Common Scenarios**](#common-scenarios) | Add rules, block IP, role-based, post-expansion | Low  |
| [**Troubleshooting**](#troubleshooting) | Connection rejected, auth failed, rules not applied | -    |
| [**Pgbouncer HBA**](#pgbouncer-hba) | Pgbouncer connection pool HBA management | Low  |
{.full-width}


{{< asciinema file="demo/pgsql-hba.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Refresh HBA Rules

After modifying HBA rules in `pigsty.yml`, re-render config files and reload services.

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-hba <cls>              # Refresh entire cluster HBA (PostgreSQL + Pgbouncer)
bin/pgsql-hba <cls> <ip>...      # Refresh specific instances (multiple IPs space-separated)
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls> -t pg_hba,pg_reload                 # Refresh PostgreSQL HBA only
./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload   # Refresh Pgbouncer HBA only
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload  # Refresh both
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-hba pg-meta                      # Refresh pg-meta cluster
bin/pgsql-hba pg-meta 10.10.10.10          # Refresh 10.10.10.10 instance only
```
{{% /tab %}}
{{< /tabpane >}}

**Result**: Renders PostgreSQL and Pgbouncer HBA config files based on inventory definitions, then reloads services to apply.

**Config file locations**

| Service    | Config File Path                  | Template File                             |
|:-----------|:----------------------------------|:------------------------------------------|
| PostgreSQL | `/pg/data/pg_hba.conf`            | `roles/pgsql/templates/pg_hba.conf`       |
| Pgbouncer  | `/etc/pgbouncer/pgb_hba.conf`     | `roles/pgsql/templates/pgbouncer.hba`     |
{.full-width}

{{% alert title="Don't edit config files directly" color="warning" %}}
Directly editing `/pg/data/pg_hba.conf` or `/etc/pgbouncer/pgb_hba.conf` works temporarily, but will be overwritten next time Ansible playbook runs. All HBA rule changes should be in `pigsty.yml`, then execute `bin/pgsql-hba` to refresh.
{{% /alert %}}

**Related Tags**

| Tag              | Description                                  |
|:-----------------|:---------------------------------------------|
| `pg_hba`         | Render PostgreSQL HBA config file            |
| `pg_reload`      | Reload PostgreSQL config (needs `pg_reload=true`) |
| `pgbouncer_hba`  | Render Pgbouncer HBA config file             |
| `pgbouncer_reload` | Reload Pgbouncer config                    |
{.full-width}


----------------

## Verify HBA Rules

After refreshing HBA rules, verify config is correctly applied.

**View current HBA rules**

{{< tabpane text=true persist=header >}}
{{% tab header="SQL" %}}
```sql
-- View PostgreSQL HBA rules (recommended)
TABLE pg_hba_file_rules;

-- View matching rules for specific database
SELECT * FROM pg_hba_file_rules WHERE database @> ARRAY['mydb']::text[];
```
{{% /tab %}}
{{% tab header="Bash" %}}
```bash
# View PostgreSQL HBA config file
cat /pg/data/pg_hba.conf

# View Pgbouncer HBA config file
cat /etc/pgbouncer/pgb_hba.conf

# View config file header (confirm if updated)
head -20 /pg/data/pg_hba.conf
```
{{% /tab %}}
{{% tab header="Test Connection" %}}
```bash
# Test connection for specific user from specific address
psql -h <host> -p 5432 -U <user> -d <database> -c "SELECT 1"

# Test connection through Pgbouncer
psql -h <host> -p 6432 -U <user> -d <database> -c "SELECT 1"
```
{{% /tab %}}
{{< /tabpane >}}

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

Add rule to cluster config's `pg_hba_rules`, then refresh:

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

When detecting malicious IP, add high-priority (`order: 0`) deny rule:

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

After refresh, rules auto-enable/disable based on instance's `pg_role`.


### Refresh HBA After Expansion

When cluster adds new instances, rules using `addr: cluster` need refresh to include new members:

```bash
./pgsql.yml -l 10.10.10.14       # Add new instance
bin/pgsql-hba pg-meta            # Refresh all instances' HBA (includes new member IPs)
```


### Refresh HBA After Failover

After Patroni failover, instance `pg_role` may not match config. If HBA rules use `role` filtering, update config and refresh:

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

HBA uses first-match-wins. If rules not working as expected:

1. Check `order` values in rule definitions
2. Use `psql -c "TABLE pg_hba_file_rules"` to view actual order
3. Adjust `order` values (lower numbers = higher priority)


----------------

## Pgbouncer HBA

Pgbouncer HBA management is similar to PostgreSQL, with some differences.

**Config differences**

| Difference | PostgreSQL                | Pgbouncer                       |
|:-----------|:--------------------------|:--------------------------------|
| Config file | `/pg/data/pg_hba.conf`   | `/etc/pgbouncer/pgb_hba.conf`   |
| Replication | Supports `db: replication` | Not supported                  |
| Local auth  | Uses `ident`             | Uses `peer`                     |
{.full-width}

**Refresh Pgbouncer HBA**

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-hba <cls>    # Refresh both PostgreSQL and Pgbouncer
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload   # Refresh Pgbouncer HBA only
```
{{% /tab %}}
{{% tab header="View" %}}
```bash
cat /etc/pgbouncer/pgb_hba.conf    # View Pgbouncer HBA rules
```
{{% /tab %}}
{{< /tabpane >}}


----------------

## Best Practices

1. **Always manage in config files**: Don't edit `pg_hba.conf` directly - all changes through `pigsty.yml`
2. **Test environment first**: HBA changes can cause connection issues - verify in test env first
3. **Use order for priority**: Blocklist rules use `order: 0` to ensure priority matching
4. **Refresh promptly**: Refresh HBA after adding/removing instances or failover
5. **Principle of least privilege**: Only open necessary access - avoid `addr: world` + `auth: trust`
6. **Monitor auth failures**: Watch for auth failures in `pg_stat_activity`
7. **Backup config**: Backup `pigsty.yml` before important changes


----------------

## Related Documentation

- [**HBA Configuration**](/docs/pgsql/config/hba/): HBA rule config syntax and parameter details
- [**User Management**](/docs/pgsql/admin/user/): User and role management operations
- [**Access Control**](/docs/pgsql/config/acl/): Role system and permission model
- [**Security & Compliance**](/docs/concept/sec/): PostgreSQL cluster security features

