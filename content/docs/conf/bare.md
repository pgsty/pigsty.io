---
title: demo/bare
weight: 1005
description: Minimal readable configuration declaring only INFRA, ETCD, and single-node PostgreSQL
icon: fa-solid fa-seedling
categories: [Reference]
---

`demo/bare` is the smallest Pigsty configuration example.
It defines three core groups and three global parameters to show the basic inventory structure.


--------

## Overview

- Config Name: `demo/bare`
- Node Count: Single node
- Modules: INFRA, ETCD, PGSQL
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/)

```bash
./configure -c demo/bare [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/bare.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/bare.yml)

{{< include file="yaml/demo/bare.yml" code=true lang="yaml" >}}


--------

## Explanation

This template uses Pigsty defaults.
It defines no business users, databases, extensions, backup policy, or security hardening.
Use it to learn the configuration hierarchy or as a starting point for your own configuration.
Before use in a real environment, add passwords, HBA rules, backups, and the required safeguards.
