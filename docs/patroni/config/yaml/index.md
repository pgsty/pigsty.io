# YAML Configuration Settings

> Complete reference for Patroni YAML configuration options and sections.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/yaml_configuration.html

<a id="yaml"></a>

--------

## Global/Universal

- **thread_pool_size**: thread pool size for asynchronous tasks and REST API communication with other members during leader races or failsafe checks. Minimum: `5`. Default: `5`.
- **thread_stack_size**: stack size for Patroni threads. Use a multiple of `64kB`. Minimum: `64kB`. Patroni default: `512kB`.
- **name**: the name of the host. Must be unique for the cluster. The value `__patroni_strict_sync_replica_placeholder__` is reserved for internal use by Patroni and cannot be used as a node name.
- **namespace**: path within the configuration store where Patroni will keep information about the cluster. Default value: "/service"
- **scope**: cluster name

<a id="log_settings"></a>

--------

## Log

- **type**: sets the format of logs. Can be either **plain** or **json**. To use **json** format, you must have the [jsonlogger](/docs/patroni/installation#extras) installed. The default value is **plain**.
- **level**: sets the general logging level. Default value is **INFO** (see [the docs for Python logging](https://docs.python.org/3.6/library/logging.html#levels))
- **traceback_level**: sets the level where tracebacks will be visible. Default value is **ERROR**. Set it to **DEBUG** if you want to see tracebacks only if you enable **log.level=DEBUG**.
- **format**: log format. For **plain** logs, use a string. For **json**, use a string or a list of [LogRecord attributes](https://docs.python.org/3.6/library/logging.html#logrecord-attributes). In lists, use field names without **%(** and **)**. To rename a field, use a dictionary with the original field as key and the output name as value. Default: **%(asctime)s %(levelname)s: %(message)s**.
- **dateformat**: sets the datetime formatting string. (see the [formatTime() documentation](https://docs.python.org/3.6/library/logging.html#logging.Formatter.formatTime))
- **static_fields**: add additional fields to the log. This option is only available when the log type is set to **json**.
- **max_queue_size**: maximum internal log queue size. Patroni writes records to an in-memory queue. A separate thread reads them and writes to stderr or a file. The default **1000** records retain approximately 1h20m of logs.
- **dir**: application log directory. It must exist and be writable by the Patroni user. By default, Patroni retains four 25MB files. Adjust retention with `file_num` and `file_size`.
- **mode**: Permissions for log files (for example, `0644`). If not specified, permissions will be set based on the current umask value.
- **file_num**: The number of application logs to retain.
- **file_size**: Size of patroni.log file (in bytes) that triggers a log rolling.
- **loggers**: This section allows redefining logging level per python module
  - **patroni.postmaster: WARNING**
  - **urllib3: DEBUG**
- **deduplicate_heartbeat_logs**: suppresses consecutive identical heartbeat messages when `true`. Default: `false`.

> [!WARNING]
> HA loop timing helps diagnose failovers caused by exhausted resources and similar problems. With `deduplicate_heartbeat_logs` set to `true`, loop execution produces no log unless the leader changes. These diagnostics are then unavailable in the logs.

For JSON logging, use this example:

```yaml
log:
   type: json
   format:
      - message
      - module
      - asctime: '@timestamp'
      - levelname: level
   static_fields:
      app: patroni
```

<a id="bootstrap_settings"></a>

--------

## Bootstrap configuration

> [!NOTE]
> After initial cluster bootstrap, Patroni stores settings in the DCS. Later changes to YAML `bootstrap.dcs` have no effect. Use [patronictl_edit_config](/docs/patroni/patronictl#patronictl_edit_config) or the [REST API](/docs/patroni/rest_api#rest_api) to change them.

- **bootstrap**:
  - **dcs**: global dynamic cluster configuration. Put parameters from [Dynamic Configuration settings](/docs/patroni/config/dynamic#dynamic) under `bootstrap.dcs`. After bootstrap, Patroni writes this section to <span class="title-ref">/\<namespace\>/\<scope\>/config</span> in the configuration store.

  - **method**: custom script to use for bootstrapping this cluster.

    See [custom bootstrap methods](/docs/patroni/replica_bootstrap#custom_bootstrap). Set `method` to `initdb`, or omit it, to use the default `initdb` command.

  - **initdb**: (optional) list options to be passed on to initdb.

    - **- data-checksums**: Must be enabled when pg_rewind is needed on 9.3.
    - **- encoding: UTF8**: default encoding for new databases.
    - **- locale: UTF8**: default locale for new databases.

  - **post_bootstrap** or **post_init**: script to run after cluster initialization. It receives a connection URL with the cluster superuser name. PGPASSFILE points to the pgpass file.

<a id="citus_settings"></a>

--------

## Citus

Enable [Citus](https://docs.citusdata.com) integration. Patroni then registers workers on the coordinator. See [Citus support](/docs/patroni/citus#citus).

- **group**: the Citus group id, integer. Use `0` for coordinator and `1`, `2`, etc... for workers
- **database**: database for the [citus](/docs/patroni/citus#citus) extension. Use the same database on the coordinator and all workers. Currently, only one database is supported.

<a id="consul_settings"></a>

--------

## Consul

Most of the parameters are optional, but you have to specify one of the **host** or **url**

- **host**: the host:port for the Consul local agent.
- **url**: url for the Consul local agent, in format: http(s)://host:port.
- **port**: (optional) Consul port.
- **scheme**: (optional) **http** or **https**, defaults to **http**.
- **token**: (optional) ACL token.
- **verify**: (optional) whether to verify the SSL certificate for HTTPS requests.
- **cacert**: (optional) The ca certificate. If present it will enable validation.
- **cert**: (optional) file with the client certificate.
- **key**: (optional) file with the client key. Can be empty if the key is part of **cert**.
- **dc**: (optional) Datacenter to communicate with. By default the datacenter of the host is used.
- **consistency**: (optional) Select consul consistency mode. Possible values are `default`, `consistent`, or `stale` (more details in [consul API reference](https://www.consul.io/api/features/consistency.html/))
- **checks**: (optional) list of Consul health checks used for the session. By default an empty list is used.
- **register_service**: (optional) registers a service named by scope. Its role tag is master, primary, replica, or standby-leader. Default: **false**.
- **service_tags**: (optional) additional static tags to add to the Consul service apart from the role (`primary`/`replica`/`standby-leader`). By default an empty list is used.
- **service_check_interval**: (optional) how often to perform health check against registered url. Defaults to '5s'.
- **service_check_tls_server_name**: (optional) override SNI host when connecting via TLS, see also [consul agent check API reference](https://www.consul.io/api-docs/agent/check#tlsservername).

The `token` needs to have the following ACL permissions:

    service_prefix "${scope}" {
        policy = "write"
    }
    key_prefix "${namespace}/${scope}" {
        policy = "write"
    }
    session_prefix "" {
        policy = "write"
    }

--------

## Etcd

Most of the parameters are optional, but you have to specify one of the **host**, **hosts**, **url**, **proxy** or **srv**

- **host**: the host:port for the etcd endpoint.
- **hosts**: list of etcd endpoint in format host1:port1,host2:port2,etc... Could be a comma separated string or an actual yaml list.
- **use_proxies**: if true, treats **hosts** as proxies. Patroni does not discover etcd topology.
- **url**: url for the etcd.
- **proxy**: proxy url for the etcd. If you are connecting to the etcd using proxy, use this parameter instead of **url**.
- **srv**: domain for SRV-based cluster discovery. Patroni queries these services in order until one succeeds: `_etcd-client-ssl`, `_etcd-client`, `_etcd-ssl`, `_etcd`, `_etcd-server-ssl`, `_etcd-server`. For `_etcd-server-ssl` or `_etcd-server`, it queries available members through the ETCD peer protocol. Otherwise, it uses hosts from the SRV records.
- **srv_suffix**: suffix for discovery SRV names. Requires **srv**. Use it to distinguish etcd clusters in one domain. For example, `srv_suffix: foo` and `srv: example.org` produce `_etcd-client-ssl-foo._tcp.example.com`. Patroni applies this suffix to each possible ETCD SRV service name.
- **protocol**: (optional) http or https, if not specified http is used. If the **url** or **proxy** is specified - will take protocol from them.
- **username**: (optional) username for etcd authentication.
- **password**: (optional) password for etcd authentication.
- **cacert**: (optional) The ca certificate. If present it will enable validation.
- **cert**: (optional) file with the client certificate.
- **key**: (optional) file with the client key. Can be empty if the key is part of **cert**.

--------

## Etcdv3

To use Etcd protocol version 3, configure the `etcd3` section. Its parameters are the same as `etcd`.

> [!WARNING]
> Protocol versions 2 and 3 cannot see each other's keys. Changing Patroni configuration alone cannot migrate `etcd` to `etcd3`. Patroni uses the Etcd gRPC-gateway proxy for the V3 API. This prevents TLS common name authentication.

--------

## ZooKeeper

- **hosts**: List of ZooKeeper cluster members in format: \['host1:port1', 'host2:port2', 'etc...'\].
- **use_ssl**: (optional) Whether SSL is used or not. Defaults to `false`. If set to `false`, all SSL specific parameters are ignored.
- **cacert**: (optional) The CA certificate. If present it will enable validation.
- **cert**: (optional) File with the client certificate.
- **key**: (optional) File with the client key.
- **key_password**: (optional) The client key password.
- **verify**: (optional) Whether to verify certificate or not. Defaults to `true`.
- **set_acls**: (optional) default ACL that Kazoo applies to each new ZNode. Use `x509` (default) or another supported ZooKeeper scheme, such as `digest`. Supply a dictionary: each key is the full principal, optionally prefixed with its scheme. Each value lists one or more permissions: `CREATE`, `READ`, `WRITE`, `DELETE`, `ADMIN`, or `ALL`. Example: `set_acls: {CN=principal1: [CREATE, READ], digest:principal2:+pjROuBuuwNNSujKyH8dGcEnFPQ=: [ALL]}`.
- **auth_data**: (optional) connection authentication dictionary. Use `scheme` as the key and `credential` as the value. Default: empty dictionary.

> [!NOTE]
> It is required to install `kazoo>=2.6.0` to support SSL.

--------

## Exhibitor

- **hosts**: initial list of Exhibitor (ZooKeeper) nodes in format: 'host1,host2,etc...'. This list updates automatically whenever the Exhibitor (ZooKeeper) cluster topology changes.
- **poll_interval**: how often the list of ZooKeeper and Exhibitor nodes should be updated from Exhibitor.
- **port**: Exhibitor port.

<a id="kubernetes_settings"></a>

--------

## Kubernetes

- **bypass_api_service**: (optional) normally, Patroni contacts the [kubernetes](/docs/patroni/kubernetes#kubernetes) service at `KUBERNETES_SERVICE_HOST`. With `bypass_api_service` set to `true`, it discovers the API nodes behind the service and contacts them directly.
- **namespace**: (optional) Kubernetes namespace where Patroni pod is running. Default value is `default`.
- **labels**: labels in `{label1: value1, label2: value2}` format. Patroni uses them to find cluster Pods and Endpoints or ConfigMaps. It also adds them to each Endpoint or ConfigMap it creates.
- **scope_label**: (optional) name of the label containing cluster name. Default value is `cluster-name`.
- **bootstrap_labels**: (optional) labels in `{label1: value1, label2: value2}` format. Patroni assigns them to pods in these states: `initializing new cluster`, `running custom bootstrap script`, `starting after custom bootstrap`, or `creating replica`.
- **role_label**: (optional) name of the label containing role (`primary`, `replica`, or other custom value). Patroni will set this label on the pod it runs in. Default value is `role`.
- **leader_label_value**: (optional) value of the pod label when Postgres role is `primary`. Default value is `primary`.
- **follower_label_value**: (optional) value of the pod label when Postgres role is `replica`. Default value is `replica`.
- **standby_leader_label_value**: (optional) value of the pod label when Postgres role is `standby_leader`. Default value is `primary`.
- **tmp_role_label**: (optional) name of the temporary label containing role (`primary` or `replica`). Value of this label will always use the default of corresponding role. Set only when necessary.
- **use_endpoints**: (optional) if set to true, Patroni will use Endpoints instead of ConfigMaps to run leader elections and keep cluster state.
- **pod_ip**: (optional) Patroni pod IP address. Required when `use_endpoints` is enabled. On promotion, Patroni uses this value to populate leader endpoint subsets.
- **ports**: (optional) named Service ports require identical Endpoint port names. Otherwise, the service cannot work. For `{Kind: Service, spec: {ports: [{name: postgresql, port: 5432, targetPort: 5432}]}}`, set `kubernetes.ports: [{"name": "postgresql", "port": 5432}]`. Patroni uses this value to update leader Endpoint subsets. Applies only with `kubernetes.use_endpoints`.
- **cacert**: (optional) CA_BUNDLE file with trusted CA certificates for Kubernetes API SSL verification. Defaults to the ServiceAccount secret value.
- **retriable_http_codes**: (optional) Kubernetes API status codes to retry. By default, Patroni retries `500`, `503`, and `504`, and responses with a `retry-after` HTTP header.

<a id="raft_settings"></a>

--------

## Raft (deprecated)

- **self_addr**: `ip:port` to listen on for Raft connections. The `self_addr` must be accessible from other nodes of the cluster. If not set, the node will not participate in consensus.

- **bind_addr**: (optional) `ip:port` to listen on for Raft connections. If not specified the `self_addr` will be used.

- **partner_addrs**: list of other Patroni nodes in the cluster in format: \['ip1:port', 'ip2:port', 'etc...'\]

- **data_dir**: directory where to store Raft log and snapshot. If not specified the current working directory is used.

- **password**: (optional) Encrypt Raft traffic with a specified password, requires `cryptography` python module.
- **min_timeout**: (optional) minimum election timeout in seconds for the underlying pysyncobj Raft implementation. Must be greater than 3 * `append_entries_period`. Default: `0.4`.
- **max_timeout**: (optional) maximum election timeout in seconds for the underlying pysyncobj Raft implementation. Must be greater than `min_timeout`. Default: `1.4`.
- **connection_timeout**: (optional) time in seconds after which a connection with no data received is considered dead. Must be greater than or equal to `max_timeout`. Default: `3.5`.
- **append_entries_period**: (optional) interval in seconds for sending heartbeat (append_entries) commands. Must be less than one-third of `min_timeout`. Default: `0.1`.
- **connection_retry_time**: (optional) interval in seconds between reconnection attempts to offline nodes. Default: `5.0`.
- **leader_fallback_timeout**: (optional) time in seconds after which a leader with no response from the majority falls back to follower state. Must be greater than `append_entries_period`. Default: `30.0`.

> [!NOTE]
> Adjust these timeouts for high-latency networks where pysyncobj defaults are too short. Required constraints: `min_timeout` > 3 * `append_entries_period`, `max_timeout` > `min_timeout`, `connection_timeout` >= `max_timeout`, and `leader_fallback_timeout` > `append_entries_period`. Patroni validates them at startup and refuses to start if they fail. Changes require a restart.
>
> [!WARNING]
> These settings only extend pysyncobj election and connection timeouts. Each Raft command, including leader lock refresh and cluster-state writes, must still finish within `retry_timeout` (default `10`). With round-trip latency above approximately a few seconds, a command can exceed this limit even if `connection_timeout` exceeds the RTT. The DCS then appears unreachable, and the primary may demote. Also increase `retry_timeout` and `ttl` on these links. Keep `loop_wait + 2 * retry_timeout <= ttl`.

  Short FAQ about Raft implementation

  - Q: How to list all the nodes providing consensus?

    A: `syncobj_admin -conn host:port -status` where the host:port is the address of one of the cluster nodes

  - Q: Node that was a part of consensus and has gone and I can't reuse the same IP for other node. How to remove this node from the consensus?

    A: `syncobj_admin -conn host:port -remove host2:port2` where the `host2:port2` is the address of the node you want to remove from consensus.

  - Q: Where to get the `syncobj_admin` utility?

    A: It is installed together with `pysyncobj` module (python RAFT implementation), which is Patroni dependency.

  - Q: it is possible to run Patroni node without adding in to the consensus?

    A: Yes, just comment out or remove `raft.self_addr` from Patroni configuration.

  - Q: It is possible to run Patroni and PostgreSQL only on two nodes?

    A: Yes, on the third node you can run `patroni_raft_controller` (without Patroni and PostgreSQL). In such a setup, one can temporarily lose one node without affecting the primary.

<a id="postgresql_settings"></a>

--------

## PostgreSQL

- **postgresql**:
  - **authentication**:

    - **superuser**:
      - **username**: name for the superuser, set during initialization (initdb) and later used by Patroni to connect to the postgres.
      - **password**: password for the superuser, set during initialization (initdb).
      - **sslmode**: (optional) maps to [sslmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE). Specifies the TLS negotiation mode. See the [PostgreSQL documentation](https://www.postgresql.org/docs/current/libpq-ssl.html#LIBPQ-SSL-SSLMODE-STATEMENTS) for each mode. Default: `prefer`.
      - **sslkey**: (optional) maps to [sslkey](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLKEY). Path to the secret key for the client certificate.
      - **sslpassword**: (optional) maps to [sslpassword](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLPASSWORD). Password for the secret key in `sslkey`.
      - **sslcert**: (optional) maps to [sslcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCERT). Path to the client certificate.
      - **sslrootcert**: (optional) maps to [sslrootcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLROOTCERT). File containing one or more trusted CA certificates. The client uses them to verify the server certificate.
      - **sslcrl**: (optional) maps to [sslcrl](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRL). Certificate revocation list file. The client rejects servers whose certificates appear in the list.
      - **sslcrldir**: (optional) maps to [sslcrldir](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRLDIR). Directory containing certificate revocation list files. The client rejects servers whose certificates appear in these lists.
      - **sslnegotiation**: (optional) maps to [sslnegotiation](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLNEGOTIATION). Controls server SSL negotiation when SSL is used.
      - **gssencmode**: (optional) maps to [gssencmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-GSSENCMODE). Controls whether to negotiate secure GSS TCP/IP and its priority.
      - **channel_binding**: (optional) maps to [channel_binding](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-CHANNEL-BINDING). Controls client channel binding.
    - **replication**:
      - **username**: replication username; the user will be created during initialization. Replicas will use this user to access the replication source via streaming replication
      - **password**: replication password; the user will be created during initialization.
      - **sslmode**: (optional) maps to [sslmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE). Specifies the TLS negotiation mode. See the [PostgreSQL documentation](https://www.postgresql.org/docs/current/libpq-ssl.html#LIBPQ-SSL-SSLMODE-STATEMENTS) for each mode. Default: `prefer`.
      - **sslkey**: (optional) maps to [sslkey](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLKEY). Path to the secret key for the client certificate.
      - **sslpassword**: (optional) maps to [sslpassword](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLPASSWORD). Password for the secret key in `sslkey`.
      - **sslcert**: (optional) maps to [sslcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCERT). Path to the client certificate.
      - **sslrootcert**: (optional) maps to [sslrootcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLROOTCERT). File containing one or more trusted CA certificates. The client uses them to verify the server certificate.
      - **sslcrl**: (optional) maps to [sslcrl](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRL). Certificate revocation list file. The client rejects servers whose certificates appear in the list.
      - **sslcrldir**: (optional) maps to [sslcrldir](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRLDIR). Directory containing certificate revocation list files. The client rejects servers whose certificates appear in these lists.
      - **sslnegotiation**: (optional) maps to [sslnegotiation](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLNEGOTIATION). Controls server SSL negotiation when SSL is used.
      - **gssencmode**: (optional) maps to [gssencmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-GSSENCMODE). Controls whether to negotiate secure GSS TCP/IP and its priority.
      - **channel_binding**: (optional) maps to [channel_binding](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-CHANNEL-BINDING). Controls client channel binding.
    - **rewind**:
      - **username**: (optional) name for the user for `pg_rewind`; the user will be created during initialization of postgres 11+ and all necessary [permissions](https://www.postgresql.org/docs/11/app-pgrewind.html#id-1.9.5.8.8) will be granted.
      - **password**: (optional) password for the user for `pg_rewind`; the user will be created during initialization.
      - **sslmode**: (optional) maps to [sslmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE). Specifies the TLS negotiation mode. See the [PostgreSQL documentation](https://www.postgresql.org/docs/current/libpq-ssl.html#LIBPQ-SSL-SSLMODE-STATEMENTS) for each mode. Default: `prefer`.
      - **sslkey**: (optional) maps to [sslkey](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLKEY). Path to the secret key for the client certificate.
      - **sslpassword**: (optional) maps to [sslpassword](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLPASSWORD). Password for the secret key in `sslkey`.
      - **sslcert**: (optional) maps to [sslcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCERT). Path to the client certificate.
      - **sslrootcert**: (optional) maps to [sslrootcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLROOTCERT). File containing one or more trusted CA certificates. The client uses them to verify the server certificate.
      - **sslcrl**: (optional) maps to [sslcrl](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRL). Certificate revocation list file. The client rejects servers whose certificates appear in the list.
      - **sslcrldir**: (optional) maps to [sslcrldir](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRLDIR). Directory containing certificate revocation list files. The client rejects servers whose certificates appear in these lists.
      - **sslnegotiation**: (optional) maps to [sslnegotiation](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLNEGOTIATION). Controls server SSL negotiation when SSL is used.
      - **gssencmode**: (optional) maps to [gssencmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-GSSENCMODE). Controls whether to negotiate secure GSS TCP/IP and its priority.
      - **channel_binding**: (optional) maps to [channel_binding](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-CHANNEL-BINDING). Controls client channel binding.

  - **callbacks**: callback scripts to run on certain actions. Patroni will pass the action, role and cluster name. (See scripts/aws.py as an example of how to write them.)

    - **on_reload**: run this script when configuration reload is triggered.
    - **on_restart**: run this script when the postgres restarts (without changing role).
    - **on_role_change**: run this script when the postgres is being promoted or demoted.
    - **on_start**: run this script when the postgres starts.
    - **on_stop**: run this script when the postgres stops.

  - **connect_address**: IP address + port through which Postgres is accessible from other nodes and applications.

  - **proxy_address**: address and port of the connection pool beside Postgres, such as pgbouncer. Patroni stores it as `proxy_url` in the DCS member key for service discovery.

  - **create_replica_methods**: ordered methods for creating replicas. The default is "basebackup". Other methods refer to scripts, each with its own configuration section. See [custom replica creation methods](/docs/patroni/replica_bootstrap#custom_replica_creation).

  - **data_dir**: The location of the Postgres data directory, either [existing](/docs/patroni/existing_data#existing_data) or to be initialized by Patroni.

  - **config_dir**: The location of the Postgres configuration directory, defaults to the data directory. Must be writable by Patroni.

  - **bin_dir**: (optional) Path to PostgreSQL binaries (pg_ctl, initdb, pg_controldata, pg_basebackup, postgres, pg_isready, pg_rewind). If not provided or is an empty string, PATH environment variable will be used to find the executables.

  - **bin_name**: (optional) Make it possible to override Postgres binary names, if you are using a custom Postgres distribution:

    - **pg_ctl**: (optional) Custom name for `pg_ctl` binary.
    - **initdb**: (optional) Custom name for `initdb` binary.
    - **pgcontroldata**: (optional) Custom name for `pg_controldata` binary.
    - **pg_basebackup**: (optional) Custom name for `pg_basebackup` binary.
    - **postgres**: (optional) Custom name for `postgres` binary.
    - **pg_isready**: (optional) Custom name for `pg_isready` binary.
    - **pg_rewind**: (optional) Custom name for `pg_rewind` binary.

  - **listen**: Postgres listen addresses and port. With streaming replication, other cluster nodes must be able to reach this address. Separate multiple addresses with commas and append the port after the last address: `listen: 127.0.0.1,127.0.0.2:5432`. Patroni uses the first address for local connections.

  - **use_unix_socket**: prefer Unix sockets for cluster connections. Default: `false`. If `unix_socket_directories` is set, use its first suitable value, or TCP if none is suitable. If absent from `postgresql.parameters`, assume the default socket directory and omit `host` from connection parameters.

  - **use_unix_socket_repl**: prefer Unix sockets for replication user connections. Default: `false`. If `unix_socket_directories` is set, use its first suitable value, or TCP if none is suitable. If absent from `postgresql.parameters`, assume the default socket directory and omit `host` from connection parameters.

  - **pgpass**: path to the [.pgpass](https://www.postgresql.org/docs/current/static/libpq-pgpass.html) password file. Patroni creates this file before executing pg_basebackup, the post_init script and under some other circumstances. The location must be writable by Patroni.

  - **recovery_conf**: additional configuration settings written to recovery.conf when configuring follower.

  - **custom_conf** : optional custom `postgresql.conf` file to use instead of `postgresql.base.conf`. It must exist on all nodes and be readable by PostgreSQL. The actual `postgresql.conf` includes it from its location. Patroni neither monitors nor backs up this file. Patroni configuration can still override its settings; see [dynamic configuration](/docs/patroni/config#config).

  - **parameters**: configuration parameters (GUCs) for Postgres in format `{ssl: "on", ssl_cert_file: "cert_file"}`.
  - **parameters_primary**: (optional) role-specific parameter overrides for primary. These values are merged with and override the base **parameters**.
  - **parameters_replica**: (optional) role-specific parameter overrides for replica. These values are merged with and override the base **parameters**.
  - **parameters_standby_leader**: (optional) role-specific parameter overrides for standby_leader. These values are merged with and override the base **parameters**.

  - **pg_hba**: list of lines that Patroni will use to generate `pg_hba.conf`. Patroni ignores this parameter if `hba_file` PostgreSQL parameter is set to a non-default value. Together with [dynamic configuration](/docs/patroni/config/dynamic#dynamic) this parameter simplifies management of `pg_hba.conf`.

    - **- host all all 0.0.0.0/0 md5**
    - **- host replication replicator 127.0.0.1/32 md5**: A line like this is required for replication.
  - **pg_hba_primary**: (optional) role-specific pg_hba entries for primary. These completely replace **pg_hba** (no merging). If not defined, **pg_hba** is used.
  - **pg_hba_replica**: (optional) role-specific pg_hba entries for replica. These completely replace **pg_hba** (no merging). If not defined, **pg_hba** is used.
  - **pg_hba_standby_leader**: (optional) role-specific pg_hba entries for standby_leader. These completely replace **pg_hba** (no merging). If not defined, **pg_hba** is used.

  - **pg_ident**: list of lines that Patroni will use to generate `pg_ident.conf`. Patroni ignores this parameter if `ident_file` PostgreSQL parameter is set to a non-default value. Together with [dynamic configuration](/docs/patroni/config/dynamic#dynamic) this parameter simplifies management of `pg_ident.conf`.

    - **- mapname1 systemname1 pguser1**
    - **- mapname1 systemname2 pguser2**
  - **pg_ident_primary**: (optional) role-specific pg_ident entries for primary. These completely replace **pg_ident** (no merging). If not defined, **pg_ident** is used.
  - **pg_ident_replica**: (optional) role-specific pg_ident entries for replica. These completely replace **pg_ident** (no merging). If not defined, **pg_ident** is used.
  - **pg_ident_standby_leader**: (optional) role-specific pg_ident entries for standby_leader. These completely replace **pg_ident** (no merging). If not defined, **pg_ident** is used.

  - **pg_ctl_timeout**: How long should pg_ctl wait when doing `start`, `stop` or `restart`. Default value is 60 seconds.

  - **use_pg_rewind**: try pg_rewind when the old leader rejoins as a replica. For correct operation, `pg_rewind` requires `data page checksums` and/or `wal_log_hints` set to `on`. Enable checksums with the `--data-checksums` option for `initdb`.

  - **rewind**: (optional) custom options to pass to the `pg_rewind` command. Can be specified as a list of strings and/or single key-value dictionaries. Not allowed options include: `target-pgdata`, `source-pgdata`, `source-server`, `write-recovery-conf`, `dry-run`, `restore-target-wal`, `config-file`, `no-ensure-shutdown`, `version`, and `help`. Example usage:

    ```yaml
    postgresql:
      rewind:
        - debug
        - progress
        - sync-method: fsync
    ```

  - **remove_data_directory_on_rewind_failure**: If this option is enabled, Patroni will remove the PostgreSQL data directory and recreate the replica. Otherwise it will try to follow the new leader. Default value is **false**.

  - **remove_data_directory_on_diverged_timelines**: remove the data directory and recreate the replica if timelines diverge and the old primary cannot stream from the new primary. Use this when `pg_rewind` is unavailable. On PostgreSQL v10 and older, Patroni checks divergence by connecting to the "postgres" database with replication credentials. Permit this access in pg_hba.conf. Default: **false**.

  - **replica_method**: add a section for each create_replica_methods entry other than basebackup. Use the method name as the section name. At minimum, set "command" to the full script path. Patroni passes other parameters to the script as "parameter=value".

  - **pre_promote**: fencing script run after leader lock acquisition and before replica promotion during failover. A non-zero exit prevents promotion and removes the DCS leader key.

  - **before_stop**: script run immediately before Postgres stops. It runs synchronously and blocks shutdown until completion. Shutdown then proceeds regardless of its exit code.

<a id="restapi_settings"></a>

--------

## REST API

- **restapi**:
  - **thread_pool_size**: size of thread pool used by Patroni to process REST API requests. Minimal value is `5`, default value is `5`.
  - **connect_address**: address or host name and port for the [REST API](/docs/patroni/rest_api#rest_api). Every cluster member must reach it. Use a non-loopback address except for a local demonstration; "localhost" and "127.0.0.1" are unsuitable for other deployments. It supports HTTP health checks, user queries, and member checks during leader elections. These checks determine whether the leader runs or another node has a later WAL position. Patroni stores connect_address in the DCS member key so member names resolve to REST API addresses.
  - **listen**: address or host name and port for REST API health checks and communication between cluster members. HAProxy and other load balancers can use HTTP "OPTION" or "GET" checks.
  - **authentication**: (optional)
    - **username**: Basic-auth username to protect unsafe REST API endpoints.
    - **password**: Basic-auth password to protect unsafe REST API endpoints.
  - **certfile**: (optional): Specifies the file with the certificate in the PEM format. If the certfile is not specified or is left empty, the API server will work without SSL.
  - **keyfile**: (optional): Specifies the file with the secret key in the PEM format.
  - **keyfile_password**: (optional): Specifies a password for decrypting the keyfile.
  - **cafile**: (optional): Specifies the file with the CA_BUNDLE with certificates of trusted CAs to use while verifying client certs.
  - **ciphers**: (optional): Specifies the permitted cipher suites (e.g. "ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES128-GCM-SHA256:!SSLv1:!SSLv2:!SSLv3:!TLSv1:!TLSv1.1")
  - **verify_client**: (optional) client certificate verification mode: `none` (default), `optional`, or `required`. `none` disables verification. `required` requires certificates for all calls; successful signature verification authenticates the client. `optional` requires and checks certificates only for unsafe `PUT`, `POST`, `PATCH`, and `DELETE` requests.
  - **allowlist**: (optional) hosts permitted to call unsafe endpoints. Each entry can be a host name, IP address, or CIDR network. Default: `allow all`. With `allowlist` or `allowlist_include_members` set, all unlisted sources are rejected.
  - **allowlist_include_members**: (optional) if `true`, permits unsafe endpoint access from cluster members registered in the DCS. It uses each member's `api_url` host name or IP address. The operating system may use a different address for outgoing connections.
  - **http_extra_headers**: (optional): HTTP headers let the REST API server pass additional information with an HTTP response.
  - **https_extra_headers**: (optional): HTTPS headers let the REST API server pass additional information with an HTTP response when TLS is enabled. This will also pass additional information set in `http_extra_headers`.
  - **request_queue_size**: (optional): Sets request queue size for TCP socket used by Patroni REST API. Once the queue is full, further requests get a "Connection denied" error. The default value is 5.
  - **server_tokens**: (optional): Configures the value of the `Server` HTTP header.
    - `Minimal`: The header will contain only the Patroni version, e.g. `Patroni/4.0.0`.
    - `ProductOnly`: The header will contain only the product name, e.g. `Patroni`.
    - `Original` (default): The header will expose the original behaviour and display the BaseHTTP and Python versions, e.g. `BaseHTTP/0.6 Python/3.12.3`.

Here is an example of both **http_extra_headers** and **https_extra_headers**:

```yaml
restapi:
  listen: <listen>
  connect_address: <connect_address>
  authentication:
    username: <username>
    password: <password>
  http_extra_headers:
    'X-Frame-Options': 'SAMEORIGIN'
    'X-XSS-Protection': '1; mode=block'
    'X-Content-Type-Options': 'nosniff'
  cafile: <ca file>
  certfile: <cert>
  keyfile: <key>
  https_extra_headers:
    'Strict-Transport-Security': 'max-age=31536000; includeSubDomains'
```

<div class="warning">

<div class="title">

Warning

</div>

- The `restapi.connect_address` must be accessible from all nodes of a given Patroni cluster. Internally Patroni is using it during the leader race to find nodes with minimal replication lag.
- If you enabled client certificates validation (`restapi.verify_client` is set to `required`), you also **must** provide **valid client certificates** in the `ctl.certfile`, `ctl.keyfile`, `ctl.keyfile_password`. If not provided, Patroni will not work correctly.

</div>

<a id="patronictl_settings"></a>

--------

## CTL

- **ctl**: (optional)
  - **authentication**:
    - **username**: Basic-auth username for accessing protected REST API endpoints. If not provided [patronictl](/docs/patroni/patronictl#patronictl) will use the value provided for REST API "username" parameter.
    - **password**: Basic-auth password for accessing protected REST API endpoints. If not provided [patronictl](/docs/patroni/patronictl#patronictl) will use the value provided for REST API "password" parameter.
  - **insecure**: Allow connections to REST API without verifying SSL certs.
  - **cacert**: CA_BUNDLE file or directory with trusted CAs for REST API SSL verification. If absent, [patronictl](/docs/patroni/patronictl#patronictl) uses the REST API "cafile" value.
  - **certfile**: Specifies the file with the client certificate in the PEM format.
  - **keyfile**: Specifies the file with the client secret key in the PEM format.
  - **keyfile_password**: Specifies a password for decrypting the client keyfile.

--------

## Watchdog

- **mode**: `off`, `automatic`, or `required`. `off` disables the watchdog. `automatic` uses it when available and otherwise ignores it. `required` prevents leadership unless watchdog activation succeeds.
- **device**: Path to watchdog device. Defaults to `/dev/watchdog`.
- **safety_margin**: Number of seconds of safety margin between watchdog triggering and leader key expiration.

<a id="tags_settings"></a>

--------

## Tags

- **clonefrom**: `true` or `false`. If `true`, other nodes may prefer this node as their bootstrap `pg_basebackup` source. With multiple nodes tagged `clonefrom`, selection is random. Default: `false`.
- **noloadbalance**: `true` or `false`. If set to `true` the node will return HTTP Status Code 503 for the `GET /replica` REST API health-check and therefore will be excluded from the load-balancing. Defaults to `false`.
- **replicatefrom**: The name of another replica to replicate from. Used to support cascading replication.
- **nosync**: `true` or `false`. If set to `true` the node will never be selected as a synchronous replica.
- **sync_priority**: integer priority for synchronous standby selection with [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) set to `on`. Higher values are preferred. Values of 0 or less exclude the node from `synchronous_standby_names`, like `nosync: true`. This is the opposite of `sync_priority` in `pg_stat_replication`.
- **nofailover**: `true` or `false`, controls whether this node is allowed to participate in the leader race and become a leader. Defaults to `false`, meaning this node <span id="can">can</span>\_ participate in leader races.
- **failover_priority**: integer failover priority. Higher values are preferred when nodes have received/replayed the same WAL amount. A higher receive/replay LSN takes precedence over priority. Values of 0 or less prevent leader election participation and promotion, like `nofailover: true`. Currently, `failover_priority` does not work with [quorum-based synchronous replication](/docs/patroni/replication_modes#quorum_mode).
- **nostream**: `true` or `false`. If `true`, disable WAL streaming through the replication protocol. Use archive recovery, if `restore_command` is configured, and `pg_wal`/`pg_xlog` polling instead. Also disable permanent logical slot copying and synchronization on this node and its cascading replicas. This tag has no effect on a primary.

> [!WARNING]
> Provide only one of `nofailover` or `failover_priority`. Providing `nofailover: true` is the same as `failover_priority: 0`, and providing `nofailover: false` will give the node priority 1.

In addition to these predefined tags, you can also add your own ones:

- **key1**: `true`
- **key2**: `false`
- **key3**: `1.4`
- **key4**: `"RandomString"`

Tags appear in the [REST API](/docs/patroni/rest_api#rest_api) and [patronictl_list](/docs/patroni/patronictl#patronictl_list). Use them in instance health checks. An undefined tag or a value different from the query value returns HTTP 503.
