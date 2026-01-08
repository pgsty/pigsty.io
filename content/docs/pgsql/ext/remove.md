---
title: Remove
weight: 2209
description: Uninstall PostgreSQL extensions
icon: fas fa-trash
module: [PGSQL]
tags: [Extension]
categories: [Reference]
---

Removing extensions involves two levels: **dropping extension objects** (database level) and **uninstalling packages** (operating system level).


--------

## Drop Extension Objects

Use `DROP EXTENSION` to remove extensions from the database:

```sql
-- Drop extension
DROP EXTENSION pgvector;

-- If there are dependent objects, cascade delete is required
DROP EXTENSION pgvector CASCADE;
```

> **Warning**: `CASCADE` will drop all objects that depend on this extension (tables, functions, views, etc.). Use with caution.

### Check Extension Dependencies

It's recommended to check dependencies before dropping:

```sql
-- View objects that depend on an extension
SELECT
    classid::regclass,
    objid,
    deptype
FROM pg_depend
WHERE refobjid = (SELECT oid FROM pg_extension WHERE extname = 'pgvector');

-- View tables using extension types
SELECT
    c.relname AS table_name,
    a.attname AS column_name,
    t.typname AS type_name
FROM pg_attribute a
JOIN pg_class c ON a.attrelid = c.oid
JOIN pg_type t ON a.atttypid = t.oid
WHERE t.typname = 'vector';
```


--------

## Remove Preload

If the extension is in `shared_preload_libraries`, it must be removed from the preload list after dropping:

```bash
# Modify shared_preload_libraries, remove extension
pg edit-config pg-meta --force -p shared_preload_libraries='pg_stat_statements, auto_explain'

# Restart to apply configuration
pg restart pg-meta
```


--------

## Uninstall Packages

After dropping the extension from the database, you can optionally uninstall the package:

```bash
# EL systems
sudo yum remove pgvector_18*

# Debian/Ubuntu systems
sudo apt remove postgresql-18-pgvector

# Using pig package manager
pig remove pgvector
```

> Typically keeping the package doesn't cause issues. Only uninstall when you need to free disk space or resolve conflicts.


--------

## Important Notes

1. **Data loss risk**: Using `CASCADE` will drop dependent objects, potentially causing data loss.

2. **Application compatibility**: Ensure applications no longer use the extension's functionality before dropping.

3. **Preload order**: If dropping a preloaded extension, be sure to also remove it from `shared_preload_libraries`, otherwise the database may fail to start.

4. **Master-slave environments**: In replication environments, `DROP EXTENSION` automatically replicates to slaves.


--------

## Operation Sequence

Complete extension removal workflow:

```bash
# 1. Check dependencies
psql -d mydb -c "SELECT * FROM pg_depend WHERE refobjid = (SELECT oid FROM pg_extension WHERE extname = 'pgvector');"

# 2. Drop extension from database
psql -d mydb -c "DROP EXTENSION pgvector;"

# 3. If it's a preloaded extension, remove from shared_preload_libraries
pg edit-config pg-meta --force -p shared_preload_libraries='pg_stat_statements, auto_explain'

# 4. Restart database (if preload configuration was modified)
pg restart pg-meta

# 5. Optional: Uninstall package
sudo yum remove pgvector_18*
```

