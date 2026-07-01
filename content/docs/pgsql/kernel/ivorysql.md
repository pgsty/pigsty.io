---
title: IvorySQL
weight: 2305
description: Use HighGo's open-source IvorySQL kernel to achieve Oracle syntax/PLSQL
  compatibility based on PostgreSQL clusters.
icon: fas fa-server
module: [PGSQL]
categories: [Concept]
---

[IvorySQL](https://www.ivorysql.org/) is an open-source PostgreSQL kernel fork that aims to provide "Oracle compatibility" based on PG.


--------

## Overview

The IvorySQL kernel is supported in the Pigsty open-source version. Your server needs internet access to download relevant packages directly from IvorySQL's official repository.

Please note that adding IvorySQL directly to Pigsty's default software repository will affect the installation of the native PostgreSQL kernel. Pigsty Professional Edition provides offline installation solutions including the IvorySQL kernel.


![](/img/pigsty/ivory.jpg)

Pigsty's `ivorysql` package alias points to IvorySQL 5, compatible with PostgreSQL 18. Real package names are mapped by platform variables under `roles/node_id/vars/`; for example, EL uses `ivorysql5`, while Debian/Ubuntu uses `ivorysql-5`.

> The last IvorySQL version supporting EL7 was 3.3, corresponding to PostgreSQL 16.3; the last version based on PostgreSQL 17 is IvorySQL 4.4



--------

## Installation

If your environment has internet access, you can add the IvorySQL repository directly to the node using the following method, then execute the PGSQL playbook for installation:

```bash
./node.yml -t node_repo -e '{"node_repo_modules":"local,node,pgsql,ivory"}'
```


--------

## Configuration

The following parameters need to be configured for IvorySQL database clusters:

```yaml
#----------------------------------#
# Ivory SQL Configuration
#----------------------------------#
node_repo_modules: node,infra,pgsql       # use Pigsty node/infra/pgsql repos
pg_mode: ivory                    # IvorySQL Oracle Compatible Mode
pg_packages: [ ivorysql, pgsql-common ]
pg_libs: 'liboracle_parser, pg_stat_statements, auto_explain'
pg_extensions: [ ]                # do not install any vanilla postgresql extensions
```

> When using Oracle compatibility mode, you need to dynamically load the `liboracle_parser` extension plugin.


--------

## Client Access

IvorySQL 5 is equivalent to PostgreSQL 18, and any client tool compatible with the PostgreSQL wire protocol can access IvorySQL clusters.

--------

## Extension List

Most of the **PGSQL** module's [**extensions**](/docs/pgsql/ext/) (non-pure SQL types) cannot be used directly on the IvorySQL kernel. If you need to use them, please recompile and install from source for the new kernel.

Currently, the IvorySQL kernel comes with the following **101** extension plugins.

(The extension table remains unchanged as it's already in English)

Please note that Pigsty does not assume any warranty responsibility for using the IvorySQL kernel. Any issues or requirements encountered when using this kernel should be addressed with the original vendor.
