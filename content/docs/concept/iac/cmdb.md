---
title: Use CMDB as Config Inventory
linkTitle: CMDB
weight: 216
description: Use PostgreSQL as a CMDB metabase to store Ansible inventory.
icon: fa-solid fa-database
module: [PIGSTY]
categories: [Concept]
---


Use a PostgreSQL **metabase** as a dynamic configuration source instead of static YAML files.

------

## Overview

A **CMDB** (Configuration Management Database) stores configuration in database tables.

By default, Pigsty uses static `pigsty.yml` as the Ansible [**inventory**](/docs/concept/iac/inventory/).

A static file is simple. Larger deployments can need finer control, concurrent editing, and external integration beyond one file's practical limits.

|    Feature    | Static YAML File           | CMDB Metabase                          |
|:-------------:|:---------------------------|:---------------------------------------|
| **Querying**  | Manual search/grep         | SQL queries with any conditions, aggregation analysis |
| **Versioning** | Depends on Git or manual backup | Database transactions, audit logs, time-travel snapshots |
| **Access Control** | File system permissions, coarse-grained | PostgreSQL [**fine-grained access control**](/docs/concept/sec/ac) |
| **Concurrent Editing** | Requires file locking or merge conflicts | Database transactions naturally support concurrency |
| **External Integration** | Requires YAML parsing | Standard SQL interface, easy integration with any language |
| **Scalability** | Difficult to maintain when file becomes too large | Scales to physical limits |
| **Dynamic Generation** | Static file, changes require manual application | Immediate effect, real-time configuration changes |

The sample [**`pg-meta.meta`**](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml#L52) database baseline defines the CMDB schema.




-----------------

## How It Works

CMDB replaces the static inventory with an executable **script** that returns JSON, as Ansible supports. Enabling CMDB creates `inventory.sh`:

```bash
#!/bin/bash
psql ${METADB_URL} -AXtwc 'SELECT text FROM pigsty.inventory;'
```

Whenever Ansible reads the inventory, this script queries `pigsty.inventory` in PostgreSQL and returns JSON.

The architecture is:

```mermaid
flowchart LR
    conf["bin/inventory_conf"]
    tocmdb["bin/inventory_cmdb"]
    load["bin/inventory_load"]
    ansible["🚀 Ansible"]

    subgraph static["📄 Static Config Mode"]
        yml[("pigsty.yml")]
    end

    subgraph dynamic["🗄️ CMDB Dynamic Mode"]
        sh["inventory.sh"]
        cmdb[("PostgreSQL CMDB")]
    end

    conf -->|"switch"| yml
    yml -->|"load config"| load
    load -->|"write"| cmdb
    tocmdb -->|"switch"| sh
    sh --> cmdb

    yml --> ansible
    cmdb --> ansible
```


-----------------

## Data Model

The CMDB database schema is defined in [`files/cmdb.sql`](https://github.com/pgsty/pigsty/blob/main/files/cmdb.sql), with all objects in the `pigsty` schema.

### Core Tables

| Table | Description | Primary Key |
|:---:|:---|:---:|
| `pigsty.group` | Cluster/group definitions, corresponds to Ansible groups | `cls` |
| `pigsty.host` | Host definitions, belongs to a group | `(cls, ip)` |
| `pigsty.global_var` | Global variables, corresponds to `all.vars` | `key` |
| `pigsty.group_var` | Group variables, corresponds to `all.children.<cls>.vars` | `(cls, key)` |
| `pigsty.host_var` | Host variables, host-level variables | `(cls, ip, key)` |
| `pigsty.default_var` | Default variable definitions, stores parameter metadata | `key` |
| `pigsty.job` | Job records table, records executed tasks | `id` |

### Table Structure Details

**Cluster Table `pigsty.group`**

```sql
CREATE TABLE pigsty.group (
    cls     TEXT PRIMARY KEY,        -- Cluster name, primary key
    ctime   TIMESTAMPTZ DEFAULT now(), -- Creation time
    mtime   TIMESTAMPTZ DEFAULT now()  -- Modification time
);
```

**Host Table `pigsty.host`**

```sql
CREATE TABLE pigsty.host (
    cls    TEXT NOT NULL REFERENCES pigsty.group(cls),  -- Parent cluster
    ip     INET NOT NULL,                               -- Host IP address
    ctime  TIMESTAMPTZ DEFAULT now(),
    mtime  TIMESTAMPTZ DEFAULT now(),
    PRIMARY KEY (cls, ip)
);
```

**Global Variables Table `pigsty.global_var`**

```sql
CREATE TABLE pigsty.global_var (
    key   TEXT PRIMARY KEY,           -- Variable name
    value JSONB NULL,                 -- Variable value (JSON format)
    mtime TIMESTAMPTZ DEFAULT now()   -- Modification time
);
```

**Group Variables Table `pigsty.group_var`**

```sql
CREATE TABLE pigsty.group_var (
    cls   TEXT NOT NULL REFERENCES pigsty.group(cls),
    key   TEXT NOT NULL,
    value JSONB NULL,
    mtime TIMESTAMPTZ DEFAULT now(),
    PRIMARY KEY (cls, key)
);
```

**Host Variables Table `pigsty.host_var`**

```sql
CREATE TABLE pigsty.host_var (
    cls   TEXT NOT NULL,
    ip    INET NOT NULL,
    key   TEXT NOT NULL,
    value JSONB NULL,
    mtime TIMESTAMPTZ DEFAULT now(),
    PRIMARY KEY (cls, ip, key),
    FOREIGN KEY (cls, ip) REFERENCES pigsty.host(cls, ip)
);
```


### Core Views

These views expose configuration data:

| View | Description |
|:---:|:---|
| `pigsty.inventory` | **Core view**: Generates Ansible dynamic inventory JSON |
| `pigsty.raw_config` | Raw configuration in JSON format |
| `pigsty.global_config` | Global config view, merges defaults and global vars |
| `pigsty.group_config` | Group config view, includes host list and group vars |
| `pigsty.host_config` | Host config view, merges group and host-level vars |
| `pigsty.pg_cluster` | PostgreSQL cluster view |
| `pigsty.pg_instance` | PostgreSQL instance view |
| `pigsty.pg_database` | PostgreSQL database definition view |
| `pigsty.pg_users` | PostgreSQL user definition view |
| `pigsty.pg_service` | PostgreSQL service definition view |
| `pigsty.pg_hba` | PostgreSQL HBA rules view |
| `pigsty.pg_remote` | Remote PostgreSQL instance view |

**`pigsty.inventory`** converts database configuration to Ansible inventory JSON:

```sql
SELECT text FROM pigsty.inventory;
```



-----------------

## Utility Scripts

Use these three scripts to manage the CMDB:

| Script | Function |
|:---:|:---|
| [`bin/inventory_load`](https://github.com/pgsty/pigsty/blob/main/bin/inventory_load) | Load YAML configuration file into PostgreSQL database |
| [`bin/inventory_cmdb`](https://github.com/pgsty/pigsty/blob/main/bin/inventory_cmdb) | Switch configuration source to CMDB (dynamic inventory script) |
| [`bin/inventory_conf`](https://github.com/pgsty/pigsty/blob/main/bin/inventory_conf) | Switch configuration source to static config file `pigsty.yml` |


### inventory_load

Parse a YAML configuration file and import it into the CMDB:

```bash
bin/inventory_load                     # Load default pigsty.yml to default CMDB
bin/inventory_load -p /path/to/conf.yml  # Specify configuration file path
bin/inventory_load -d "postgres://..."   # Specify database connection URL
bin/inventory_load -n myconfig           # Specify configuration name
```

The script performs these operations:

1. Clears existing data in the `pigsty` schema
2. Parses the YAML configuration file
3. Writes global variables to the `global_var` table
4. Writes cluster definitions to the `group` table
5. Writes cluster variables to the `group_var` table
6. Writes host definitions to the `host` table
7. Writes host variables to the `host_var` table

**Environment Variables**

- `PIGSTY_HOME`: Pigsty installation directory, defaults to `~/pigsty`
- `METADB_URL`: Database connection URL, defaults to `service=meta`


### inventory_cmdb

Switch Ansible to use CMDB as the configuration source:

```bash
bin/inventory_cmdb
```

The script performs these operations:

1. Creates dynamic inventory script `${PIGSTY_HOME}/inventory.sh`
2. Modifies `ansible.cfg` to set `inventory` to `inventory.sh`

The generated `inventory.sh` contains:

```bash
#!/bin/bash
psql ${METADB_URL} -AXtwc 'SELECT text FROM pigsty.inventory;'
```


### inventory_conf

Switch back to a static YAML configuration file:

```bash
bin/inventory_conf
```

The script modifies `ansible.cfg` to set `inventory` back to `pigsty.yml`.



-----------------

## Usage Workflow

### First-time CMDB Setup

1. **Initialize the CMDB schema**. Pigsty installation usually does this automatically:

```bash
psql -f ~/pigsty/files/cmdb.sql
```

2. **Load configuration into the database**:

```bash
bin/inventory_load
```

3. **Switch to CMDB mode**:

```bash
bin/inventory_cmdb
```

4. **Verify configuration**:

```bash
ansible all --list-hosts          # List all hosts
ansible-inventory --list          # View complete inventory
```


### Query Configuration

After you enable CMDB, use SQL to query the configuration:

```sql
-- View all clusters
SELECT cls FROM pigsty.group;

-- View all hosts in a cluster
SELECT ip FROM pigsty.host WHERE cls = 'pg-meta';

-- View global variables
SELECT key, value FROM pigsty.global_var;

-- View cluster variables
SELECT key, value FROM pigsty.group_var WHERE cls = 'pg-meta';

-- View all PostgreSQL clusters
SELECT cls, name, pg_databases, pg_users FROM pigsty.pg_cluster;

-- View all PostgreSQL instances
SELECT cls, ins, ip, seq, role FROM pigsty.pg_instance;

-- View all database definitions
SELECT cls, datname, owner, encoding FROM pigsty.pg_database;

-- View all user definitions
SELECT cls, name, login, superuser FROM pigsty.pg_users;
```


### Modify Configuration

Use SQL to change the configuration directly:

```sql
-- Add new cluster
INSERT INTO pigsty.group (cls) VALUES ('pg-new');

-- Add cluster variable
INSERT INTO pigsty.group_var (cls, key, value)
VALUES ('pg-new', 'pg_cluster', '"pg-new"');

-- Add host
INSERT INTO pigsty.host (cls, ip) VALUES ('pg-new', '10.10.10.20');

-- Add host variables
INSERT INTO pigsty.host_var (cls, ip, key, value)
VALUES ('pg-new', '10.10.10.20', 'pg_seq', '1'),
       ('pg-new', '10.10.10.20', 'pg_role', '"primary"');

-- Modify global variable
UPDATE pigsty.global_var SET value = '"new-value"' WHERE key = 'some_param';

-- Delete cluster (cascades to hosts and variables)
DELETE FROM pigsty.group WHERE cls = 'pg-old';
```

Configuration changes are immediately available. You do not need to reload or restart a service.


### Switch Back to Static Configuration

Switch back to a static configuration file:

```bash
bin/inventory_conf
```


-----------------

## Advanced Usage

### Export Configuration

Export CMDB configuration to YAML format:

```bash
psql service=meta -AXtwc "SELECT jsonb_pretty(jsonb_build_object('all', jsonb_build_object('children', children, 'vars', vars))) FROM pigsty.raw_config;"
```

Or use the `ansible-inventory` command:

```bash
ansible-inventory --list --yaml > exported_config.yml
```


### Configuration Auditing

Track configuration changes using the `mtime` field:

```sql
-- View recently modified global variables
SELECT key, value, mtime FROM pigsty.global_var
ORDER BY mtime DESC LIMIT 10;

-- View changes after a specific time
SELECT * FROM pigsty.group_var
WHERE mtime > '2024-01-01'::timestamptz;
```


### Integration with External Systems

CMDB uses standard PostgreSQL. You can integrate it with these systems:

- **Web Management Interface**: Expose configuration data through a REST API, such as PostgREST.
- **CI/CD Pipelines**: Read and write database data directly from deployment scripts.
- **Monitoring & Alerting**: Generate monitoring rules from configuration data.
- **ITSM Systems**: Synchronize data with enterprise CMDB systems.



-----------------

## Considerations

1. **Data Consistency**: After you change configuration, run the corresponding Ansible playbooks again to apply it to the environment.

2. **Backup**: CMDB configuration data is critical. Back it up regularly.

3. **Permissions**: Set appropriate CMDB database access permissions to prevent accidental changes.

4. **Transactions**: Make batch configuration changes in a transaction. This permits rollback if an error occurs.

5. **Connection Pooling**: `inventory.sh` opens a new connection each time it runs. Consider connection pooling if Ansible runs frequently.



-----------------

## Summary

Use CMDB for large cluster deployments, complex queries, external integration, or fine-grained access control. PostgreSQL stores the configuration and provides database functions to manage it.

|      Feature      |           Description           |
|:-----------------:|:-------------------------------:|
|   **Storage**     | PostgreSQL `pigsty` schema      |
| **Dynamic Inventory** |   `inventory.sh` script     |
|  **Config Load**  |  `bin/inventory_load`           |
| **Switch to CMDB** |  `bin/inventory_cmdb`          |
| **Switch to YAML** |  `bin/inventory_conf`          |
|   **Core View**   |   `pigsty.inventory`            |
