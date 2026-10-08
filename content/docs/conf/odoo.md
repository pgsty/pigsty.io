---
title: app/odoo
weight: 810
description: Deploy Odoo open-source ERP system using Pigsty-managed PostgreSQL
icon: fa-solid fa-building
categories: [Reference]
---

The `app/odoo` template provides a reference configuration to self-host Odoo Community 19. It uses PostgreSQL managed by Pigsty.

For more details, see **[Odoo Deployment Tutorial](/docs/app/odoo)**


--------

## Overview

- Config Name: `app/odoo`
- Node Count: Single node
- Description: Deploy Odoo ERP using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/odoo [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/odoo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/odoo.yml)

{{< include file="yaml/app/odoo.yml" code=true lang="yaml" >}}


--------

## Explanation

This single-node template runs Odoo Community 19 in Docker and uses Pigsty-managed PostgreSQL.

**Key Features**:

- Uses the Odoo `19.0` image and PostgreSQL 18, with a dedicated role, database, and `unaccent` / `pg_trgm` extensions
- Publishes port 8069 on all host interfaces, supporting direct access and the Nginx portal
- Stores filestore data in `/data/odoo/webdata` and addons in `/data/odoo/addons`

**Access**:

```bash
http://<ip>:8069
http://odoo.pigsty
```

Point `odoo.pigsty` to the Nginx host. The initial application login is `admin` / `admin`; change the password at first login.

**Notes**:

- Change the database password and `ODOO_ADMIN_PASSWORD` before deployment; the master password is separate from the application login
- `./app.yml` initializes the existing empty database before starting the web container; the database manager is disabled
- Set `ODOO_PORT` to the published port number; update the Nginx `endpoint` port if you change it
- Use `ODOO_PROXY_MODE=true` for proxy access and `false` for direct access only; use HTTPS in production
- Set data directory ownership to uid=100, gid=101
- Manage filestore and addon backups yourself with Restic or PGFS
