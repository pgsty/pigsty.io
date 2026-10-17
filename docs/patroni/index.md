# Patroni 4.1.5 Documentation

> Overview of Patroni high-availability documentation for PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/index.html

> [!WARNING]
> Running Patroni on **memory-restricted systems with Python 3.11+**

Unexpected behavior can occur with Python 3.11 or newer on systems with strict memory limits. For example, this includes `vm.overcommit_memory=2`, which is recommended for PostgreSQL. You may observe these symptoms:

- Patroni appears healthy
- PostgreSQL continues to run
- Patroni **REST API becomes unresponsive**
- The operating system reports that Patroni is listening on the REST API port
- Patroni logs look normal; however, following messages may appear once: `Exception ignored in thread started by: <object repr() failed>`, `MemoryError`
- Kernel logs may contain messages such as `not enough memory for the allocation`

A [bug in Python 3.11+](https://github.com/python/cpython/issues/140746) causes this behavior. Under strict memory conditions, a new thread may hang indefinitely if free memory is insufficient.

## Recommended solution

Recent Patroni releases (4.1.1+, 4.0.8+) start all required threads early, before the system has memory pressure. This reduces the impact of the issue.

## Additional recommendations (Linux, glibc)

When you use `vm.overcommit_memory=2` (recommended for PostgreSQL), we also recommend these environment variables before you start Patroni:

- `MALLOC_ARENA_MAX=1` - reduces the amount of virtual memory allocated by glibc for multi-threaded applications
- `PG_MALLOC_ARENA_MAX=` - resets the value of `MALLOC_ARENA_MAX` for PostgreSQL processes started by Patroni.

In addition, you may tune the following Patroni configuration parameters:

- `thread_stack_size` - Stack size for threads that Patroni starts. A lower value reduces Patroni memory usage. The default is `512kB`. Increase `thread_stack_size` if Patroni has stack-related crashes. Otherwise, the default is sufficient.
- `thread_pool_size` - Thread pool size for asynchronous tasks and REST API communication with other members during leader races or failsafe checks. The default is `5`, which is sufficient for three-node clusters.
- `restapi.thread_pool_size` - Thread pool size for REST API requests. The default is `5`, which allows up to five parallel requests. Requests with SQL queries effectively run in sequence because they use one database connection. A higher value typically gives no benefit.

--------

Patroni is a Python template for high availability (HA) PostgreSQL solutions. It supports distributed configuration stores such as [ZooKeeper](https://zookeeper.apache.org/), [etcd](https://github.com/coreos/etcd), [Consul](https://github.com/hashicorp/consul), and [Kubernetes](https://kubernetes.io). Database engineers, DBAs, DevOps engineers, and SREs can use it to deploy HA PostgreSQL quickly in datacenters or other environments.

Patroni is a template. Its replication system needs configuration for your requirements and has limitations that you must consider. PostgreSQL supports many high-availability approaches. See the [PostgreSQL Documentation](https://wiki.postgresql.org/wiki/Replication,_Clustering,_and_Connection_Pooling) for a list.

Currently supported PostgreSQL versions: 9.3 to 18.

**Note to Citus users**: Patroni 3.0 and later integrate with the [Citus](https://github.com/citusdata/citus) database extension to Postgres. See the [Citus support page](/docs/patroni/citus#citus) for Patroni high availability with a Citus distributed cluster.

**Note to Kubernetes users**: Patroni can run natively on Kubernetes. See the [Kubernetes](/docs/patroni/kubernetes#kubernetes) chapter.

<img src="/img/docs/patroni/patroni-logo.png" width="128" height="128" alt="image" />

---

Section pages:

- [Introduction](/docs/patroni/readme/): Patroni introduction, quick start, and core high-availability concepts.
- [Installation](/docs/patroni/installation/): Installation and upgrade instructions for Patroni across supported platforms.
- [Patroni configuration](/docs/patroni/config/): Patroni configuration model, precedence rules, and validation tooling.
- [Patroni REST API](/docs/patroni/rest_api/): Reference for Patroni REST API endpoints and operational behaviors.
- [patronictl](/docs/patroni/patronictl/): Command reference for patronictl configuration, syntax, and subcommands.
- [Replica imaging and bootstrap](/docs/patroni/replica_bootstrap/): Replica imaging, bootstrap, and custom replica creation workflows.
- [Replication modes](/docs/patroni/replication_modes/): Asynchronous and synchronous replication modes managed by Patroni.
- [Standby cluster](/docs/patroni/standby_cluster/): Standby cluster setup, behavior, and replication from remote primary.
- [Watchdog support](/docs/patroni/watchdog/): Watchdog integration and fencing considerations for Patroni clusters.
- [Pause/Resume mode for the cluster](/docs/patroni/pause/): Pause and resume mode behavior for Patroni cluster management.
- [DCS Failsafe Mode](/docs/patroni/dcs_failsafe_mode/): DCS failsafe mode behavior, requirements, and operational caveats.
- [Using Patroni with Kubernetes](/docs/patroni/kubernetes/): Using Patroni with Kubernetes objects, labels, and service discovery.
- [Citus support](/docs/patroni/citus/): Patroni integration details for Citus coordinator and worker groups.
- [Convert a Standalone to a Patroni Cluster](/docs/patroni/existing_data/): Procedure to convert existing PostgreSQL data into a Patroni cluster.
- [Integration with other tools](/docs/patroni/tools_integration/): Integrating Patroni with external backup and orchestration tools.
- [Security Considerations](/docs/patroni/security/): Security considerations for DCS, REST API, and credential handling.
- [HA multi datacenter](/docs/patroni/ha_multi_dc/): Multi-datacenter high-availability patterns with Patroni replication.
- [FAQ](/docs/patroni/faq/): Frequently asked questions about Patroni operation and troubleshooting.
- [Release notes](/docs/patroni/releases/): Chronological Patroni release notes and change history.
- [Contributing guidelines](/docs/patroni/contributing_guidelines/): Contribution workflow, support channels, and development guidelines.
