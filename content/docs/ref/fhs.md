---
title: File Hierarchy
weight: 470
description: How Pigsty's file system structure is designed and organized, and directory structures used by each module.
icon: fa-solid fa-folder-tree
module: [PIGSTY]
categories: [Reference]
---



----------------

## Pigsty FHS

The default Pigsty home directory is `~/pigsty`. It has this file structure:

```filetree {title="~/pigsty Source Tree"}
- app/   {open=false}
  - Application template resources
- bin/   {open=false}
  - Administration scripts such as `node-add`, `pgsql-add`, `vault-add`, and `vault-rm`
- conf/
  - meta.yml
  - … · Other single-node templates
  - fork/   {open=false}
    - Kernel fork templates such as pgsql, mssql, and ivory
  - ha/   {open=false}
    - High-availability topology templates
  - app/   {open=false}
    - Application templates
  - demo/   {open=false}
    - Demonstration templates
  - build/   {open=false}
    - Multi-platform build inventories
- files/
  - victoria/   {open=false}
    - Rules and operations scripts
  - grafana/   {open=false}
    - Grafana dashboards
  - postgres/   {open=false}
    - PostgreSQL management scripts
  - migration/   {open=false}
    - Data-migration task definitions
  - pki/   {open=false}
    - Self-signed CA and certificates
- roles/   {open=false}
  - Ansible role implementations
- templates/   {open=false}
  - Ansible templates
- vagrant/   {open=false}
  - Vagrant sandbox definitions
- terraform/   {open=false}
  - OpenTofu cloud-resource templates (Terraform-compatible)
- configure
- ansible.cfg
- pigsty.yml
- deploy.yml / infra.yml / node.yml / etcd.yml / vault.yml / minio.yml / pgsql.yml / …
- *-rm.yml · Module removal playbooks, such as `pgsql-rm.yml`, `vault-rm.yml`, and `mysql-rm.yml`
```

Kernel fork templates reside under `conf/fork/`. See [**Configuration Templates**](/docs/conf/) for the full list.

`/infra` is a runtime symlink to `/data/infra`. This directory contains observability data and generated configuration:

```text {title="/data/infra" collapse=8 wrap=true label="INFRA Runtime Directory"}
metrics/           # VictoriaMetrics TSDB data
logs/              # VictoriaLogs data
traces/             # VictoriaTraces data
alertmgr/           # AlertManager data
rules/              # Rule definitions, including agent.yml
targets/            # FileSD monitoring targets
dashboards/         # Grafana dashboard definitions
datasources/        # Grafana datasource definitions
prometheus.yml      # Victoria Prometheus-compatible configuration
```



----------------

## CA FHS

Pigsty's [**self-signed CA**](/docs/concept/sec/ca) is located in `files/pki/` under the Pigsty home directory.

**You must keep the CA key file secure**: `files/pki/ca/ca.key`. The `ca` role generates this key when you run `deploy.yml` or `infra.yml`.

```filetree {title="pigsty/files/pki · (local_user) 0755"}
- ca · (local_user) 0700/
  - ca.key · 0600, keep secret
  - ca.crt · 0644, trusted by all nodes
- vault · (local_user) 0700, OpenBao unseal key, initialization credentials, backups, and server certificates/
  - unseal.key · 0600, 32-byte static unseal key, keep secret
  - init.json · 0600, initial root token and recovery material
  - backup.token · 0600, snapshot-only backup token
  - backup/ · 0700, snapshots collected on the control node
  - <vault_instance>.{key,crt} · 0600/0644, OpenBao server certificates
- csr · (local_user) 0755, certificate signing requests/   {open=false}
- misc · (local_user) 0755, miscellaneous and issued certificates/   {open=false}
- etcd · (local_user) 0755, etcd server certificates/   {open=false}
- minio · (local_user) 0755, minio server certificates/   {open=false}
- nginx · (local_user) 0755, Nginx SSL certificates/   {open=false}
- infra · (local_user) 0755, infra client certificates/   {open=false}
- pgsql · (local_user) 0755, pgsql server certificates/   {open=false}
- kafka · (local_user) 0755, Kafka server certificates/   {open=false}
- mysql · (local_user) 0755, MySQL server certificates/   {open=false}
```

Pigsty installs these certificate files on managed nodes:

```text
/etc/pki/ca.crt                             # root:root 0644, root cert on all nodes
/etc/pki/ca-trust/source/anchors/ca.crt     # EL system trust anchor
/usr/local/share/ca-certificates/ca.crt     # Debian/Ubuntu system trust anchor
```

All infra nodes have these certificates:

```text
/etc/pki/infra.crt                          # root:infra 0644, infra node cert
/etc/pki/infra.key                          # root:infra 0640, infra node key
```

If the admin node fails, `files/pki` and `pigsty.yml` should be available on the backup admin node. Use `rsync` to copy them:

```bash
# run on meta-1, rsync to meta2
cd ~/pigsty;
rsync -avz ./ meta-2:~/pigsty
```




----------------

## INFRA FHS

The `infra` role creates `infra_data` (default: `/data/infra`) and creates a symlink `/infra -> /data/infra`.
The permissions for `/data/infra` are `root:infra 0771`. Subdirectories default to `*:infra 0750`, unless overridden:

```filetree {title="/infra → /data/infra · root:infra 0771"}
- pgadmin · 5050:5050 0700/
  - servers.json · 5050:5050 0600, pgAdmin server list
  - pgpass · 5050:5050 0600, pgAdmin connection passwords
- alertmgr · prometheus:infra 0700/   {open=false}
- conf · root:infra 0750/
  - patronictl.yml · root:admin 0640
- tmp · root:infra 0750/   {open=false}
- hosts · dnsmasq:dnsmasq 0755, DNS records/
  - default · root:root 0644
- datasources · root:infra 0750/
  - *.json · 0600, generated by register
- dashboards · root:infra 0750/   {open=false}
- metrics · victoria:infra 0750/   {open=false}
- logs · victoria:infra 0750/   {open=false}
- traces · victoria:infra 0750/   {open=false}
- bin · victoria:infra 0750/
  - check · root:infra 0755
  - new · root:infra 0755
  - reload · root:infra 0755
  - status · root:infra 0755
- rules · victoria:infra 0750/
  - agent.yml · victoria:infra 0644
  - infra.yml · victoria:infra 0644
  - node.yml · victoria:infra 0644
  - pgsql.yml · victoria:infra 0644
  - redis.yml · victoria:infra 0644
  - etcd.yml · victoria:infra 0644
  - vault.yml · victoria:infra 0644
  - minio.yml · victoria:infra 0644
  - kafka.yml · victoria:infra 0644
  - mysql.yml · victoria:infra 0644
- targets · victoria:infra 0750/
  - infra · infra component targets, files 0640/   {open=false}
  - node · node targets, files 0640/   {open=false}
  - ping · ping targets, files 0640/   {open=false}
  - etcd · etcd targets, files 0640/   {open=false}
  - vault · OpenBao targets, files 0640/   {open=false}
  - pgsql · pgsql targets, files 0640/   {open=false}
  - pgrds · pgrds targets, files 0640/   {open=false}
  - redis · redis targets, files 0640/   {open=false}
  - minio · minio targets, files 0640/   {open=false}
  - juice · JuiceFS targets, files 0640/   {open=false}
  - mysql · MySQL targets, files 0640/   {open=false}
  - kafka · Kafka targets, files 0640/   {open=false}
  - docker · Docker targets, files 0640/   {open=false}
  - patroni · Patroni SSL targets, files 0640/   {open=false}
- prometheus.yml · victoria:infra 0644
```

This structure is created by: `roles/infra/tasks/dir.yml`, `roles/infra/tasks/victoria.yml`, `roles/infra/tasks/register.yml`, `roles/infra/tasks/dns.yml`, and `roles/infra/tasks/env.yml`.


----------------

Remote PostgreSQL / RDS exporters deployed on INFRA through `pgsql-monitor.yml` (`roles/pg_exporters`) also create `/etc/pg_exporter/` (`prometheus:infra 0755`) with per-unit `<unit>.yml` files (`0644`). Only remote monitoring uses this directory; local exporters on PGSQL nodes use `/etc/pg_exporter.yml` directly.

Certbot integration also writes `/etc/letsencrypt/renewal-hooks/deploy/10-reload-nginx` (`0755`) to reload Nginx after renewal.

## NODE FHS

[`node_data`](/docs/node/param#node_data) specifies the node data directory. The default is `/data`, with owner `root:root` and mode `0755`.

Default module data and backup directories are organized under `/data`:

```filetree {title="/data · root:root 0755"}
- postgres · postgres:postgres 0700, default pg_fs_main/   {open=false}
- backups · postgres:postgres 0700, default pg_fs_backup; MySQL backups default to /data/backups/mysql/   {open=false}
- vault · openbao:openbao 0700, default vault_data; raft/ 0700 and backup/ root:root 0700/   {open=false}
- redis · redis:redis 0700, shared by multiple instances/   {open=false}
- minio · minio:minio 0750, single-node single-drive mode/   {open=false}
- etcd · etcd:etcd 0700, etcd_data/   {open=false}
- infra · root:infra 0771, infrastructure data/   {open=false}
- docker · root:root 0755, Docker data/   {open=false}
- kafka · kafka:kafka 0700, kafka_data/   {open=false}
- mysql · mysql:mysql 0750, default mysql_data for native MySQL 8.4/   {open=false}
- juice · root:root 0755, default juice_cache/   {open=false}
- … · Other component data directories/   {open=false}
```

`node_monitor` also creates `/var/lib/node_exporter/textfile` (`root:root 0755`) for the node_exporter Textfile Collector. Modules publish local task/backup metrics there, such as VAULT's `vault.prom` and MYSQL's `mysql.prom`.

### Chrony and tuned

Chrony uses the native OS configuration path: `/etc/chrony.conf` on EL and `/etc/chrony/chrony.conf` on Debian / Ubuntu. `node_tuned_profile_dir` selects the custom tuned profile directory: `/etc/tuned/profiles` on EL 10, Debian 13, and Ubuntu 26; `/etc/tuned` on the other currently supported platforms.

### HAProxy

Pigsty starts HAProxy with its own systemd unit and manages the main configuration separately from service fragments:

```bash
/etc/systemd/system/haproxy.service   # systemd unit rendered by Pigsty
/etc/haproxy/haproxy.cfg              # HAProxy main configuration
/etc/haproxy/conf.d/*.cfg             # node and PostgreSQL service fragments
/etc/default/haproxy                  # optional user environment file; Pigsty does not create it
```

To append startup arguments in `/etc/default/haproxy`, use `EXTRAOPTS` and retain the default `-S /run/haproxy-master.sock`. The systemd unit loads configuration with explicit `-f` arguments. Do not add another `-f` to `EXTRAOPTS`.



----------------

## Victoria FHS

Monitoring config has moved from the legacy `/etc/prometheus` layout to the `/infra` runtime layout.
The main template is [`roles/infra/templates/victoria/prometheus.yml`](https://github.com/pgsty/pigsty/blob/main/roles/infra/templates/victoria/prometheus.yml), rendered to `/infra/prometheus.yml`.

Pigsty copies `files/victoria/bin/*` to `/infra/bin/` and `files/victoria/rules/*` to `/infra/rules/`. Each module registers FileSD targets under `/infra/targets/*`.

```filetree {title="Victoria and Monitoring File Layout"}
- infra/
  - prometheus.yml · Victoria main configuration, Prometheus-compatible, 0644
  - bin · Utility scripts, 0755/
    - check
    - new
    - reload
    - status
  - rules · Recording and alert rules, *.yml 0644/
    - agent.yml · Agent aggregation rules
    - infra.yml · infra recording rules and alerts
    - etcd.yml · etcd recording rules and alerts
    - vault.yml · OpenBao recording rules and alerts
    - node.yml · node recording rules and alerts
    - pgsql.yml · pgsql recording rules and alerts
    - redis.yml · redis recording rules and alerts
    - minio.yml · minio recording rules and alerts
    - kafka.yml · Kafka recording rules and alerts
    - mysql.yml · MySQL recording rules and alerts
  - targets · FileSD discovery targets, *.yml 0640/
    - infra · Static infra targets/   {open=false}
    - node · Static node targets/   {open=false}
    - pgsql · Static pgsql targets/   {open=false}
    - pgrds · Remote PostgreSQL/RDS targets/   {open=false}
    - redis · Static redis targets/   {open=false}
    - minio · Static minio targets/   {open=false}
    - mysql · Static MySQL targets/   {open=false}
    - etcd · Static etcd targets/   {open=false}
    - vault · Static OpenBao targets/   {open=false}
    - ping · Static ping targets/   {open=false}
    - kafka · Static Kafka targets/   {open=false}
    - juice · Static JuiceFS targets/   {open=false}
    - docker · Static Docker targets/   {open=false}
    - patroni · Static Patroni targets when SSL is enabled/   {open=false}
- etc/
  - default/
    - vmetrics · victoria:infra 0644
    - vlogs · victoria:infra 0644
    - vtraces · victoria:infra 0644
    - vmalert · victoria:infra 0644
    - alertmanager · prometheus:infra 0640
    - blackbox_exporter · prometheus:infra 0644
  - alertmanager.yml · prometheus:infra 0644
  - blackbox.yml · prometheus:infra 0644
```

Pigsty stores generated INFRA units in `/etc/systemd/system/`. These include `vmetrics`, `vlogs`, `vtraces`, `vmalert`, `alertmanager`, `blackbox_exporter`, `nginx_exporter`, and `dnsmasq`. Distribution package unit directories are not write targets for these roles.



----------------

## PostgreSQL FHS


The following parameters and internal variables are related to PostgreSQL directory layout:

* [**`pg_dbsu_home`**](/docs/pgsql/param#pg_dbsu_home): Postgres default user home directory, default: `/var/lib/pgsql`
* [**`pg_bin_dir`**](/docs/pgsql/param#pg_bin_dir): Postgres binary directory, default: `/usr/pgsql/bin/`
* [**`pg_fs_main`**](/docs/pgsql/param#pg_fs_main): Postgres primary data directory, default: `/data/postgres`
* [**`pg_fs_backup`**](/docs/pgsql/param#pg_fs_backup): Postgres backup disk mount point, default: `/data/backups` (optional; can also be a subdirectory on primary disk)
* [**`pg_data`**](/docs/pgsql/param#pg_data): Internal variable, fixed to the Postgres data-directory symlink `/pg/data`
* **`pg_cluster_dir`**: Derived variable, `{{ pg_fs_main }}/{{ pg_cluster }}-{{ pg_version }}`
* **`pg_backup_dir`**: Derived variable, `{{ pg_fs_backup }}/{{ pg_cluster }}-{{ pg_version }}`


```yaml
#--------------------------------------------------------------#
# Working assumptions:
#   {{ pg_fs_main   }} primary data directory, default: `/data/postgres` [SSD]
#   {{ pg_fs_backup }} backup data disk, default: `/data/backups`        [HDD]
#--------------------------------------------------------------#
# Default config (pg_cluster=pg-test, pg_version=18):
#     pg_fs_main = /data/postgres      High-speed SSD
#     pg_fs_backup = /data/backups     Cheap HDD (optional)
#
#     /pg        -> /data/postgres/pg-test-18
#     /pg/data   -> /data/postgres/pg-test-18/data
#     /pg/backup -> /data/backups/pg-test-18/backup
#--------------------------------------------------------------#
- name: create pgsql directories
  tags: pg_dir
  become: true
  block:

    - name: create pgsql directories
      file: path={{ item.path }} state=directory owner={{ item.owner|default(pg_dbsu) }} group={{ item.group|default('postgres') }} mode={{ item.mode }}
      with_items:
        - { path: "{{ pg_fs_main }}"            ,mode: "0700" }
        - { path: "{{ pg_fs_backup }}"          ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}"        ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}/bin"    ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}/log"    ,mode: "0750" }
        - { path: "{{ pg_cluster_dir }}/tmp"    ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}/cert"   ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}/conf"   ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}/data"   ,mode: "0700" }
        - { path: "{{ pg_cluster_dir }}/spool"  ,mode: "0700" }
        - { path: "{{ pg_backup_dir }}/backup"  ,mode: "0700" }
        - { path: "/var/run/postgresql"         ,mode: "0755" }
        - { path: "/etc/patroni"                ,mode: "0700" }
        - { path: "/etc/pgbackrest"             ,mode: "0750" }
        - { path: "/etc/pgbouncer"              ,mode: "0750" }

    - name: link pgsql directories
      file: src={{ item.src }} dest={{ item.dest }} state=link
      with_items:
        - { src: "{{ pg_backup_dir }}/backup" ,dest: "{{ pg_cluster_dir }}/backup" }
        - { src: "{{ pg_cluster_dir }}"       ,dest: "/pg" }
```

`/etc/pgbackrest` and `/etc/pgbouncer` are owned by `{{ pg_dbsu }}:postgres` with mode `0750`; `/etc/pgbackrest/pgbackrest.conf` uses `0640`. The local exporter writes configuration directly to `/etc/pg_exporter.yml`, without creating an `/etc/pg_exporter` subdirectory on PG nodes.

**Data File Structure**

```bash
# Physical directories
{{ pg_fs_main }}     /data/postgres                    # postgres:postgres 0700, primary data directory
{{ pg_cluster_dir }} /data/postgres/pg-test-18         # postgres:postgres 0700, cluster directory
                     /data/postgres/pg-test-18/bin     # postgres:postgres 0700 (scripts root:postgres 0755)
                     /data/postgres/pg-test-18/log     # postgres:postgres 0750, logs
                     /data/postgres/pg-test-18/tmp     # postgres:postgres 0700, temp files
                     /data/postgres/pg-test-18/cert    # postgres:postgres 0700, certs
                     /data/postgres/pg-test-18/conf    # postgres:postgres 0700, config index
                     /data/postgres/pg-test-18/data    # postgres:postgres 0700, main data
                     /data/postgres/pg-test-18/spool   # postgres:postgres 0700, pgBackRest spool
                     /data/postgres/pg-test-18/backup  # -> /data/backups/pg-test-18/backup

{{ pg_fs_backup  }}  /data/backups                     # postgres:postgres 0700, optional backup mount
{{ pg_backup_dir }}  /data/backups/pg-test-18          # postgres:postgres 0700, cluster backup directory
                     /data/backups/pg-test-18/backup   # postgres:postgres 0700, actual backup location

# Symlinks
/pg             ->   /data/postgres/pg-test-18         # pg root symlink
/pg/data        ->   /data/postgres/pg-test-18/data    # pg data directory
/pg/backup      ->   /data/backups/pg-test-18/backup   # pg backup directory
```



**Binary File Structure**

On EL-compatible distributions (using yum), PostgreSQL default installation location is:

```bash
/usr/pgsql-${pg_version}/
```

Pigsty creates the `/usr/pgsql` symlink. It points to the version specified by [`pg_version`](/docs/pgsql/param#pg_version). For example:

```bash
/usr/pgsql -> /usr/pgsql-18
```

The default [`pg_bin_dir`](/docs/pgsql/param#pg_bin_dir) is therefore `/usr/pgsql/bin/`. Pigsty adds this path to the system `PATH` environment variable in `/etc/profile.d/pgsql.sh`.

```bash
export PATH="/usr/pgsql/bin:/pg/bin:$PATH"
export PGHOME=/usr/pgsql
export PGDATA=/pg/data
```

On Ubuntu/Debian, the default PostgreSQL Deb package installation location is:

```bash
/usr/lib/postgresql/${pg_version}/bin
```

Pigsty also stores generated PostgreSQL runtime units in `/etc/systemd/system/`. These primarily include `patroni.service`, `postgres.service`, `pgbouncer.service`, `pg_exporter.service`, `pgbackrest_exporter.service`, and `pgbouncer_exporter.service`. If VIP is enabled, they also include `vip-manager.service`.



----------------

## Pgbouncer FHS

Pgbouncer runs under the same user as `{{ pg_dbsu }}` (default `postgres`), with configs in `/etc/pgbouncer`.

* `pgbouncer.ini`: main pool configuration (`postgres:postgres 0640`)
* `database.txt`: pooled database definitions (`postgres:postgres 0600`)
* `useropts.txt`: per-user connection options (`postgres:postgres 0600`)
* `userlist.txt`: password file maintained by `/pg/bin/pgb-user` (`postgres:postgres 0600`)
* `pgb_hba.conf`: access control file (`postgres:postgres 0600`)

```bash
/etc/pgbouncer/                # postgres:postgres 0750
/etc/pgbouncer/pgbouncer.ini   # postgres:postgres 0640
/etc/pgbouncer/database.txt    # postgres:postgres 0600
/etc/pgbouncer/useropts.txt    # postgres:postgres 0600
/etc/pgbouncer/userlist.txt    # postgres:postgres 0600 (managed by pgb-user)
/etc/pgbouncer/pgb_hba.conf    # postgres:postgres 0600
/pg/log/pgbouncer              # postgres:postgres 0750
/var/run/postgresql            # {{ pg_dbsu }}:postgres 0755 (managed by tmpfiles)
```




----------------

## Object Storage FHS

The MINIO module currently deploys only Silo. It retains `minio_*` parameter and directory names for compatibility:

```bash
/etc/default/silo                             # root:minio 0640, service environment
/etc/systemd/system/silo.service              # root:root 0644, rendered by Pigsty
/data/minio/                                  # minio:minio 0750, default data directory
/infra/targets/minio/<cluster>-<seq>.yml      # victoria:infra 0640, FileSD target
/home/minio/.mcli/config.json                 # mcli alias; also written for the execution user
```

Silo certificates are stored in `/home/minio/.minio/certs/`. The module name, role parameters, data directory, and FileSD path retain the compatible `MINIO` / `minio_*` naming.


----------------

## Redis FHS

Pigsty manages Redis or Valkey with the same directory layout and instance naming.

Service units call binaries according to `redis_type` (`/bin/*` is compatible with `/usr/bin/*` on most distributions):

```bash
/bin/redis-server  /bin/redis-cli    # redis_type: redis
/bin/valkey-server /bin/valkey-cli   # redis_type: valkey
```

For a Redis instance named `redis-test-1-6379`, the related resources are as follows:

```bash
/etc/systemd/system/redis-test-1-6379.service         # root:root 0644, rendered by Pigsty
/etc/systemd/system/redis_exporter.service            # root:root 0644, rendered by Pigsty
/etc/redis/                                           # redis:redis 0700
/etc/redis/redis-test-1-6379.conf                     # redis:redis 0600
/data/redis/                                          # redis:redis 0700
/data/redis/redis-test-1-6379                         # redis:redis 0700
/data/redis/redis-test-1-6379/redis-test-1-6379.rdb   # RDB file
/data/redis/redis-test-1-6379/redis-test-1-6379.aof   # AOF file
/var/log/redis/                                       # redis:redis 0700
/var/log/redis/redis-test-1-6379.log                  # logs
/var/run/redis/                                       # redis:redis 0700 (tmpfiles creates 0755 at boot)
/var/run/redis/redis-test-1-6379.pid                  # PID
```

Pigsty stores generated Redis/Valkey instance and exporter units in `/etc/systemd/system/`. Instance units use `Type=notify`. Packages can provide units in distribution directories. The roles do not write to those directories.

----------------

## Vault FHS

VAULT runs OpenBao as `openbao.service`. Its node and admin-node layout is:

```filetree {title="OpenBao (VAULT) File Layout"}
- etc/
  - openbao · root:openbao 0750/
    - openbao.hcl · root:openbao 0640, OpenBao service configuration
    - unseal.key · root:openbao 0640, static auto-unseal key copy
    - backup.token · root:root 0600, daily snapshot token
    - tls · root:openbao 0750/
      - ca.crt · root:openbao 0640
      - server.crt · root:openbao 0640
      - server.key · root:openbao 0640
  - profile.d/
    - bao.sh · root:root 0644, CLI environment (BAO_ADDR / BAO_CACERT)
  - systemd/system/
    - openbao.service · root:root 0644, Pigsty-rendered unit
- data/vault · openbao:openbao 0700, default vault_data/
  - raft · openbao:openbao 0700, embedded Raft storage/   {open=false}
  - backup · root:root 0700, daily vault-*.snap snapshots (0600) and .backup.lock/   {open=false}
- var/log/openbao · openbao:openbao 0750, audit.log (0600)/   {open=false}
- var/lib/node_exporter/textfile/
  - vault.prom · Snapshot timestamp and size metrics
- infra/targets/vault/
  - <cluster>-<seq>.yml · victoria:infra 0640, FileSD target
```
