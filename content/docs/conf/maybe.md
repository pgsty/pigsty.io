---
title: app/maybe
weight: 885
description: Deploy Maybe personal finance management system using Pigsty-managed PostgreSQL
icon: fa-solid fa-wallet
categories: [Reference]
---

The `app/maybe` configuration template provides a reference configuration for deploying Maybe open-source personal finance management system, using Pigsty-managed PostgreSQL as the database.


--------

## Overview

- Config Name: `app/maybe`
- Node Count: Single node
- Description: Deploy Maybe finance management using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/maybe [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/maybe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/maybe.yml)

{{< readfile file="yaml/app/maybe.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/maybe` template provides a one-click deployment solution for Maybe open-source personal finance management system.

**What is Maybe**:
- Open-source personal and family finance management system
- Supports multi-account, multi-currency asset tracking
- Provides investment portfolio analysis and net worth calculation
- Beautiful modern web interface

**Key Features**:
- Uses Pigsty-managed PostgreSQL instead of Maybe's built-in database
- Data persisted to independent directory `/data/maybe`
- Supports HTTPS and custom domain names
- Multi-user permission management

**Access**:

```bash
# Maybe Web interface
http://maybe.pigsty:5002

# Or via Nginx proxy
https://maybe.pigsty
```

**Use Cases**:
- Personal or family finance management
- Investment portfolio tracking and analysis
- Multi-account asset aggregation
- Alternative to commercial services like Mint, YNAB

**Notes**:
- Must change `SECRET_KEY_BASE`, generate with `openssl rand -hex 64`
- First access requires registering an admin account
- Optionally configure Synth API for stock price data

