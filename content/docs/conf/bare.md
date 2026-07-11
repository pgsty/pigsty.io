---
title: demo/bare
weight: 1005
description: Minimal readable configuration declaring only INFRA, ETCD, and single-node PostgreSQL
icon: fa-solid fa-seedling
categories: [Reference]
---

`demo/bare` is Pigsty's smallest configuration example. It keeps only three core groups and three global parameters to show a working inventory skeleton.


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

{{< readfile file="yaml/demo/bare.yml" code="true" lang="yaml" >}}


--------

## Explanation

This template relies on Pigsty defaults and defines no business users, databases, extensions, backup policy, or security hardening. Use it to learn configuration hierarchy or as a minimal customization base; explicitly add passwords, HBA rules, backup, and safeguards for a real environment.
