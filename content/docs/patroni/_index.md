---
title: "Patroni Documentation"
linkTitle: patroni
weight: 8050
icon: fas fa-yin-yang
description: "Overview of Patroni high-availability documentation for PostgreSQL."
sidebar_root_for: self
tags: [PATRONI]
---

> Source: [patroni.readthedocs.io](https://patroni.readthedocs.io/en/latest/index.html)

<img src="/img/docs/patroni/patroni-logo.png" width="128" height="128" alt="image" />

# Introduction

Patroni is a template for high availability (HA) PostgreSQL solutions using Python. For maximum accessibility, Patroni supports a variety of distributed configuration stores like [ZooKeeper](https://zookeeper.apache.org/), [etcd](https://github.com/coreos/etcd), [Consul](https://github.com/hashicorp/consul) or [Kubernetes](https://kubernetes.io). Database engineers, DBAs, DevOps engineers, and SREs who are looking to quickly deploy HA PostgreSQL in datacenters — or anywhere else — will hopefully find it useful.

We call Patroni a "template" because it is far from being a one-size-fits-all or plug-and-play replication system. It will have its own caveats. Use wisely. There are many ways to run high availability with PostgreSQL; for a list, see the [PostgreSQL Documentation](https://wiki.postgresql.org/wiki/Replication,_Clustering,_and_Connection_Pooling).

Currently supported PostgreSQL versions: 9.3 to 18.

**Note to Citus users**: Starting from 3.0 Patroni nicely integrates with the [Citus](https://github.com/citusdata/citus) database extension to Postgres. Please check the [Citus support page](/docs/patroni/citus#citus) in the Patroni documentation for more info about how to use Patroni high availability together with a Citus distributed cluster.

**Note to Kubernetes users**: Patroni can run natively on top of Kubernetes. Take a look at the [Kubernetes](/docs/patroni/kubernetes#kubernetes) chapter of the Patroni documentation.

# Indices and tables
