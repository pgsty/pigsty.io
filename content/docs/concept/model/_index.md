---
title: ER Model
weight: 170
description: How Pigsty abstracts different functionality into modules, and the E-R diagrams for these modules.
icon: fa-solid fa-coins
module: [PIGSTY]
categories: [Concept]
---

The largest entity concept in Pigsty is a **Deployment**. The main entities and relationships (E-R diagram) in a deployment are shown below:

![](/img/pigsty/er-full.svg)

A deployment can also be understood as an **Environment**. For example, Production (Prod), User Acceptance Testing (UAT), Staging, Testing, Development (Devbox), etc.
Each environment corresponds to a Pigsty [**inventory**](/docs/concept/iac/inventory) that describes all entities and attributes in that environment.

Typically, an environment includes shared infrastructure ([**`INFRA`**](/docs/infra)), which broadly includes [**`ETCD`**](/docs/etcd) (HA DCS) and [**`MINIO`**](/docs/minio) (centralized backup repository),
serving multiple PostgreSQL database clusters (and other database module components). (Exception: there are also [**deployments without infrastructure**](/docs/setup/slim))

In Pigsty, almost all database modules are organized as "**Clusters**". Each cluster is an Ansible group containing several node resources.
For example, PostgreSQL HA database clusters, Redis, Etcd/MinIO all exist as clusters. An environment can contain multiple clusters.

- [**PostgreSQL Cluster**](/docs/concept/model/pgsql)
- [**ETCD Cluster**](/docs/concept/model/etcd)
- [**MinIO Cluster**](/docs/concept/model/minio)
- [**Redis Cluster**](/docs/concept/model/redis)
- [**INFRA Nodes**](/docs/concept/model/infra)

