---
title: User Management
weight: 2005
description: Creating PostgreSQL users/roles, managing connection pool roles, refreshing
  expiration times, user password rotation
icon: fa-solid fa-users
module: [PGSQL]
categories: [Task]
---


----------------

## Creating Users

To create a new business user on an existing Postgres cluster, add the user definition to `all.children.<cls>.pg_users`, then create it using the following command:

```bash
bin/pgsql-user <cls> <username>   # ./pgsql-user.yml -l <cls> -e username=<username>
```

Example: Creating a business user

[![asciicast](https://asciinema.org/a/568789.svg)](https://asciinema.org/a/568789)


--------

## Defining Users

Pigsty defines roles and users in database clusters through two configuration parameters:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): Defines globally unified roles and users
- [`pg_users`](/docs/pgsql/param#pg_users): Defines business users and roles at the database cluster level

The former is used to define roles and users shared across the entire environment, while the latter defines business roles and users specific to individual clusters. Both have the same format, being arrays of user definition objects.

You can define multiple users/roles. They will be created sequentially first globally, then by cluster, and finally in array order, so later users can belong to previously defined roles.

Below is the business user definition in the default cluster `pg-meta` in the Pigsty demo environment:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - {name: dbuser_meta     ,password: DBUser.Meta     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
      - {name: dbuser_view     ,password: DBUser.Viewer   ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
      - {name: dbuser_grafana  ,password: DBUser.Grafana  ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for grafana database    }
      - {name: dbuser_bytebase ,password: DBUser.Bytebase ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for bytebase database   }
      - {name: dbuser_kong     ,password: DBUser.Kong     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for kong api gateway    }
      - {name: dbuser_gitea    ,password: DBUser.Gitea    ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for gitea service       }
      - {name: dbuser_wiki     ,password: DBUser.Wiki     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for wiki.js service     }
      - {name: dbuser_noco     ,password: DBUser.Noco     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for nocodb service      }
```

Each user/role definition is an object that may include the following fields, using the `dbuser_meta` user as an example:

```yaml
- name: dbuser_meta               # Required, `name` is the only mandatory field in a user definition
  password: DBUser.Meta           # Optional, password, can be a scram-sha-256 hash string or plaintext
  login: true                     # Optional, can log in by default
  superuser: false                # Optional, default is false, is this a superuser?
  createdb: false                 # Optional, default is false, can create databases?
  createrole: false               # Optional, default is false, can create roles?
  inherit: true                   # Optional, by default, can this role use inherited permissions?
  replication: false              # Optional, default is false, can this role perform replication?
  bypassrls: false                # Optional, default is false, can this role bypass row-level security?
  pgbouncer: true                 # Optional, default is false, add this user to the pgbouncer user list? (production users using connection pooling should explicitly set to true)
  connlimit: -1                   # Optional, user connection limit, default -1 disables limit
  expire_in: 3650                 # Optional, expiration time for this role: calculated as created time + n days (higher priority than expire_at)
  expire_at: '2030-12-31'         # Optional, time point when this role expires, specify a specific date using YYYY-MM-DD format string (lower priority than expire_in)
  comment: pigsty admin user      # Optional, description and comment string for this user/role
  roles: [dbrole_admin]           # Optional, default roles are: dbrole_{admin,readonly,readwrite,offline}
  parameters: {}                  # Optional, configure role-level database parameters for this role using `ALTER ROLE SET`
  pool_mode: transaction          # Optional, pgbouncer pool mode defaulting to transaction, at user level
  pool_connlimit: -1              # Optional, maximum database connections at user level, default -1 disables limit
  search_path: public             # Optional, key-value configuration parameters according to postgresql documentation (e.g., use pigsty as default search_path)
```

- The only required field is `name`, which should be a valid and unique username in the PostgreSQL cluster.
- Roles don't need a `password`, but for login-enabled business users, it's usually necessary to specify a password.
- `password` can be plaintext or a scram-sha-256 / md5 hash string; please avoid using plaintext passwords.
- Users/roles are created sequentially in array order, so ensure role/group definitions come before members.
- `login`, `superuser`, `createdb`, `createrole`, `inherit`, `replication`, `bypassrls` are boolean flags.
- `pgbouncer` is disabled by default: to add business users to the pgbouncer user list, you should explicitly set it to `true`.

**ACL System**

Pigsty has a built-in, out-of-the-box access control / [ACL](/docs/pgsql/security/#default-roles) system. You can easily use it by assigning the following four default roles to business users:

- `dbrole_readwrite`: Role with global read-write access (production accounts primarily used by business should have database read-write permissions)
- `dbrole_readonly`: Role with global read-only access (if other businesses want read-only access, they can use this role)
- `dbrole_admin`: Role with DDL permissions (business administrators, scenarios requiring table creation in applications)
- `dbrole_offline`: Role with restricted read-only access (can only access [offline](/docs/pgsql/config#offline-replica) instances, typically for personal users)

If you want to redesign your own ACL system, consider customizing the following parameters and templates:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): System-wide roles and global users
- [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges): Default privileges for newly created objects
- [`roles/pgsql/templates/pg-init-role.sql`](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/pg-init-role.sql): Role creation SQL template
- [`roles/pgsql/templates/pg-init-template.sql`](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql): Privilege SQL template



----------------

## Creating Users

Users and roles [defined](#defining-users) in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles) and [`pg_users`](/docs/pgsql/param#pg_users) will be automatically created sequentially during the PROVISION phase of cluster initialization.
If you want to [create users](/docs/pgsql/admin#creating-users) on an existing cluster, you can use the `bin/pgsql-user` tool.
Add the new user/role definition to `all.children.<cls>.pg_users` and create the database using the following method:

```bash
bin/pgsql-user <cls> <username>    # pgsql-user.yml -l <cls> -e username=<username>
```

Unlike databases, the user creation playbook is always idempotent. When the target user already exists, Pigsty will modify the target user's attributes to conform to the configuration. So running it repeatedly on existing clusters typically won't cause issues.


{{% alert title="Please Use Playbook to Create Users" color="secondary" %}}

We do not recommend manually creating new business users, especially when you want to create users that use the default pgbouncer connection pool: unless you're willing to manually maintain the user list in Pgbouncer and keep it consistent with PostgreSQL.
When creating a new database using the **`bin/pgsql-user`** tool or the [**`pgsql-user.yml`**](/docs/pgsql/playbook#pgsql-useryml) playbook, this database will also be added to the [Pgbouncer Users](#pgbouncer-users) list.

{{% /alert %}}



----------------

## Modifying Users

The method for modifying PostgreSQL user attributes is the same as [**Creating Users**](#creating-users).

First, adjust your user definition, modify the attributes that need adjustment, then execute the following command to apply:

```bash
bin/pgsql-user <cls> <username>    # pgsql-user.yml -l <cls> -e username=<username>
```

Note that modifying users does not delete users but modifies user attributes using the `ALTER USER` command; it also doesn't revoke user permissions and groups, and uses the `GRANT` command to grant new roles.



----------------

## Deleting Users

To delete a user, set its `state` to `absent` and execute the playbook:

```yaml
pg_users:
  - name: dbuser_old
    state: absent
```

```bash
bin/pgsql-user <cls> dbuser_old
```

**The deletion process will:**

1. Use the `pg-drop-role` script to safely delete the user
2. Automatically disable user login and terminate active connections
3. Automatically transfer database/tablespace ownership to `postgres`
4. Automatically handle object ownership and permissions in all databases
5. Revoke all role memberships
6. Create an audit log for traceability
7. Remove the user from the Pgbouncer user list (if previously added)
8. Reload Pgbouncer configuration

**Protected System Users:**

The following system users cannot be deleted via `state: absent` and will be automatically skipped:

- `postgres` (superuser)
- `replicator` (or the user configured in `pg_replication_username`)
- `dbuser_dba` (or the user configured in `pg_admin_username`)
- `dbuser_monitor` (or the user configured in `pg_monitor_username`)


{{% alert title="Safe Deletion" color="primary" %}}

Pigsty uses the `pg-drop-role` script to safely delete users. This script will:

- Automatically handle objects owned by the user (databases, tablespaces, schemas, tables, etc.)
- Automatically terminate active connections (using `--force`)
- Transfer object ownership to the `postgres` user
- Create an audit log at `/tmp/pg_drop_role_<user>_<timestamp>.log`

No need to manually handle dependent objects - the script handles everything automatically.

{{% /alert %}}


### pg-drop-role Script

`pg-drop-role` is a safe user deletion script provided by Pigsty, located at `/pg/bin/pg-drop-role`.

**Usage:**

```bash
pg-drop-role <role_name> [successor_role] [options]
```

**Common Options:**

| Option | Description |
|--------|-------------|
| `--check` | Only check dependencies, don't execute deletion |
| `--dry-run` | Show SQL statements that would be executed, don't actually execute |
| `--force` | Force terminate active connections before deletion |
| `-v, --verbose` | Show verbose output |
| `-h, --host` | Database host |
| `-p, --port` | Database port |

**Examples:**

```bash
# Check user dependencies (read-only operation)
pg-drop-role dbuser_old --check

# Preview deletion operation (don't actually execute)
pg-drop-role dbuser_old --dry-run -v

# Delete user, transfer objects to postgres
pg-drop-role dbuser_old

# Delete user, transfer objects to specified user
pg-drop-role dbuser_old dbuser_new

# Force delete (terminate active connections)
pg-drop-role dbuser_old --force
```

**Deletion Process:**

1. **Pre-check** - Verify connection, check if user exists, check if protected
2. **Create audit snapshot** - Record all user dependencies
3. **Disable login** - `ALTER ROLE ... NOLOGIN`
4. **Terminate connections** - Terminate active connections when using `--force`
5. **Transfer shared objects** - Transfer database, tablespace ownership
6. **Process all databases** - Execute `REASSIGN OWNED` + `DROP OWNED` in each database
7. **Revoke memberships** - Revoke all role memberships
8. **Drop role** - Execute `DROP ROLE`



----------------

## Pgbouncer Users

Pgbouncer is enabled by default and serves as connection pool middleware, with users managed by default.

Pigsty defaults to adding all users in [`pg_users`](/docs/pgsql/param#pg_users) that explicitly have the `pgbouncer: true` flag to the pgbouncer user list.

Users in the Pgbouncer connection pool are listed in `/etc/pgbouncer/userlist.txt`:

```ini
"postgres" ""
"dbuser_wiki" "SCRAM-SHA-256$4096:+77dyhrPeFDT/TptHs7/7Q==$KeatuohpKIYzHPCt/tqBu85vI11o9mar/by0hHYM2W8=:X9gig4JtjoS8Y/o1vQsIX/gY1Fns8ynTXkbWOjUfbRQ="
"dbuser_view" "SCRAM-SHA-256$4096:DFoZHU/DXsHL8MJ8regdEw==$gx9sUGgpVpdSM4o6A2R9PKAUkAsRPLhLoBDLBUYtKS0=:MujSgKe6rxcIUMv4GnyXJmV0YNbf39uFRZv724+X1FE="
"dbuser_monitor" "SCRAM-SHA-256$4096:fwU97ZMO/KR0ScHO5+UuBg==$CrNsmGrx1DkIGrtrD1Wjexb/aygzqQdirTO1oBZROPY=:L8+dJ+fqlMQh7y4PmVR/gbAOvYWOr+KINjeMZ8LlFww="
"dbuser_meta" "SCRAM-SHA-256$4096:leB2RQPcw1OIiRnPnOMUEg==$eyC+NIMKeoTxshJu314+BmbMFpCcspzI3UFZ1RYfNyU=:fJgXcykVPvOfro2MWNkl5q38oz21nSl1dTtM65uYR1Q="
"dbuser_kong" "SCRAM-SHA-256$4096:bK8sLXIieMwFDz67/0dqXQ==$P/tCRgyKx9MC9LH3ErnKsnlOqgNd/nn2RyvThyiK6e4=:CDM8QZNHBdPf97ztusgnE7olaKDNHBN0WeAbP/nzu5A="
"dbuser_grafana" "SCRAM-SHA-256$4096:HjLdGaGmeIAGdWyn2gDt/Q==$jgoyOB8ugoce+Wqjr0EwFf8NaIEMtiTuQTg1iEJs9BM=:ed4HUFqLyB4YpRr+y25FBT7KnlFDnan6JPVT9imxzA4="
"dbuser_gitea" "SCRAM-SHA-256$4096:l1DBGCc4dtircZ8O8Fbzkw==$tpmGwgLuWPDog8IEKdsaDGtiPAxD16z09slvu+rHE74=:pYuFOSDuWSofpD9OZhG7oWvyAR0PQjJBffgHZLpLHds="
"dbuser_dba" "SCRAM-SHA-256$4096:zH8niABU7xmtblVUo2QFew==$Zj7/pq+ICZx7fDcXikiN7GLqKKFA+X5NsvAX6CMshF0=:pqevR2WpizjRecPIQjMZOm+Ap+x0kgPL2Iv5zHZs0+g="
"dbuser_bytebase" "SCRAM-SHA-256$4096:OMoTM9Zf8QcCCMD0svK5gg==$kMchqbf4iLK1U67pVOfGrERa/fY818AwqfBPhsTShNQ=:6HqWteN+AadrUnrgC0byr5A72noqnPugItQjOLFw0Wk="
```

User-level connection pool parameters are maintained in a separate file: `/etc/pgbouncer/useropts.txt`, for example:

```ini
dbuser_dba                  = pool_mode=session max_user_connections=16
dbuser_monitor              = pool_mode=session max_user_connections=8
```

When you [create a database](#creating-databases), Pgbouncer's database list definition file will be refreshed and take effect through online configuration reload, without affecting existing connections.

Pgbouncer runs with the same `dbsu` as PostgreSQL, defaulting to the `postgres` OS user. You can use the `pgb` alias to access pgbouncer management functions using dbsu.

Pigsty also provides a utility function `pgb-route` that can quickly switch pgbouncer database traffic to other nodes in the cluster for zero-downtime migration:

Connection pool user configuration files `userlist.txt` and `useropts.txt` will be automatically refreshed when you [create users](#creating-users) and take effect through online configuration reload, normally without affecting existing connections.

Note that the [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) parameter allows you to use dynamic queries to complete connection pool user authentication, which is a compromise solution when you don't want to manage users in the connection pool.
