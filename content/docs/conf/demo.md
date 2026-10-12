---
title: demo/demo
weight: 1030
description: Pigsty public demo site configuration, showcasing SSL certificates, domain exposure, and full extension installation
icon: fa-solid fa-globe
categories: [Reference]
---

Pigsty's public demonstration site uses the `demo/demo` template.
It shows public service access, SSL certificate configuration, and installation of all available extensions.

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

- SSL certificate and custom domain configuration (e.g., `pigsty.cc`)
- Downloads and installs all available PostgreSQL 18 extensions
- Enables Docker with image acceleration
- Deploys Silo object storage
- Pre-configures multiple business databases and users
- Adds Redis primary-replica instance examples
- Adds Kafka sample cluster


--------

## Content

Source: [`pigsty/conf/demo/demo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/demo.yml)

{{< include file="yaml/demo/demo.yml" code=true lang="yaml" >}}


--------

## Explanation

The `demo/demo` template is Pigsty's **public demonstration configuration**.
It shows how to configure the components of a complete deployment.

**Key Features**:
- HTTPS certificate and custom domain configuration
- All available PostgreSQL extensions installed
- Integration with Redis, Kafka, and other components
- Docker image acceleration configured

**Use Cases**:
- Setting up public demo sites
- Scenarios requiring complete feature demonstration
- Learning Pigsty advanced configuration

**Notes**:
- Prepare the SSL certificate files.
- Configure DNS resolution.
- Some extensions are not available on ARM64 architecture
