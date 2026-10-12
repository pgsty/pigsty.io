---
title: "Introduction"
weight: 10
icon: fa-solid fa-circle-info
description: "Patroni introduction, quick start, and core high-availability concepts."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/README.html

<a id="readme"></a>
Patroni is a Python template for high availability (HA) PostgreSQL solutions. It started as a fork of [Governor](https://github.com/compose/governor), a Compose project, and adds many features.

For additional background info, see:

- [PostgreSQL HA with Kubernetes and Patroni](https://www.youtube.com/watch?v=iruaCgeG7qs), talk by Josh Berkus at KubeCon 2016 (video)
- [Feb. 2016 Zalando Tech blog post](https://engineering.zalando.com/posts/2016/02/zalandos-patroni-a-template-for-high-availability-postgresql.html)

--------

## Development Status

Patroni is in active development and accepts contributions. See [Contributing](/docs/patroni/contributing_guidelines#contributing_guidelines) for details.

See [release information](/docs/patroni/releases#releases) for new releases.

--------

## Technical Requirements/Installation

See the [installation guide](/docs/patroni/installation#installation) to install and upgrade Patroni on different platforms.

<a id="running_configuring"></a>

--------

## Planning the Number of PostgreSQL Nodes

Patroni/PostgreSQL nodes are independent of DCS nodes, except when Patroni implements RAFT itself. Thus, there is no minimum node count for Patroni/PostgreSQL. A cluster can have one primary and one standby. You can add more standby nodes later.

**2-node clusters** (primary + standby) are common and provide automatic failover with high availability. During failover, the cluster temporarily has no redundancy until the failed node rejoins.

**DCS requirements**: Your DCS (etcd, ZooKeeper, Consul) must have **3 or 5 nodes** for consensus and fault tolerance. One DCS cluster can store data for hundreds or thousands of Patroni clusters. Use different namespace/scope combinations for these clusters.

--------

## Running and Configuring

This section assumes you cloned the Patroni repository from <https://github.com/patroni/patroni>. You need the example configuration files `postgres0.yml` and `postgres1.yml`. If you installed Patroni with pip, get these files from the git repository. Then replace `./patroni.py` below with the `patroni` command.

To start, run these commands in separate terminals:

    > etcd --data-dir=data/etcd --enable-v2=true
    > ./patroni.py postgres0.yml
    > ./patroni.py postgres1.yml

These commands start a high-availability cluster. Test different YAML settings to see how they change cluster behavior. Stop some components to test how the system responds.

Add more `postgres*.yml` files to create an even larger cluster.

Patroni provides an [HAProxy](https://www.haproxy.org/) configuration. It gives your application one endpoint to connect to the cluster leader. To configure it, run:

    > haproxy -f haproxy.cfg

    > psql --host 127.0.0.1 --port 5000 postgres

--------

## YAML Configuration

See [YAML settings](/docs/patroni/config/yaml#yaml) for details about etcd, consul, and ZooKeeper settings. See [postgres0.yml](https://github.com/patroni/patroni/blob/master/postgres0.yml) for an example.

--------

## Environment Configuration

See [environment settings](/docs/patroni/config/env#env) to configure or override settings with environment variables.

--------

## Replication Choices

Patroni uses Postgres streaming replication, which is asynchronous by default. Set `maximum_lag_on_failover` to prevent failover when a replica is more than the specified number of bytes behind the leader. Adjust this setting for your business requirements. You can also use synchronous replication for stronger durability guarantees. See [replication modes documentation](/docs/patroni/replication_modes#replication_modes) for details.

--------

## Applications Should Not Use Superusers

Always use a non-superuser for application connections. Patroni needs database access to operate correctly. An application that uses a superuser can consume all connections, including those reserved by `superuser_reserved_connections`. If no connections remain, Patroni cannot access the primary and can behave incorrectly.

--------

## Testing Your HA Solution

HA testing takes time and involves many variables, especially for a cross-platform application. A trained system administrator or consultant must do this work. These documents do not cover the process in detail.

Test these parts of your infrastructure:

- Network (the network in front of your system as well as the NICs \[physical or virtual\] themselves)
- Disk IO
- file limits (nofile in Linux)
- RAM. Even if you have oomkiller turned off, the unavailability of RAM could cause issues.
- CPU
- Virtualization Contention (overcommitting the hypervisor)
- Any cgroup limitation (likely to be related to the above)
- `kill -9` of any postgres process (except postmaster!). This is a decent simulation of a segfault.

Do not run `kill -9` on a postmaster process. This does not simulate a real-world failure. If an attacker can run `kill -9`, an HA process cannot resolve the security problem. The attacker can kill the process again or cause other damage.
