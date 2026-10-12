---
title: "Citus support"
weight: 130
icon: fas fa-lemon
description: "Patroni integration details for Citus coordinator and worker groups."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/citus.html

<a id="citus"></a>
Patroni automates deployment of [Multi-Node Citus](https://docs.citusdata.com/en/stable/installation/multi_node.html) clusters.

--------

## TL;DR

Apply these rules:

1.  Install the [Citus](https://github.com/citusdata/citus) PostgreSQL extension on every node. The minimum supported version is 10.0. We recommend at least 11.2 for transparent worker switchovers and restarts.
2.  Use the same cluster name (`scope`) on all Citus nodes.
3.  Use the same superuser credentials on the coordinator and all workers. Configure `pg_hba.conf` to permit superuser access between all nodes.
4.  Permit worker access to the coordinator [REST API](/docs/patroni/config/yaml#restapi_settings). Use the same credentials. If client certificates are configured, the coordinator must accept worker certificates.
5.  Add this section to `patroni.yaml`:

```yaml
citus:
  group: X  # 0 for coordinator and 1, 2, 3, etc for workers
  database: citus  # must be the same on all nodes
```

Then start Patroni. It performs these operations:

0.  Set `bootstrap.dcs.synchronous_mode` to [quorum](/docs/patroni/replication_modes#quorum_mode), unless you explicitly set another value.
1.  Add the [citus](/docs/patroni/citus#citus) extension to `shared_preload_libraries`.
2.  Set `max_prepared_transactions` to `2*max_connections`, unless it is explicitly set in [dynamic configuration](/docs/patroni/config/dynamic#dynamic).
3.  Change `citus.local_hostname` from `localhost` to the address Patroni uses for local PostgreSQL connections. PostgreSQL might not listen on `localhost`.
4.  Create `citus.database`, then run `CREATE EXTENSION citus`.
5.  Add current superuser [credentials](/docs/patroni/config/yaml#postgresql_settings) to `pg_dist_authinfo` for cross-node communication. Update them if you later change the superuser username, password, sslcert, or sslkey.
6.  On the coordinator primary, discover worker primaries and add them to `pg_dist_node` with `citus_add_node()`.
7.  Maintain `pg_dist_node` after failover or switchover in coordinator or worker clusters.

--------

## patronictl

Coordinator and worker clusters are separate PostgreSQL/Patroni clusters. [Citus](https://github.com/citusdata/citus) groups them logically. Most operations therefore cannot manage them as one entity.

A [citus](/docs/patroni/citus#citus) section in `patroni.yaml` changes [patronictl](/docs/patroni/patronictl#patronictl) behavior in two ways:

1.  By default, `list` and `topology` show all coordinators and workers in the Citus formation. The `Group` column identifies their Citus groups.
2.  [patronictl](/docs/patroni/patronictl#patronictl) commands accept `--group`. Some use a default from `patroni.yaml`. For example, [patronictl_pause](/docs/patroni/patronictl#patronictl_pause) defaults to `group` in the [citus](/docs/patroni/citus#citus) section. [patronictl_switchover](/docs/patroni/patronictl#patronictl_switchover) and [patronictl_remove](/docs/patroni/patronictl#patronictl_remove) require an explicit group.

An example of [patronictl_list](/docs/patroni/patronictl#patronictl_list) output for the Citus cluster:

    postgres@coord1:~$ patronictl list demo
    + Citus cluster: demo ----------+----------------+---------+----+-------------+-----+------------+-----+
    | Group | Member  | Host        | Role           | State   | TL | Receive LSN | Lag | Replay LSN | Lag |
    +-------+---------+-------------+----------------+---------+----+-------------+-----+------------+-----+
    |     0 | coord1  | 172.27.0.10 | Replica        | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    |     0 | coord2  | 172.27.0.6  | Quorum Standby | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    |     0 | coord3  | 172.27.0.4  | Leader         | running |  1 |             |     |            |     |
    |     1 | work1-1 | 172.27.0.8  | Quorum Standby | running |  1 |   0/31D3198 |   0 |  0/31D3198 |   0 |
    |     1 | work1-2 | 172.27.0.2  | Leader         | running |  1 |             |     |            |     |
    |     2 | work2-1 | 172.27.0.5  | Quorum Standby | running |  1 |   0/31CDFC0 |   0 |  0/31CDFC0 |   0 |
    |     2 | work2-2 | 172.27.0.7  | Leader         | running |  1 |             |     |            |     |
    +-------+---------+-------------+----------------+---------+----+-------------+-----+------------+-----+

If we add the `--group` option, the output will change to:

    postgres@coord1:~$ patronictl list demo --group 0
    + Citus cluster: demo (group: 0, 7179854923829112860) -+-------------+-----+------------+-----+
    | Member | Host        | Role           | State   | TL | Receive LSN | Lag | Replay LSN | Lag |
    +--------+-------------+----------------+---------+----+-------------+-----+------------+-----+
    | coord1 | 172.27.0.10 | Replica        | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    | coord2 | 172.27.0.6  | Quorum Standby | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    | coord3 | 172.27.0.4  | Leader         | running |  1 |             |     |            |     |
    +--------+-------------+----------------+---------+----+-------------+-----+------------+-----+

    postgres@coord1:~$ patronictl list demo --group 1
    + Citus cluster: demo (group: 1, 7179854923881963547) -+-------------+-----+------------+-----+
    | Member  | Host       | Role           | State   | TL | Receive LSN | Lag | Replay LSN | Lag |
    +---------+------------+----------------+---------+----+-------------+-----+------------+-----+
    | work1-1 | 172.27.0.8 | Quorum Standby | running |  1 |   0/31D3198 |   0 |  0/31D3198 |   0 |
    | work1-2 | 172.27.0.2 | Leader         | running |  1 |             |     |            |     |
    +---------+------------+----------------+---------+----+-------------+-----+------------+-----+

--------

## Citus worker switchover

Citus can make an orchestrated worker switchover nearly transparent to applications. Applications connect to the coordinator, which connects to workers. Citus can [pause](/docs/patroni/pause#pause) coordinator SQL traffic for the shards on the affected worker. The coordinator holds this traffic during switchover. Traffic resumes when the new worker primary can accept read/write queries.

An example of [patronictl_switchover](/docs/patroni/patronictl#patronictl_switchover) on the worker cluster:

    postgres@coord1:~$ patronictl switchover demo
    + Citus cluster: demo ----------+----------------+---------+----+-------------+-----+------------+-----+
    | Group | Member  | Host        | Role           | State   | TL | Receive LSN | Lag | Replay LSN | Lag |
    +-------+---------+-------------+----------------+---------+----+-------------+-----+------------+-----+
    |     0 | coord1  | 172.27.0.10 | Replica        | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    |     0 | coord2  | 172.27.0.6  | Quorum Standby | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    |     0 | coord3  | 172.27.0.4  | Leader         | running |  1 |             |     |            |     |
    |     1 | work1-1 | 172.27.0.8  | Leader         | running |  1 |             |     |            |     |
    |     1 | work1-2 | 172.27.0.2  | Quorum Standby | running |  1 |   0/31D3198 |   0 |  0/31D3198 |   0 |
    |     2 | work2-1 | 172.27.0.5  | Quorum Standby | running |  1 |   0/31CDFC0 |   0 |  0/31CDFC0 |   0 |
    |     2 | work2-2 | 172.27.0.7  | Leader         | running |  1 |             |     |            |     |
    +-------+---------+-------------+----------------+---------+----+-------------+-----+------------+-----+
    Citus group: 2
    Primary [work2-2]:
    Candidate ['work2-1'] []:
    When should the switchover take place (e.g. 2024-08-26T08:02 )  [now]:
    Current cluster topology
    + Citus cluster: demo (group: 2, 7179854924063375386) -+-------------+-----+------------+-----+
    | Member  | Host       | Role           | State   | TL | Receive LSN | Lag | Replay LSN | Lag |
    +---------+------------+----------------+---------+----+-------------+-----+------------+-----+
    | work2-1 | 172.27.0.5 | Quorum Standby | running |  1 |   0/31CDFC0 |   0 |  0/31CDFC0 |   0 |
    | work2-2 | 172.27.0.7 | Leader         | running |  1 |             |     |            |     |
    +---------+------------+----------------+---------+----+-------------+-----+------------+-----+
    Are you sure you want to switchover cluster demo, demoting current primary work2-2? [y/N]: y
    2024-08-26 07:02:40.33003 Successfully switched over to "work2-1"
    + Citus cluster: demo (group: 2, 7179854924063375386) --------+---------+------------+---------+
    | Member  | Host       | Role    | State   | TL | Receive LSN |     Lag | Replay LSN |     Lag |
    +---------+------------+---------+---------+----+-------------+---------+------------+---------+
    | work2-1 | 172.27.0.5 | Leader  | running |  1 |             |         |            |         |
    | work2-2 | 172.27.0.7 | Replica | stopped |    |     unknown | unknown |    unknown | unknown |
    +---------+------------+---------+---------+----+-------------+---------+------------+---------+

    postgres@coord1:~$ patronictl list demo
    + Citus cluster: demo ----------+----------------+---------+----+-------------+-----+------------+-----+
    | Group | Member  | Host        | Role           | State   | TL | Receive LSN | Lag | Replay LSN | Lag |
    +-------+---------+-------------+----------------+---------+----+-------------+-----+------------+-----+
    |     0 | coord1  | 172.27.0.10 | Replica        | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    |     0 | coord2  | 172.27.0.6  | Quorum Standby | running |  1 |   0/41C0368 |   0 |  0/41C0368 |   0 |
    |     0 | coord3  | 172.27.0.4  | Leader         | running |  1 |             |     |            |     |
    |     1 | work1-1 | 172.27.0.8  | Leader         | running |  1 |             |     |            |     |
    |     1 | work1-2 | 172.27.0.2  | Quorum Standby | running |  1 |   0/31D3198 |   0 |  0/31D3198 |   0 |
    |     2 | work2-1 | 172.27.0.5  | Leader         | running |  2 |             |     |            |     |
    |     2 | work2-2 | 172.27.0.7  | Quorum Standby | running |  2 |   0/31CDFC0 |   0 |  0/31CDFC0 |   0 |
    +-------+---------+-------------+----------------+---------+----+-------------+-----+------------+-----+

And this is how it looks on the coordinator side:

    # The worker primary notifies the coordinator that it is going to execute "pg_ctl stop".
    2024-08-26 07:02:38,636 DEBUG: query(BEGIN, ())
    2024-08-26 07:02:38,636 DEBUG: query(SELECT pg_catalog.citus_update_node(%s, %s, %s, true, %s), (3, '172.19.0.7-demoted', 5432, 10000))
    # From this moment all application traffic on the coordinator to the worker group 2 is paused.

    # The old worker primary is assigned as a secondary.
    2024-08-26 07:02:40,084 DEBUG: query(SELECT pg_catalog.citus_update_node(%s, %s, %s, true, %s), (7, '172.19.0.7', 5432, 10000))

    # The future worker primary notifies the coordinator that it acquired the leader lock in DCS and about to run "pg_ctl promote".
    2024-08-26 07:02:40,085 DEBUG: query(SELECT pg_catalog.citus_update_node(%s, %s, %s, true, %s), (3, '172.19.0.5', 5432, 10000))

    # The new worker primary just finished promote and notifies coordinator that it is ready to accept read-write traffic.
    2024-08-26 07:02:41,485 DEBUG: query(COMMIT, ())
    # From this moment the application traffic on the coordinator to the worker group 2 is unblocked.

--------

## Secondary nodes

Since Patroni v4.0.0, Citus secondary nodes without the `noloadbalance` [tag](/docs/patroni/config/yaml#tags_settings) are also registered in `pg_dist_node`. To use them for read-only queries, applications must change [citus.use_secondary_nodes](https://docs.citusdata.com/en/latest/develop/api_guc.html#citus-use-secondary-nodes-enum).

--------

## Peek into DCS

The Citus cluster (coordinator and workers) are stored in DCS as a fleet of Patroni clusters logically grouped together:

    /service/batman/              # scope=batman
    /service/batman/0/            # citus.group=0, coordinator
    /service/batman/0/initialize
    /service/batman/0/leader
    /service/batman/0/members/
    /service/batman/0/members/m1
    /service/batman/0/members/m2
    /service/batman/1/            # citus.group=1, worker
    /service/batman/1/initialize
    /service/batman/1/leader
    /service/batman/1/members/
    /service/batman/1/members/m3
    /service/batman/1/members/m4
    ...

Most DCS implementations can read the whole Citus cluster with one recursive request using this structure. Only coordinators read the whole tree, to discover workers. Workers read their own group subtree and, in some cases, the coordinator subtree.

--------

## Citus on Kubernetes

Kubernetes does not support hierarchical structures. Patroni therefore includes the Citus group in every Kubernetes object name:

    batman-0-leader  # the leader config map for the coordinator
    batman-0-config  # the config map holding initialize, config, and history "keys"
    ...
    batman-1-leader  # the leader config map for worker group 1
    batman-1-config
    ...

The naming pattern is `${scope}-${citus.group}-${type}`.

Patroni discovers Kubernetes objects with a [label selector](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors). All Patroni/Citus Pods and Endpoints/ConfigMaps must have matching labels. Configure Patroni to use these labels through Kubernetes [settings](/docs/patroni/config/yaml#kubernetes_settings) or `environment variables
<kubernetes_environment>`.

A couple of examples of Patroni configuration using Pods environment variables:

1.  for the coordinator cluster

```yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    application: patroni
    citus-group: "0"
    citus-type: coordinator
    cluster-name: citusdemo
  name: citusdemo-0-0
  namespace: default
spec:
  containers:
  - env:
    - name: PATRONI_SCOPE
      value: citusdemo
    - name: PATRONI_NAME
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: metadata.name
    - name: PATRONI_KUBERNETES_POD_IP
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: status.podIP
    - name: PATRONI_KUBERNETES_NAMESPACE
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: metadata.namespace
    - name: PATRONI_KUBERNETES_LABELS
      value: '{application: patroni}'
    - name: PATRONI_CITUS_DATABASE
      value: citus
    - name: PATRONI_CITUS_GROUP
      value: "0"
```

2.  for the worker cluster from the group 2

```yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    application: patroni
    citus-group: "2"
    citus-type: worker
    cluster-name: citusdemo
  name: citusdemo-2-0
  namespace: default
spec:
  containers:
  - env:
    - name: PATRONI_SCOPE
      value: citusdemo
    - name: PATRONI_NAME
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: metadata.name
    - name: PATRONI_KUBERNETES_POD_IP
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: status.podIP
    - name: PATRONI_KUBERNETES_NAMESPACE
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: metadata.namespace
    - name: PATRONI_KUBERNETES_LABELS
      value: '{application: patroni}'
    - name: PATRONI_CITUS_DATABASE
      value: citus
    - name: PATRONI_CITUS_GROUP
      value: "2"
```

Both examples set the `citus-group` label to identify the object's Citus group. They set `PATRONI_CITUS_GROUP` to the same value. Patroni automatically adds `citus-group: ${env.PATRONI_CITUS_GROUP}` to new ConfigMaps and Endpoints:

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: citusdemo-0-leader  # Is generated as ${env.PATRONI_SCOPE}-${env.PATRONI_CITUS_GROUP}-leader
  labels:
    application: patroni    # Is set from the ${env.PATRONI_KUBERNETES_LABELS}
    cluster-name: citusdemo # Is automatically set from the ${env.PATRONI_SCOPE}
    citus-group: '0'        # Is automatically set from the ${env.PATRONI_CITUS_GROUP}
```

See the [kubernetes](https://github.com/patroni/patroni/tree/master/kubernetes) directory for a complete Patroni/Citus deployment example.

There are two important files for you:

1.  Dockerfile.citus
2.  citus_k8s.yaml

--------

## Citus upgrades and PostgreSQL major upgrades

Read the Citus upgrade [documentation](https://docs.citusdata.com/en/latest/admin_guide/upgrading_citus.html). One change applies: restart PostgreSQL with [patronictl_restart](/docs/patroni/patronictl#patronictl_restart) instead of `systemctl restart`.

A PostgreSQL major upgrade with Citus requires both projects' upgrade procedures. Combine the Citus major upgrade documentation with Patroni `PostgreSQL major upgrade<major_upgrade>` instructions. A Citus formation contains multiple Patroni clusters: the coordinator and workers. Upgrade each cluster independently.
