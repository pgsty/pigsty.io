# Parameters

> Fine-tune Pigsty customization using configuration parameters

---

LLMS index: [llms.txt](/llms.txt)

---

Use **inventory** parameters to customize infrastructure settings and database configuration.


------

## Parameter List

The `files/cmdb.sql` defaults define **399 public configuration parameters** across 12 Pigsty modules. See [**Parameter Reference**](/docs/ref/param) for the complete list.

| Module                             | Groups | Params | Description                              |
|:-----------------------------------|:------:|:------:|:-----------------------------------------|
| [**PGSQL**](/docs/pgsql/param) | 10 | 125 | PostgreSQL HA clusters, backups, and PITR |
| [**INFRA**](/docs/infra/param)     |   10   |   73   | Software repositories and Victoria observability infrastructure |
| [**NODE**](/docs/node/param)       |   11   |   73   | Node initialization, system tuning, and operations baseline |
| [**ETCD**](/docs/etcd/param)       |   2    |   13   | ETCD cluster and removal protection parameters |
| [**VAULT**](/docs/vault/param) | 2 | 8 | OpenBao secrets clusters and removal safeguards |
| [**MINIO**](/docs/minio/param)     |   2    |   22   | Silo deployment, observability, and removal parameters                    |
| [**REDIS**](/docs/redis/param)     |   2    |   22   | Redis/Valkey deployment and removal parameters |
| [**DOCKER**](/docs/docker/param)   |   1    |    8   | Docker engine parameters                 |
| [**JUICE**](/docs/juice/param)     |   1    |    2   | JuiceFS instance and cache parameters    |
| [**VIBE**](/docs/vibe/param)       |   6    |   68   | Code/Jupyter/Node.js/Claude/Codex configuration |
| [**KAFKA**](/docs/kafka/param)     |   2    |   19   | Kafka deployment and removal-protection parameters |
| [**MYSQL**](/docs/mysql/param) | 6 | 16 | Native MySQL 8.4 deployment, backups, monitoring, and removal |
| **Total** | **55** | **399** | Default parameter records in `files/cmdb.sql` |
{.wide .expand}

> `cmdb.sql` combines `INFRA_ID` and `INFRA_PACKAGE` into one group, giving INFRA 9 groups; documentation splits them into 10 for navigation. NODE also has the platform-derived `node_tuned_profile_dir` in `defaults/main.yml`, so the [**NODE parameter page**](/docs/node/param) lists 74 entries.

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
| [**`VAULT`**](/docs/vault/param#vault)    | `vault_cluster`, `vault_seq`                     |
| [**`MINIO`**](/docs/minio/param#minio)      | `minio_cluster`, `minio_seq`                     |
| [**`REDIS`**](/docs/redis/param/)           | `redis_cluster`, `redis_node`, `redis_instances` |
| [**`KAFKA`**](/docs/kafka/param/)         | `kafka_cluster`, `kafka_seq`                     |
| [**`MYSQL`**](/docs/mysql/param/)         | `mysql_cluster`, `mysql_seq`                     |
| [**`INFRA`**](/docs/infra/param#infra_id)   | `infra_seq`                                      |

Exceptions are [**`etcd_cluster`**](/docs/etcd/param#etcd_cluster) and [**`vault_cluster`**](/docs/vault/param#vault_cluster), which run on fixed groups and default to `etcd` and `vault`. Instance sequences `etcd_seq` and `vault_seq` still require explicit values.
Object storage [**`minio_cluster`**](/docs/minio/param#minio_cluster) no longer has a default; define it in each object storage cluster's variables.
Do not set it in `all.vars`, which would mark every host as a MINIO member.
