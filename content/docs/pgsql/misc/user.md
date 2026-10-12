---
title: User / Role
weight: 1601
description: Users/roles refer to logical objects within a database cluster created
  using the SQL commands `CREATE USER/ROLE`.
icon: fa-solid fa-users
module: [PGSQL]
categories: [Reference]
---

> In this context, users refer to logical objects within a database cluster created using the SQL commands `CREATE USER/ROLE`.

In PostgreSQL, users belong to the database cluster, rather than a specific database.
Create business users before you create business databases.


----------------

## Defining Users

Pigsty defines roles and users in database clusters through two configuration parameters:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): Defines globally unified roles and users
- [`pg_users`](/docs/pgsql/param#pg_users): Defines business users and roles at the database cluster level

The first parameter defines roles and users shared across the environment.
The second defines business roles and users for individual clusters.
Both use arrays of user definition objects.

You can define multiple users and roles.
Pigsty creates global objects first, then cluster-level objects, following array order within each group.
Thus, later users can belong to roles defined earlier.

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
  pool_connlimit: 100             # Optional, user-level max pool connections; omitted inherits global default 100
  search_path: public             # Optional, key-value configuration parameters per postgresql documentation (e.g., use pigsty as default search_path)
```

- The only required field is `name`. Use a valid username that is unique within the PostgreSQL cluster.
- Roles do not need a `password`. Business users with login access usually need one.
- `password` accepts plaintext, scram-sha-256, or md5 hash strings. Avoid plaintext passwords.
- Pigsty creates users and roles in array order. Define roles and groups before their members.
- `login`, `superuser`, `createdb`, `createrole`, `inherit`, `replication`, and `bypassrls` are Boolean flags.
- `pgbouncer` is disabled by default. To add business users to the pool user list, explicitly set it to `true`.

**ACL System**

Pigsty provides a built-in access control / [ACL](/docs/concept/sec/ac#role-system) model. Assign its default business roles to users as required:

- `dbrole_readwrite`: Role with global read-write access (production accounts primarily used by business should have database read-write privileges)
- `dbrole_readonly`: Role with global read-only access (if other businesses need read-only access, use this role)
- `dbrole_admin`: Role with DDL privileges (business administrators, scenarios requiring table creation in applications)
- `dbrole_offline`: Independent read-only role for ad hoc queries, ETL, and analytics; restrict its instance scope explicitly through HBA

To define your own ACL system, consider these parameters and templates:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): System-wide roles and global users
- [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges): Default privileges for newly created objects
- [`roles/pgsql/templates/pg-init-roles.sql`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-roles.sql): Role creation SQL template
- [`roles/pgsql/templates/pg-init-template.sql`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql): Privilege SQL template



----------------

## Creating Users

During the cluster initialization PROVISION phase, Pigsty creates users and roles one at a time.
It uses the [definitions](#defining-users) in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles) and [`pg_users`](/docs/pgsql/param#pg_users).
To [create users](/docs/pgsql/admin#create-user) on an existing cluster, use `bin/pgsql-user`.
Add the definition to `all.children.<cls>.pg_users`, then run:

```bash
bin/pgsql-user <cls> <username>    # pgsql-user.yml -l <cls> -e username=<username>
```

The user creation playbook is always idempotent, unlike the database creation playbook.
If the target user exists, Pigsty changes its attributes to match the configuration.
Thus, you can usually repeat the playbook on existing clusters.


> [!NOTE] Please Use Playbooks to Create Users
> Manual business user creation is not recommended, especially with the default Pgbouncer connection pool.
> If you create users manually, you must maintain the Pgbouncer user list and keep it consistent with PostgreSQL.
> The **`bin/pgsql-user`** tool and [**`pgsql-user.yml`**](/docs/pgsql/playbook#pgsql-useryml) playbook also add users to the [Pgbouncer user list](#pgbouncer-users).



----------------

## Modifying Users

The method for modifying PostgreSQL user attributes is the same as [**Creating Users**](#creating-users).

First, change the required attributes in the user definition.
Then run this command to apply them:

```bash
bin/pgsql-user <cls> <username>    # pgsql-user.yml -l <cls> -e username=<username>
```

User modification changes attributes with `ALTER USER`; it does not delete users.
It also keeps existing privileges and groups.
It uses `GRANT` to add new roles.



----------------

## Pgbouncer Users

Pigsty enables Pgbouncer connection pooling and manages its users by default.

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

When you [create a database](#creating-databases), Pigsty refreshes the Pgbouncer database list.
An online reload applies the changes without affecting existing connections.

Pgbouncer runs as the same `dbsu` as PostgreSQL.
The default is the `postgres` operating system user.
As dbsu, use the `pgb` alias for Pgbouncer administration.

When you [create users](#creating-users), Pigsty refreshes `userlist.txt` and `useropts.txt` automatically.
An online reload applies these pool user changes, normally without affecting existing connections.

Use [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) to authenticate pool users with dynamic queries.
This is an alternative when you do not want to manage pool users directly.
