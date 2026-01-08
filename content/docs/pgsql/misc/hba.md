---
title: Authentication / HBA
weight: 1604
description: Detailed explanation of Host-Based Authentication (HBA) in Pigsty.
icon: fa-solid fa-key
module: [PGSQL]
categories: [Reference]
tags: [HBA, Auth]
---

> Detailed explanation of Host-Based Authentication (HBA) in Pigsty.

Authentication is the foundation of [Access Control](/docs/pgsql/security/) and the [Privilege System](/docs/pgsql/security/#privilege-system). PostgreSQL has multiple [authentication](https://www.postgresql.org/docs/current/client-authentication.html) methods.

Here we mainly introduce HBA: Host Based Authentication. HBA rules define which users can access which databases from which locations and in which ways.


----------------

## Client Authentication

To connect to a PostgreSQL database, users must first be authenticated (password is used by default).

You can provide the password in the connection string (not secure), or pass it using the `PGPASSWORD` environment variable or `.pgpass` file. Refer to the [`psql`](https://www.postgresql.org/docs/current/app-psql.html#usage) documentation and [PostgreSQL Connection Strings](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING) for more details.

```bash
psql 'host=<host> port=<port> dbname=<dbname> user=<username> password=<password>'
psql postgres://<username>:<password>@<host>:<port>/<dbname>
PGPASSWORD=<password>; psql -U <username> -h <host> -p <port> -d <dbname>
```

For example, to connect to Pigsty's default `meta` database, you can use the following connection strings:

```bash
psql 'host=10.10.10.10 port=5432 dbname=meta user=dbuser_dba password=DBUser.DBA'
psql postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta
PGPASSWORD=DBUser.DBA; psql -U dbuser_dba -h 10.10.10.10 -p 5432 -d meta
```

By default, Pigsty enables server-side SSL encryption but does not verify client SSL certificates. To connect using client SSL certificates, you can provide client parameters using the `PGSSLCERT` and `PGSSLKEY` environment variables or `sslkey` and `sslcert` parameters.

```bash
psql 'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta?sslkey=/path/to/dbuser_dba.key&sslcert=/path/to/dbuser_dba.crt'
```

Client certificates (`CN` = username) can be signed using the local CA with the [`cert.yml`](https://github.com/pgsty/pigsty/blob/main/cert.yml) playbook.




----------------

## Defining HBA

In Pigsty, there are four parameters related to HBA rules:

- [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules): postgres HBA rules
- [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules): postgres global default HBA rules
- [`pgb_hba_rules`](/docs/pgsql/param#pgb_hba_rules): pgbouncer HBA rules
- [`pgb_default_hba_rules`](/docs/pgsql/param#pgb_default_hba_rules): pgbouncer global default HBA rules

These are all arrays of HBA rule objects. Each HBA rule is an object in one of the following two forms:


### 1. Raw Form

The raw form of HBA is almost identical to the PostgreSQL `pg_hba.conf` format:

```yaml
- title: allow intranet password access
  role: common
  rules:
    - host   all  all  10.0.0.0/8      md5
    - host   all  all  172.16.0.0/12   md5
    - host   all  all  192.168.0.0/16  md5
```

In this form, the `rules` field is an array of strings, where each line is a raw [HBA rule](https://www.postgresql.org/docs/current/auth-pg-hba-conf.html). The `title` field is rendered as a comment explaining what the rules below do.

The `role` field specifies which instance roles the rule applies to. When an instance's [`pg_role`](/docs/pgsql/param#pg_role) matches the `role`, the HBA rule will be added to that instance's HBA.
- HBA rules with `role: common` will be added to all instances.
- HBA rules with `role: primary` will only be added to primary instances.
- HBA rules with `role: replica` will only be added to replica instances.
- HBA rules with `role: offline` will be added to offline instances ([`pg_role`](/docs/pgsql/param#pg_role) = `offline` or [`pg_offline_query`](/docs/pgsql/param#pg_offline_query) = `true`)




### 2. Alias Form

The alias form allows you to maintain HBA rules in a simpler, clearer, and more convenient way: it replaces the `rules` field with `addr`, `auth`, `user`, and `db` fields. The `title` and `role` fields still apply.

```yaml
- addr: 'intra'    # world|intra|infra|admin|local|localhost|cluster|<cidr>
  auth: 'pwd'      # trust|pwd|ssl|cert|deny|<official auth method>
  user: 'all'      # all|${dbsu}|${repl}|${admin}|${monitor}|<user>|<group>
  db: 'all'        # all|replication|....
  rules: []        # raw hba string precedence over above all
  title: allow intranet password access
```

- `addr`: **where** - Which IP address ranges are affected by this rule?
  - `world`: All IP addresses
  - `intra`: All intranet IP address ranges: `'10.0.0.0/8', '172.16.0.0/12', '192.168.0.0/16'`
  - `infra`: IP addresses of Infra nodes
  - `admin`: IP addresses of `admin_ip` management nodes
  - `local`: Local Unix Socket
  - `localhost`: Local Unix Socket and TCP 127.0.0.1/32 loopback address
  - `cluster`: IP addresses of all members in the same PostgreSQL cluster
  - `<cidr>`: A specific CIDR address block or IP address
- `auth`: **how** - What authentication method does this rule specify?
  - `deny`: Deny access
  - `trust`: Trust directly, no authentication required
  - `pwd`: Password authentication, uses `md5` or `scram-sha-256` authentication based on the [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc) parameter
  - `sha`/`scram-sha-256`: Force use of `scram-sha-256` password authentication.
  - `md5`: `md5` password authentication, but can also be compatible with `scram-sha-256` authentication, not recommended.
  - `ssl`: On top of password authentication `pwd`, require SSL to be enabled
  - `ssl-md5`: On top of password authentication `md5`, require SSL to be enabled
  - `ssl-sha`: On top of password authentication `sha`, require SSL to be enabled
  - `os`/`ident`: Use `ident` authentication with the operating system user identity
  - `peer`: Use `peer` authentication method, similar to `os ident`
  - `cert`: Use client SSL certificate-based authentication, certificate CN is the username
- `user`: **who**: Which users are affected by this rule?
  - `all`: All users
  - `${dbsu}`: Default database superuser [`pg_dbsu`](/docs/pgsql/param#pg_dbsu)
  - `${repl}`: Default database replication user [`pg_replication_username`](/docs/pgsql/param#pg_replication_username)
  - `${admin}`: Default database admin user [`pg_admin_username`](/docs/pgsql/param#pg_admin_username)
  - `${monitor}`: Default database monitor user [`pg_monitor_username`](/docs/pgsql/param#pg_monitor_username)
  - Other specific users or roles
- `db`: **which**: Which databases are affected by this rule?
  - `all`: All databases
  - `replication`: Allow replication connections (not specifying a specific database)
  - A specific database


### 3. Definition Location

Typically, global HBA is defined in `all.vars`. If you want to modify the global default HBA rules, you can copy one from the [`full.yml`](https://github.com/pgsty/pigsty/blob/main/conf/full.yml#L690) template to `all.vars` and modify it.

- [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules): postgres global default HBA rules
- [`pgb_default_hba_rules`](/docs/pgsql/param#pgb_default_hba_rules): pgbouncer global default HBA rules

Cluster-specific HBA rules are defined in the database cluster-level configuration:

- [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules): postgres HBA rules
- [`pgb_hba_rules`](/docs/pgsql/param#pgb_hba_rules): pgbouncer HBA rules

Here are some examples of cluster HBA rule definitions:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_hba_rules:
      - { user: dbuser_view ,db: all    ,addr: infra        ,auth: pwd  ,title: 'Allow dbuser_view password access to all databases from infrastructure nodes'}
      - { user: all         ,db: all    ,addr: 100.0.0.0/8  ,auth: pwd  ,title: 'Allow all users password access to all databases from K8S network'          }
      - { user: '${admin}'  ,db: world  ,addr: 0.0.0.0/0    ,auth: cert ,title: 'Allow admin user to login from anywhere with client certificate'       }
```



----------------

## Reloading HBA

HBA is a static rule configuration file that needs to be reloaded to take effect after modification. The default HBA rule set typically doesn't need to be reloaded because it doesn't involve Role or cluster members.

If your HBA design uses specific instance role restrictions or cluster member restrictions, then when cluster instance members change (add/remove/failover), some HBA rules' effective conditions/scope change, and you typically also need to [reload HBA](/docs/pgsql/admin#reload-hba) to reflect the latest changes.

To reload postgres/pgbouncer hba rules:

```bash
bin/pgsql-hba <cls>                 # Reload hba rules for cluster `<cls>`
bin/pgsql-hba <cls> ip1 ip2...      # Reload hba rules for specific instances
```

The underlying Ansible playbook commands actually executed are:

```bash
./pgsql.yml -l <cls> -e pg_reload=true -t pg_hba,pg_reload
./pgsql.yml -l <cls> -e pg_reload=true -t pgbouncer_hba,pgbouncer_reload
```




----------------

## Default HBA

Pigsty has a default set of HBA rules that are secure enough for most scenarios. These rules use the alias form, so they are basically self-explanatory.

```yaml
pg_default_hba_rules:             # postgres global default HBA rules 
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  }
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' }
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replicator replication from localhost'}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replicator replication from intranet' }
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replicator postgres db from intranet' }
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' }
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor from infra host with password'}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   }
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin @ everywhere with ssl & pwd'   }
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'pgbouncer read/write via local socket'}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'read/write biz user via password'     }
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'allow etl offline tasks from intranet'}
pgb_default_hba_rules:            # pgbouncer global default HBA rules 
  - {user: '${dbsu}'    ,db: pgbouncer   ,addr: local     ,auth: peer  ,title: 'dbsu local admin access with os ident'}
  - {user: 'all'        ,db: all         ,addr: localhost ,auth: pwd   ,title: 'allow all user local access with pwd' }
  - {user: '${monitor}' ,db: pgbouncer   ,addr: intra     ,auth: pwd   ,title: 'monitor access via intranet with pwd' }
  - {user: '${monitor}' ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other monitor access addr' }
  - {user: '${admin}'   ,db: all         ,addr: intra     ,auth: pwd   ,title: 'admin access via intranet with pwd'   }
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other admin access addr'   }
  - {user: 'all'        ,db: all         ,addr: intra     ,auth: pwd   ,title: 'allow all user intra access with pwd' }
```

<details><summary>Example: Rendered pg_hba.conf</summary>

```ini
#==============================================================#
# File      :   pg_hba.conf
# Desc      :   Postgres HBA Rules for pg-meta-1 [primary]
# Time      :   2023-01-11 15:19
# Host      :   pg-meta-1 @ 10.10.10.10:5432
# Path      :   /pg/data/pg_hba.conf
# Note      :   ANSIBLE MANAGED, DO NOT CHANGE!
# Author    :   Ruohang Feng (rh@vonng.com)
# License   :   AGPLv3
#==============================================================#

# addr alias
# local     : /var/run/postgresql
# admin     : 10.10.10.10
# infra     : 10.10.10.10
# intra     : 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16

# user alias
# dbsu    :  postgres
# repl    :  replicator
# monitor :  dbuser_monitor
# admin   :  dbuser_dba

# dbsu access via local os user ident [default]
local    all                postgres                              ident

# dbsu replication from local os ident [default]
local    replication        postgres                              ident

# replicator replication from localhost [default]
local    replication        replicator                            scram-sha-256
host     replication        replicator         127.0.0.1/32       scram-sha-256

# replicator replication from intranet [default]
host     replication        replicator         10.0.0.0/8         scram-sha-256
host     replication        replicator         172.16.0.0/12      scram-sha-256
host     replication        replicator         192.168.0.0/16     scram-sha-256

# replicator postgres db from intranet [default]
host     postgres           replicator         10.0.0.0/8         scram-sha-256
host     postgres           replicator         172.16.0.0/12      scram-sha-256
host     postgres           replicator         192.168.0.0/16     scram-sha-256

# monitor from localhost with password [default]
local    all                dbuser_monitor                        scram-sha-256
host     all                dbuser_monitor     127.0.0.1/32       scram-sha-256

# monitor from infra host with password [default]
host     all                dbuser_monitor     10.10.10.10/32     scram-sha-256

# admin @ infra nodes with pwd & ssl [default]
hostssl  all                dbuser_dba         10.10.10.10/32     scram-sha-256

# admin @ everywhere with ssl & pwd [default]
hostssl  all                dbuser_dba         0.0.0.0/0          scram-sha-256

# pgbouncer read/write via local socket [default]
local    all                +dbrole_readonly                      scram-sha-256
host     all                +dbrole_readonly   127.0.0.1/32       scram-sha-256

# read/write biz user via password [default]
host     all                +dbrole_readonly   10.0.0.0/8         scram-sha-256
host     all                +dbrole_readonly   172.16.0.0/12      scram-sha-256
host     all                +dbrole_readonly   192.168.0.0/16     scram-sha-256

# allow etl offline tasks from intranet [default]
host     all                +dbrole_offline    10.0.0.0/8         scram-sha-256
host     all                +dbrole_offline    172.16.0.0/12      scram-sha-256
host     all                +dbrole_offline    192.168.0.0/16     scram-sha-256

# allow application database intranet access [common] [DISABLED]
#host    kong            dbuser_kong         10.0.0.0/8          md5
#host    bytebase        dbuser_bytebase     10.0.0.0/8          md5
#host    grafana         dbuser_grafana      10.0.0.0/8          md5

```

</details>



<details><summary>Example: Rendered pgb_hba.conf</summary>

```ini
#==============================================================#
# File      :   pgb_hba.conf
# Desc      :   Pgbouncer HBA Rules for pg-meta-1 [primary]
# Time      :   2023-01-11 15:28
# Host      :   pg-meta-1 @ 10.10.10.10:5432
# Path      :   /etc/pgbouncer/pgb_hba.conf
# Note      :   ANSIBLE MANAGED, DO NOT CHANGE!
# Author    :   Ruohang Feng (rh@vonng.com)
# License   :   AGPLv3
#==============================================================#

# PGBOUNCER HBA RULES FOR pg-meta-1 @ 10.10.10.10:6432
# ansible managed: 2023-01-11 14:30:58

# addr alias
# local     : /var/run/postgresql
# admin     : 10.10.10.10
# infra     : 10.10.10.10
# intra     : 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16

# user alias
# dbsu    :  postgres
# repl    :  replicator
# monitor :  dbuser_monitor
# admin   :  dbuser_dba

# dbsu local admin access with os ident [default]
local    pgbouncer          postgres                              peer

# allow all user local access with pwd [default]
local    all                all                                   scram-sha-256
host     all                all                127.0.0.1/32       scram-sha-256

# monitor access via intranet with pwd [default]
host     pgbouncer          dbuser_monitor     10.0.0.0/8         scram-sha-256
host     pgbouncer          dbuser_monitor     172.16.0.0/12      scram-sha-256
host     pgbouncer          dbuser_monitor     192.168.0.0/16     scram-sha-256

# reject all other monitor access addr [default]
host     all                dbuser_monitor     0.0.0.0/0          reject

# admin access via intranet with pwd [default]
host     all                dbuser_dba         10.0.0.0/8         scram-sha-256
host     all                dbuser_dba         172.16.0.0/12      scram-sha-256
host     all                dbuser_dba         192.168.0.0/16     scram-sha-256

# reject all other admin access addr [default]
host     all                dbuser_dba         0.0.0.0/0          reject

# allow all user intra access with pwd [default]
host     all                all                10.0.0.0/8         scram-sha-256
host     all                all                172.16.0.0/12      scram-sha-256
host     all                all                192.168.0.0/16     scram-sha-256
```

</details>






----------------

## Security Hardening

For scenarios requiring higher security, we provide a security hardening configuration template [security.yml](https://github.com/pgsty/pigsty/blob/main/conf/safe.yml), which uses the following default HBA rule set:

```yaml
pg_default_hba_rules:             # postgres host-based auth rules by default
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  }
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' }
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: ssl   ,title: 'replicator replication from localhost'}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: ssl   ,title: 'replicator replication from intranet' }
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: ssl   ,title: 'replicator postgres db from intranet' }
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' }
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: ssl   ,title: 'monitor from infra host with password'}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   }
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: cert  ,title: 'admin @ everywhere with ssl & cert'   }
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: ssl   ,title: 'pgbouncer read/write via local socket'}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: ssl   ,title: 'read/write biz user via password'     }
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: ssl   ,title: 'allow etl offline tasks from intranet'}
pgb_default_hba_rules:            # pgbouncer host-based authentication rules
  - {user: '${dbsu}'    ,db: pgbouncer   ,addr: local     ,auth: peer  ,title: 'dbsu local admin access with os ident'}
  - {user: 'all'        ,db: all         ,addr: localhost ,auth: pwd   ,title: 'allow all user local access with pwd' }
  - {user: '${monitor}' ,db: pgbouncer   ,addr: intra     ,auth: ssl   ,title: 'monitor access via intranet with pwd' }
  - {user: '${monitor}' ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other monitor access addr' }
  - {user: '${admin}'   ,db: all         ,addr: intra     ,auth: ssl   ,title: 'admin access via intranet with pwd'   }
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other admin access addr'   }
  - {user: 'all'        ,db: all         ,addr: intra     ,auth: ssl   ,title: 'allow all user intra access with pwd' }
```

For more information, refer to the [Security Hardening](/docs/setup/security) section.

