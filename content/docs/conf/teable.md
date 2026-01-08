---
title: app/teable
weight: 890
description: Deploy Teable open-source Airtable alternative using Pigsty-managed PostgreSQL
icon: fa-solid fa-table-cells
categories: [Reference]
---

The `app/teable` configuration template provides a reference configuration for deploying Teable open-source no-code database, using Pigsty-managed PostgreSQL as the database.


--------

## Overview

- Config Name: `app/teable`
- Node Count: Single node
- Description: Deploy Teable using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/teable [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/teable.yml`](https://github.com/Vonng/pigsty/blob/main/conf/app/teable.yml)

{{< readfile file="yaml/app/teable.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/teable` template provides a one-click deployment solution for Teable open-source no-code database.

**What is Teable**:
- Open-source Airtable alternative
- No-code database built on PostgreSQL
- Supports table, kanban, calendar, form, and other views
- Provides API and automation workflows

**Key Features**:
- Uses Pigsty-managed PostgreSQL as underlying storage
- Data is stored in real PostgreSQL tables
- Supports direct SQL queries
- Can integrate with other PostgreSQL tools and extensions

**Access**:

```bash
# Teable Web interface
http://tea.pigsty:8890

# Or via Nginx proxy
https://tea.pigsty

# Direct SQL access to underlying data
psql postgresql://dbuser_teable:DBUser.Teable@10.10.10.10:5432/teable
```

**Use Cases**:
- Need Airtable-like functionality but want to self-host
- Team collaboration data management
- Need both API and SQL access
- Want data stored in real PostgreSQL

**Notes**:
- Teable user needs superuser privileges
- Must configure `PUBLIC_ORIGIN` to external access address
- Supports email notifications (optional SMTP configuration)

