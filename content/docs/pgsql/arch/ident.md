---
title: Identity
weight: 1103
description: 'Introduction to entity identity identifiers for PostgreSQL clusters
  in Pigsty: naming conventions, design philosophy, and usage.'
icon: fa-solid fa-address-card
module: [PGSQL]
categories: [Concept]
---


Pigsty uses the [`PG_ID`](/docs/pgsql/param#pg_id) parameter group to assign deterministic identities to each entity in the PGSQL module.

----------------

## Core Identity Parameters

Three mandatory parameters constitute the minimal ID set for PGSQL:

| Parameter                                           | Level | Purpose      | Constraints                                      |
|----------------------------------------------|----|---------|-----------------------------------------|
| [`pg_cluster`](/docs/pgsql/param#pg_cluster) | Cluster | Business namespace  | `[a-z][a-z0-9-]*`                       |
| [`pg_seq`](/docs/pgsql/param#pg_seq)         | Instance | Instance sequence number within cluster | Incrementally assigned natural number, unique and non-reusable                        |
| [`pg_role`](/docs/pgsql/param#pg_role)       | Instance | Replication role    | `primary / replica / offline / delayed` |

- `pg_cluster` determines all derived names: instances, services, monitoring labels.
- `pg_seq` binds 1:1 with nodes, expressing topology order and expected priority.
- `pg_role` drives Patroni/HAProxy behavior: `primary` is unique, `replica` serves online read-only, `offline` only accepts offline services, `delayed` is used for delayed clusters.

Pigsty does not provide default values for the above parameters and they must be explicitly specified in the inventory.

----------------

## Entity Identifiers

Pigsty's PostgreSQL entity identifiers are automatically generated based on the core identity parameters above:

| Entity  | Generation Rule                             | Example                |
|-----|----------------------------------|-------------------|
| Instance  | `{{ pg_cluster }}-{{ pg_seq }}`  | `pg-test-1`       |
| Service  | `{{ pg_cluster }}-{{ pg_role }}` | `pg-test-primary` |
| Node Name | Defaults to instance name, but can be explicitly overridden                  | `pg-test-1`       |

Service suffixes follow built-in conventions: `primary`, `replica`, `default`, `offline`, `delayed`, etc. HAProxy/pgbouncer read these identifiers to automatically build routing. Naming maintains prefix consistency, allowing direct queries or filtering via `pg-test-*`.

----------------

## Monitoring Label System

In the PGSQL module, all monitoring metrics use the following label system:

- `cls`: Cluster name: `{{ pg_cluster }}`.
- `ins`: Instance name: `{{ pg_cluster }}-{{ pg_seq }}`.
- `ip`: IP of the node where the instance resides.

For VictoriaMetrics, the job name for collecting PostgreSQL metrics is fixed as `pgsql`;
The job name for monitoring remote PG instances is fixed as `pgrds`.

For VictoriaLogs, the job name for collecting PostgreSQL CSV logs is fixed as `postgres`;
The job name for collecting pgbackrest logs is fixed as `pgbackrest`, while other components collect logs via syslog.


--------

## Example: `pg-test` Identity View

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica, pg_offline_query: true }
  vars:
    pg_cluster: pg-test
```

| Cluster      | Seq | Role              | Node/IP       | Instance        | Service Endpoints                              |
|---------|----|-----------------|-------------|-----------|-----------------------------------|
| pg-test | 1  | primary         | 10.10.10.11 | pg-test-1 | pg-test-primary                   |
| pg-test | 2  | replica         | 10.10.10.12 | pg-test-2 | pg-test-replica                   |
| pg-test | 3  | replica+offline | 10.10.10.13 | pg-test-3 | pg-test-replica / pg-test-offline |

Prometheus label example:

```text
pg_up{cls="pg-test", ins="pg-test-1", ip="10.10.10.11", job="pgsql"}
pg_up{cls="pg-test", ins="pg-test-2", ip="10.10.10.12", job="pgsql"}
pg_up{cls="pg-test", ins="pg-test-3", ip="10.10.10.13", job="pgsql"}
```
