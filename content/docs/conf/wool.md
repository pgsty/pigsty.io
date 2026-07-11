---
title: demo/wool
weight: 1090
description: Single-node tiny-tuning example for small cloud instances in China
icon: fa-solid fa-cloud
categories: [Reference]
---

`demo/wool` targets small cloud instances in China and defaults to `region: china`, PostgreSQL 18, and the `tiny` tuning profiles.


--------

## Overview

- Config Name: `demo/wool`
- Node Count: Single node
- Suggested Size: Approximately 2 vCPU / 2 GB for testing
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/)

```bash
./configure -c demo/wool [-i <private_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/wool.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/wool.yml)

{{< readfile file="yaml/demo/wool.yml" code="true" lang="yaml" >}}


--------

## Explanation

- Explicitly sets `pg_conf: tiny.yml` and `node_tune: tiny` on `pg-meta`
- Expects `10.10.10.10` to be replaced by the cloud instance's private IP
- Disables pgBackRest by default to reduce disk usage on a small test host
- Includes several example portal domains

This template trades backup capability for lower resource use and is suitable only for temporary testing. Production deployments must enable and verify backups, tighten network rules, replace default passwords, and remove unused portal entries.
