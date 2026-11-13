---
title: demo/demo
weight: 1030
description: Pigsty public demo configuration with SSL certificates, public domains, and all PG18 extension package groups
icon: fa-solid fa-globe
categories: [Reference]
---

The `demo/demo` template is the configuration for Pigsty's public demo. It shows how to expose websites, configure SSL certificates, install all PostgreSQL 18 extension package groups, and combine examples from multiple modules.

Use this template as a reference for a public service on a cloud server.


--------

## Overview

- Config Name: `demo/demo`
- Node Count: Single node
- Description: Pigsty public demo site configuration
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/)

Usage:

```bash
./configure -c demo/demo [-i <primary_ip>]
```


--------

## Key Features

This template enhances the `meta` template with:

- SSL certificate and custom domain configuration (e.g., `pigsty.io`)
- Cache and install all PostgreSQL 18 extensions through the 16 global category package groups, including `pg18-olap`
- Enables Docker with image acceleration
- Deploys Silo object storage
- Define application databases and users (`meta` enables `vector`, `postgis`, and `timescaledb` by default)
- Include Redis primary/replica examples and a single-node Kafka 4.x cluster
- Retain VictoriaMetrics data for `15d` with a `10GiB` disk limit

--------

## Content

Source: [`pigsty/conf/demo/demo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/demo.yml)

{{< include file="yaml/demo/demo.yml" code=true lang="yaml" >}}


--------

## Explanation

`demo/demo` is Pigsty's **public demo configuration**, which illustrates the component settings. It disables pgBackRest by default (`pgbackrest_enabled: false`); add a backup policy before using it in production.

**Key Features**:
- HTTPS certificate and custom domain configuration
- Enable all PostgreSQL 18 extension package groups, including `pg18-olap`, in the global `pg_extensions`
- Demonstrate Silo, Redis, Kafka, and remote monitoring through `pg_exporters`
- Configure Docker image mirrors and a `10GiB` VictoriaMetrics storage quota

**Use Cases**:
- Setting up public demo sites
- Scenarios requiring complete feature demonstration
- Learning Pigsty advanced configuration

**Notes**:
- Prepare the SSL certificate files.
- Configure DNS resolution.
- Some extensions are not available on ARM64 architecture
