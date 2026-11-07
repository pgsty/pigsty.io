# Remove

> Uninstall PostgreSQL extensions

---

LLMS index: [llms.txt](/llms.txt)

---

Extension removal has two levels: **drop extension objects** from the database, and **uninstall packages** from the operating system.


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

We recommend that you check dependencies before you drop an extension:

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

If the extension is in `shared_preload_libraries`, remove it from the preload list after you drop it:

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

> You can usually keep the package without problems. Uninstall it only to free disk space or resolve conflicts.


--------

## Important Notes

1. **Data loss risk**: `CASCADE` drops dependent objects. This can cause data loss.

2. **Application compatibility**: Before you drop the extension, make sure that applications no longer use its features.

3. **Preload order**: If you drop a preloaded extension, also remove it from `shared_preload_libraries`. Otherwise, the database may fail to start.

4. **Replication environments**: In replication environments, `DROP EXTENSION` automatically replicates to replicas.


--------

## Operation Sequence

Use this sequence to remove an extension completely:

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
