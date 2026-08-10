---
title: Parameters
weight: 213
description: Fine-tune Pigsty customization using configuration parameters
icon: fa-solid fa-code
module: [PIGSTY]
categories: [Concept]
---

In the **inventory**, you can use various parameters to fine-tune Pigsty customization. These parameters cover everything from infrastructure settings to database configuration.


------

## Parameter List

According to the current source and parameter reference pages, Pigsty's 10 official modules expose **379** public parameters for fine-grained control. See [**Reference - Parameter List**](/docs/ref/param) for the complete list. The native MySQL 8.4 pilot module exposes 10 additional public parameters that are listed separately and excluded from this total.

| Module                             | Groups | Params | Description                              |
|:-----------------------------------|:------:|:------:|:-----------------------------------------|
| [**PGSQL**](/docs/pgsql/param)     |   9    |  124   | PostgreSQL high-availability cluster configuration |
| [**INFRA**](/docs/infra/param)     |   10   |   73   | Software repositories and Victoria observability infrastructure |
| [**NODE**](/docs/node/param)       |   11   |   73   | Node initialization, system tuning, and operations baseline |
| [**ETCD**](/docs/etcd/param)       |   2    |   13   | ETCD cluster and removal protection parameters |
| [**MINIO**](/docs/minio/param)     |   2    |   28   | Silo, MinIO, and RustFS deployment, observability, and removal parameters |
| [**REDIS**](/docs/redis/param)     |   2    |   22   | Redis/Valkey deployment and removal parameters |
| [**DOCKER**](/docs/docker/param)   |   1    |    8   | Docker engine parameters                 |
| [**JUICE**](/docs/juice/param)     |   1    |    2   | JuiceFS instance and cache parameters    |
| [**VIBE**](/docs/vibe/param)       |   1    |   18   | Code/Jupyter/Node.js/Claude/Codex configuration |
| [**KAFKA**](/docs/kafka/param)     |   2    |   18   | Kafka deployment and removal-protection parameters |
{.stretch-last}


------

## Parameter Form

**Parameters** are **key-value pairs** that describe entities. The **Key** is a string, and the **Value** can be one of five types: boolean, string, number, array, or object.

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

Parameters can be set at different levels with the following priority:

| Level         | Location                       | Description                     | Priority    |
|:--------------|:-------------------------------|:--------------------------------|:------------|
| **CLI**       | `-e` command line argument     | Passed via command line         | Highest (5) |
| **Host/Instance** | `<group>.hosts.<host>`     | Parameters specific to a single host | Higher (4) |
| **Group/Cluster** | `<group>.vars`             | Parameters shared by hosts in group/cluster | Medium (3) |
| **Global**    | `all.vars`                     | Parameters shared by all hosts  | Lower (2)   |
| **Default**   | `<roles>/default/main.yml`     | Role implementation defaults    | Lowest (1)  |

Here are some examples of parameter priority:

- Use command line parameter [**`-e grafana_clean=true`**](/docs/infra/param#grafana_clean) when running playbooks to wipe Grafana data
- Use instance-level parameter `pg_role` on host variables to override pg instance role
- Use cluster-level parameter `pg_cluster` on group variables to override pg cluster name
- Use global parameter `node_ntp_servers` on global variables to specify global NTP servers
- If [**`pg_version`**](/docs/pgsql/param#pg_version) is not set, Pigsty will use the default value from the [**`pgsql`**](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/defaults/main.yml#L42) role implementation (default is `18`)

Except for **identity parameters**, every parameter has an appropriate default value, so explicit setting is not required.


------

## Identity Parameters

Identity parameters are special parameters that serve as entity ID identifiers, therefore they **have no default values** and **must be explicitly set**.

| Module                                      | Identity Parameters                              |
|:--------------------------------------------|:-------------------------------------------------|
| [**`PGSQL`**](/docs/pgsql/param#pg_id)      | `pg_cluster`, `pg_seq`, `pg_role`, ...           |
| [**`NODE`**](/docs/node/param#node_id)      | `nodename`, `node_cluster`                       |
| [**`ETCD`**](/docs/etcd/param#etcd)         | `etcd_cluster`, `etcd_seq`                       |
| [**`MINIO`**](/docs/minio/param#minio)      | `minio_cluster`, `minio_seq`                     |
| [**`REDIS`**](/docs/redis/param/)           | `redis_cluster`, `redis_node`, `redis_instances` |
| [**`INFRA`**](/docs/infra/param#infra_id)   | `infra_seq`                                      |

The exception is [**`etcd_cluster`**](/docs/etcd/param#etcd_cluster), which still defaults to `etcd`.
Object storage [**`minio_cluster`**](/docs/minio/param#minio_cluster) no longer has a default and must be defined explicitly in each object-storage cluster's variables.
Do not place it in `all.vars`, or every host will be marked as a MINIO module member.
