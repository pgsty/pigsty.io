---
title: Cloudberry
weight: 2313
description: Deploy/Monitor Cloudberry clusters with Pigsty, an MPP data warehouse
  cluster forked from Greenplum!
icon: fas fa-leaf
module: [PGSQL]
tags: [Cloudberry]
categories: [Concept]
---

--------

## Installation

Pigsty provides installation packages for Greenplum 6 (@el7) and Greenplum 7 (@el8). Open source users can install and configure them manually.

```bash
# EL 7 Only (Greenplum6)
./node.yml -t node_install  -e '{"node_repo_modules":"pgsql","node_packages":["cloudberrydb"]}'

# EL 8 Only (Greenplum7)
./node.yml -t node_install  -e '{"node_repo_modules":"pgsql","node_packages":["cloudberrydb"]}'
```
