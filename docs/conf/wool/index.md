# demo/wool

> Single-node tiny-tuning example for small cloud instances in China

---

LLMS index: [llms.txt](/llms.txt)

---

`demo/wool` targets small cloud instances in China and defaults to `region: china`, PostgreSQL 18, and the `tiny` tuning profiles.


--------

## Overview

- Config Name: `demo/wool`
- Node Count: Single node
- Suggested Size: Approximately 2 vCPU / 2 GB for testing
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/)

```bash
./configure -c demo/wool [-i <private_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/wool.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/wool.yml)

```yaml
---
#==============================================================#
# File      :   wool.yml
# Desc      :   Pigsty Aliyun ECS 羊毛机配置文件
# Ctime     :   2020-11-09
# Mtime     :   2025-12-12
# Docs      :   https://pigsty.io/docs/conf
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

all:
  children:

    # 建议使用操作系统： RockyLinux 9.4
    # 这里的 10.10.10.10 都应该是你 ECS 的内网 IP 地址，用于安装 Infra/Etcd 模块
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

    # 定义一个单节点的 PostgreSQL 数据库实例
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_databases:
          - { name: meta ,baseline: cmdb.sql ,schemas: [ pigsty ] }
        pg_users: # 最好把这里的两个样例用户的密码也修改一下
          - { name: dbuser_meta ,password: DBUser.Meta   ,roles: [ dbrole_admin ] }
          - { name: dbuser_view ,password: DBUser.Viewer ,roles: [ dbrole_readonly ] }
        pg_conf: tiny.yml   # 2C/2G 的云服务器，使用微型数据库配置模板
        node_tune: tiny     # 2C/2G 的云服务器，使用微型主机节点参数优化模板
        pgbackrest_enabled: false # 这么点磁盘空间，就别搞数据库物理备份了
        pg_version: 18           # 用 PostgreSQL 18

  vars:
    version: v4.5.0                   # pigsty version string
    region: china
    admin_ip: 10.10.10.10  # 这个 IP 地址应该是你 ECS 的内网IP地址
    infra_portal: # 如果你有自己的 DNS 域名，这里面的域名后缀 pigsty 换成你自己的 DNS 域名
      home : { domain: i.pigsty }     # default domain name
      minio: { domain: m.pigsty  ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
      postgrest: { domain: api.pigsty  ,endpoint: "127.0.0.1:8884" }
      pgadmin: { domain: adm.pigsty  ,endpoint: "127.0.0.1:8885" }
      pgweb: { domain: cli.pigsty  ,endpoint: "127.0.0.1:8886" }
      bytebase: { domain: ddl.pigsty  ,endpoint: "127.0.0.1:8887" ,websocket: true }
      jupyter: { domain: lab.pigsty  ,endpoint: "127.0.0.1:8888", websocket: true }
      gitea: { domain: git.pigsty  ,endpoint: "127.0.0.1:8889" }
      wiki: { domain: wiki.pigsty ,endpoint: "127.0.0.1:9002" }
      noco: { domain: noco.pigsty ,endpoint: "127.0.0.1:9003" }
      supa: { domain: supa.pigsty ,endpoint: "10.10.10.10:8000", websocket: true }

    # 把这里的密码都改掉！你也不想别人随便来串门对吧！
    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
    pg_admin_password: DBUser.DBA
    pg_monitor_password: DBUser.Monitor
    pg_replication_password: DBUser.Replicator
    patroni_password: Patroni.API
    haproxy_admin_password: pigsty
    minio_secret_key: S3User.MinIO
    etcd_root_password: Etcd.Root
...
```


--------

## Explanation

- Explicitly sets `pg_conf: tiny.yml` and `node_tune: tiny` on `pg-meta`
- Expects `10.10.10.10` to be replaced by the cloud instance's private IP
- Disables pgBackRest by default to reduce disk usage on a small test host
- Includes several example portal domains

This template trades backup capability for lower resource use and is suitable only for temporary testing. Production deployments must enable and verify backups, tighten network rules, replace default passwords, and remove unused portal entries.
