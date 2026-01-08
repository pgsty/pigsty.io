---
title: demo/demo
weight: 915
description: Pigsty public demo site configuration, showcasing SSL certificates, domain exposure, and full extension installation
icon: fa-solid fa-globe
categories: [Reference]
---

The `demo/demo` configuration template is used by Pigsty's public demo site, demonstrating how to expose services publicly, configure SSL certificates, and install all available extensions.

If you want to set up your own public service on a cloud server, you can use this template as a reference.


--------

## Overview

- Config Name: `demo/demo`
- Node Count: Single node
- Description: Pigsty public demo site configuration
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/)

Usage:

```bash
./configure -c demo/demo [-i <primary_ip>]
```


--------

## Key Features

This template enhances the `meta` template with:

- SSL certificate and custom domain configuration (e.g., `pigsty.cc`)
- Downloads and installs all available PostgreSQL 18 extensions
- Enables Docker with image acceleration
- Deploys MinIO object storage
- Pre-configures multiple business databases and users
- Adds Redis primary-replica instance examples
- Adds FerretDB MongoDB-compatible cluster
- Adds Kafka sample cluster


--------

## Content

Source: [`pigsty/conf/demo/demo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/demo.yml)

{{< readfile file="yaml/demo/demo.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `demo/demo` template is Pigsty's **public demo configuration**, showcasing a complete production-grade deployment example.

**Key Features**:
- HTTPS certificate and custom domain configuration
- All available PostgreSQL extensions installed
- Integration with Redis, FerretDB, Kafka, and other components
- Docker image acceleration configured

**Use Cases**:
- Setting up public demo sites
- Scenarios requiring complete feature demonstration
- Learning Pigsty advanced configuration

**Notes**:
- SSL certificate files must be prepared
- DNS resolution must be configured
- Some extensions are not available on ARM64 architecture

