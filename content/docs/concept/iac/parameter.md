---
title: Parameters
weight: 213
description: Fine-tune Pigsty customization using configuration parameters
icon: fa-solid fa-code
module: [PIGSTY]
categories: [Concept]
---

Use **inventory** parameters to customize infrastructure settings and database configuration.


------

## Parameter List

The current source and reference pages list **373** public parameters across 10 official modules. See [**Reference - Parameter List**](/docs/ref/param) for the complete list. The native MySQL 8.4 pilot module has 13 additional public parameters. They are listed separately and excluded from this total.

| Module                             | Groups | Params | Description                              |
|:-----------------------------------|:------:|:------:|:-----------------------------------------|
| [**PGSQL**](/docs/pgsql/param)     |   9    |  124   | PostgreSQL high-availability cluster configuration |
| [**INFRA**](/docs/infra/param)     |   10   |   73   | Software repositories and Victoria observability infrastructure |
| [**NODE**](/docs/node/param)       |   11   |   73   | Node initialization, system tuning, and operations baseline |
| [**ETCD**](/docs/etcd/param)       |   2    |   13   | ETCD cluster and removal protection parameters |
| [**MINIO**](/docs/minio/param)     |   2    |   22   | Silo deployment, observability, and removal parameters                    |
| [**REDIS**](/docs/redis/param)     |   2    |   22   | Redis/Valkey deployment and removal parameters |
| [**DOCKER**](/docs/docker/param)   |   1    |    8   | Docker engine parameters                 |
| [**JUICE**](/docs/juice/param)     |   1    |    2   | JuiceFS instance and cache parameters    |
| [**VIBE**](/docs/vibe/param)       |   1    |   18   | Code/Jupyter/Node.js/Claude/Codex configuration |
| [**KAFKA**](/docs/kafka/param)     |   2    |   18   | Kafka deployment and removal-protection parameters |
{.stretch-last}


------

## Parameter Form

**Parameters** are **key-value pairs** that describe entities. A **key** is a string. A **value** can be a boolean, string, number, array, or object.

```yaml
all:                            # <------- Top-level object: all
  vars:
    admin_ip: 10.10.10.10       # <------- Global configuration parameter
  children:
    pg-meta:                    # <------- pg-meta group
      vars:
        pg_cluster: pg-meta     # <------- Cluster-level parameter
      hosts:
        10.10.10.10:            # <------- Host node IP
          pg_seq: 1
          pg_role: primary      # <------- Instance-level parameter

```

------

## Parameter Priority

Set parameters at these levels, listed from highest to lowest priority:

| Level         | Location                       | Description                     | Priority    |
|:--------------|:-------------------------------|:--------------------------------|:------------|
| **CLI**       | `-e` command line argument     | Passed via command line         | Highest (5) |
| **Host/Instance** | `<group>.hosts.<host>`     | Parameters specific to a single host | Higher (4) |
| **Group/Cluster** | `<group>.vars`             | Parameters shared by hosts in group/cluster | Medium (3) |
| **Global**    | `all.vars`                     | Parameters shared by all hosts  | Lower (2)   |
| **Default**   | `<roles>/default/main.yml`     | Role implementation defaults    | Lowest (1)  |

These examples show parameter priority:

- Set [**`-e grafana_clean=true`**](/docs/infra/param#grafana_clean) on the playbook command line to erase Grafana data.
- Set host variable `pg_role` to override the PostgreSQL instance role.
- Set group variable `pg_cluster` to override the PostgreSQL cluster name.
- Set global variable `node_ntp_servers` to specify NTP servers.
- If you do not set [**`pg_version`**](/docs/pgsql/param#pg_version), Pigsty uses the [**`pgsql`**](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/defaults/main.yml#L42) role default, `18`.

Except for **identity parameters**, all parameters have defaults. You do not need to set them explicitly.


------

## Identity Parameters

Identity parameters identify entities. They **have no defaults** and **must be set explicitly**, with the exception below.

| Module                                      | Identity Parameters                              |
|:--------------------------------------------|:-------------------------------------------------|
| [**`PGSQL`**](/docs/pgsql/param#pg_id)      | `pg_cluster`, `pg_seq`, `pg_role`, ...           |
| [**`NODE`**](/docs/node/param#node_id)      | `nodename`, `node_cluster`                       |
| [**`ETCD`**](/docs/etcd/param#etcd)         | `etcd_cluster`, `etcd_seq`                       |
| [**`MINIO`**](/docs/minio/param#minio)      | `minio_cluster`, `minio_seq`                     |
| [**`REDIS`**](/docs/redis/param/)           | `redis_cluster`, `redis_node`, `redis_instances` |
| [**`INFRA`**](/docs/infra/param#infra_id)   | `infra_seq`                                      |

[**`etcd_cluster`**](/docs/etcd/param#etcd_cluster) is an exception. It defaults to `etcd`. Set [**`minio_cluster`**](/docs/minio/param#minio_cluster) explicitly in each object storage cluster's variables. It no longer has a default. Do not set it in `all.vars`: this marks every host as a MINIO module member.
