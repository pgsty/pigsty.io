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

Pigsty provides approximately **380+** configuration parameters distributed across 8 default modules for fine-grained control of various system aspects. See [**Reference - Parameter List**](/docs/ref/param) for the complete list.

| Module                             | Groups | Params | Description                                          |
|:-----------------------------------|:------:|:------:|:-----------------------------------------------------|
| [**PGSQL**](/docs/pgsql/param)     |   9    |  123   | Core configuration for PostgreSQL database clusters  |
| [**INFRA**](/docs/infra/param)     |   10   |   82   | Infrastructure: repos, Nginx, DNS, monitoring, Grafana, etc. |
| [**NODE**](/docs/node/param)       |   11   |   83   | Host node tuning: identity, DNS, packages, tuning, security, admin, time, VIP, etc. |
| [**ETCD**](/docs/etcd/param)       |   2    |   13   | Distributed configuration store and service discovery |
| [**REDIS**](/docs/redis/param)     |   1    |   21   | Redis cache and data structure server                |
| [**MINIO**](/docs/minio/param)     |   2    |   21   | S3-compatible object storage service                 |
| [**FERRET**](/docs/ferret/param)   |   1    |    9   | MongoDB-compatible database FerretDB                 |
| [**DOCKER**](/docs/docker/param)   |   1    |    8   | Docker container engine                              |
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

Exceptions are [**`etcd_cluster`**](/docs/etcd/param#etcd_cluster) and [**`minio_cluster`**](/docs/minio/param#minio_cluster) which have default values.
This assumes each deployment has only one etcd cluster for DCS and one optional MinIO cluster for centralized backup storage, so they are assigned default cluster names `etcd` and `minio`.
However, you can still deploy multiple etcd or MinIO clusters using different names.
