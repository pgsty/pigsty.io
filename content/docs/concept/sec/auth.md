---
title: Authentication
weight: 232
description: Pigsty manages PostgreSQL and PgBouncer HBA rules declaratively, combining SCRAM passwords and client certificates to define who may connect and how identity is proven.
icon: fa-solid fa-id-card
module: [PIGSTY, PGSQL]
categories: [Concept]
---

PostgreSQL uses `pg_hba.conf` for **Host-Based Authentication**: who may connect, from where, to which database, and how they must prove their identity.

The mechanism is powerful, but expensive to maintain manually across a cluster. Primary and replica instances may require different rules, and every instance stores its own configuration in the data directory.
Without a common declaration and refresh process, rules can drift between instances.

Pigsty applies the same [**declarative configuration**](/docs/concept/iac/) model here: HBA rules are part of the inventory and are rendered and distributed consistently by playbooks.


---------------------

<span id="authentication-flow"></span>
<span id="hba-layering-model"></span>

## HBA as Code

Cluster HBA policy combines two parameter groups: the global defaults in [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) and cluster-specific additions in [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules).
The [**PgBouncer connection pool**](/docs/concept/arch/pgsql#pgbouncer) has two independent counterparts: [`pgb_default_hba_rules`](/docs/pgsql/param#pgb_default_hba_rules) and [`pgb_hba_rules`](/docs/pgsql/param#pgb_hba_rules).

A rule can use either of two forms. The recommended **alias form** keeps one semantic rule on one line:

```yaml
pg_hba_rules:
  - { user: dbuser_app ,db: app ,addr: 10.1.0.0/16 ,auth: ssl ,order: 50 ,title: 'app user access via ssl' }
```

The **raw form** supplies a literal `pg_hba.conf` line for cases the aliases cannot express.

In addition to user, address, database, and authentication method, each rule has two control fields:

- **`order`**: render order. HBA uses first-match semantics, so order is priority. By convention, `0-99` is reserved for high-priority user rules, `100-999` for defaults, and rules without `order` come last.
- **`role`**: instance-role filter. `common` and `default` apply to every instance; `primary`, `replica`, `offline`, `standby`, and `delayed` apply only to matching instances.
  A `role: offline` rule is also rendered on instances marked with `pg_offline_query`. The same declaration therefore produces the appropriate rules for each instance role without maintaining primary and replica files manually.

After editing the declaration, apply it with the wrapper script. The rules are rendered again and reloaded:

```bash
bin/pgsql-hba pg-meta          # Render and apply HBA rules for pg-meta
```

`pg_hba_rules` appends rules; it does not automatically narrow broader defaults. To establish a stricter boundary, review `pg_default_hba_rules` as well, then inspect the generated `pg_hba.conf` on every instance.


---------------------

## Address and Authentication Aliases

The alias form gives common cases semantic names. Values in `addr` expand into concrete address blocks:

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

The user field supports four placeholders, replaced with actual user names during rendering: `${dbsu}` (superuser), `${repl}` (replication user), `${monitor}` (monitoring user), and `${admin}` (administration user).
A `+role` prefix matches all members of that role.

Do not confuse transport enforcement with server verification: `auth: ssl` requires TLS but does not require the client to verify the server identity. Security-sensitive clients should also use `sslmode=verify-full` with a trusted CA; see [**Encrypted Communication**](/docs/concept/sec/ca#server-identity-verification).


---------------------

## Default Rules Explained

Pigsty's default HBA policy follows a simple rule: **the farther the source, the stronger the requirement**. These are the PostgreSQL defaults from the source configuration:

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

- **Local access is most trusted**: `postgres` can enter only through a local Unix socket with `ident`. No password is required, but remote login is impossible. This is why dbsu has no password by default.
- **The intranet comes next**: replication and application accounts use SCRAM password authentication on the intranet. Remote monitoring and administration access primarily originates from INFRA nodes.
- **Public sources are strictest**: only the administrator may connect from any address by default, and the connection requires both a password and TLS.

PgBouncer defaults are more restrictive: public access for monitoring and administration accounts is explicitly denied, while application users are limited to localhost and intranet sources.

The default `+dbrole_offline` rule does not set `role` and therefore applies to every instance. To restrict offline users to `pg_role: offline` or instances with `pg_offline_query: true`, add `role: offline` explicitly to the corresponding HBA rule.

This default policy favors usability: application accounts can connect from the intranet with password authentication.
The [**`ha/safe` template**](/docs/conf/safe) changes the main TCP rules to `ssl` and requires administrators outside the intranet to present a client certificate (`cert`); local `ident` and selected localhost password rules remain.


---------------------

<span id="password-authentication"></span>
<span id="password-strength-and-rotation"></span>

## Password Policy

Pigsty uses PostgreSQL's recommended `scram-sha-256` password storage by default ([`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc)). Downgrade to `md5` only for legacy client compatibility.

Before executing `ALTER USER ... PASSWORD`, the password workflow temporarily disables statement logging (`SET log_statement TO 'none'`) to keep passwords out of PostgreSQL logs.
Plaintext passwords still appear in the inventory, and rendered user SQL is written to `/pg/tmp/pg-user-<name>.sql` with mode `0640`. The related Ansible tasks do not use `no_log` consistently. Restrict access to the admin node, configuration repository, and automation output, and avoid `--diff` on tasks containing credentials.

Password strength is not enforced by default. If required, preload [**`passwordcheck`**](/ext/e/passwordcheck/) or the more configurable [**`credcheck`**](/ext/e/credcheck/):

```yaml
pg_libs: '$libdir/passwordcheck, pg_stat_statements, auto_explain'   # Reject weak passwords
```

The `ha/safe` template sets this `pg_libs` value explicitly. Selecting the CRIT parameter template alone does not load `passwordcheck`.

Declare account lifetime with `expire_in` (days after creation) or `expire_at` (absolute date), then combine it with the organization's rotation process:

```yaml
pg_users:
  - { name: dbuser_app ,password: '<unique-random-password>' ,roles: [dbrole_readwrite] ,expire_in: 365 }
```


---------------------

<span id="certificate-authentication"></span>

## Certificate Authentication

Passwords can be phished, reused, or guessed. For privileged accounts such as administrators, use `auth: cert` in HBA to require **client certificate authentication**.
The client must present a certificate signed by the local CA whose CN matches the database user name. When the HBA rule accepts only `cert`, a leaked password alone cannot authenticate.

Issue client certificates with the built-in `cert.yml` playbook:

```bash
./cert.yml -e cn=dbuser_dba                  # Issue a 20-year client certificate by default
./cert.yml -e cn=dbuser_dba -e expire=365d  # Or specify a shorter lifetime
```

The certificate and key are stored in `files/pki/misc/<cn>.crt` and `files/pki/misc/<cn>.key`. Deliver the private key through a controlled channel. The client should still use `verify-full` to authenticate the database server; see [**Encrypted Communication**](/docs/concept/sec/ca).


---------------------

<span id="pgbouncer-authentication"></span>
<span id="default-accounts-and-risks"></span>

## Connection Pool and Component APIs

The database is not the only authenticated entry point.

The **PgBouncer connection pool** uses an independent HBA policy and user list. `pgbouncer_auth_query` is disabled by default, so only users declared with `pgbouncer: true` are written to `userlist.txt` and can authenticate through the pool. Re-evaluate the login scope before enabling dynamic authentication queries.

The [**Patroni REST API**](/docs/concept/arch/pgsql#patroni) carries high-availability control operations such as restart, switchover, and configuration reload. Write operations require HTTP Basic authentication ([`patroni_username`](/docs/pgsql/param#patroni_username) and [`patroni_password`](/docs/pgsql/param#patroni_password)) and are restricted by source-address allowlists.
When [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled) is enabled, the API uses HTTPS throughout.

Credentials for Grafana, the HAProxy administration interface, the object-storage backend selected by the MINIO module, etcd, and other components are also declared in the inventory. See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for the full list and update guidance.


---------------------

<span id="security-recommendations"></span>

## Next

- 📖 Complete HBA reference: [**HBA Rules**](/docs/pgsql/config/hba)
- 👤 [**Access Control**](/docs/concept/sec/ac): authorization after authentication
- 🔐 [**Encrypted Communication**](/docs/concept/sec/ca): TLS and client certificate infrastructure
