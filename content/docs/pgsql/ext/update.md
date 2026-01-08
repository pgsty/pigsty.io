---
title: Update
weight: 2208
description: Upgrade PostgreSQL extension versions
icon: fas fa-arrow-up
module: [PGSQL]
tags: [Extension]
categories: [Reference]
---

Extension updates involve two levels: **package updates** (operating system level) and **extension object updates** (database level).


--------

## Update Packages

Use package managers to update extension packages:

```bash
# EL systems
sudo yum update pgvector_18*

# Debian/Ubuntu systems
sudo apt update && sudo apt upgrade postgresql-18-pgvector
```

Batch update using Pigsty:

```bash
# Update extension packages for specified cluster
./pgsql.yml -l pg-meta -t pg_extension -e '{"pg_extensions":["pgvector"]}'

# Using pig package manager
pig update pgvector
```


--------

## Update Extension Objects

After package updates, extension objects in the database may need to be synchronized.

### View Updatable Extensions

```sql
-- View installed extensions and their versions
SELECT name, default_version, installed_version
FROM pg_available_extensions
WHERE installed_version IS NOT NULL;

-- View upgradable extensions
SELECT name, installed_version, default_version
FROM pg_available_extensions
WHERE installed_version IS NOT NULL
  AND installed_version <> default_version;
```

### Execute Extension Update

```sql
-- Update to latest version
ALTER EXTENSION pgvector UPDATE;

-- Update to specific version
ALTER EXTENSION pgvector UPDATE TO '0.8.0';
```

### View Update Paths

```sql
-- View available upgrade paths for extension
SELECT * FROM pg_extension_update_paths('pgvector');
```


--------

## Important Notes

1. **Backup first**: Backup the database before updating extensions, especially for extensions involving data type changes.

2. **Check compatibility**: Some extension major version upgrades may be incompatible. Consult the extension's upgrade documentation.

3. **Preloaded extensions**: If updating a preloaded extension (like `timescaledb`), a database restart may be required after the update.

4. **Dependencies**: If other extensions depend on the updated extension, update them in dependency order.

5. **Replication environments**: In master-slave replication environments, test updates on slaves first, then update the master after confirmation.


--------

## Common Issues

### Update Failure

If `ALTER EXTENSION UPDATE` fails, it may be because:

- No available upgrade path
- Extension is in use
- Insufficient permissions

```sql
-- View extension dependencies
SELECT * FROM pg_depend WHERE refobjid = (SELECT oid FROM pg_extension WHERE extname = 'pgvector');
```

### Rollback Update

PostgreSQL extensions typically don't support direct rollback. To rollback:

1. Restore from backup
2. Or: Uninstall new version extension, install old version package, recreate extension

