---
title: IvorySQL
weight: 2305
description: Use HighGo's open-source IvorySQL kernel to achieve Oracle syntax/PLSQL
  compatibility based on PostgreSQL clusters.
icon: fas fa-server
module: [PGSQL]
categories: [Concept]
---

[IvorySQL](https://www.ivorysql.org/) is an open-source PostgreSQL kernel fork that aims to provide Oracle compatibility.


--------

## Overview

The Pigsty PGSQL repository provides IvorySQL 5.4 packages compatible with PostgreSQL 18.4.
Packages cover the currently supported EL, Debian, and Ubuntu platforms on both architectures.
Online installation uses Pigsty's `pgsql` repository.
The Professional Edition also provides offline delivery for these platforms.


![IvorySQL](/img/pigsty/ivory.jpg)

Pigsty's `ivorysql` package alias points to IvorySQL 5, which is compatible with PostgreSQL 18.
Platform variables under `roles/node_id/vars/` map the alias to package names.
For example, EL uses `ivorysql5`, and Debian/Ubuntu uses `ivorysql-5`.

> IvorySQL 3.3 was the last version to support EL7. It corresponds to PostgreSQL 16.3.
> IvorySQL 4.4 is the last version based on PostgreSQL 17.



--------

## Installation

Install with Pigsty's built-in `ivory` configuration template:

The commands below use the [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/ivory.yml). Development sources moved it to `conf/fork/ivory.yml`; use `-c fork/ivory` with those sources.

```bash
./configure -c ivory
./deploy.yml
```


--------

## Configuration

Set these parameters for an IvorySQL database cluster:

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

> For Oracle compatibility mode, dynamically load the `liboracle_parser` extension plugin.


--------

## Client Access

IvorySQL 5 is equivalent to PostgreSQL 18.
Any client tool that supports the PostgreSQL wire protocol can connect to IvorySQL clusters.

--------

## Available Extensions

The table lists selected non-Contrib extensions for reference. [Query the target instance](/docs/pgsql/kernel/#versions) to confirm actual availability and versions.

| Extension | Version | Description |
|:----------|:--------|:------------|
| [address_standardizer](/ext/e/address_standardizer) | `3.5.4` | Parses an address into its elements. Usually supports address normalization for geocoding. |
| [address_standardizer_data_us](/ext/e/address_standardizer_data_us) | `3.5.4` | Address Standardizer US dataset example |
| [age](/ext/e/age) | `1.7.0` | AGE database extension |
| [ddlx](/ext/e/ddlx) | `0.31` | DDL eXtractor functions |
| [gb18030_2022](/ext/e/gb18030_2022) | `1.0` | support gb18030 2022 with extension |
| [http](/ext/e/http) | `1.7` | HTTP client for PostgreSQL, allows web page retrieval inside the database. |
| [ivorysql_ora](/ext/e/ivorysql_ora) | `1.0` | Oracle Compatible extenison on Postgres Database |
| [ora_btree_gin](/ext/e/ora_btree_gin) | `1.0` | support for indexing oracle datatypes in GIN |
| [ora_btree_gist](/ext/e/ora_btree_gist) | `1.0` | support for oracle indexing common datatypes in GiST |
| [pg_bigm](/ext/e/pg_bigm) | `1.2` | text similarity measurement and index searching based on bigrams |
| [pg_cron](/ext/e/pg_cron) | `1.6` | Job scheduler for PostgreSQL |
| [pg_curl](/ext/e/pg_curl) | `2.4` | PostgreSQL cURL allows most curl actions, including data transfer with URL syntax via HTTP, HTTPS, FTP, FTPS, GOPHER, TFTP, SCP, SFTP, SMB, TELNET, DICT, LDAP, LDAPS, FILE, IMAP, SMTP, POP3, RTSP and RTMP |
| [pg_get_functiondef](/ext/e/pg_get_functiondef) | `1.0` | Get function's definition |
| [pg_hint_plan](/ext/e/pg_hint_plan) | `1.8.0` | optimizer hints for PostgreSQL |
| pg_jieba | `1.1.1` | a parser for full-text search of Chinese |
| [pg_partman](/ext/e/pg_partman) | `5.3.1` | Extension to manage partitioned tables by time or ID |
| [pg_show_plans](/ext/e/pg_show_plans) | `2.1` | show query plans of all currently running SQL statements |
| [pg_stat_monitor](/ext/e/pg_stat_monitor) | `2.3` | Monitors PostgreSQL query performance. Based on the PostgreSQL contrib module pg_stat_statements. Provides aggregated statistics, client information, execution plans and plan details, and histogram information. |
| [pg_textsearch](/ext/e/pg_textsearch) | `0.1.0` | Full-text search with BM25 ranking |
| [pgagent](/ext/e/pgagent) | `4.2` | A PostgreSQL job scheduler |
| [pgaudit](/ext/e/pgaudit) | `18.0` | provides auditing functionality |
| [pgroonga](/ext/e/pgroonga) | `4.0.4` | Super fast and all languages supported full text search index based on Groonga |
| [pgroonga_database](/ext/e/pgroonga_database) | `4.0.4` | PGroonga database management module |
| [pgrouting](/ext/e/pgrouting) | `3.8.0` | pgRouting Extension |
| [plisql](/ext/e/plisql) | `1.0` | PL/iSQL procedural language |
| [plpgsql_check](/ext/e/plpgsql_check) | `2.8` | extended check for plpgsql functions |
| [postgis](/ext/e/postgis) | `3.5.4` | PostGIS geometry and geography spatial types and functions |
| [postgis_raster](/ext/e/postgis_raster) | `3.5.4` | PostGIS raster types and functions |
| [postgis_sfcgal](/ext/e/postgis_sfcgal) | `3.5.4` | PostGIS SFCGAL functions |
| [postgis_tiger_geocoder](/ext/e/postgis_tiger_geocoder) | `3.5.4` | PostGIS tiger geocoder and reverse geocoder |
| [postgis_topology](/ext/e/postgis_topology) | `3.5.4` | PostGIS topology spatial types and functions |
| [redis_fdw](/ext/e/redis_fdw) | `1.0` | Foreign data wrapper for querying a Redis server |
| [system_stats](/ext/e/system_stats) | `3.0` | EnterpriseDB system statistics for PostgreSQL |
| [vector](/ext/e/vector) | `0.8.1` | vector data type and ivfflat and hnsw access methods |
| [zhparser](/ext/e/zhparser) | `2.3` | a parser for full-text search of Chinese |
{.full-width}

Pigsty does not assume any warranty responsibility for use of the IvorySQL kernel.
Contact the original vendor about issues or requirements for this kernel.
