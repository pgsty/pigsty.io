---
title: User / Role
weight: 1601
description: Users/roles refer to logical objects within a database cluster created
  using the SQL commands `CREATE USER/ROLE`.
icon: fa-solid fa-users
module: [PGSQL]
categories: [Reference]
tags: [User]
---

> In this context, users refer to logical objects within a database cluster created using the SQL commands `CREATE USER/ROLE`.

In PostgreSQL, users belong directly to the database cluster rather than to a specific database. Therefore, when creating business databases and business users, you should follow the principle of "users first, then databases."


----------------

## Defining Users

Pigsty defines roles and users in database clusters through two configuration parameters:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): Defines globally unified roles and users
- [`pg_users`](/docs/pgsql/param#pg_users): Defines business users and roles at the database cluster level

The former defines roles and users shared across the entire environment, while the latter defines business roles and users specific to individual clusters. Both have the same format and are arrays of user definition objects.

You can define multiple users/roles, and they will be created sequentially—first global, then cluster-level, and finally in array order—so later users can belong to roles defined earlier.

Here is the business user definition for the default cluster `pg-meta` in the Pigsty demo environment:

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

Each user/role definition is an object that may include the following fields. Using `dbuser_meta` as an example:

```yaml
- name: dbuser_meta               # Required, `name` is the only mandatory field in user definition
  password: DBUser.Meta           # Optional, password can be scram-sha-256 hash string or plaintext
  login: true                     # Optional, can login by default
  superuser: false                # Optional, default is false, is this a superuser?
  createdb: false                 # Optional, default is false, can create databases?
  createrole: false               # Optional, default is false, can create roles?
  inherit: true                   # Optional, by default this role can use inherited privileges?
  replication: false              # Optional, default is false, can this role perform replication?
  bypassrls: false                # Optional, default is false, can this role bypass row-level security?
  pgbouncer: true                 # Optional, default is false, add this user to pgbouncer user list? (production users using connection pool should explicitly set to true)
  connlimit: -1                   # Optional, user connection limit, default -1 disables limit
  expire_in: 3650                 # Optional, this role expires: calculated from creation + n days (higher priority than expire_at)
  expire_at: '2030-12-31'         # Optional, when this role expires, use YYYY-MM-DD format string to specify a date (lower priority than expire_in)
  comment: pigsty admin user      # Optional, description and comment string for this user/role
  roles: [dbrole_admin]           # Optional, default roles are: dbrole_{admin,readonly,readwrite,offline}
  parameters: {}                  # Optional, use `ALTER ROLE SET` to configure role-level database parameters for this role
  pool_mode: transaction          # Optional, pgbouncer pool mode defaulting to transaction, user level
  pool_connlimit: -1              # Optional, user-level maximum database connections, default -1 disables limit
  search_path: public             # Optional, key-value configuration parameters per postgresql documentation (e.g., use pigsty as default search_path)
```

- The only required field is `name`, which should be a valid and unique username in the PostgreSQL cluster.
- Roles don't need a `password`, but for loginable business users, a password is usually required.
- `password` can be plaintext or scram-sha-256 / md5 hash string; please avoid using plaintext passwords.
- Users/roles are created one by one in array order, so ensure roles/groups are defined before their members.
- `login`, `superuser`, `createdb`, `createrole`, `inherit`, `replication`, `bypassrls` are boolean flags.
- `pgbouncer` is disabled by default: to add business users to the pgbouncer user list, you should explicitly set it to `true`.

**ACL System**

Pigsty has a built-in, out-of-the-box access control / [ACL](/docs/concept/sec/ac/#default-roles) system. You can easily use it by simply assigning the following four default roles to business users:

- `dbrole_readwrite`: Role with global read-write access (production accounts primarily used by business should have database read-write privileges)
- `dbrole_readonly`: Role with global read-only access (if other businesses need read-only access, use this role)
- `dbrole_admin`: Role with DDL privileges (business administrators, scenarios requiring table creation in applications)
- `dbrole_offline`: Restricted read-only access role (can only access [offline](/docs/pgsql/config#offline-replica) instances, typically for individual users)

If you want to redesign your own ACL system, consider customizing the following parameters and templates:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): System-wide roles and global users
- [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges): Default privileges for newly created objects
- [`roles/pgsql/templates/pg-init-role.sql`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-role.sql): Role creation SQL template
- [`roles/pgsql/templates/pg-init-template.sql`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql): Privilege SQL template



----------------

## Creating Users

Users and roles [defined](#defining-users) in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles) and [`pg_users`](/docs/pgsql/param#pg_users) are automatically created one by one during the cluster initialization PROVISION phase.
If you want to [create users](/docs/pgsql/admin#create-user) on an existing cluster, you can use the `bin/pgsql-user` tool.
Add the new user/role definition to `all.children.<cls>.pg_users` and use the following method to create the user:

```bash
bin/pgsql-user <cls> <username>    # pgsql-user.yml -l <cls> -e username=<username>
```

Unlike databases, the user creation playbook is always idempotent. When the target user already exists, Pigsty will modify the target user's attributes to match the configuration. So running it repeatedly on existing clusters is usually not a problem.


{{% alert title="Please Use Playbooks to Create Users" color="secondary" %}}

We don't recommend manually creating new business users, especially when you want the user to use the default pgbouncer connection pool: unless you're willing to manually maintain the user list in Pgbouncer and keep it consistent with PostgreSQL.
When creating new users with **`bin/pgsql-user`** tool or [**`pgsql-user.yml`**](/docs/pgsql/playbook#pgsql-useryml) playbook, the user will also be added to the [Pgbouncer Users](#pgbouncer-users) list.

{{% /alert %}}



----------------

## Modifying Users

The method for modifying PostgreSQL user attributes is the same as [**Creating Users**](#creating-users).

First, adjust your user definition, modify the attributes that need adjustment, then execute the following command to apply:

```bash
bin/pgsql-user <cls> <username>    # pgsql-user.yml -l <cls> -e username=<username>
```

Note that modifying users will not delete users, but modify user attributes through the `ALTER USER` command; it also won't revoke user privileges and groups, and will use the `GRANT` command to grant new roles.



----------------

## Pgbouncer Users

Pgbouncer is enabled by default and serves as a connection pool middleware, with its users managed by default.

Pigsty adds all users in [`pg_users`](/docs/pgsql/param#pg_users) that explicitly have the `pgbouncer: true` flag to the pgbouncer user list.

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
"dbuser_dba" "SCRAM-SHA-256$4096:zH8niABU7xmtblVUo2QFew==$Zj7/pq+ICZx7fDcXikiN7GLqkKFA+X5NsvAX6CMshF0=:pqevR2WpizjRecPIQjMZOm+Ap+x0kgPL2Iv5zHZs0+g="
"dbuser_bytebase" "SCRAM-SHA-256$4096:OMoTM9Zf8QcCCMD0svK5gg==$kMchqbf4iLK1U67pVOfGrERa/fY818AwqfBPhsTShNQ=:6HqWteN+AadrUnrgC0byr5A72noqnPugItQjOLFw0Wk="
```

User-level connection pool parameters are maintained in a separate file: `/etc/pgbouncer/useropts.txt`, for example:

```ini
dbuser_dba                  = pool_mode=session max_user_connections=16
dbuser_monitor              = pool_mode=session max_user_connections=8
```

When you [create a database](#creating-databases), the Pgbouncer database list definition file will be refreshed and take effect through online configuration reload, without affecting existing connections.

Pgbouncer runs with the same `dbsu` as PostgreSQL, which defaults to the `postgres` operating system user. You can use the `pgb` alias to access pgbouncer management functions using the dbsu.

Pigsty also provides a utility function `pgb-route` that can quickly switch pgbouncer database traffic to other nodes in the cluster, useful for zero-downtime migration:

The connection pool user configuration files `userlist.txt` and `useropts.txt` are automatically refreshed when you [create users](#creating-users), and take effect through online configuration reload, normally without affecting existing connections.

Note that the [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) parameter allows you to use dynamic queries to complete connection pool user authentication—this is a compromise when you don't want to manage users in the connection pool.

