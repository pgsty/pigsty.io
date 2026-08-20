# Patroni 4.1.4 Documentation

> Overview of Patroni high-availability documentation for PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/index.html

> [!WARNING]
> Running Patroni on **memory-restricted systems with Python 3.11+**

If you run Patroni on a system with strict memory limits, for example with `vm.overcommit_memory=2` (recommended for PostgreSQL), and use Python 3.11 or newer, you may observe unexpected behavior:

- Patroni appears healthy
- PostgreSQL continues to run
- Patroni **REST API becomes unresponsive**
- The operating system reports that Patroni is listening on the REST API port
- Patroni logs look normal; however, following messages may appear once: `Exception ignored in thread started by: <object repr() failed>`, `MemoryError`
- Kernel logs may contain messages such as `not enough memory for the allocation`

This behavior is caused by a [bug in Python 3.11+](https://github.com/python/cpython/issues/140746). Under strict memory conditions, starting a new thread may hang indefinitely when there is not enough free memory.

## Recommended solution

Recent Patroni releases (4.1.1+, 4.0.8+) reduce the impact of this issue by starting all required threads early during startup, before the system is under memory pressure.

## Additional recommendations (Linux, glibc)

When running with `vm.overcommit_memory=2` (recommended for PostgreSQL), we also recommend starting Patroni with the following environment variables configured:

- `MALLOC_ARENA_MAX=1` - reduces the amount of virtual memory allocated by glibc for multi-threaded applications
- `PG_MALLOC_ARENA_MAX=` - resets the value of `MALLOC_ARENA_MAX` for PostgreSQL processes started by Patroni.

In addition, you may tune the following Patroni configuration parameters:

- `thread_stack_size` - stack size used for threads started by Patroni. Lowering this value reduces memory usage of the Patroni process. The default value set by Patroni is `512kB`. Increase `thread_stack_size` if Patroni experiences stack-related crashes; otherwise the default value is sufficient.
- `thread_pool_size` - size of the thread pool used by Patroni for asynchronous tasks and REST API communication with other members during leader race or failsafe checks. The default value is `5`, which is sufficient for three-node clusters.
- `restapi.thread_pool_size` - size of the thread pool used to process REST API requests. The default value is `5`, allowing up to five parallel REST API requests. Note that requests involving SQL queries are effectively serialized because a single database connection is used, so increasing this value typically provides no benefit.

--------

Patroni is a template for high availability (HA) PostgreSQL solutions using Python. For maximum accessibility, Patroni supports a variety of distributed configuration stores like [ZooKeeper](https://zookeeper.apache.org/), [etcd](https://github.com/coreos/etcd), [Consul](https://github.com/hashicorp/consul) or [Kubernetes](https://kubernetes.io). Database engineers, DBAs, DevOps engineers, and SREs who are looking to quickly deploy HA PostgreSQL in datacenters — or anywhere else — will hopefully find it useful.

We call Patroni a "template" because it is far from being a one-size-fits-all or plug-and-play replication system. It will have its own caveats. Use wisely. There are many ways to run high availability with PostgreSQL; for a list, see the [PostgreSQL Documentation](https://wiki.postgresql.org/wiki/Replication,_Clustering,_and_Connection_Pooling).

Currently supported PostgreSQL versions: 9.3 to 18.

**Note to Citus users**: Starting from 3.0 Patroni nicely integrates with the [Citus](https://github.com/citusdata/citus) database extension to Postgres. Please check the [Citus support page](/docs/patroni/citus#citus) in the Patroni documentation for more info about how to use Patroni high availability together with a Citus distributed cluster.

**Note to Kubernetes users**: Patroni can run natively on top of Kubernetes. Take a look at the [Kubernetes](/docs/patroni/kubernetes#kubernetes) chapter of the Patroni documentation.

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
