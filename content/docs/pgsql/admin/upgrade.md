---
title: Upgrading PostgreSQL Major/Minor Versions
linkTitle: Version Upgrade
weight: 90
description: Version upgrade - minor version rolling upgrade, major version migration, extension upgrade
icon: fa-solid fa-plane-up
module: [PGSQL]
categories: [Task]
---

## Quick Start

PostgreSQL version upgrades fall into two types: **minor version upgrade** and **major version upgrade**, with very different risk and complexity.

| Type           | Example       | Downtime           | Data Compatibility | Risk  |
|:---------------|:--------------|:-------------------|:-------------------|:------|
| Minor upgrade  | 17.2 → 17.3   | Seconds (rolling)  | Fully compatible   | Low   |
| Major upgrade  | 17 → 18       | Minutes            | Requires data dir upgrade | Medium |
{.full-width}


```bash {tab="Minor" group="minor-major-extension" value="minor"}
# Rolling upgrade: replicas first, then primary
ansible <cls> -b -a 'yum upgrade -y postgresql17*'
pg restart --role replica --force <cls>
pg switchover <cls>
pg restart <cls> <old-primary> --force
```

```bash {tab="Major" value="major"}
# Recommended: Logical replication migration
bin/pgsql-add pg-new              # Create new version cluster
# Configure logical replication to sync data...
# Switch traffic to new cluster
```

```bash {tab="Extension" value="extension"}
ansible <cls> -b -a 'yum upgrade -y postgis36_17*'
psql -c 'ALTER EXTENSION postgis UPDATE;'
```

For detailed online migration process, see [**Online Migration**](/docs/pgsql/migration) documentation.

| Action                          | Description                      | Risk   |
|:--------------------------------|:---------------------------------|:-------|
| [**Minor Version Upgrade**](#minor-version-upgrade) | Update packages, rolling restart | Low    |
| [**Minor Version Downgrade**](#minor-version-downgrade) | Rollback to previous minor version | Low    |
| [**Major Version Upgrade**](#major-version-upgrade) | Logical replication or pg_upgrade | Medium |
| [**Extension Upgrade**](#extension-upgrade) | Upgrade extension packages and objects | Low    |
{.full-width}


----------------

## Minor Version Upgrade

Minor version upgrades (e.g., 17.2 → 17.3) are the most common upgrade scenario, typically for security patches and bug fixes. Data directory is fully compatible, completed via rolling restart.

**Strategy**: Recommended **rolling upgrade**: upgrade replicas first, then switchover to upgrade original primary - minimizes service interruption.

```text
1. Update repo → 2. Upgrade replica packages → 3. Restart replicas
4. Switchover → 5. Upgrade original primary packages → 6. Restart original primary
```

**Step 1: Prepare packages**

Ensure local repo has latest PostgreSQL packages and refresh node cache:

```bash {tab="Repo" group="repo-el-debian" value="repo"}
cd ~/pigsty
./infra.yml -t repo_upstream      # Add upstream repos (needs internet)
./infra.yml -t repo_build         # Rebuild local repo
```

```bash {tab="EL" value="el"}
ansible <cls> -b -a 'yum clean all'
ansible <cls> -b -a 'yum makecache'
```

```bash {tab="Debian" value="debian"}
ansible <cls> -b -a 'apt clean'
ansible <cls> -b -a 'apt update'
```

**Step 2: Upgrade replicas**

Upgrade packages on all replicas and verify version:

```bash {tab="EL" group="el-debian" value="el"}
ansible <cls> -b -a 'yum upgrade -y postgresql17*'
ansible <cls> -b -a '/usr/pgsql/bin/pg_ctl --version'
```

```bash {tab="Debian" value="debian"}
ansible <cls> -b -a 'apt install -y postgresql-17'
ansible <cls> -b -a '/usr/lib/postgresql/17/bin/pg_ctl --version'
```

Restart all replicas to apply new version:

```bash
pg restart --role replica --force <cls>
```

**Step 3: Switchover**

Execute switchover to transfer primary role to upgraded replica:

```bash
pg switchover <cls>
# Or non-interactive:
pg switchover --leader <old-primary> --candidate <new-primary> --scheduled=now --force <cls>
```

**Step 4: Upgrade original primary**

Original primary is now replica - upgrade packages and restart:

```bash {tab="EL" group="el-debian" value="el"}
ansible <old-primary-ip> -b -a 'yum upgrade -y postgresql17*'
```

```bash {tab="Debian" value="debian"}
ansible <old-primary-ip> -b -a 'apt install -y postgresql-17'
```

```bash
pg restart <cls> <old-primary-name> --force
```

**Step 5: Verify**

Confirm all instances have consistent version:

```bash
pg list <cls>
pg query <cls> -c "SELECT version()"
```


----------------

## Minor Version Downgrade

In rare cases (e.g., new version introduces bugs), may need to downgrade PostgreSQL to previous version.

**Step 1: Get old version packages**

```bash {tab="EL" group="el-refresh-cache" value="el"}
cd ~/pigsty; ./infra.yml -t repo_upstream     # Add upstream repos
cd /www/pigsty; repotrack postgresql17-*-17.1 # Download specific version packages
cd ~/pigsty; ./infra.yml -t repo_create       # Rebuild repo metadata
```

```bash {tab="Refresh Cache" value="refresh-cache"}
ansible <cls> -b -a 'yum clean all'
ansible <cls> -b -a 'yum makecache'
```

**Step 2: Execute downgrade**

```bash {tab="EL" group="el-debian" value="el"}
ansible <cls> -b -a 'yum downgrade -y postgresql17*'
```

```bash {tab="Debian" value="debian"}
ansible <cls> -b -a 'apt install -y postgresql-17=17.1*'
```

**Step 3: Restart cluster**

```bash
pg restart --force <cls>
```


----------------

## Major Version Upgrade

Major version upgrades (e.g., 17 → 18) involve data format changes, requiring specialized tools for data migration.

| Method                                         | Downtime      | Complexity | Use Case                      |
|:-----------------------------------------------|:--------------|:-----------|:------------------------------|
| [**Logical Replication Migration**](#logical-replication-migration) | Seconds (switch) | High       | Production, minimal downtime required |
| [**pg_upgrade In-Place Upgrade**](#pg_upgrade-in-place-upgrade) | Minutes~Hours | Medium     | Test env, smaller data        |
{.full-width}

> [!TIP] Recommended Approach
> For production, we recommend **logical replication migration**: create new version cluster, sync data via logical replication, then blue-green switch. Shortest downtime and rollback-ready. See [**Online Migration**](/docs/pgsql/migration).


### Logical Replication Migration

Logical replication is the recommended approach for production major version upgrades. Core steps:

```text
1. Create new version target cluster → 2. Configure logical replication → 3. Verify data consistency
4. Switch app traffic to new cluster → 5. Decommission old cluster
```

**Step 1: Create new version cluster**

```yaml
pg-meta-new:
  hosts:
    10.10.10.12: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta-new
    pg_version: 18                    # New version
```

```bash
bin/pgsql-add pg-meta-new
```

**Step 2: Configure logical replication**

```sql
-- Source cluster (old version) primary: create publication
CREATE PUBLICATION upgrade_pub FOR ALL TABLES;

-- Target cluster (new version) primary: create subscription
CREATE SUBSCRIPTION upgrade_sub
  CONNECTION 'host=10.10.10.11 port=5432 dbname=mydb user=replicator password=xxx'
  PUBLICATION upgrade_pub;
```

**Step 3: Wait for sync completion**

```sql
-- Target cluster: check subscription status
SELECT * FROM pg_stat_subscription;

-- Source cluster: check replication slot LSN
SELECT slot_name, confirmed_flush_lsn FROM pg_replication_slots;
```

**Step 4: Switch traffic**

After confirming data sync complete: stop app writes to source → wait for final sync → switch app connections to new cluster → drop subscription, decommission source.

```sql
-- Target cluster: drop subscription
DROP SUBSCRIPTION upgrade_sub;
```

For detailed migration process, see [**Online Migration**](/docs/pgsql/migration) documentation.


### pg_upgrade In-Place Upgrade

`pg_upgrade` is PostgreSQL's official major version upgrade tool, suitable for test environments or scenarios accepting longer downtime.

> [!WARNING] Important Warning
> In-place upgrade causes longer downtime and is difficult to rollback. For production, prefer logical replication migration.

**Step 1: Install new version packages**

```bash
./pgsql.yml -l <cls> -t pg_pkg -e pg_version=18
```

**Step 2: Stop Patroni**

```bash
pg pause <cls>                        # Pause auto-failover
systemctl stop patroni                # Stop Patroni (stops PostgreSQL)
```

**Step 3: Run pg_upgrade**

```bash
sudo su - postgres
mkdir -p /data/postgres/pg-meta-18/data

# Pre-check (-c parameter: check only, don't execute)
/usr/pgsql-18/bin/pg_upgrade \
  -b /usr/pgsql-17/bin -B /usr/pgsql-18/bin \
  -d /data/postgres/pg-meta-17/data \
  -D /data/postgres/pg-meta-18/data \
  -v -c

# Execute upgrade
/usr/pgsql-18/bin/pg_upgrade \
  -b /usr/pgsql-17/bin -B /usr/pgsql-18/bin \
  -d /data/postgres/pg-meta-17/data \
  -D /data/postgres/pg-meta-18/data \
  --link -j 8 -v
```

**Step 4: Update links and start**

```bash
rm -rf /usr/pgsql && ln -s /usr/pgsql-18 /usr/pgsql
rm -rf /pg && ln -s /data/postgres/pg-meta-18 /pg
# Edit /etc/patroni/patroni.yml to update paths
systemctl start patroni
pg resume <cls>
```

**Step 5: Post-processing**

```bash
/usr/pgsql-18/bin/vacuumdb --all --analyze-in-stages
./delete_old_cluster.sh   # Cleanup script generated by pg_upgrade
```


----------------

## Extension Upgrade

When upgrading PostgreSQL version, typically also need to upgrade related extensions.

**Upgrade extension packages**

```bash {tab="EL" group="el-debian" value="el"}
ansible <cls> -b -a 'yum upgrade -y postgis36_17 timescaledb-2-postgresql-17* pgvector_17*'
```

```bash {tab="Debian" value="debian"}
ansible <cls> -b -a 'apt install -y postgresql-17-postgis-3 postgresql-17-pgvector'
```

**Upgrade extension objects**

After package upgrade, execute extension upgrade in database:

```sql
-- View upgradeable extensions
SELECT name, installed_version, default_version FROM pg_available_extensions
WHERE installed_version IS NOT NULL AND installed_version <> default_version;

-- Upgrade extensions
ALTER EXTENSION postgis UPDATE;
ALTER EXTENSION timescaledb UPDATE;
ALTER EXTENSION vector UPDATE;

-- Check extension versions
SELECT extname, extversion FROM pg_extension;
```

> [!WARNING] Extension Compatibility
> Before major version upgrade, confirm all extensions support target PostgreSQL version. Some extensions may require uninstall/reinstall - check extension documentation.


----------------

## Important Notes

1. **Backup first**: Always perform complete backup before any upgrade
2. **Test verify**: Verify upgrade process in test environment first
3. **Extension compatibility**: Confirm all extensions support target version
4. **Rollback plan**: Prepare rollback plan, especially for major upgrades
5. **Monitor closely**: Monitor database performance and error logs after upgrade
6. **Document**: Record all operations and issues during upgrade


----------------

## Related Documentation

- [**Online Migration**](/docs/pgsql/migration/): Zero-downtime migration using logical replication
- [**Patroni Management**](/docs/pgsql/admin/patroni/): Manage cluster with patronictl
- [**Cluster Management**](/docs/pgsql/admin/cluster/): Cluster creation, scaling, destruction
- [**Backup Recovery**](/docs/pgsql/backup/): PostgreSQL backup and recovery
- [**Extension Management**](/docs/pgsql/admin/ext/): Extension installation and management
