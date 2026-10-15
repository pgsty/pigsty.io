---
title: Authentication
weight: 232
description: Pigsty manages PostgreSQL and PgBouncer HBA rules declaratively, combining SCRAM passwords and client certificates to define who may connect and how identity is proven.
icon: fa-solid fa-id-card
module: [PIGSTY, PGSQL]
categories: [Concept]
---

`pg_hba.conf` defines PostgreSQL **Host-Based Authentication**. It controls who can connect, the source address, the database, and the required identity check.

Manual HBA maintenance across a cluster requires care. Primary and replica rules can differ, and each instance stores its configuration in its data directory. Without a shared declaration and refresh process, instance rules can diverge.

Pigsty declares HBA rules in the inventory through [**declarative configuration**](/docs/concept/iac/). Playbooks render and distribute them consistently.


---------------------

<span id="authentication-flow"></span>
<span id="hba-layering-model"></span>

## HBA as Code

Cluster HBA combines global defaults in [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) with cluster additions in [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules). [**PgBouncer**](/docs/concept/arch/pgsql#pgbouncer) has separate equivalents: [`pgb_default_hba_rules`](/docs/pgsql/param#pgb_default_hba_rules) and [`pgb_hba_rules`](/docs/pgsql/param#pgb_hba_rules).

Rules support two forms. The recommended **alias form** expresses one rule per line:

```yaml
pg_hba_rules:
  - { user: dbuser_app ,db: app ,addr: 10.1.0.0/16 ,auth: ssl ,order: 50 ,title: 'app user access via ssl' }
```

Use the **raw form** for cases aliases cannot express. It contains a literal `pg_hba.conf` line.

In addition to user, address, database, and authentication method, each rule has two control fields:

- **`order`** sets render order. HBA uses the first matching rule, so order sets priority. By convention, `0-99` is for high-priority user rules and `100-999` for defaults. Rules without `order` come last.
- **`role`** filters by instance role. `common` and `default` apply everywhere. `primary`, `replica`, `offline`, `standby`, and `delayed` apply only to matching instances. `role: offline` also applies to instances marked with `pg_offline_query`. One declaration therefore generates appropriate rules without separate manual primary and replica files.

After editing the declaration, run the wrapper script to render and reload the rules:

```bash
bin/pgsql-hba pg-meta          # Render and apply HBA rules for pg-meta
```

`pg_hba_rules` adds rules but does not automatically restrict broader defaults. For stricter access, also review `pg_default_hba_rules`. Inspect the resulting `pg_hba.conf` on every instance.


---------------------

## Address and Authentication Aliases

Aliases name common cases. Each `addr` value expands into address blocks:

| Alias | Expands To | Meaning |
|:---|:---|:---|
| `local` | Unix socket | Local socket only |
| `localhost` | Unix socket, `127.0.0.1/32`, and `::1/128` | Local host |
| `admin` | `<admin_ip>/32` | [**Admin node**](/docs/concept/arch/node#admin-node) |
| `infra` | `/32` address of each INFRA node | [**Infrastructure nodes**](/docs/concept/arch/node#infra-node) |
| `cluster` | `/32` address of every cluster member | Cluster-internal traffic |
| `intra` | `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16` | Intranet CIDRs, customizable with [`node_firewall_intranet`](/docs/node/param#node_firewall_intranet) |
| `world` | `0.0.0.0/0` and `::/0` | Any address |
| CIDR | Unchanged | Custom network |
{.full-width}

Values in `auth` select the authentication method and whether TLS is mandatory:

| Alias | Authentication Method | Notes |
|:---|:---|:---|
| `deny` | `reject` | Explicit rejection |
| `trust` | `trust` | Unconditional access; use with care |
| `pwd` | `scram-sha-256` or `md5` | Follows [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc); SCRAM by default |
| `sha` | `scram-sha-256` | Force SCRAM |
| `md5` | `md5` | Compatibility for legacy clients |
| `ssl` | `hostssl` with password authentication | Password authentication over mandatory TLS |
| `ssl-sha` | `hostssl` with `scram-sha-256` | Mandatory TLS and SCRAM |
| `cert` | `hostssl` with `cert` | Client certificate authentication |
| `ident`, `os` | `ident` (`peer` in PgBouncer) | OS user mapping |
| `peer` | `peer` | Local OS user |
{.full-width}

The user field supports four placeholders: `${dbsu}` (superuser), `${repl}` (replication user), `${monitor}` (monitoring user), and `${admin}` (administration user). Rendering replaces them with actual names. `+role` matches all members of that role.

`auth: ssl` requires TLS but does not require client verification of the server identity. Security-sensitive clients should use `sslmode=verify-full` with a trusted CA. See [**Encrypted Communication**](/docs/concept/sec/ca#server-identity-verification).


---------------------

## Default Rules Explained

The default HBA policy requires stronger authentication for more distant sources. These PostgreSQL defaults come from the source configuration:

```yaml
pg_default_hba_rules:             # postgres default host-based authentication rules, order by `order`
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  ,order: 100}
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' ,order: 150}
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replicator replication from localhost',order: 200}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replicator replication from intranet' ,order: 250}
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replicator postgres db from intranet' ,order: 300}
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' ,order: 350}
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor from infra host with password',order: 400}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   ,order: 450}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin @ everywhere with ssl & pwd'    ,order: 500}
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'pgbouncer read/write via local socket',order: 550}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'read/write biz user via password'     ,order: 600}
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'allow etl offline tasks from intranet',order: 650}
```

Layer by layer:

- **Local access:** `postgres` can connect only through a local Unix socket with `ident`. It needs no password and cannot log in remotely. Thus, dbsu has no default password.
- **Intranet access:** Replication and application accounts use SCRAM password authentication. Remote monitoring and administration connections mainly come from INFRA nodes.
- **Public access:** Only the administrator can connect from any address by default. Both a password and TLS are required.

PgBouncer explicitly denies public access for monitoring and administration accounts. Application users can connect only from localhost and intranet sources.

The default `+dbrole_offline` rule has no `role` filter and applies to every instance. Add `role: offline` to restrict it to `pg_role: offline` or `pg_offline_query: true` instances.

The default policy lets application accounts connect from the intranet with passwords. [**`ha/safe`**](/docs/conf/safe) changes the main TCP rules to `ssl`. Administrators outside the intranet must present a client certificate (`cert`). Local `ident` and selected localhost password rules remain.


---------------------

<span id="password-authentication"></span>
<span id="password-strength-and-rotation"></span>

## Password Policy

Pigsty defaults to PostgreSQL's recommended `scram-sha-256` password storage through [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc). Use `md5` only for legacy clients.

Before `ALTER USER ... PASSWORD`, the workflow runs `SET log_statement TO 'none'` to temporarily disable statement logging. This keeps passwords out of PostgreSQL logs. The inventory still contains plaintext passwords. Rendered user SQL is stored at `/pg/tmp/pg-user-<name>.sql` with mode `0640`. Related Ansible tasks do not consistently use `no_log`. Restrict access to the administration node, configuration repository, and automation output.

Avoid `--diff` for tasks that contain credentials.

Password strength checks are disabled by default. If required, preload [**`passwordcheck`**](/ext/e/passwordcheck/) or the more configurable [**`credcheck`**](/ext/e/credcheck/):

```yaml
pg_libs: '$libdir/passwordcheck, pg_stat_statements, auto_explain'   # Reject weak passwords
```

`ha/safe` sets this `pg_libs` value explicitly. Selecting CRIT alone does not load `passwordcheck`.

Set account lifetime with `expire_in` (days after creation) or `expire_at` (absolute date). Combine this with your organization's rotation process:

```yaml
pg_users:
  - { name: dbuser_app ,password: '<unique-random-password>' ,roles: [dbrole_readwrite] ,expire_in: 365 }
```


---------------------


## Certificate Authentication

Passwords can be phished, reused, or guessed. For privileged accounts, such as administrators, set HBA `auth: cert` to require **client certificates**. The local CA must sign the certificate, and its CN must match the database user name. If the rule accepts only `cert`, a leaked password alone cannot authenticate.

Issue client certificates with the built-in `cert.yml` playbook:

```bash
./cert.yml -e cn=dbuser_dba                  # Issue a 20-year client certificate by default
./cert.yml -e cn=dbuser_dba -e expire=365d  # Or specify a shorter lifetime
```

The files are `files/pki/misc/<cn>.crt` and `files/pki/misc/<cn>.key`. Deliver the private key through a controlled channel. The client should use `verify-full` to verify the database server. See [**Encrypted Communication**](/docs/concept/sec/ca).


---------------------

<span id="pgbouncer-authentication"></span>
<span id="default-accounts-and-risks"></span>

## Connection Pool and Component APIs

The database is not the only authenticated entry point.

**PgBouncer** has separate HBA rules and a separate user list. `pgbouncer_auth_query` is disabled by default. Only users with `pgbouncer: true` enter `userlist.txt` and can authenticate through the pool. Review permitted logins before enabling dynamic authentication queries.

The [**Patroni REST API**](/docs/concept/arch/pgsql#patroni) controls operations such as restart, switchover, and configuration reload. Writes require HTTP Basic authentication through [`patroni_username`](/docs/pgsql/param#patroni_username) and [`patroni_password`](/docs/pgsql/param#patroni_password). Source-address allowlists also restrict writes. Enable [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled) to use HTTPS throughout.

The inventory also declares credentials for Grafana, HAProxy administration, the MINIO-selected object storage backend, etcd, and other components. See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for the full list and update instructions.


---------------------

<span id="security-recommendations"></span>

## Next

- 📖 Complete HBA reference: [**HBA Rules**](/docs/pgsql/config/hba)
- 👤 [**Access Control**](/docs/concept/sec/ac): authorization after authentication
- 🔐 [**Encrypted Communication**](/docs/concept/sec/ca): TLS and client certificate infrastructure
