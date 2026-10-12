---
title: Update
weight: 2208
description: Upgrade PostgreSQL extension versions
icon: fas fa-arrow-up
module: [PGSQL]
categories: [Reference]
---

Update extensions at two levels: **packages** in the operating system, and **extension objects** in the database.


--------

## Update Packages

Use package managers to update extension packages:

```bash
# EL systems
sudo yum update pgvector_18*

# Debian/Ubuntu systems
sudo apt update && sudo apt upgrade postgresql-18-pgvector
```

Use Pigsty to update packages on multiple nodes:

```bash
# Update extension packages for specified cluster
./pgsql.yml -l pg-meta -t pg_extension -e '{"pg_extensions":["pgvector"]}'

# Using pig package manager
pig update pgvector
```


--------

## Update Extension Objects

After you update packages, you may also need to update the extension objects in the database.

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

1. **Backup first**: Back up the database before you update extensions. This is particularly important if the update changes data types.

2. **Check compatibility**: Some major version upgrades may be incompatible. Read the extension's upgrade documentation.

3. **Preloaded extensions**: If you update a preloaded extension, such as `timescaledb`, you may need to restart the database.

4. **Dependencies**: If other extensions depend on the updated extension, update them in dependency order.

5. **Replication environments**: Test updates on replicas first. After you verify the results, update the primary.


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

PostgreSQL extensions usually do not support direct rollback.
To roll back, use one of these methods:

1. Restore from backup
2. Uninstall the new extension version, install the old package version, and recreate the extension.
