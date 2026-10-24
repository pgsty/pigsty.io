# Environment Configuration Settings

> Environment variables for overriding Patroni configuration parameters.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/ENVIRONMENT.html

<a id="env"></a>
System environment variables can override some Patroni configuration file parameters. This page lists all supported variables. Environment values always take precedence over file values.

--------

## Global/Universal

- **PATRONI_CONFIGURATION**: sets the complete Patroni configuration through [PATRONI_CONFIGURATION](/docs/patroni/config#config). Patroni then ignores all other environment variables.
- **PATRONI_THREAD_POOL_SIZE**: thread pool size for asynchronous tasks and REST API communication with other members during leader races or failsafe checks. Minimum: `5`. Default: `5`.
- **PATRONI_THREAD_STACK_SIZE**: stack size for Patroni threads. Use a multiple of `64kB`. Minimum: `64kB`. Patroni default: `512kB`.
- **PATRONI_NAME**: name of the node where the current instance of Patroni is running. Must be unique for the cluster. The value `__patroni_strict_sync_replica_placeholder__` is reserved for internal use by Patroni and cannot be used as a node name.
- **PATRONI_NAMESPACE**: path within the configuration store where Patroni will keep information about the cluster. Default value: "/service"
- **PATRONI_SCOPE**: cluster name
- **PG_MALLOC_ARENA_MAX**: custom value for `MALLOC_ARENA_MAX` environment variable for `postmaster` process. If not set, `postmaster` will inherit `MALLOC_ARENA_MAX` value.

--------

## Log

- **PATRONI_LOG_TYPE**: sets the format of logs. Can be either **plain** or **json**. To use **json** format, you must have the [jsonlogger](/docs/patroni/installation#extras) installed. The default value is **plain**.
- **PATRONI_LOG_LEVEL**: sets the general logging level. Default value is **INFO** (see [the docs for Python logging](https://docs.python.org/3.6/library/logging.html#levels))
- **PATRONI_LOG_TRACEBACK_LEVEL**: sets the level where tracebacks will be visible. Default value is **ERROR**. Set it to **DEBUG** if you want to see tracebacks only if you enable **PATRONI_LOG_LEVEL=DEBUG**.
- **PATRONI_LOG_FORMAT**: log format. For **plain** logs, use a string. For **json**, use a string or a list of [LogRecord attributes](https://docs.python.org/3.6/library/logging.html#logrecord-attributes). In lists, use field names without **%(** and **)**. To rename a field, use a dictionary with the original field as key and the output name as value. Default: **%(asctime)s %(levelname)s: %(message)s**.
- **PATRONI_LOG_DATEFORMAT**: sets the datetime formatting string. (see the [formatTime() documentation](https://docs.python.org/3.6/library/logging.html#logging.Formatter.formatTime))
- **PATRONI_LOG_STATIC_FIELDS**: add additional fields to the log. This option is only available when the log type is set to **json**. Example `PATRONI_LOG_STATIC_FIELDS="{app: patroni}"`
- **PATRONI_LOG_MAX_QUEUE_SIZE**: maximum internal log queue size. Patroni writes records to an in-memory queue. A separate thread reads them and writes to stderr or a file. The default **1000** records retain approximately 1h20m of logs.
- **PATRONI_LOG_DIR**: application log directory. It must exist and be writable by the Patroni user. By default, Patroni retains four 25MB files. Adjust retention with `PATRONI_LOG_FILE_NUM` and `PATRONI_LOG_FILE_SIZE`.
- **PATRONI_LOG_MODE**: Permissions for log files (for example, `0644`). If not specified, permissions will be set based on the current umask value.
- **PATRONI_LOG_FILE_NUM**: The number of application logs to retain.
- **PATRONI_LOG_FILE_SIZE**: Size of patroni.log file (in bytes) that triggers a log rolling.
- **PATRONI_LOG_LOGGERS**: Redefine logging level per python module. Example `PATRONI_LOG_LOGGERS="{patroni.postmaster: WARNING, urllib3: DEBUG}"`
- **PATRONI_LOG_DEDUPLICATE_HEARTBEAT_LOGS**: suppresses consecutive identical heartbeat messages when `true`. Default: `false`.

> [!WARNING]
> HA loop timing helps diagnose failovers caused by exhausted resources and similar problems. With `PATRONI_LOG_DEDUPLICATE_HEARTBEAT_LOGS` set to `true`, loop execution produces no log unless the leader changes. These diagnostics are then unavailable in the logs.

--------

## Citus

Enable [Citus](https://docs.citusdata.com) integration. Patroni then registers workers on the coordinator. See [Citus support](/docs/patroni/citus#citus).

- **PATRONI_CITUS_GROUP**: the Citus group id, integer. Use `0` for coordinator and `1`, `2`, etc... for workers
- **PATRONI_CITUS_DATABASE**: database for the [citus](/docs/patroni/citus#citus) extension. Use the same database on the coordinator and all workers. Currently, only one database is supported.

--------

## Consul

- **PATRONI_CONSUL_HOST**: the host:port for the Consul local agent.
- **PATRONI_CONSUL_URL**: url for the Consul local agent, in format: http(s)://host:port
- **PATRONI_CONSUL_PORT**: (optional) Consul port
- **PATRONI_CONSUL_SCHEME**: (optional) **http** or **https**, defaults to **http**
- **PATRONI_CONSUL_TOKEN**: (optional) ACL token
- **PATRONI_CONSUL_VERIFY**: (optional) whether to verify the SSL certificate for HTTPS requests
- **PATRONI_CONSUL_CACERT**: (optional) The ca certificate. If present it will enable validation.
- **PATRONI_CONSUL_CERT**: (optional) File with the client certificate
- **PATRONI_CONSUL_KEY**: (optional) File with the client key. Can be empty if the key is part of certificate.
- **PATRONI_CONSUL_DC**: (optional) Datacenter to communicate with. By default the datacenter of the host is used.
- **PATRONI_CONSUL_CONSISTENCY**: (optional) Select consul consistency mode. Possible values are `default`, `consistent`, or `stale` (more details in [consul API reference](https://www.consul.io/api/features/consistency.html/))
- **PATRONI_CONSUL_CHECKS**: (optional) list of Consul health checks used for the session. By default an empty list is used.
- **PATRONI_CONSUL_REGISTER_SERVICE**: (optional) registers a service named by scope. Its role tag is master, primary, replica, or standby-leader. Default: **false**.
- **PATRONI_CONSUL_SERVICE_TAGS**: (optional) additional static tags to add to the Consul service apart from the role (`primary`/`replica`/`standby-leader`). By default an empty list is used.
- **PATRONI_CONSUL_SERVICE_CHECK_INTERVAL**: (optional) how often to perform health check against registered url
- **PATRONI_CONSUL_SERVICE_CHECK_TLS_SERVER_NAME**: (optional) override SNI host when connecting via TLS, see also [consul agent check API reference](https://www.consul.io/api-docs/agent/check#tlsservername).

--------

## Etcd

- **PATRONI_ETCD_PROXY**: proxy url for the etcd. If you are connecting to the etcd using proxy, use this parameter instead of **PATRONI_ETCD_URL**
- **PATRONI_ETCD_URL**: url for the etcd, in format: http(s)://(username:password@)host:port
- **PATRONI_ETCD_HOSTS**: list of etcd endpoints in format 'host1:port1','host2:port2',etc...
- **PATRONI_ETCD_USE_PROXIES**: if true, treats **hosts** as a fixed proxy list. Patroni does not discover etcd topology.
- **PATRONI_ETCD_PROTOCOL**: http or https, if not specified http is used. If the **url** or **proxy** is specified - will take protocol from them.
- **PATRONI_ETCD_HOST**: the host:port for the etcd endpoint.
- **PATRONI_ETCD_SRV**: domain for SRV-based cluster discovery. Patroni queries these services in order until one succeeds: `_etcd-client-ssl`, `_etcd-client`, `_etcd-ssl`, `_etcd`, `_etcd-server-ssl`, `_etcd-server`. For `_etcd-server-ssl` or `_etcd-server`, it queries available members through the ETCD peer protocol. Otherwise, it uses hosts from the SRV records.
- **PATRONI_ETCD_SRV_SUFFIX**: suffix for discovery SRV names. Requires **PATRONI_ETCD_SRV**. Use it to distinguish etcd clusters in one domain. For example, `PATRONI_ETCD_SRV_SUFFIX=foo` and `PATRONI_ETCD_SRV=example.org` produce `_etcd-client-ssl-foo._tcp.example.com`. Patroni applies this suffix to each possible ETCD SRV service name.
- **PATRONI_ETCD_USERNAME**: username for etcd authentication.
- **PATRONI_ETCD_PASSWORD**: password for etcd authentication.
- **PATRONI_ETCD_CACERT**: The ca certificate. If present it will enable validation.
- **PATRONI_ETCD_CERT**: File with the client certificate.
- **PATRONI_ETCD_KEY**: File with the client key. Can be empty if the key is part of certificate.

--------

## Etcdv3

For Etcdv3, replace `ETCD` with `ETCD3` in Etcd variable names. Examples include `PATRONI_ETCD3_HOST` and `PATRONI_ETCD3_CACERT`.

> [!WARNING]
> Protocol versions 2 and 3 cannot see each other's keys. Changing Patroni configuration alone cannot migrate Etcd to Etcdv3. Patroni uses the Etcd gRPC-gateway proxy for the V3 API. This prevents TLS common name authentication.

--------

## ZooKeeper

- **PATRONI_ZOOKEEPER_HOSTS**: Comma separated list of ZooKeeper cluster members: "'host1:port1','host2:port2','etc...'". It is important to quote every single entity!
- **PATRONI_ZOOKEEPER_USE_SSL**: (optional) Whether SSL is used or not. Defaults to `false`. If set to `false`, all SSL specific parameters are ignored.
- **PATRONI_ZOOKEEPER_CACERT**: (optional) The CA certificate. If present it will enable validation.
- **PATRONI_ZOOKEEPER_CERT**: (optional) File with the client certificate.
- **PATRONI_ZOOKEEPER_KEY**: (optional) File with the client key.
- **PATRONI_ZOOKEEPER_KEY_PASSWORD**: (optional) The client key password.
- **PATRONI_ZOOKEEPER_VERIFY**: (optional) Whether to verify certificate or not. Defaults to `true`.
- **PATRONI_ZOOKEEPER_SET_ACLS**: (optional) default ACL that Kazoo applies to each new ZNode. Use `x509` (default) or another supported ZooKeeper scheme, such as `digest`. Supply a dictionary: each key is the full principal, optionally prefixed with its scheme. Each value lists one or more permissions: `CREATE`, `READ`, `WRITE`, `DELETE`, `ADMIN`, or `ALL`. Example: `set_acls: {CN=principal1: [CREATE, READ], digest:principal2:+pjROuBuuwNNSujKyH8dGcEnFPQ=: [ALL]}`.
- **PATRONI_ZOOKEEPER_AUTH_DATA**: (optional) connection authentication dictionary. Use `scheme` as the key and `credential` as the value. Default: empty dictionary.

> [!NOTE]
> It is required to install `kazoo>=2.6.0` to support SSL.

--------

## Exhibitor

- **PATRONI_EXHIBITOR_HOSTS**: initial list of Exhibitor (ZooKeeper) nodes in format: 'host1,host2,etc...'. This list updates automatically whenever the Exhibitor (ZooKeeper) cluster topology changes.
- **PATRONI_EXHIBITOR_PORT**: Exhibitor port.

<a id="kubernetes_environment"></a>

--------

## Kubernetes

- **PATRONI_KUBERNETES_BYPASS_API_SERVICE**: (optional) normally, Patroni contacts the [kubernetes](/docs/patroni/kubernetes#kubernetes) service at `KUBERNETES_SERVICE_HOST`. With `PATRONI_KUBERNETES_BYPASS_API_SERVICE` set to `true`, it discovers the API nodes behind the service and contacts them directly.
- **PATRONI_KUBERNETES_NAMESPACE**: (optional) Kubernetes namespace where the Patroni pod is running. Default value is `default`.
- **PATRONI_KUBERNETES_LABELS**: labels in `{label1: value1, label2: value2}` format. Patroni uses them to find cluster Pods and Endpoints or ConfigMaps. It also adds them to each Endpoint or ConfigMap it creates.
- **PATRONI_KUBERNETES_SCOPE_LABEL**: (optional) name of the label containing cluster name. Default value is `cluster-name`.
- **PATRONI_KUBERNETES_BOOTSTRAP_LABELS**: (optional) labels in `{label1: value1, label2: value2}` format. Patroni assigns them to pods in these states: `initializing new cluster`, `running custom bootstrap script`, `starting after custom bootstrap`, or `creating replica`.
- **PATRONI_KUBERNETES_ROLE_LABEL**: (optional) name of the label containing role (`primary`, `replica` or other custom value). Patroni will set this label on the pod it runs in. Default value is `role`.
- **PATRONI_KUBERNETES_LEADER_LABEL_VALUE**: (optional) value of the pod label when Postgres role is `primary`. Default value is `primary`.
- **PATRONI_KUBERNETES_FOLLOWER_LABEL_VALUE**: (optional) value of the pod label when Postgres role is `replica`. Default value is `replica`.
- **PATRONI_KUBERNETES_STANDBY_LEADER_LABEL_VALUE**: (optional) value of the pod label when Postgres role is `standby_leader`. Default value is `primary`.
- **PATRONI_KUBERNETES_TMP_ROLE_LABEL**: (optional) name of the temporary label containing role (`primary` or `replica`). Value of this label will always use the default of corresponding role. Set only when necessary.
- **PATRONI_KUBERNETES_USE_ENDPOINTS**: (optional) if set to true, Patroni will use Endpoints instead of ConfigMaps to run leader elections and keep cluster state.
- **PATRONI_KUBERNETES_POD_IP**: (optional) Patroni pod IP address. Required when `PATRONI_KUBERNETES_USE_ENDPOINTS` is enabled. On promotion, Patroni uses this value to populate leader endpoint subsets.
- **PATRONI_KUBERNETES_PORTS**: (optional) named Service ports require identical Endpoint port names. Otherwise, the service cannot work. For `{Kind: Service, spec: {ports: [{name: postgresql, port: 5432, targetPort: 5432}]}}`, set `PATRONI_KUBERNETES_PORTS='[{"name": "postgresql", "port": 5432}]'`. Patroni uses this value to update leader Endpoint subsets. Applies only with `PATRONI_KUBERNETES_USE_ENDPOINTS`.
- **PATRONI_KUBERNETES_CACERT**: (optional) CA_BUNDLE file with trusted CA certificates for Kubernetes API SSL verification. Defaults to the ServiceAccount secret value.
- **PATRONI_RETRIABLE_HTTP_CODES**: (optional) Kubernetes API status codes to retry. By default, Patroni retries `500`, `503`, and `504`, and responses with a `retry-after` HTTP header.

--------

## Raft (deprecated)

- **PATRONI_RAFT_SELF_ADDR**: `ip:port` to listen on for Raft connections. The `self_addr` must be accessible from other nodes of the cluster. If not set, the node will not participate in consensus.
- **PATRONI_RAFT_BIND_ADDR**: (optional) `ip:port` to listen on for Raft connections. If not specified the `self_addr` will be used.
- **PATRONI_RAFT_PARTNER_ADDRS**: list of other Patroni nodes in the cluster in format `"'ip1:port1','ip2:port2'"`. It is important to quote every single entity!
- **PATRONI_RAFT_DATA_DIR**: directory where to store Raft log and snapshot. If not specified the current working directory is used.
- **PATRONI_RAFT_PASSWORD**: (optional) Encrypt Raft traffic with a specified password, requires `cryptography` python module.
- **PATRONI_RAFT_MIN_TIMEOUT**: (optional) minimum election timeout in seconds for the underlying pysyncobj Raft implementation. Must be greater than 3 * `PATRONI_RAFT_APPEND_ENTRIES_PERIOD`. Default: `0.4`.
- **PATRONI_RAFT_MAX_TIMEOUT**: (optional) maximum election timeout in seconds for the underlying pysyncobj Raft implementation. Must be greater than `PATRONI_RAFT_MIN_TIMEOUT`. Default: `1.4`.
- **PATRONI_RAFT_CONNECTION_TIMEOUT**: (optional) time in seconds after which a connection with no data received is considered dead. Must be greater than or equal to `PATRONI_RAFT_MAX_TIMEOUT`. Default: `3.5`.
- **PATRONI_RAFT_APPEND_ENTRIES_PERIOD**: (optional) interval in seconds for sending heartbeat commands. Must be less than one-third of `PATRONI_RAFT_MIN_TIMEOUT`. Default: `0.1`.
- **PATRONI_RAFT_CONNECTION_RETRY_TIME**: (optional) interval in seconds between reconnection attempts to offline nodes. Default: `5.0`.
- **PATRONI_RAFT_LEADER_FALLBACK_TIMEOUT**: (optional) time in seconds after which a leader with no response from the majority falls back to follower state. Must be greater than `PATRONI_RAFT_APPEND_ENTRIES_PERIOD`. Default: `30.0`.

> [!NOTE]
> Patroni validates these constraints at startup and will refuse to start if they are violated. These values cannot be changed at runtime and require a restart. See [Raft settings](/docs/patroni/config/yaml#raft_settings) for details, including the high-latency limitation.

--------

## PostgreSQL

- **PATRONI_POSTGRESQL_LISTEN**: Postgres listen addresses and port. Separate multiple addresses with commas and append the port after the last address: `listen: 127.0.0.1,127.0.0.2:5432`. Patroni uses the first address for local PostgreSQL connections.
- **PATRONI_POSTGRESQL_CONNECT_ADDRESS**: IP address + port through which Postgres is accessible from other nodes and applications.
- **PATRONI_POSTGRESQL_PROXY_ADDRESS**: address and port of the connection pool beside Postgres, such as pgbouncer. Patroni stores it as `proxy_url` in the DCS member key for service discovery.
- **PATRONI_POSTGRESQL_DATA_DIR**: The location of the Postgres data directory, either existing or to be initialized by Patroni.
- **PATRONI_POSTGRESQL_CONFIG_DIR**: The location of the Postgres configuration directory, defaults to the data directory. Must be writable by Patroni.
- **PATRONI_POSTGRESQL_BIN_DIR**: PostgreSQL binary directory: pg_ctl, initdb, pg_controldata, pg_basebackup, postgres, pg_isready, and pg_rewind. The default empty string uses PATH to find executables.
- **PATRONI_POSTGRESQL_BIN_PG_CTL**: (optional) Custom name for `pg_ctl` binary.
- **PATRONI_POSTGRESQL_BIN_INITDB**: (optional) Custom name for `initdb` binary.
- **PATRONI_POSTGRESQL_BIN_PG_CONTROLDATA**: (optional) Custom name for `pg_controldata` binary.
- **PATRONI_POSTGRESQL_BIN_PG_BASEBACKUP**: (optional) Custom name for `pg_basebackup` binary.
- **PATRONI_POSTGRESQL_BIN_POSTGRES**: (optional) Custom name for `postgres` binary.
- **PATRONI_POSTGRESQL_BIN_IS_READY**: (optional) Custom name for `pg_isready` binary.
- **PATRONI_POSTGRESQL_BIN_PG_REWIND**: (optional) Custom name for `pg_rewind` binary.
- **PATRONI_POSTGRESQL_PGPASS**: path to the [.pgpass](https://www.postgresql.org/docs/current/static/libpq-pgpass.html) password file. Patroni creates this file before executing pg_basebackup and under some other circumstances. The location must be writable by Patroni.
- **PATRONI_REPLICATION_USERNAME**: replication username; the user will be created during initialization. Replicas will use this user to access the replication source via streaming replication
- **PATRONI_REPLICATION_PASSWORD**: replication password; the user will be created during initialization.
- **PATRONI_REPLICATION_SSLMODE**: (optional) maps to [sslmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE). Specifies the TLS negotiation mode. See the [PostgreSQL documentation](https://www.postgresql.org/docs/current/libpq-ssl.html#LIBPQ-SSL-SSLMODE-STATEMENTS) for each mode. Default: `prefer`.
- **PATRONI_REPLICATION_SSLKEY**: (optional) maps to [sslkey](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLKEY). Path to the secret key for the client certificate.
- **PATRONI_REPLICATION_SSLPASSWORD**: (optional) maps to [sslpassword](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLPASSWORD). Password for the secret key in `PATRONI_REPLICATION_SSLKEY`.
- **PATRONI_REPLICATION_SSLCERT**: (optional) maps to [sslcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCERT). Path to the client certificate.
- **PATRONI_REPLICATION_SSLROOTCERT**: (optional) maps to [sslrootcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLROOTCERT). File containing one or more trusted CA certificates. The client uses them to verify the server certificate.
- **PATRONI_REPLICATION_SSLCRL**: (optional) maps to [sslcrl](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRL). Certificate revocation list file. The client rejects servers whose certificates appear in the list.
- **PATRONI_REPLICATION_SSLCRLDIR**: (optional) maps to [sslcrldir](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRLDIR). Directory containing certificate revocation list files. The client rejects servers whose certificates appear in these lists.
- **PATRONI_REPLICATION_SSLNEGOTIATION**: (optional) maps to [sslnegotiation](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLNEGOTIATION). Controls server SSL negotiation when SSL is used.
- **PATRONI_REPLICATION_GSSENCMODE**: (optional) maps to [gssencmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-GSSENCMODE). Controls whether to negotiate secure GSS TCP/IP and its priority.
- **PATRONI_REPLICATION_CHANNEL_BINDING**: (optional) maps to [channel_binding](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-CHANNEL-BINDING). Controls client channel binding.
- **PATRONI_SUPERUSER_USERNAME**: name for the superuser, set during initialization (initdb) and later used by Patroni to connect to the postgres. Also this user is used by pg_rewind.
- **PATRONI_SUPERUSER_PASSWORD**: password for the superuser, set during initialization (initdb).
- **PATRONI_SUPERUSER_SSLMODE**: (optional) maps to [sslmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE). Specifies the TLS negotiation mode. See the [PostgreSQL documentation](https://www.postgresql.org/docs/current/libpq-ssl.html#LIBPQ-SSL-SSLMODE-STATEMENTS) for each mode. Default: `prefer`.
- **PATRONI_SUPERUSER_SSLKEY**: (optional) maps to [sslkey](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLKEY). Path to the secret key for the client certificate.
- **PATRONI_SUPERUSER_SSLPASSWORD**: (optional) maps to [sslpassword](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLPASSWORD). Password for the secret key in `PATRONI_SUPERUSER_SSLKEY`.
- **PATRONI_SUPERUSER_SSLCERT**: (optional) maps to [sslcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCERT). Path to the client certificate.
- **PATRONI_SUPERUSER_SSLROOTCERT**: (optional) maps to [sslrootcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLROOTCERT). File containing one or more trusted CA certificates. The client uses them to verify the server certificate.
- **PATRONI_SUPERUSER_SSLCRL**: (optional) maps to [sslcrl](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRL). Certificate revocation list file. The client rejects servers whose certificates appear in the list.
- **PATRONI_SUPERUSER_SSLCRLDIR**: (optional) maps to [sslcrldir](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRLDIR). Directory containing certificate revocation list files. The client rejects servers whose certificates appear in these lists.
- **PATRONI_SUPERUSER_SSLNEGOTIATION**: (optional) maps to [sslnegotiation](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLNEGOTIATION). Controls server SSL negotiation when SSL is used.
- **PATRONI_SUPERUSER_GSSENCMODE**: (optional) maps to [gssencmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-GSSENCMODE). Controls whether to negotiate secure GSS TCP/IP and its priority.
- **PATRONI_SUPERUSER_CHANNEL_BINDING**: (optional) maps to [channel_binding](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-CHANNEL-BINDING). Controls client channel binding.
- **PATRONI_REWIND_USERNAME**: (optional) name for the user for `pg_rewind`; the user will be created during initialization of postgres 11+ and all necessary [permissions](https://www.postgresql.org/docs/11/app-pgrewind.html#id-1.9.5.8.8) will be granted.
- **PATRONI_REWIND_PASSWORD**: (optional) password for the user for `pg_rewind`; the user will be created during initialization.
- **PATRONI_REWIND_SSLMODE**: (optional) maps to [sslmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE). Specifies the TLS negotiation mode. See the [PostgreSQL documentation](https://www.postgresql.org/docs/current/libpq-ssl.html#LIBPQ-SSL-SSLMODE-STATEMENTS) for each mode. Default: `prefer`.
- **PATRONI_REWIND_SSLKEY**: (optional) maps to [sslkey](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLKEY). Path to the secret key for the client certificate.
- **PATRONI_REWIND_SSLPASSWORD**: (optional) maps to [sslpassword](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLPASSWORD). Password for the secret key in `PATRONI_REWIND_SSLKEY`.
- **PATRONI_REWIND_SSLCERT**: (optional) maps to [sslcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCERT). Path to the client certificate.
- **PATRONI_REWIND_SSLROOTCERT**: (optional) maps to [sslrootcert](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLROOTCERT). File containing one or more trusted CA certificates. The client uses them to verify the server certificate.
- **PATRONI_REWIND_SSLCRL**: (optional) maps to [sslcrl](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRL). Certificate revocation list file. The client rejects servers whose certificates appear in the list.
- **PATRONI_REWIND_SSLCRLDIR**: (optional) maps to [sslcrldir](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLCRLDIR). Directory containing certificate revocation list files. The client rejects servers whose certificates appear in these lists.
- **PATRONI_REWIND_SSLNEGOTIATION**: (optional) maps to [sslnegotiation](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLNEGOTIATION). Controls server SSL negotiation when SSL is used.
- **PATRONI_REWIND_GSSENCMODE**: (optional) maps to [gssencmode](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-GSSENCMODE). Controls whether to negotiate secure GSS TCP/IP and its priority.
- **PATRONI_REWIND_CHANNEL_BINDING**: (optional) maps to [channel_binding](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-CHANNEL-BINDING). Controls client channel binding.

--------

## REST API

- **PATRONI_RESTAPI_THREAD_POOL_SIZE**: size of thread pool used by Patroni to process REST API requests. Minimal value is `5`, default value is `5`.
- **PATRONI_RESTAPI_CONNECT_ADDRESS**: IP address and port to access the REST API.
- **PATRONI_RESTAPI_LISTEN**: IP address and port that Patroni will listen to, to provide health-check information for HAProxy.
- **PATRONI_RESTAPI_USERNAME**: Basic-auth username to protect unsafe REST API endpoints.
- **PATRONI_RESTAPI_PASSWORD**: Basic-auth password to protect unsafe REST API endpoints.
- **PATRONI_RESTAPI_CERTFILE**: Specifies the file with the certificate in the PEM format. If the certfile is not specified or is left empty, the API server will work without SSL.
- **PATRONI_RESTAPI_KEYFILE**: Specifies the file with the secret key in the PEM format.
- **PATRONI_RESTAPI_KEYFILE_PASSWORD**: Specifies a password for decrypting the keyfile.
- **PATRONI_RESTAPI_CAFILE**: Specifies the file with the CA_BUNDLE with certificates of trusted CAs to use while verifying client certs.
- **PATRONI_RESTAPI_CIPHERS**: (optional) Specifies the permitted cipher suites (e.g. "ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES128-GCM-SHA256:!SSLv1:!SSLv2:!SSLv3:!TLSv1:!TLSv1.1")
- **PATRONI_RESTAPI_VERIFY_CLIENT**: (optional) client certificate verification mode: `none` (default), `optional`, or `required`. `none` disables verification. `required` requires certificates for all calls; successful signature verification authenticates the client. `optional` requires and checks certificates only for unsafe `PUT`, `POST`, `PATCH`, and `DELETE` requests.
- **PATRONI_RESTAPI_ALLOWLIST**: (optional) hosts permitted to call unsafe endpoints. Each entry can be a host name, IP address, or CIDR network. Default: `allow all`. With `allowlist` or `allowlist_include_members` set, all unlisted sources are rejected.
- **PATRONI_RESTAPI_ALLOWLIST_INCLUDE_MEMBERS**: (optional) if `true`, permits unsafe endpoint access from cluster members registered in the DCS. It uses each member's `api_url` host name or IP address. The operating system may use a different address for outgoing connections.
- **PATRONI_RESTAPI_HTTP_EXTRA_HEADERS**: (optional) HTTP headers let the REST API server pass additional information with an HTTP response.
- **PATRONI_RESTAPI_HTTPS_EXTRA_HEADERS**: (optional) HTTPS headers let the REST API server pass additional information with an HTTP response when TLS is enabled. This will also pass additional information set in `http_extra_headers`.
- **PATRONI_RESTAPI_REQUEST_QUEUE_SIZE**: (optional): Sets request queue size for TCP socket used by Patroni REST API. Once the queue is full, further requests get a "Connection denied" error. The default value is 5.
- **PATRONI_RESTAPI_SERVER_TOKENS**: (optional) Configures the value of the `Server` HTTP header. `Original` (default) will expose the original behaviour and display the BaseHTTP and Python versions, e.g. `BaseHTTP/0.6 Python/3.12.3`. `Minimal`: The header will contain only the Patroni version, e.g. `Patroni/4.0.0`. `ProductOnly`: The header will contain only the product name, e.g. `Patroni`.

<div class="warning">

<div class="title">

Warning

</div>

- The `PATRONI_RESTAPI_CONNECT_ADDRESS` must be accessible from all nodes of a given Patroni cluster. Internally Patroni is using it during the leader race to find nodes with minimal replication lag.
- If you enabled client certificates validation (`PATRONI_RESTAPI_VERIFY_CLIENT` is set to `required`), you also **must** provide **valid client certificates** in the `PATRONI_CTL_CERTFILE`, `PATRONI_CTL_KEYFILE`, `PATRONI_CTL_KEYFILE_PASSWORD`. If not provided, Patroni will not work correctly.

</div>

--------

## CTL

- **PATRONICTL_CONFIG_FILE**: (optional) location of the configuration file.
- **PATRONI_CTL_USERNAME**: (optional) Basic-auth username for accessing protected REST API endpoints. If not provided [patronictl](/docs/patroni/patronictl#patronictl) will use the value provided for REST API "username" parameter.
- **PATRONI_CTL_PASSWORD**: (optional) Basic-auth password for accessing protected REST API endpoints. If not provided [patronictl](/docs/patroni/patronictl#patronictl) will use the value provided for REST API "password" parameter.
- **PATRONI_CTL_INSECURE**: (optional) Allow connections to REST API without verifying SSL certs.
- **PATRONI_CTL_CACERT**: (optional) CA_BUNDLE file or directory with trusted CAs for REST API SSL verification. If absent, [patronictl](/docs/patroni/patronictl#patronictl) uses the REST API "cafile" value.
- **PATRONI_CTL_CERTFILE**: (optional) Specifies the file with the client certificate in the PEM format.
- **PATRONI_CTL_KEYFILE**: (optional) Specifies the file with the client secret key in the PEM format.
- **PATRONI_CTL_KEYFILE_PASSWORD**: (optional) Specifies a password for decrypting the client keyfile.
