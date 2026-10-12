---
title: Service/Access
weight: 1300
description: Split read and write operations, route traffic correctly, and reliably deliver PostgreSQL cluster capabilities.
icon: fa-solid fa-arrow-down-up-across-line
module: [PGSQL]
categories: [Reference]
---

> Split read and write operations, route traffic correctly, and reliably deliver PostgreSQL cluster capabilities.

A [service](#service-overview) exposes database cluster capabilities to clients.
It hides the details of the underlying cluster.

Services provide [stable access](#access-service) in production, including after automatic failover in [high-availability clusters](/docs/concept/ha).
[Single-node users](#personal-user) usually do not need services.


---------------

## Personal User

Services are intended for production environments.
Personal users and single-node clusters can connect directly through an instance name or IP address.

For example, Pigsty's default single-node `pg-meta`.`meta` database can be directly connected using three different users:

```bash
psql postgres://dbuser_dba:DBUser.DBA@10.10.10.10/meta     # Direct connection with DBA superuser
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10/meta   # Connect with default business admin user
psql postgres://dbuser_view:DBUser.Viewer@pg-meta/meta     # Connect with default read-only user via instance domain name
```


---------------

## Service Overview

Production environments use primary-replica clusters with replication.
Exactly one instance, the [primary](/docs/pgsql/config#read-write-primary), leads the cluster and accepts writes.
[Replicas](/docs/pgsql/config#read-only-replica) continuously fetch change logs from the primary to keep their data consistent.
Replicas also handle read-only requests, which substantially reduces primary load in workloads with many reads.
Thus, separating write requests from read-only requests is common.

For frequent short connections, Pgbouncer pools requests to reduce the cost of connection and backend process creation.
Operations such as ETL and database changes need direct connections that bypass the pool.
Failures in high-availability clusters can trigger failover and change the primary.
Write traffic must follow the new primary automatically.
**Services** represent these access requirements: separate reads and writes, pooled or direct connections, and automatic routing after failover.

Typically, database clusters must provide this most basic service:

- **Read-write service (primary)**: Can read and write to the database

For production database clusters, at least these two services should be provided:

- **Read-write service (primary)**: Write data: Only carried by the primary.
- **Read-only service (replica)**: Read data: Can be carried by replicas, but can also be carried by the primary if no replicas are available

Additionally, depending on specific business scenarios, there might be other services, such as:

- **Default direct access service (default)**: Service that allows (admin) users to bypass the connection pool and directly access the database
- **Offline replica service (offline)**: Dedicated replica that doesn't handle online read-only traffic, used for ETL and analytical queries
- **Synchronous replica service (standby)**: Read-only service with no replication delay, handled by [synchronous standby](/docs/pgsql/config/cluster#sync-standby)/primary for read-only queries
- **Delayed replica service (delayed)**: Access older data from the same cluster from a certain time ago, handled by [delayed replicas](/docs/pgsql/config#delayed-cluster)



---------------

## Default Service

By default, Pigsty provides four services for each PostgreSQL cluster:

| Service                           | Port | Description                                              |
|-----------------------------------|------|----------------------------------------------------------|
| [primary](#primary-service)       | 5433 | Production read-write, connect to primary pool (6432)    |
| [replica](#replica-service)       | 5434 | Production read-only, connect to replica pool (6432)     |
| [default](#default-service)       | 5436 | Admin, ETL writes, direct access to primary (5432)       |
| [offline](#offline-service)       | 5438 | OLAP, ETL, personal users, interactive queries           |

Taking the default `pg-meta` cluster as an example, it provides four default services:

```bash
psql postgres://dbuser_meta:DBUser.Meta@pg-meta:5433/meta   # pg-meta-primary : production read-write via primary pgbouncer(6432)
psql postgres://dbuser_meta:DBUser.Meta@pg-meta:5434/meta   # pg-meta-replica : production read-only via replica pgbouncer(6432)
psql postgres://dbuser_dba:DBUser.DBA@pg-meta:5436/meta     # pg-meta-default : direct connection via primary postgres(5432)
psql postgres://dbuser_stats:DBUser.Stats@pg-meta:5438/meta # pg-meta-offline : direct connection via offline postgres(5432)
```

From the sample cluster [architecture diagram](/docs/pgsql/config), you can see how these four services work:

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha)

[`pg_dns_target`](/docs/pgsql/param#pg_dns_target) controls the DNS target of `pg-meta`.
The default, `auto`, selects the L2 VIP when enabled.
Otherwise, it selects the IP address of the inventory primary.
VIP is disabled by default.
See [Accessing Services](#access-service).



---------------

## Service Implementation

Pigsty implements services with [HAProxy](/docs/node/param#haproxy) on [nodes](/docs/node).
Different ports identify different services.

Pigsty enables HAProxy on each managed node, including database nodes.
Database nodes have primary or replica roles, but each node exposes the same services.
With the correct service port, you can access the primary read-write service through a replica node.
Thus, access to any cluster instance gives access to all cluster services.


This design is similar to Kubernetes NodePort services.
Each Pigsty service has two core elements:

1. Access endpoints exposed via NodePort (port number, from where to access?)
2. Target instances chosen through Selectors (list of instances, who will handle it?)

Pigsty provides services up to the cluster HAProxy endpoint.
Clients can reach these load balancers in several ways.
See [Accessing Services](#access-service).

Declare all services in configuration files.
For example, [`pg_default_services`](/docs/pgsql/param#pg_default_services) defines the default PostgreSQL services:

```yaml
pg_default_services:
- { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
- { name: replica ,port: 5434 ,dest: default  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
- { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
- { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}
```

Define additional services in [`pg_services`](/docs/pgsql/param#pg_services).
Both `pg_default_services` and `pg_services` are arrays of [service definition](#define-service) objects.


---------------

## Define Service

Pigsty allows you to define your own services:

- [`pg_default_services`](/docs/pgsql/param#pg_default_services): Services uniformly exposed by all PostgreSQL clusters, with four by default.
- [`pg_services`](/docs/pgsql/param#pg_services): Additional PostgreSQL services, can be defined at global or cluster level as needed.
- [`haproxy_services`](/docs/node/param#haproxy_services): Directly customize HAProxy service content, can be used for other component access

For PostgreSQL clusters, you usually need only the first two parameters.
Each service generates a configuration file on every related HAProxy instance: [`/etc/haproxy/conf.d/<pg_cluster>-<service>.cfg`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/service.cfg).
The following custom `standby` service provides read-only access without replication lag.
Add its definition to [`pg_services`](/docs/pgsql/param#pg_services):

```yaml
- name: standby                   # required, service name, the actual svc name will be prefixed with `pg_cluster`, e.g: pg-meta-standby
  port: 5435                      # required, service exposed port (work as kubernetes service node port mode)
  ip: "*"                         # optional, service bind ip address, `*` for all ip by default
  selector: "[]"                  # required, service member selector, use JMESPath to filter inventory
  backup: "[? pg_role == `primary`]"  # optional, backup server selector, these instances will only be used when default selector instances are all down
  dest: default                   # optional, destination port, default|postgres|pgbouncer|<port_number>, 'default' by default, meaning pg_default_service_dest decides
  check: /sync                    # optional, health check url path, / by default, here using Patroni API: /sync, only sync standby and primary will return 200 healthy status
  maxconn: 5000                   # optional, max allowed front-end connection, default 5000
  balance: roundrobin             # optional, haproxy load balance algorithm (roundrobin by default, other options: leastconn)
  options: 'inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100'
```

For the three-node `pg-test` example cluster, Pigsty generates `/etc/haproxy/conf.d/pg-test-standby.cfg` from this definition:

```text
#---------------------------------------------------------------------
# service: pg-test-standby @ 10.10.10.11:5435
#---------------------------------------------------------------------
# service instances 10.10.10.11, 10.10.10.13, 10.10.10.12
# service backups   10.10.10.11
listen pg-test-standby
    bind *:5435            # <--- Binds to port 5435 on all IP addresses
    mode tcp               # <--- Load balancer works on TCP protocol
    maxconn 5000           # <--- Max connections 5000, can be increased as needed
    balance roundrobin     # <--- Load balance algorithm is rr round-robin, can also use leastconn
    option httpchk         # <--- Enable HTTP health check
    option http-keep-alive # <--- Keep HTTP connections
    http-check send meth OPTIONS uri /sync   # <---- Using /sync here, Patroni health check API, only sync standby and primary will return 200 healthy status
    http-check expect status 200             # <---- Health check return code 200 means healthy
    default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
    # servers: selector "[]" includes all three pg-test instances as pg-test-standby backends; /sync admits only the primary and synchronous standby.
    server pg-test-1 10.10.10.11:6432 check port 8008 weight 100 backup  # <----- Only primary satisfies condition pg_role == `primary`, selected by backup selector.
    server pg-test-3 10.10.10.13:6432 check port 8008 weight 100         #        Therefore acts as fallback instance: normally doesn't serve requests, only serves read-only requests after all other replicas are down, maximizing avoidance of read-write service being affected by read-only service
    server pg-test-2 10.10.10.12:6432 check port 8008 weight 100         #
```

The `selector: "[]"` expression includes all three `pg-test` instances in the `pg-test-standby` backend list.
However, the Patroni `/sync` health check returns HTTP 200 only for the primary and [synchronous standby](/docs/pgsql/config/cluster#sync-standby).
Only those instances can handle requests.
The primary also matches `pg_role == primary`, so the backup selector marks it as a backup server.
It handles requests only when no synchronous standby can do so.


---------------

## Primary Service

The Primary service provides cluster read-write access on port 5433.
It is a critical production service.
Its definition is:

```yaml
- { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
```

- `selector: "[]"` includes all cluster members in the Primary service.
- Only the primary passes `check: /primary` and receives traffic.
- `dest: default` makes [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) control the destination.
- Pigsty replaces the `dest` value `default` with `pg_default_service_dest`, whose default is `pgbouncer`.
- Thus, the default destination is the primary connection pool on [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port), normally 6432.

Set `pg_default_service_dest` to `postgres` to bypass the connection pool.
The Primary service then connects directly to [`pg_port`](/docs/pgsql/param#pg_port), normally 5432.
Use this setting when you do not need pooling.

> [!DETAILS]- Example: pg-test-primary haproxy configuration
> ```text
> listen pg-test-primary
>     bind *:5433         # <--- primary service defaults to port 5433
>     mode tcp
>     maxconn 5000
>     balance roundrobin
>     option httpchk
>     option http-keep-alive
>     http-check send meth OPTIONS uri /primary # <--- primary service defaults to using Patroni RestAPI /primary health check
>     http-check expect status 200
>     default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
>     # servers
>     server pg-test-1 10.10.10.11:6432 check port 8008 weight 100
>     server pg-test-3 10.10.10.13:6432 check port 8008 weight 100
>     server pg-test-2 10.10.10.12:6432 check port 8008 weight 100
> ```

Patroni [high availability](/docs/concept/ha) ensures that no more than one instance passes the `/primary` health check at a time.
Thus, the Primary service always routes traffic to the primary.

The Primary service also protects traffic routing during a split-brain condition.
For example, kill -9 can stop primary Patroni without a watchdog.
HAProxy sends traffic only when Patroni is alive and reports primary status.
This protection is unavailable with a direct database connection.




---------------

## Replica Service

The Replica service provides read-only access on port 5434.
It is the next most important production service after Primary.
Its definition is:

```yaml
- { name: replica ,port: 5434 ,dest: default  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
```

- `selector: "[]"` includes all cluster members in the Replica service.
- All instances can pass `check: /read-only` and receive traffic.
- The backup selector `[? pg_role == 'primary' || pg_role == 'offline' ]` marks the primary and [offline replicas](/docs/pgsql/config#offline-replica) as backups.
- The primary or offline replicas receive traffic only when all [normal replicas](/docs/pgsql/config#read-only-replica) are down.
- `dest: default` makes [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) control the destination.
- Pigsty replaces the `dest` value `default` with `pg_default_service_dest`, whose default is `pgbouncer`, as for the [Primary service](#primary-service).
- Thus, the default destination is the replica connection pool on [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port), normally 6432.

> [!DETAILS]- Example: pg-test-replica haproxy configuration
> ```ini
> listen pg-test-replica
>     bind *:5434
>     mode tcp
>     maxconn 5000
>     balance roundrobin
>     option httpchk
>     option http-keep-alive
>     http-check send meth OPTIONS uri /read-only
>     http-check expect status 200
>     default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
>     # servers
>     server pg-test-1 10.10.10.11:6432 check port 8008 weight 100 backup
>     server pg-test-3 10.10.10.13:6432 check port 8008 weight 100
>     server pg-test-2 10.10.10.12:6432 check port 8008 weight 100
> ```

The Replica service first sends read-only requests to available dedicated replicas.
It sends them to the primary only when all replicas are down.
For a two-node primary-replica cluster, this means it uses the replica while available and the primary when the replica fails.

The Replica service uses dedicated Offline instances only when all dedicated read-only instances are down.
This separates fast online queries from slow offline queries to reduce interference.



---------------

### Default Service

The Default service provides service on port 5436, and it's a variant of the Primary service.

The Default service always bypasses the connection pool and connects directly to primary PostgreSQL.
Use it for administration connections, ETL writes, and change data capture (CDC).

```yaml
- { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
```

If `pg_default_service_dest` is `postgres`, Default and Primary have the same behavior.
Only their names and ports differ.
In this case, you can remove Default from the default services.

> [!DETAILS]- Example: pg-test-default haproxy configuration
> ```ini
> listen pg-test-default
>     bind *:5436         # <--- Except for listening port/target port and service name, other configurations are the same as primary service
>     mode tcp
>     maxconn 5000
>     balance roundrobin
>     option httpchk
>     option http-keep-alive
>     http-check send meth OPTIONS uri /primary
>     http-check expect status 200
>     default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
>     # servers
>     server pg-test-1 10.10.10.11:5432 check port 8008 weight 100
>     server pg-test-3 10.10.10.13:5432 check port 8008 weight 100
>     server pg-test-2 10.10.10.12:5432 check port 8008 weight 100
> ```




---------------

### Offline Service

The Offline service listens on port 5438 and connects directly to PostgreSQL without the pool.
Use it for slow queries, analytical queries, ETL reads, and personal interactive queries:

```yaml
- { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}
```

Offline routes traffic directly to dedicated [offline replicas](/docs/pgsql/config#offline-replica).
It can also use normal [read-only instances](/docs/pgsql/config#read-only-replica) with the [`pg_offline_query`](/docs/pgsql/param#pg_offline_query) flag.

- The selector includes replicas with [`pg_role`](/docs/pgsql/param#pg_role) = `offline` and normal [read-only instances](/docs/pgsql/config#read-only-replica) with [`pg_offline_query`](/docs/pgsql/param#pg_offline_query) = `true`.
- Dedicated offline replicas do not handle [Replica service](#replica-service) requests by default. This separates fast and slow requests. Flagged normal replicas do handle those requests.
- The backup selector includes normal replicas without the offline flag. They handle Offline traffic when dedicated or flagged offline instances fail.
- `/replica` returns HTTP 200 only for replicas. It rejects the primary, even when the primary is the only remaining cluster instance.
- Neither selector includes the primary. Thus, Offline traffic never reaches or affects the primary.

> [!DETAILS]- Example: pg-test-offline haproxy configuration
> ```ini
> listen pg-test-offline
>     bind *:5438
>     mode tcp
>     maxconn 5000
>     balance roundrobin
>     option httpchk
>     option http-keep-alive
>     http-check send meth OPTIONS uri /replica
>     http-check expect status 200
>     default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
>     # servers
>     server pg-test-3 10.10.10.13:5432 check port 8008 weight 100
>     server pg-test-2 10.10.10.12:5432 check port 8008 weight 100 backup
> ```

Offline provides restricted read-only access for personal interactive queries, slow analytical or ETL queries, and long transactions.

The Offline service needs special handling after a switchover.
The HAProxy `/replica` health check automatically rejects the new primary.
However, `selector` uses static `pg_role` and `pg_offline_query` inventory labels.
In a two-node primary-replica cluster, only the replica may serve Offline queries.
A switchover can then leave no eligible backend temporarily.
Reloading an unchanged inventory does not add the old primary to the backend list.

First update the inventory labels or `pg_offline_query` for the new plan, then [reload services](/docs/pgsql/admin/cluster#reload-service).
Alternatively, switch the primary back.

For a simple business model, you can remove Default and Offline.
Use Primary and Replica to connect directly to the database.



---------------

## Reload Service

Reload services after changes to cluster membership, service definitions, static selector labels, or relative weights.
Patroni health checks handle normal Primary and Replica switchovers automatically.
These switchovers need no separate reload.

```bash
bin/pgsql-svc <cls> [ip...]         # reload service for lb cluster or lb instance
# ./pgsql.yml -t pg_service         # the actual ansible task to reload service
```


---------------

## Access Service

Pigsty provides services up to the cluster HAProxy endpoint.
Clients can reach these load balancers in several ways.

The typical approach is to use DNS or VIP access, binding to all or any number of load balancers in the cluster.

![pigsty-access.jpg](/img/pigsty/access.jpg)

You can use different host & port combinations, which provide PostgreSQL services in different ways.

**Host**

| Type                | Example       | Description                                                      |
|---------------------|---------------|------------------------------------------------------------------|
| Cluster Domain Name | `pg-test`     | Access via cluster domain name (resolved by dnsmasq @ infra nodes) |
| Cluster VIP Address | `10.10.10.3`  | Access via L2 VIP address managed by `vip-manager`, bound to primary |
| Instance Hostname   | `pg-test-1`   | Access via any instance hostname (resolved by dnsmasq @ infra nodes) |
| Instance IP Address | `10.10.10.11` | Access any instance IP address                                   |

**Port**

Pigsty uses different **ports** to distinguish [pg services](#service-overview)

| Port | Service   | Type       | Description                                           |
|------|-----------|------------|-------------------------------------------------------|
| 5432 | postgres  | database   | Direct access to postgres server                      |
| 6432 | pgbouncer | middleware | Go through connection pool middleware before postgres |
| 5433 | primary   | service    | Access primary pgbouncer (or postgres)                |
| 5434 | replica   | service    | Access replica pgbouncer (or postgres)                |
| 5436 | default   | service    | Access primary postgres                               |
| 5438 | offline   | service    | Access offline postgres                               |

**Combinations**


```bash
# Access via cluster domain (these examples assume L2 VIP is enabled; otherwise the domain points to the inventory primary by default)
postgres://test@pg-test:5432/test # DNS -> L2 VIP -> primary direct connection
postgres://test@pg-test:6432/test # DNS -> L2 VIP -> primary connection pool -> primary
postgres://test@pg-test:5433/test # DNS -> L2 VIP -> HAProxy -> Primary Connection Pool -> Primary
postgres://test@pg-test:5434/test # DNS -> L2 VIP -> HAProxy -> Replica Connection Pool -> Replica
postgres://dbuser_dba@pg-test:5436/test # DNS -> L2 VIP -> HAProxy -> Primary direct connection (for Admin)
postgres://dbuser_stats@pg-test:5438/test # DNS -> L2 VIP -> HAProxy -> offline direct connection (for ETL/personal queries)

# Direct access via cluster VIP
postgres://test@10.10.10.3:5432/test # L2 VIP -> Primary direct access
postgres://test@10.10.10.3:6432/test # L2 VIP -> Primary Connection Pool -> Primary
postgres://test@10.10.10.3:5433/test # L2 VIP -> HAProxy -> Primary Connection Pool -> Primary
postgres://test@10.10.10.3:5434/test # L2 VIP -> HAProxy -> Replica Connection Pool -> Replica
postgres://dbuser_dba@10.10.10.3:5436/test # L2 VIP -> HAProxy -> Primary direct connection (for Admin)
postgres://dbuser_stats@10.10.10.3:5438/test # L2 VIP -> HAProxy -> offline direct connect (for ETL/personal queries)

# Specify any cluster instance name directly
postgres://test@pg-test-1:5432/test # DNS -> Database Instance Direct Connect (singleton access)
postgres://test@pg-test-1:6432/test # DNS -> connection pool -> database
postgres://test@pg-test-1:5433/test # DNS -> HAProxy -> connection pool -> database read/write
postgres://test@pg-test-1:5434/test # DNS -> HAProxy -> connection pool -> database read-only
postgres://dbuser_dba@pg-test-1:5436/test # DNS -> HAProxy -> database direct connect
postgres://dbuser_stats@pg-test-1:5438/test # DNS -> HAProxy -> database offline read/write

# Directly specify any cluster instance IP access
postgres://test@10.10.10.11:5432/test # Database instance direct connection (directly specify instance, no automatic traffic distribution)
postgres://test@10.10.10.11:6432/test # Connection Pool -> Database
postgres://test@10.10.10.11:5433/test # HAProxy -> connection pool -> database read/write
postgres://test@10.10.10.11:5434/test # HAProxy -> connection pool -> database read-only
postgres://dbuser_dba@10.10.10.11:5436/test # HAProxy -> Database Direct Connections
postgres://dbuser_stats@10.10.10.11:5438/test # HAProxy -> database offline read/write

# Smart client automatic read/write separation
postgres://test@10.10.10.11:6432,10.10.10.12:6432,10.10.10.13:6432/test?target_session_attrs=primary
postgres://test@10.10.10.11:6432,10.10.10.12:6432,10.10.10.13:6432/test?target_session_attrs=prefer-standby
```



---------------

## Override Service

You can override service defaults in several ways.
A common requirement is for [Primary](#primary-service) and [Replica](#replica-service) to bypass Pgbouncer and connect directly to PostgreSQL.

Set [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) to `postgres`.
Services with `svc.dest='default'` then use `postgres` instead of the default `pgbouncer` destination.

If [Primary](#primary-service) already connects to PostgreSQL, [Default](#default-service) is redundant.
You can remove it.

If you do not need to distinguish personal interactive queries from slow analytical or ETL queries, you can remove [Offline](#offline-service).
Remove it from [`pg_default_services`](/docs/pgsql/param#pg_default_services).

If replicas do not need to handle online read-only traffic, you can remove [Replica](#replica-service) from the default list.


---------------

## Delegate Service

Pigsty exposes PostgreSQL services through HAProxy on nodes.
All HAProxy instances in a cluster use the same [service definitions](#define-service).

You can instead delegate PostgreSQL services to a specific node group, such as a dedicated HAProxy load balancer cluster.

Override [`pg_default_services`](/docs/pgsql/param#pg_default_services) and set [`pg_service_provider`](/docs/pgsql/param#pg_service_provider) to the proxy group name.

This example exposes the PostgreSQL Primary service on port 10013 through the `proxy` HAProxy node group.

```yaml
pg_service_provider: proxy       # use load balancer on group `proxy` with port 10013
pg_default_services:  [{ name: primary ,port: 10013 ,dest: postgres  ,check: /primary   ,selector: "[]" }]
```

Use a **unique** port for each delegated service in the proxy cluster.

A dedicated load balancer cluster example is provided in the 20-node production environment simulation [sandbox](/docs/deploy/sandbox): [`conf/ha/simu.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/simu.yml)
