---
title: Security Tips
linkTitle: Security
weight: 290
description: Three security hardening tips for single-node quick-start deployment
icon: fas fa-shield-halved
module: [PIGSTY]
categories: [Tutorial]
---


For Demo/Dev single-node deployments, Pigsty's default config is secure enough as long as you [**change default passwords**](#passwords).

If your deployment is exposed to Internet or office network, consider adding [**firewall**](#firewall) rules to restrict port access and source IPs for enhanced security.

Additionally, we recommend protecting Pigsty's [**critical files**](#files) (config files and CA private key) from unauthorized access and backing them up regularly.

For enterprise prod envs with strict security requirements, refer to the [**Deployment - Security Hardening**](/docs/deploy/security/) documentation for advanced configuration.


----------------

## Passwords

Pigsty is an open-source project with **well-known default passwords**. If your deployment is exposed to Internet or office network, you must change all default passwords!

|           Module           | Parameter                                                              | Default Value       |
|:--------------------------:|------------------------------------------------------------------------|---------------------|
| [**`INFRA`**](/docs/infra) | [`grafana_admin_password`](/docs/infra/param#grafana_admin_password)   | `pigsty`            |
| [**`INFRA`**](/docs/infra) | [`grafana_view_password`](/docs/infra/param#grafana_view_password)     | `DBUser.Viewer`     |
| [**`PGSQL`**](/docs/pgsql) | [`pg_admin_password`](/docs/pgsql/param#pg_admin_password)             | `DBUser.DBA`        |
| [**`PGSQL`**](/docs/pgsql) | [`pg_monitor_password`](/docs/pgsql/param#pg_monitor_password)         | `DBUser.Monitor`    |
| [**`PGSQL`**](/docs/pgsql) | [`pg_replication_password`](/docs/pgsql/param#pg_replication_password) | `DBUser.Replicator` |
| [**`PGSQL`**](/docs/pgsql) | [`patroni_password`](/docs/pgsql/param#patroni_password)               | `Patroni.API`       |
|  [**`NODE`**](/docs/node)  | [`haproxy_admin_password`](/docs/node/param#haproxy_admin_password)    | `pigsty`            |
| [**`MINIO`**](/docs/minio) | [`minio_secret_key`](/docs/minio/param#minio_secret_key)               | `S3User.MinIO`      |
|  [**`ETCD`**](/docs/etcd)  | [`etcd_root_password`](/docs/etcd/param#etcd_root_password)            | `Etcd.Root`         |
{.full-width}

To avoid manually modifying passwords, Pigsty's **configuration wizard** provides automatic random strong password generation using the `-g` argument with `configure`.

```bash
$ ./configure -g
configure pigsty v4.0.0 begin
[ OK ] region = china
[WARN] kernel  = Darwin, can be used as admin node only
[ OK ] machine = arm64
[ OK ] package = brew (macOS)
[WARN] primary_ip = default placeholder 10.10.10.10 (macOS)
[ OK ] mode = meta (unknown distro)
[ OK ] locale  = C.UTF-8
[ OK ] generating random passwords...
    grafana_admin_password   : CdG0bDcfm3HFT9H2cvFuv9w7
    pg_admin_password        : 86WqSGdokjol7WAU9fUxY8IG
    pg_monitor_password      : 0X7PtgMmLxuCd2FveaaqBuX9
    pg_replication_password  : 4iAjjXgEY32hbRGVUMeFH460
    patroni_password         : DsD38QLTSq36xejzEbKwEqBK
    haproxy_admin_password   : uhdWhepXrQBrFeAhK9sCSUDo
    minio_secret_key         : z6zrYUN1SbdApQTmfRZlyWMT
    etcd_root_password       : Bmny8op1li1wKlzcaAmvPiWc
    DBUser.Meta              : U5v3CmeXICcMdhMNzP9JN3KY
    DBUser.Viewer            : 9cGQF1QMNCtV3KlDn44AEzpw
    S3User.Backup            : 2gjgSCFYNmDs5tOAiviCqM2X
    S3User.Meta              : XfqkAKY6lBtuDMJ2GZezA15T
    S3User.Data              : OygorcpCbV7DpDmqKe3G6UOj
[ OK ] random passwords generated, check and save them
[ OK ] ansible = ready
[ OK ] pigsty configured
[WARN] don't forget to check it and change passwords!
proceed with ./deploy.yml
```


----------------

## Firewall

For deployments exposed to Internet or office networks, we strongly recommend configuring **firewall rules** to limit access IP ranges and ports.

You can use your cloud provider's security group features, or Linux distribution firewall services (like `firewalld`, `ufw`, `iptables`, etc.) to implement this.

| Direction | Protocol | Port     | Service    | Description                              |
|:---------:|:--------:|----------|------------|------------------------------------------|
|  Inbound  |   TCP    | **22**   | SSH        | Allow SSH login access                   |
|  Inbound  |   TCP    | **80**   | Nginx      | Allow Nginx HTTP access                  |
|  Inbound  |   TCP    | **443**  | Nginx      | Allow Nginx HTTPS access                 |
|  Inbound  |   TCP    | **5432** | PostgreSQL | Remote database access, enable as needed |
{.full-width}

Pigsty supports configuring firewall rules to allow 22/80/443/5432 from external networks, but this is not enabled by default.


----------------

## Files

In Pigsty, you need to protect the following files:

- **`pigsty.yml`**: Pigsty main config file, contains access information and passwords for all nodes
- **`files/pki/ca/ca.key`**: Pigsty self-signed CA private key, used to issue all SSL certificates in the deployment (auto-generated during deployment)

We recommend strictly controlling access permissions for these two files, regularly backing them up, and storing them in a secure location.
