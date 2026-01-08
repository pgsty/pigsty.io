---
title: Service/Access
weight: 1300
description: Split read and write operations, route traffic correctly, and reliably deliver PostgreSQL cluster capabilities.
icon: fa-solid fa-arrow-down-up-across-line
module: [PGSQL]
categories: [Reference]
---

> Split read and write operations, route traffic correctly, and reliably deliver PostgreSQL cluster capabilities.

[Service](#service-overview) is an abstraction: it is the form in which database clusters provide capabilities externally, encapsulating the details of the underlying cluster.

Service is critical for [stable access](#access-service) in production environments, showing its value during [high availability](/docs/concept/ha) cluster automatic failovers. [Personal users](#personal-user) typically don't need to worry about this concept.


---------------

## Personal User

The concept of "service" is for production environments. Personal users/single-machine clusters can skip the complexity and directly access the database using instance names/IP addresses.

For example, Pigsty's default single-node `pg-meta`.`meta` database can be directly connected using three different users:

```bash
psql postgres://dbuser_dba:DBUser.DBA@10.10.10.10/meta     # Direct connection with DBA superuser
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10/meta   # Connect with default business admin user
psql postgres://dbuser_view:DBUser.View@pg-meta/meta       # Connect with default read-only user via instance domain name
```


---------------

## Service Overview

In real-world production environments, we use primary-replica database clusters based on replication. Within the cluster, there is one and only one instance as the leader ([primary](/docs/pgsql/config#read-write-primary)) that can accept writes.
Other instances ([replicas](/docs/pgsql/config#read-only-replica)) continuously fetch change logs from the cluster leader to stay synchronized. Additionally, replicas can handle read-only requests, significantly offloading the primary in read-heavy, write-light scenarios.
Therefore, distinguishing between write requests and read-only requests to the cluster is a very common practice.

Moreover, for production environments with high-frequency short connections, we pool requests through connection pooling middleware (Pgbouncer) to reduce the overhead of connection and backend process creation. But for scenarios like ETL and change execution, we need to bypass the connection pool and directly access the database.
At the same time, high-availability clusters may experience failover during failures, which causes a change in the cluster leader. Therefore, high-availability database solutions require write traffic to automatically adapt to cluster leader changes.
These different access requirements (read-write separation, pooling vs. direct connection, automatic adaptation to failovers) ultimately abstract the concept of **Service**.

Typically, database clusters must provide this most basic service:

- **Read-write service (primary)**: Can read and write to the database

For production database clusters, at least these two services should be provided:

- **Read-write service (primary)**: Write data: Only carried by the primary.
- **Read-only service (replica)**: Read data: Can be carried by replicas, but can also be carried by the primary if no replicas are available

Additionally, depending on specific business scenarios, there might be other services, such as:

- **Default direct access service (default)**: Service that allows (admin) users to bypass the connection pool and directly access the database
- **Offline replica service (offline)**: Dedicated replica that doesn't handle online read-only traffic, used for ETL and analytical queries
- **Synchronous replica service (standby)**: Read-only service with no replication delay, handled by [synchronous standby](/docs/pgsql/config#sync-standby)/primary for read-only queries
- **Delayed replica service (delayed)**: Access older data from the same cluster from a certain time ago, handled by [delayed replicas](/docs/pgsql/config#delayed-cluster)



---------------

## Default Service

Pigsty provides four different services by default for each PostgreSQL database cluster. Here are the default services and their definitions:

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

From the sample cluster [architecture diagram](/docs/pgsql/arch), you can see how these four services work:

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha)

Note that the `pg-meta` domain name points to the cluster's L2 VIP, which in turn points to the haproxy load balancer on the cluster primary, responsible for routing traffic to different instances. See [Access Service](#access-service) for details.



---------------

## Service Implementation

In Pigsty, services are implemented using [haproxy](/docs/node/param#haproxy) on [nodes](/docs/node), differentiated by different ports on the host node.

Haproxy is enabled by default on every node managed by Pigsty to expose services, and database nodes are no exception.
Although nodes in the cluster have primary-replica distinctions from the database perspective, from the service perspective, all nodes are the same:
This means even if you access a replica node, as long as you use the correct service port, you can still use the primary's read-write service.
This design seals the complexity: as long as you can access any instance on the PostgreSQL cluster, you can fully access all services.


This design is similar to the NodePort service in Kubernetes. Similarly, in Pigsty, every service includes these two core elements:

1. Access endpoints exposed via NodePort (port number, from where to access?)
2. Target instances chosen through Selectors (list of instances, who will handle it?)

The boundary of Pigsty's service delivery stops at the cluster's HAProxy. Users can access these load balancers in various ways. Please refer to [Access Service](#access-service).

All services are declared through configuration files. For instance, the default PostgreSQL service is defined by the [`pg_default_services`](/docs/pgsql/param#pg_default_services) parameter:

```yaml
pg_default_services:
- { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
- { name: replica ,port: 5434 ,dest: default  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
- { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
- { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}
```

You can also define additional services in [`pg_services`](/docs/pgsql/param#pg_services). Both `pg_default_services` and `pg_services` are arrays of [Service Definition](#define-service) objects.


---------------

## Define Service

Pigsty allows you to define your own services:

- [`pg_default_services`](/docs/pgsql/param#pg_default_services): Services uniformly exposed by all PostgreSQL clusters, with four by default.
- [`pg_services`](/docs/pgsql/param#pg_services): Additional PostgreSQL services, can be defined at global or cluster level as needed.
- [`haproxy_services`](/docs/node/param#haproxy_services): Directly customize HAProxy service content, can be used for other component access

For PostgreSQL clusters, you typically only need to focus on the first two.
Each service definition will generate a new configuration file in the configuration directory of all related HAProxy instances: [`/etc/haproxy/<svcname>.cfg`](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/service.j2)
Here's a custom service example `standby`: When you want to provide a read-only service with no replication delay, you can add this record in [`pg_services`](/docs/pgsql/param#pg_services):

```yaml
- name: standby                   # required, service name, the actual svc name will be prefixed with `pg_cluster`, e.g: pg-meta-standby
  port: 5435                      # required, service exposed port (work as kubernetes service node port mode)
  ip: "*"                         # optional, service bind ip address, `*` for all ip by default
  selector: "[]"                  # required, service member selector, use JMESPath to filter inventory
  backup: "[? pg_role == `primary`]"  # optional, backup server selector, these instances will only be used when default selector instances are all down
  dest: default                   # optional, destination port, default|postgres|pgbouncer|<port_number>, 'default' by default, which means use pg_default_service_dest value
  check: /sync                    # optional, health check url path, / by default, here using Patroni API: /sync, only sync standby and primary will return 200 healthy status
  maxconn: 5000                   # optional, max allowed front-end connection, default 5000
  balance: roundrobin             # optional, haproxy load balance algorithm (roundrobin by default, other options: leastconn)
  options: 'inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100'
```

The service definition above will be translated to a haproxy config file `/etc/haproxy/pg-test-standby.conf` on the sample three-node `pg-test`:

```yaml
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
    # servers: All three instances of pg-test cluster are selected by selector: "[]", as there are no filtering conditions, they will all be backend servers for pg-test-replica service. But due to /sync health check, only primary and sync standby can actually serve requests.
    server pg-test-1 10.10.10.11:6432 check port 8008 weight 100 backup  # <----- Only primary satisfies condition pg_role == `primary`, selected by backup selector.
    server pg-test-3 10.10.10.13:6432 check port 8008 weight 100         #        Therefore acts as fallback instance: normally doesn't serve requests, only serves read-only requests after all other replicas are down, maximizing avoidance of read-write service being affected by read-only service
    server pg-test-2 10.10.10.12:6432 check port 8008 weight 100         #
```

Here, all three instances of the `pg-test` cluster are selected by `selector: "[]"` and rendered into the backend server list of the `pg-test-replica` service. But due to the `/sync` health check, the Patroni Rest API only returns HTTP 200 status code representing healthy on the primary and [synchronous standby](/docs/pgsql/config#sync-standby), so only the primary and sync standby can actually serve requests.
Additionally, the primary satisfies the condition `pg_role == primary` and is selected by the backup selector, marked as a backup server, and will only be used when no other instances (i.e., sync standby) can satisfy the requirement.


---------------

## Primary Service

The Primary service is probably the most critical service in production environments. It provides read-write capability to the database cluster on port 5433, with the service definition as follows:

```yaml
- { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
```

- The selector parameter `selector: "[]"` means all cluster members will be included in the Primary service
- But only the primary can pass the health check (`check: /primary`), actually serving Primary service traffic.
- The destination parameter `dest: default` means the Primary service destination is affected by the [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) parameter
- The default value of `dest` is `default` which will be replaced with the value of `pg_default_service_dest`, defaulting to `pgbouncer`.
- By default, the Primary service destination is the connection pool on the primary, i.e., the port specified by [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port), defaulting to 6432

If the value of `pg_default_service_dest` is `postgres`, then the primary service destination will bypass the connection pool and directly use the PostgreSQL database port ([`pg_port`](/docs/pgsql/param#pg_port), default value 5432), which is very useful for scenarios where you don't want to use a connection pool.

<details><summary>Example: pg-test-primary haproxy configuration</summary>

```yaml
listen pg-test-primary
    bind *:5433         # <--- primary service defaults to port 5433
    mode tcp
    maxconn 5000
    balance roundrobin
    option httpchk
    option http-keep-alive
    http-check send meth OPTIONS uri /primary # <--- primary service defaults to using Patroni RestAPI /primary health check
    http-check expect status 200
    default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
    # servers
    server pg-test-1 10.10.10.11:6432 check port 8008 weight 100
    server pg-test-3 10.10.10.13:6432 check port 8008 weight 100
    server pg-test-2 10.10.10.12:6432 check port 8008 weight 100
```

</details>

Patroni's [high availability](/docs/concept/ha) mechanism ensures that at most one instance's `/primary` health check is true at any time, so the Primary service will always route traffic to the primary instance.

One benefit of using the Primary service instead of directly connecting to the database is that if the cluster experiences a split-brain situation (for example, killing the primary Patroni with kill -9 without watchdog), Haproxy can still avoid split-brain in this situation, because it only distributes traffic when Patroni is alive and returns primary status.




---------------

## Replica Service

The Replica service is second only to the Primary service in importance in production environments. It provides read-only capability to the database cluster on port 5434, with the service definition as follows:

```yaml
- { name: replica ,port: 5434 ,dest: default  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
```

- The selector parameter `selector: "[]"` means all cluster members will be included in the Replica service
- All instances can pass the health check (`check: /read-only`), serving Replica service traffic.
- Backup selector: `[? pg_role == 'primary' || pg_role == 'offline' ]` marks the primary and [offline replicas](/docs/pgsql/config#offline-replica) as backup servers.
- Only when all [regular replicas](/docs/pgsql/config#read-only-replica) are down will the Replica service be served by the primary or offline replicas.
- The destination parameter `dest: default` means the Replica service destination is also affected by the [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) parameter
- The default value of `dest` is `default` which will be replaced with the value of `pg_default_service_dest`, defaulting to `pgbouncer`, same as the [Primary service](#primary-service)
- By default, the Replica service destination is the connection pool on replicas, i.e., the port specified by [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port), defaulting to 6432

<details><summary>Example: pg-test-replica haproxy configuration</summary>

```ini
listen pg-test-replica
    bind *:5434
    mode tcp
    maxconn 5000
    balance roundrobin
    option httpchk
    option http-keep-alive
    http-check send meth OPTIONS uri /read-only
    http-check expect status 200
    default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
    # servers
    server pg-test-1 10.10.10.11:6432 check port 8008 weight 100 backup
    server pg-test-3 10.10.10.13:6432 check port 8008 weight 100
    server pg-test-2 10.10.10.12:6432 check port 8008 weight 100
```

</details>

The Replica service is very flexible: If there are living dedicated Replica instances, it will prioritize using these instances to serve read-only requests. Only when all replica instances are down will the primary serve as a fallback for read-only requests. For the common one-primary-one-replica two-node cluster: use the replica as long as it's alive, use the primary only when the replica is down.

Additionally, unless all dedicated read-only instances are down, the Replica service will not use dedicated Offline instances, thus avoiding mixing online fast queries with offline slow queries and their mutual interference.



---------------

### Default Service

The Default service provides service on port 5436, and it's a variant of the Primary service.

The Default service always bypasses the connection pool and directly connects to PostgreSQL on the primary, which is useful for admin connections, ETL writes, CDC change data capture, etc.

```yaml
- { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
```

If `pg_default_service_dest` is changed to `postgres`, then the Default service is completely equivalent to the Primary service except for port and name. In this case, you can consider removing Default from default services.

<details><summary>Example: pg-test-default haproxy configuration</summary>

```ini
listen pg-test-default
    bind *:5436         # <--- Except for listening port/target port and service name, other configurations are the same as primary service
    mode tcp
    maxconn 5000
    balance roundrobin
    option httpchk
    option http-keep-alive
    http-check send meth OPTIONS uri /primary
    http-check expect status 200
    default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
    # servers
    server pg-test-1 10.10.10.11:5432 check port 8008 weight 100
    server pg-test-3 10.10.10.13:5432 check port 8008 weight 100
    server pg-test-2 10.10.10.12:5432 check port 8008 weight 100
```

</details>




---------------

### Offline Service

The Offline service provides service on port 5438, and it also bypasses the connection pool to directly access PostgreSQL database, typically used for slow queries/analytical queries/ETL reads/personal user interactive queries, with service definition as follows:

```yaml
- { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}
```

The Offline service routes traffic directly to dedicated [offline replicas](/docs/pgsql/config#offline-replica), or regular [read-only instances](/docs/pgsql/config#read-only-replica) marked with [`pg_offline_query`](/docs/pgsql/param#pg_offline_query).

- The selector parameter filters two types of instances from the cluster: offline replicas with [`pg_role`](/docs/pgsql/param#pg_role) = `offline`, or regular [read-only instances](/docs/pgsql/config#read-only-replica) marked with [`pg_offline_query`](/docs/pgsql/param#pg_offline_query) = `true`
- The main difference between dedicated offline replicas and marked regular replicas is: the former doesn't serve [Replica service](#replica-service) requests by default, avoiding mixing fast and slow queries, while the latter does serve by default.
- The backup selector parameter filters one type of instance from the cluster: regular replicas without the offline mark, which means if offline instances or marked regular replicas are down, other regular replicas can be used to serve Offline service.
- Health check `/replica` only returns 200 for replicas, primary returns error, so Offline service will never distribute traffic to the primary instance, even if only the primary remains in the cluster.
- At the same time, the primary instance is neither selected by the selector nor by the backup selector, so it will never serve Offline service. Therefore, Offline service can always avoid users accessing the primary, thus avoiding impact on the primary.

<details><summary>Example: pg-test-offline haproxy configuration</summary>

```ini
listen pg-test-offline
    bind *:5438
    mode tcp
    maxconn 5000
    balance roundrobin
    option httpchk
    option http-keep-alive
    http-check send meth OPTIONS uri /replica
    http-check expect status 200
    default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
    # servers
    server pg-test-3 10.10.10.13:5432 check port 8008 weight 100
    server pg-test-2 10.10.10.12:5432 check port 8008 weight 100 backup
```

</details>

The Offline service provides restricted read-only service, typically used for two types of queries: interactive queries (personal users), slow queries and long transactions (analytics/ETL).

The Offline service requires extra maintenance care: When the cluster undergoes primary-replica switchover or automatic failover, the instance roles will change, but Haproxy configuration won't automatically change. For clusters with multiple replicas, this is usually not a problem.
However, for streamlined small clusters with one-primary-one-replica where the replica runs Offline queries, primary-replica switchover means the replica becomes primary (health check fails), and the original primary becomes replica (not in Offline backend list), so no instance can serve Offline service, requiring manual [reload service](/docs/pgsql/admin#reload-service) to make changes effective.

If your business model is relatively simple, you can consider removing Default service and Offline service, using Primary service and Replica service to directly connect to the database.



---------------

## Reload Service

When cluster membership changes, such as adding/removing replicas, switchover/failover, or adjusting relative weights, you need to [reload service](/docs/pgsql/admin#reload-service) to make the changes take effect.

```bash
bin/pgsql-svc <cls> [ip...]         # reload service for lb cluster or lb instance
# ./pgsql.yml -t pg_service         # the actual ansible task to reload service
```


---------------

## Access Service

The boundary of Pigsty's service delivery stops at the cluster's HAProxy. Users can access these load balancers in various ways.

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
# Access via cluster domain
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
postgres://dbuser_stats@10.10.10.3::5438/test # L2 VIP -> HAProxy -> offline direct connect (for ETL/personal queries)

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
postgres://dbuser_stats@10.10.10.11:5438/test # HAProxy -> database offline read-write

# Smart client automatic read/write separation
postgres://test@10.10.10.11:6432,10.10.10.12:6432,10.10.10.13:6432/test?target_session_attrs=primary
postgres://test@10.10.10.11:6432,10.10.10.12:6432,10.10.10.13:6432/test?target_session_attrs=prefer-standby
```



---------------

## Override Service

You can override the default service configuration in several ways. A common requirement is to have [Primary service](#primary-service) and [Replica service](#replica-service) bypass Pgbouncer connection pool and directly access PostgreSQL database.

To achieve this, you can change [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) to `postgres`, so all services with `svc.dest='default'` in the service definition will use `postgres` instead of the default `pgbouncer` as the target.

If you've already pointed [Primary service](#primary-service) to PostgreSQL, then the [default service](#default-service) becomes redundant and can be removed.

If you don't need to distinguish between personal interactive queries and analytics/ETL slow queries, you can consider removing the [Offline service](#offline-service) from the default service list [`pg_default_services`](/docs/pgsql/param#pg_default_services).

If you don't need read-only replicas to share online read-only traffic, you can also remove [Replica service](#replica-service) from the default service list.


---------------

## Delegate Service

Pigsty exposes PostgreSQL services with haproxy on nodes. All haproxy instances in the cluster are configured with the same [service definition](#define-service).

However, you can delegate pg service to a specific node group (e.g., dedicated haproxy lb cluster) rather than haproxy on PostgreSQL cluster members.

To do so, you need to override the default service definition with [`pg_default_services`](/docs/pgsql/param#pg_default_services) and set [`pg_service_provider`](/docs/pgsql/param#pg_service_provider) to the proxy group name.

For example, this configuration will expose pg cluster primary service on haproxy node group `proxy` with port 10013.

```yaml
pg_service_provider: proxy       # use load balancer on group `proxy` with port 10013
pg_default_services:  [{ name: primary ,port: 10013 ,dest: postgres  ,check: /primary   ,selector: "[]" }]
```

It's user's responsibility to make sure each delegate service port is **unique** among the proxy cluster.

A dedicated load balancer cluster example is provided in the 43-node production environment simulation [sandbox](/docs/deploy/install#sandbox-environment): [prod.yml](https://github.com/Vonng/pigsty/blob/main/conf/prod.yml#L111)
