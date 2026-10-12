---
title: "Patroni REST API"
weight: 40
icon: fa-solid fa-book
description: "Reference for Patroni REST API endpoints and operational behaviors."
module: [PATRONI]
categories: [Reference]
---

> Source: https://patroni.readthedocs.io/en/latest/rest_api.html

<a id="rest_api"></a>
Patroni uses its REST API during leader races. [patronictl](/docs/patroni/patronictl#patronictl) uses it for failovers, switchovers, reinitialization, restarts, and reloads. HAProxy and other load balancers use it for HTTP health checks. Monitoring systems can also use it. This page lists the available endpoints.

--------

## Health check endpoints

Health check `GET` requests return an HTTP status code and a JSON document with node status. Use `HEAD` or `OPTIONS` instead of `GET` if you do not need JSON.

- The following requests to Patroni REST API will return HTTP status code **200** only when the Patroni node is running as the primary with leader lock:

  - `GET /`
  - `GET /primary`
  - `GET /read-write`

- `GET /standby-leader`: returns HTTP status code **200** only when the Patroni node is running as the leader in a [standby cluster](/docs/patroni/standby_cluster#standby_cluster).

- `GET /leader`: returns HTTP **200** if the node holds the leader lock. Unlike the preceding endpoints, it does not distinguish PostgreSQL roles `primary` and `standby_leader`.

- `GET /replica`: returns HTTP **200** only if the node is `running`, its role is `replica`, and `noloadbalance` is unset.

- `GET /replica?replication_state=<required state>`: adds a replication state check to `replica`. Use `replication_state=streaming` to exclude replicas still catching up through archive recovery.

- `GET /replica?lag=<max-lag>`: adds a lag check to `replica`. HTTP **200** requires lag below the limit. For performance, Patroni uses DCS cluster.last_leader_operation as the leader WAL position to calculate lag. Specify max-lag as an integer byte count or a readable value, such as 16kB, 64MB, or 1GB.

  - `GET /replica?lag=1048576`
  - `GET /replica?lag=1024kB`
  - `GET /replica?lag=10MB`
  - `GET /replica?lag=1GB`

- `GET /replica?tag_key1=value1&tag_key2=value2`: also checks custom `key1` and `key2` tags in the YAML **tags** section. An undefined tag or a value different from the query value returns HTTP 503.

  The following requests check leader or standby leader status. They ignore custom tags:

  - `GET /?tag_key1=value1&tag_key2=value2`
  - `GET /leader?tag_key1=value1&tag_key2=value2`
  - `GET /primary?tag_key1=value1&tag_key2=value2`
  - `GET /read-write?tag_key1=value1&tag_key2=value2`
  - `GET /standby_leader?tag_key1=value1&tag_key2=value2`
  - `GET /standby-leader?tag_key1=value1&tag_key2=value2`

- `GET /read-only`: like the above endpoint, but also includes the primary.

- `GET /synchronous` or `GET /sync`: returns HTTP status code **200** only when the Patroni node is running as a synchronous standby.

- `GET /read-only-sync`: like the above endpoint, but also includes the primary.

- `GET /quorum`: returns HTTP status code **200** only when this Patroni node is listed as a quorum node in `synchronous_standby_names` on the primary.

- `GET /read-only-quorum`: like the above endpoint, but also includes the primary.

- `GET /asynchronous` or `GET /async`: returns HTTP status code **200** only when the Patroni node is running as an asynchronous standby.

- `GET /asynchronous?lag=<max-lag>` or `GET /async?lag=<max-lag>`: adds a lag check to `asynchronous` or `async`. HTTP **200** requires lag below the limit. For performance, Patroni uses DCS cluster.last_leader_operation as the leader WAL position to calculate lag. Specify max-lag as an integer byte count or a readable value, such as 16kB, 64MB, or 1GB.

  - `GET /async?lag=1048576`
  - `GET /async?lag=1024kB`
  - `GET /async?lag=10MB`
  - `GET /async?lag=1GB`

- `GET /health`: returns HTTP status code **200** only when PostgreSQL is up and running.

- `GET /liveness`: returns HTTP **200** if the heartbeat loop operates correctly. Returns **503** if the last run was more than `ttl` seconds ago on the primary or `2*ttl` on a replica. Use this for `livenessProbe`.

- `GET /readiness?lag=<max-lag>&mode=apply|write`: returns HTTP **200** for a leader or a running, replicating node within the lag limit. The lag parameter limits standby lag and defaults to `maximum_lag_on_failover`. Use bytes or readable values, such as 16kB, 64MB, or 1GB. Mode specifies whether WAL must be replayed (apply) or only received (write). The default is apply.

  As a Kubernetes `readinessProbe`, this prevents new pods from becoming ready before they catch up to the leader. With a PodDisruptionBudget, it prevents premature leader termination during rolling restarts. It also excludes replicas that cannot keep up from read-only traffic. Use this endpoint for `readinessProbe` where Kubernetes endpoints cannot support leader elections, such as OpenShift.

The `liveness` endpoint is lightweight and runs no SQL. Configure probes to start failing around leader key expiration. With the default `ttl` of `30s`, use this example:

```yaml
readinessProbe:
  httpGet:
    scheme: HTTP
    path: /readiness
    port: 8008
  initialDelaySeconds: 3
  periodSeconds: 10
  timeoutSeconds: 5
  successThreshold: 1
  failureThreshold: 3
livenessProbe:
  httpGet:
    scheme: HTTP
    path: /liveness
    port: 8008
  initialDelaySeconds: 3
  periodSeconds: 10
  timeoutSeconds: 5
  successThreshold: 1
  failureThreshold: 3
```

--------

## Monitoring endpoint

Patroni uses `GET /patroni` during leader races. Monitoring systems can also use it. Its JSON structure matches the health check endpoints.

**Example:** A healthy cluster

``` bash
$ curl -s http://localhost:8008/patroni | jq .
{
  "state": "running",
  "postmaster_start_time": "2024-08-28 19:39:26.352526+00:00",
  "role": "primary",
  "server_version": 160004,
  "xlog": {
    "location": 67395656
  },
  "timeline": 1,
  "replication": [
    {
      "usename": "replicator",
      "application_name": "patroni2",
      "client_addr": "10.89.0.6",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    },
    {
      "usename": "replicator",
      "application_name": "patroni3",
      "client_addr": "10.89.0.2",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    }
  ],
  "dcs_last_seen": 1692356718,
  "tags": {
    "clonefrom": true
  },
  "database_system_identifier": "7268616322854375442",
  "patroni": {
    "version": "4.0.0",
    "scope": "demo",
    "name": "patroni1"
  }
}
```

**Example:** An unlocked cluster

``` bash
$ curl -s http://localhost:8008/patroni  | jq .
{
  "state": "running",
  "postmaster_start_time": "2024-08-28 19:39:26.352526+00:00",
  "role": "replica",
  "server_version": 160004,
  "xlog": {
    "received_location": 67419744,
    "replayed_location": 67419744,
    "replayed_timestamp": null,
    "paused": false
  },
  "timeline": 1,
  "replication": [
    {
      "usename": "replicator",
      "application_name": "patroni2",
      "client_addr": "10.89.0.6",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    },
    {
      "usename": "replicator",
      "application_name": "patroni3",
      "client_addr": "10.89.0.2",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    }
  ],
  "cluster_unlocked": true,
  "dcs_last_seen": 1692356928,
  "tags": {
    "clonefrom": true
  },
  "database_system_identifier": "7268616322854375442",
  "patroni": {
    "version": "4.0.0",
    "scope": "demo",
    "name": "patroni1"
  }
}
```

**Example:** An unlocked cluster with [DCS failsafe mode](/docs/patroni/dcs_failsafe_mode#dcs_failsafe_mode) enabled

``` bash
$ curl -s http://localhost:8008/patroni  | jq .
{
  "state": "running",
  "postmaster_start_time": "2024-08-28 19:39:26.352526+00:00",
  "role": "replica",
  "server_version": 160004,
  "xlog": {
    "location": 67420024
  },
  "timeline": 1,
  "replication": [
    {
      "usename": "replicator",
      "application_name": "patroni2",
      "client_addr": "10.89.0.6",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    },
    {
      "usename": "replicator",
      "application_name": "patroni3",
      "client_addr": "10.89.0.2",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    }
  ],
  "cluster_unlocked": true,
  "failsafe_mode_is_active": true,
  "dcs_last_seen": 1692356928,
  "tags": {
    "clonefrom": true
  },
  "database_system_identifier": "7268616322854375442",
  "patroni": {
    "version": "4.0.0",
    "scope": "demo",
    "name": "patroni1"
  }
}
```

**Example:** A cluster with the [pause mode](/docs/patroni/pause#pause) enabled

``` bash
$ curl -s http://localhost:8008/patroni  | jq .
{
  "state": "running",
  "postmaster_start_time": "2024-08-28 19:39:26.352526+00:00",
  "role": "replica",
  "server_version": 160004,
  "xlog": {
    "location": 67420024
  },
  "timeline": 1,
  "replication": [
    {
      "usename": "replicator",
      "application_name": "patroni2",
      "client_addr": "10.89.0.6",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    },
    {
      "usename": "replicator",
      "application_name": "patroni3",
      "client_addr": "10.89.0.2",
      "state": "streaming",
      "sync_state": "async",
      "sync_priority": 0
    }
  ],
  "pause": true,
  "dcs_last_seen": 1724874295,
  "tags": {
    "clonefrom": true
  },
  "database_system_identifier": "7268616322854375442",
  "patroni": {
    "version": "4.0.0",
    "scope": "demo",
    "name": "patroni1"
  }
}
```

Retrieve the Patroni metrics in Prometheus format through the `GET /metrics` endpoint.

``` bash
$ curl http://localhost:8008/metrics

# HELP patroni_version Patroni semver without periods. \
# TYPE patroni_version gauge
patroni_version{scope="batman",name="patroni1"} 040000
# HELP patroni_postgres_running Value is 1 if Postgres is running, 0 otherwise.
# TYPE patroni_postgres_running gauge
patroni_postgres_running{scope="batman",name="patroni1"} 1
# HELP patroni_postmaster_start_time Epoch seconds since Postgres started.
# TYPE patroni_postmaster_start_time gauge
patroni_postmaster_start_time{scope="batman",name="patroni1"} 1724873966.352526
# HELP patroni_primary Value is 1 if this node is the leader, 0 otherwise.
# TYPE patroni_primary gauge
patroni_primary{scope="batman",name="patroni1"} 1
# HELP patroni_xlog_location Current location of the Postgres transaction log, 0 if this node is not the leader.
# TYPE patroni_xlog_location counter
patroni_xlog_location{scope="batman",name="patroni1"} 22320573386952
# HELP patroni_standby_leader Value is 1 if this node is the standby_leader, 0 otherwise.
# TYPE patroni_standby_leader gauge
patroni_standby_leader{scope="batman",name="patroni1"} 0
# HELP patroni_replica Value is 1 if this node is a replica, 0 otherwise.
# TYPE patroni_replica gauge
patroni_replica{scope="batman",name="patroni1"} 0
# HELP patroni_sync_standby Value is 1 if this node is a sync standby replica, 0 otherwise.
# TYPE patroni_sync_standby gauge
patroni_sync_standby{scope="batman",name="patroni1"} 0
# HELP patroni_quorum_standby Value is 1 if this node is a quorum standby replica, 0 otherwise.
# TYPE patroni_quorum_standby gauge
patroni_quorum_standby{scope="batman",name="patroni1"} 0
# HELP patroni_xlog_received_location Current location of the received Postgres transaction log, 0 if this node is not a replica.
# TYPE patroni_xlog_received_location counter
patroni_xlog_received_location{scope="batman",name="patroni1"} 0
# HELP patroni_xlog_replayed_location Current location of the replayed Postgres transaction log, 0 if this node is not a replica.
# TYPE patroni_xlog_replayed_location counter
patroni_xlog_replayed_location{scope="batman",name="patroni1"} 0
# HELP patroni_xlog_replayed_timestamp Current timestamp of the replayed Postgres transaction log, 0 if null.
# TYPE patroni_xlog_replayed_timestamp gauge
patroni_xlog_replayed_timestamp{scope="batman",name="patroni1"} 0
# HELP patroni_xlog_paused Value is 1 if the Postgres xlog is paused, 0 otherwise.
# TYPE patroni_xlog_paused gauge
patroni_xlog_paused{scope="batman",name="patroni1"} 0
# HELP patroni_postgres_streaming Value is 1 if Postgres is streaming, 0 otherwise.
# TYPE patroni_postgres_streaming gauge
patroni_postgres_streaming{scope="batman",name="patroni1"} 1
# HELP patroni_postgres_in_archive_recovery Value is 1 if Postgres is replicating from archive, 0 otherwise.
# TYPE patroni_postgres_in_archive_recovery gauge
patroni_postgres_in_archive_recovery{scope="batman",name="patroni1"} 0
# HELP patroni_postgres_server_version Version of Postgres (if running), 0 otherwise.
# TYPE patroni_postgres_server_version gauge
patroni_postgres_server_version{scope="batman",name="patroni1"} 160004
# HELP patroni_cluster_unlocked Value is 1 if the cluster is unlocked, 0 if locked.
# TYPE patroni_cluster_unlocked gauge
patroni_cluster_unlocked{scope="batman",name="patroni1"} 0
# HELP patroni_failsafe_mode_is_active Value is 1 if failsafe mode is active, 0 otherwise.
# TYPE patroni_failsafe_mode_is_active gauge
patroni_failsafe_mode_is_active{scope="batman",name="patroni1"} 0
# HELP patroni_failsafe_mode_enabled Value is 1 if failsafe_mode is enabled, 0 otherwise.
# TYPE patroni_failsafe_mode_enabled gauge
patroni_failsafe_mode_enabled{scope="batman",name="patroni1"} 0
# HELP patroni_failsafe_member Value is 1 if this node is a member of failsafe, 0 otherwise.
# TYPE patroni_failsafe_member gauge
patroni_failsafe_member{scope="batman",name="patroni1"} 0
# HELP patroni_postgres_timeline Postgres timeline of this node (if running), 0 otherwise.
# TYPE patroni_postgres_timeline gauge
patroni_postgres_timeline{scope="batman",name="patroni1"} 24
# HELP patroni_dcs_last_seen Epoch timestamp when DCS was last contacted successfully by Patroni.
# TYPE patroni_dcs_last_seen gauge
patroni_dcs_last_seen{scope="batman",name="patroni1"} 1724874235
# HELP patroni_pending_restart Value is 1 if the node needs a restart, 0 otherwise.
# TYPE patroni_pending_restart gauge
patroni_pending_restart{scope="batman",name="patroni1"} 1
# HELP patroni_is_paused Value is 1 if auto failover is disabled, 0 otherwise.
# TYPE patroni_is_paused gauge
patroni_is_paused{scope="batman",name="patroni1"} 1
# HELP patroni_postgres_state Numeric representation of Postgres state.
# Values: 0=initdb, 1=initdb_failed, 2=custom_bootstrap, 3=custom_bootstrap_failed, 4=creating_replica, 5=running, 6=starting, 7=bootstrap_starting, 8=start_failed, 9=restarting, 10=restart_failed, 11=stopping, 12=stopped, 13=stop_failed, 14=crashed
# TYPE patroni_postgres_state gauge
patroni_postgres_state{scope="batman",name="patroni1"} 5
# HELP patroni_failover_priority Failover priority of this node.
# TYPE patroni_failover_priority gauge
patroni_failover_priority{scope="batman",name="patroni1"} 1
```

### PostgreSQL State Values

The `patroni_postgres_state` metric represents the current PostgreSQL state numerically. Monitoring and alerting systems can use it to track state changes. The `PostgresqlState.get_metrics_description()` static method generates these values.

| Value | State Name              | Description                          |
|-------|-------------------------|--------------------------------------|
| 0     | initdb                  | Initializing new cluster             |
| 1     | initdb_failed           | Initialization of new cluster failed |
| 2     | custom_bootstrap        | Running custom bootstrap script      |
| 3     | custom_bootstrap_failed | Custom bootstrap script failed       |
| 4     | creating_replica        | Creating replica from primary        |
| 5     | running                 | PostgreSQL is running normally       |
| 6     | starting                | PostgreSQL is starting up            |
| 7     | bootstrap_starting      | Starting after custom bootstrap      |
| 8     | start_failed            | PostgreSQL start failed              |
| 9     | restarting              | PostgreSQL is restarting             |
| 10    | restart_failed          | PostgreSQL restart failed            |
| 11    | stopping                | PostgreSQL is stopping               |
| 12    | stopped                 | PostgreSQL is stopped                |
| 13    | stop_failed             | PostgreSQL stop failed               |
| 14    | crashed                 | PostgreSQL has crashed               |

PostgreSQL State Values

> [!NOTE]
> Existing numeric values never change, to preserve monitoring compatibility. Future states receive new values.

--------

## Cluster status endpoints

- The `GET /cluster` endpoint generates a JSON document describing the current cluster topology and state:

``` bash
$ curl -s http://localhost:8008/cluster | jq .
{
  "members": [
    {
      "name": "patroni1",
      "role": "leader",
      "state": "running",
      "api_url": "http://10.89.0.4:8008/patroni",
      "host": "10.89.0.4",
      "port": 5432,
      "timeline": 5,
      "tags": {
        "clonefrom": true
      }
    },
    {
      "name": "patroni2",
      "role": "replica",
      "state": "streaming",
      "api_url": "http://10.89.0.6:8008/patroni",
      "host": "10.89.0.6",
      "port": 5433,
      "timeline": 5,
      "tags": {
        "clonefrom": true
      },
      "receive_lag": 0,
      "receive_lsn": "0/4000060",
      "replay_lag": 0,
      "replay_lsn": "0/4000060",
      "lag": 0,
      "lsn": "0/4000060"
    }
  ],
  "scope": "demo",
  "scheduled_switchover": {
    "at": "2023-09-24T10:36:00+02:00",
    "from": "patroni1",
    "to": "patroni3"
  }
}
```

- `GET /history` returns cluster switchover and failover history. Its format matches history files in `pg_wal`, with one addition: the timestamp when each timeline was created.

``` bash
$ curl -s http://localhost:8008/history | jq .
[
  [
    1,
    25623960,
    "no recovery target specified",
    "2019-09-23T16:57:57+02:00"
  ],
  [
    2,
    25624344,
    "no recovery target specified",
    "2019-09-24T09:22:33+02:00"
  ],
  [
    3,
    25624752,
    "no recovery target specified",
    "2019-09-24T09:26:15+02:00"
  ],
  [
    4,
    50331856,
    "no recovery target specified",
    "2019-09-24T09:35:52+02:00"
  ]
]
```

<a id="config_endpoint"></a>

--------

## Config endpoint

`GET /config`: Get the current version of the dynamic configuration:

``` bash
$ curl -s http://localhost:8008/config | jq .
{
  "ttl": 30,
  "loop_wait": 10,
  "retry_timeout": 10,
  "maximum_lag_on_failover": 1048576,
  "postgresql": {
    "use_slots": true,
    "use_pg_rewind": true,
    "parameters": {
      "hot_standby": "on",
      "wal_level": "hot_standby",
      "max_wal_senders": 5,
      "max_replication_slots": 5,
      "max_connections": "100"
    }
  }
}
```

`PATCH /config`: Change the existing configuration.

``` bash
$ curl -s -XPATCH -d \
    '{"loop_wait":5,"ttl":20,"postgresql":{"parameters":{"max_connections":"101"}}}' \
    http://localhost:8008/config | jq .
{
  "ttl": 20,
  "loop_wait": 5,
  "maximum_lag_on_failover": 1048576,
  "retry_timeout": 10,
  "postgresql": {
    "use_slots": true,
    "use_pg_rewind": true,
    "parameters": {
      "hot_standby": "on",
      "wal_level": "hot_standby",
      "max_wal_senders": 5,
      "max_replication_slots": 5,
      "max_connections": "101"
    }
  }
}
```

The above REST API call patches the existing configuration and returns the new configuration.

Check that the node applied the configuration. With loop_wait=5, it should log every 5 seconds. Changing "max_connections" requires restart, so the output should show "pending_restart":

``` bash
$ curl -s http://localhost:8008/patroni | jq .
{
  "database_system_identifier": "6287881213849985952",
  "postmaster_start_time": "2024-08-28 19:39:26.352526+00:00",
  "xlog": {
    "location": 2197818976
  },
  "timeline": 1,
  "dcs_last_seen": 1724874545,
  "database_system_identifier": "7408277255830290455",
  "pending_restart": true,
  "pending_restart_reason": {
    "max_connections": {
      "old_value": "100",
      "new_value": "101"
    }
  },
  "patroni": {
    "version": "4.0.0",
    "scope": "batman",
    "name": "patroni1"
  },
  "state": "running",
  "role": "primary",
  "server_version": 160004
}
```

Removing parameters:

To remove or reset a setting, patch it with `null`:

``` bash
$ curl -s -XPATCH -d \
    '{"postgresql":{"parameters":{"max_connections":null}}}' \
    http://localhost:8008/config | jq .
{
  "ttl": 20,
  "loop_wait": 5,
  "retry_timeout": 10,
  "maximum_lag_on_failover": 1048576,
  "postgresql": {
    "use_slots": true,
    "use_pg_rewind": true,
    "parameters": {
      "hot_standby": "on",
      "unix_socket_directories": ".",
      "wal_level": "hot_standby",
      "max_wal_senders": 5,
      "max_replication_slots": 5
    }
  }
}
```

The above call removes `postgresql.parameters.max_connections` from the dynamic configuration.

`PUT /config`: unconditionally replace the complete dynamic configuration:

``` bash
$ curl -s -XPUT -d \
    '{"maximum_lag_on_failover":1048576,"retry_timeout":10,"postgresql":{"use_slots":true,"use_pg_rewind":true,"parameters":{"hot_standby":"on","wal_level":"hot_standby","unix_socket_directories":".","max_wal_senders":5}},"loop_wait":3,"ttl":20}' \
    http://localhost:8008/config | jq .
{
  "ttl": 20,
  "maximum_lag_on_failover": 1048576,
  "retry_timeout": 10,
  "postgresql": {
    "use_slots": true,
    "parameters": {
      "hot_standby": "on",
      "unix_socket_directories": ".",
      "wal_level": "hot_standby",
      "max_wal_senders": 5
    },
    "use_pg_rewind": true
  },
  "loop_wait": 3
}
```

--------

## Switchover and failover endpoints

<a id="switchover_api"></a>

### Switchover

The `/switchover` endpoint requires a healthy cluster with a leader. It can also schedule a future switchover.

A candidate is optional for `/switchover` but required for `/failover`. Without a candidate, all eligible nodes enter the leader race after the leader steps down.

The `POST` JSON body must include `leader`. Optional fields are `candidate` and `scheduled_at`. Use `scheduled_at` to schedule a future switchover.

HTTP **200** means switchover or failover completed successfully. HTTP **202** means Patroni scheduled the switchover. Errors return **400**, **412**, or **503**, with details in the response body.

`DELETE /switchover` can be used to delete the currently scheduled switchover.

**Example:** perform a switchover to any healthy standby

``` bash
$ curl -s http://localhost:8008/switchover -XPOST -d '{"leader":"postgresql1"}'
Successfully switched over to "postgresql2"
```

**Example:** perform a switchover to a specific node

``` bash
$ curl -s http://localhost:8008/switchover -XPOST -d \
    '{"leader":"postgresql1","candidate":"postgresql2"}'
Successfully switched over to "postgresql2"
```

**Example:** schedule a switchover from the leader to any other healthy standby in the cluster at a specific time.

``` bash
$ curl -s http://localhost:8008/switchover -XPOST -d \
    '{"leader":"postgresql0","scheduled_at":"2019-09-24T12:00+00"}'
Switchover scheduled
```

### Failover

Use `/failover` for manual failover when no sufficiently healthy node is available. For example, promote an asynchronous standby when all synchronous standbys are unsuitable. A missing leader is not required: failover also works on a healthy cluster.

In the JSON body of the `POST` request you must specify the `candidate` field. If the `leader` field is specified, a switchover is triggered instead.

**Example:**

``` bash
$ curl -s http://localhost:8008/failover -XPOST -d '{"candidate":"postgresql1"}'
Successfully failed over to "postgresql1"
```

> [!WARNING]
> [Be very careful](/docs/patroni/rest_api#failover_healthcheck) when using this endpoint, as this can cause data loss in certain situations. In most cases, [the switchover endpoint](/docs/patroni/rest_api#switchover_api) satisfies the administrator's needs.

`POST /switchover` and `POST /failover` endpoints are used by [patronictl_switchover](/docs/patroni/patronictl#patronictl_switchover) and [patronictl_failover](/docs/patroni/patronictl#patronictl_failover), respectively.

`DELETE /switchover` is used by [patronictl flush cluster-name switchover](/docs/patroni/patronictl#patronictl_flush_parameters).

|                              | Failover | Switchover                         |
|------------------------------|----------|------------------------------------|
| Requires leader specified    | no       | yes                                |
| Requires candidate specified | yes      | no                                 |
| Can be run in pause          | yes      | yes (only to a specific candidate) |
| Can be scheduled             | no       | yes (if not in pause)              |

Failover/Switchover comparison

<a id="failover_healthcheck"></a>

### Healthy standby

A member must pass these checks to enter a switchover leader race or become the selected failover/switchover leader:

- be reachable via Patroni API;
- not have `nofailover` tag set to `true`;
- have watchdog fully functional (if required by the configuration);
- in case of a switchover in a healthy cluster or an automatic failover, not exceed maximum replication lag (`maximum_lag_on_failover` [configuration parameter](/docs/patroni/config/dynamic#dynamic));
- For a healthy-cluster switchover or automatic failover, check the `check_timeline` [configuration parameter](/docs/patroni/config/dynamic#dynamic). If it is `true`, the member timeline must not be smaller than the cluster timeline;
- in [synchronous mode](/docs/patroni/replication_modes#synchronous_mode):
  - In case of a switchover (both with and without a candidate): be listed in the `/sync` key members;
  - For a failover in both healthy and unhealthy clusters, this check is omitted.

> [!WARNING]
> Without a leader, manual failover can promote a candidate that fails these checks. It can be absent from `/sync` in synchronous mode, exceed the lag limit, or have an older timeline than the last cluster timeline.

<a id="restart_endpoint"></a>

--------

## Restart endpoint

- `POST /restart`: restart Postgres on the specified node. The `POST` JSON body can contain these optional conditions:
  - **restart_pending**: if `true`, restart only when configuration changes require it.
  - **role**: restart only if the current node role matches the request.
  - **postgres_version**: restart only if the current Postgres version is lower than the requested version.
  - **timeout**: maximum wait for PostgreSQL to accept connections. Overrides `primary_start_timeout`.
  - **schedule**: future restart timestamp with time zone.
- `DELETE /restart`: delete the scheduled restart.

`POST /restart` and `DELETE /restart` endpoints are used by [patronictl_restart](/docs/patroni/patronictl#patronictl_restart) and [patronictl flush cluster-name restart](/docs/patroni/patronictl#patronictl_flush_parameters) respectively.

<a id="reload_endpoint"></a>

--------

## Reload endpoint

`POST /reload` makes Patroni reread and apply its configuration file. This is equivalent to `SIGHUP`. Changes to parameters such as **shared_buffers** still require an explicit Postgres restart. Use `POST /restart` or [patronictl_restart](/docs/patroni/patronictl#patronictl_restart).

The reload endpoint is used by [patronictl_reload](/docs/patroni/patronictl#patronictl_reload).

--------

## Reinitialize endpoint

`POST /reinitialize`: recreate the data directory on the specified replica. This operation is not allowed on a primary. It removes the data directory and runs `pg_basebackup` or another [replica creation method](/docs/patroni/replica_bootstrap#custom_replica_creation).

This call may fail while Patroni repeatedly tries to restart a failed Postgres instance. Set `{"force":true}` in the request body to override this condition.

Set {"from-leader":true} in the request body to take the basebackup directly from the leader. Use this for reinitialization when all replicas have failed.

The reinitialize endpoint is used by [patronictl_reinit](/docs/patroni/patronictl#patronictl_reinit).
