# app/discourse

> Deploy Discourse with Pigsty-managed PostgreSQL and Redis embedded in the application container

---

LLMS index: [llms.txt](/llms.txt)

---

The `app/discourse` template provides a single-node Discourse forum configuration: Pigsty manages PostgreSQL, Redis runs inside the application container, and Pigsty Nginx serves the application through a Unix socket. Use the matching `app/discourse/` and `files/discourse.sql` from the same release.

See the **[Discourse application README](https://github.com/pgsty/pigsty/tree/main/app/discourse#readme)** for more details.

--------

## Overview

- Config Name: `app/discourse`
- Node Count: Single node
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64` (upstream Launcher describes ARM64 support as experimental)
- Related: [`app/odoo`](/docs/conf/odoo/), [`app/mattermost`](/docs/conf/mattermost/)

For a fresh host:

```bash
./configure -c app/discourse [-i <primary_ip>]
vi pigsty.yml              # change passwords, domain, and SMTP settings
./deploy.yml
./docker.yml
./app.yml -l discourse
```

--------

## Content

Source: [`pigsty/conf/app/discourse.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/discourse.yml)

```yaml
---
#==============================================================#
# File      :   discourse.yml
# Desc      :   Pigsty Discourse with external PostgreSQL / embedded Redis
# Ctime     :   2026-10-14
# Mtime     :   2026-10-14
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#
# Fresh host: ./configure -c app/discourse; edit pigsty.yml (passwords + SMTP)
# ./deploy.yml; ./docker.yml; ./app.yml -l discourse
# Existing Pigsty: merge the app/user/database/portal sections; do NOT replace
# the running inventory or initialize an existing PostgreSQL cluster again.
# ask.pigsty -> Pigsty Nginx :80/:443 -> Unix socket -> Discourse + Redis.

all:
  children:
    discourse:
      hosts: { 10.10.10.10: {} }
      vars:
        app: discourse
        apps:
          discourse:
            dest: /data/app/discourse
            file:
              - { path: /data/app/discourse                    ,state: directory ,mode: '0755' }
              - { path: /data/app/discourse/shared             ,state: directory ,mode: '0755' }
              - { path: /data/app/discourse/shared/log/var-log ,state: directory ,mode: '0755' }
            conf:
              DISCOURSE_DATA: /data/app/discourse
              DISCOURSE_HOSTNAME: ask.pigsty
              DISCOURSE_VERSION: f00f07d62728d646642cd2185cc077ad84a60fa8
              DISCOURSE_DOCKER_REF: 0ba1841d589e77df3bc923774abca2720a320ec2
              PG_HOST: 10.10.10.10
              PG_PORT: 5432
              PG_DBNAME: discourse
              PG_USERNAME: discourse
              PG_PASSWORD: DBUser.Discourse
              UNICORN_WORKERS: 2
              UNICORN_SIDEKIQS: 1
              DISCOURSE_SIDEKIQ_WORKERS: 5
              DISCOURSE_DB_POOL: 8
              REDIS_MAX_MEMORY: 512mb
              DISCOURSE_FORCE_HTTPS: false  # set true with a trusted HTTPS portal
              DISCOURSE_DEVELOPER_EMAILS: admin@example.com  # CHANGE ME
              DISCOURSE_SMTP_ADDRESS: smtp.example.com       # CHANGE ME
              DISCOURSE_SMTP_PORT: 587
              DISCOURSE_SMTP_USER_NAME: ''
              DISCOURSE_SMTP_PASSWORD: ''
              DISCOURSE_SMTP_ENABLE_START_TLS: true
              DISCOURSE_SMTP_FORCE_TLS: false
              DISCOURSE_NOTIFICATION_EMAIL: noreply@example.com  # CHANGE ME

    pg-discourse:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-discourse
        pg_extensions: [ pgvector ]
        pg_users:
          - name: discourse
            password: DBUser.Discourse  # CHANGE ME, same as PG_PASSWORD above
            pgbouncer: false
            roles: [{ name: dbrole_admin, state: revoke }]
            comment: Discourse database owner
        pg_databases:
          - name: discourse
            owner: discourse
            encoding: UTF8
            revokeconn: true
            pgbouncer: false
            baseline: discourse.sql
            extensions: [ hstore, pg_trgm, unaccent, vector ]
            comment: Discourse forum
        pg_hba_rules:
          - { user: discourse ,db: discourse ,addr: 172.16.0.0/12 ,auth: pwd ,title: 'Discourse from local Docker bridges' }
        pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]

    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

  vars:
    version: v4.6.0
    admin_ip: 10.10.10.10
    region: default
    node_tune: oltp
    pg_conf: oltp.yml
    pg_version: 18
    docker_enabled: true
    repo_enabled: false
    node_repo_modules: node,infra,pgsql
    node_etc_hosts: ['${admin_ip} i.pigsty ask.pigsty']
    infra_portal:
      home: { domain: i.pigsty }
      discourse:
        domain: ask.pigsty
        endpoint: unix:/data/app/discourse/shared/nginx.http.sock
        websocket: true
        config: |
          client_max_body_size 10m;

    # CHANGE these demo credentials before any public deployment.
    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
    pg_admin_password: DBUser.DBA
    pg_monitor_password: DBUser.Monitor
    pg_replication_password: DBUser.Replicator
    patroni_password: Patroni.API
    haproxy_admin_password: pigsty
    etcd_root_password: Etcd.Root
...
```

--------

## Explanation

The template builds the Discourse image locally with the official classic Launcher and runs it with Docker Compose, using PostgreSQL managed by Pigsty.

- `apps.discourse.dest` is `/data/app/discourse`; management files and persistent data under `shared/` share this directory
- `DISCOURSE_DOCKER_REF` (`0ba1841d589e77df3bc923774abca2720a320ec2`) and `DISCOURSE_VERSION` (`f00f07d62728d646642cd2185cc077ad84a60fa8`) both pin verified commit SHAs for reproducible builds
- The dedicated `pg-discourse` cluster uses PostgreSQL 18 and installs `pgvector`; the `discourse` database enables `hstore`, `pg_trgm`, `unaccent`, and `vector`, and applies the `discourse.sql` baseline
- The `discourse` user has no `dbrole_admin` membership; neither the user nor the database uses PgBouncer
- HBA permits the `discourse` user to access only the `discourse` database from the `172.16.0.0/12` Docker subnet
- The `ask.pigsty` Nginx portal forwards to `unix:/data/app/discourse/shared/nginx.http.sock`, enables WebSocket, and sets `client_max_body_size 10m`
- Embedded Redis has a memory limit of `REDIS_MAX_MEMORY: 512mb`
- Run a full backup daily at 01:00

Access the forum at `http://ask.pigsty`. The template adds this name to the local hosts file through `node_etc_hosts`; other clients need DNS or hosts entries pointing to the Nginx host.

## Notes

- Change `PG_PASSWORD` and the password in `pg_users` together. Configure the administrator email and SMTP settings; the sample SMTP hostname will cause the image build to fail.
- For public access, use a real domain and trusted certificate, and set `DISCOURSE_FORCE_HTTPS: true`.
- Discourse uses advisory locks and requires a direct PostgreSQL connection. Do not use PgBouncer transaction pooling. For HA, choose a direct service that routes only to the primary.
- In an existing Pigsty environment, merge the application, user, database, and portal definitions. Do not rerun `configure` or reinitialize an existing cluster.
- Redis persistence needs `vm.overcommit_memory=1`. The Tuned profile selected by `node_tune: oltp` uses `0`; configure a persistent override before enabling Redis persistence.
