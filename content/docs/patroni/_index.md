---
title: "Patroni 4.1.5 Documentation"
linkTitle: patroni
weight: 8050
icon: fas fa-yin-yang
description: "Overview of Patroni high-availability documentation for PostgreSQL."
sidebar_root_for: self
module: [PATRONI]
categories: [Concept]
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
