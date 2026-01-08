---
title: app/odoo
weight: 870
description: Deploy Odoo open-source ERP system using Pigsty-managed PostgreSQL
icon: fa-solid fa-building
categories: [Reference]
---

The `app/odoo` configuration template provides a reference configuration for self-hosting Odoo open-source ERP system, using Pigsty-managed PostgreSQL as the database.

For more details, see **[Odoo Deployment Tutorial](/docs/app/odoo)**


--------

## Overview

- Config Name: `app/odoo`
- Node Count: Single node
- Description: Deploy Odoo ERP using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/odoo [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/odoo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/odoo.yml)

{{< readfile file="yaml/app/odoo.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/odoo` template provides a one-click deployment solution for Odoo open-source ERP system.

**What is Odoo**:
- World's most popular open-source ERP system
- Covers CRM, Sales, Purchasing, Inventory, Finance, HR, and other enterprise management modules
- Supports thousands of community and official application extensions
- Provides web interface and mobile support

**Key Features**:
- Uses Pigsty-managed PostgreSQL instead of Odoo's built-in database
- Supports Odoo 19.0 latest version
- Data persisted to independent directory `/data/odoo`
- Supports custom plugin directory `/data/odoo/addons`

**Access**:

```bash
# Odoo Web interface
http://odoo.pigsty:8069

# Default admin account
Username: admin
Password: admin (set on first login)
```

**Use Cases**:
- SMB ERP systems
- Alternative to SAP, Oracle ERP and other commercial solutions
- Enterprise applications requiring customized business processes

**Notes**:
- Odoo container runs as uid=100, gid=101, data directory needs correct permissions
- First access requires creating database and setting admin password
- Production environments should enable HTTPS
- Custom modules can be installed via `/data/odoo/addons`

