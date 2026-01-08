---
title: Entity-Relationship
weight: 1101
description: Introduction to the entity-relationship model, ER diagram, entity definitions,
  and naming conventions for PostgreSQL clusters in Pigsty.
icon: fa-solid fa-share-nodes
module: [PGSQL]
categories: [Concept]
---

> First understand "what objects exist and how they reference each other" before discussing deployment and operations. Pigsty's PGSQL module is built around a stable ER diagram of several core entities. Understanding this diagram helps you design clear configurations and automation workflows.

The PGSQL module organizes in the form of **clusters** in production environments. These **clusters** are **logical entities** composed of a group of database **instances** associated through **primary-replica** relationships.

Each cluster is an **autonomous** business unit consisting of at least one **primary instance** and exposes capabilities through services.

There are four types of core entities in Pigsty's PGSQL module:

- **Cluster**: An autonomous PostgreSQL business unit, serving as the top-level namespace for other entities.
- **Service**: A named abstraction for exposing capabilities, routing traffic, and exposing services via node ports.
- **Instance**: A single PostgreSQL server consisting of running processes and database files on a single node.
- **Node**: An abstraction of hardware resources running Linux + Systemd environment, which can be bare metal, VMs, containers, or Pods.

Together with two business entities "Database" and "Role", they form a complete logical view, as shown below:

![pigsty-er.jpg](/img/pigsty/er.jpg)

**Naming Conventions (following Pigsty's early constraints)**

- Cluster names should be valid DNS domain names without any dots, matching the regex: `[a-zA-Z0-9-]+`
- Service names should be prefixed with the cluster name and suffixed with specific words: `primary`, `replica`, `offline`, `delayed`, connected with `-`.
- Instance names are prefixed with the cluster name and suffixed with a positive integer instance number, connected with `-`, e.g., `${cluster}-${seq}`.
- Nodes are identified by their primary internal IP address. Since the PGSQL module deploys database and host 1:1, the hostname is typically the same as the instance name.
