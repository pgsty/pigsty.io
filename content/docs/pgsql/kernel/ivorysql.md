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

The Pigsty PGSQL repository directly provides IvorySQL 5.4 packages compatible with PostgreSQL 18.4 across the currently supported EL, Debian, Ubuntu, and dual-architecture platforms.
Online installation uses Pigsty's `pgsql` repository; the Professional Edition also provides offline delivery for the corresponding platforms.


![IvorySQL](/img/pigsty/ivory.jpg)

Pigsty's `ivorysql` package alias points to IvorySQL 5, compatible with PostgreSQL 18. Real package names are mapped by platform variables under `roles/node_id/vars/`; for example, EL uses `ivorysql5`, while Debian/Ubuntu uses `ivorysql-5`.

> The last IvorySQL version supporting EL7 was 3.3, corresponding to PostgreSQL 16.3; the last version based on PostgreSQL 17 is IvorySQL 4.4



--------

## Installation

Install with Pigsty's built-in `ivory` configuration template:

```bash
./configure -c ivory
./deploy.yml
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

## Available Extensions

The IvorySQL kernel has **95** available extensions. After removing bundled PG Contrib extensions, the following extra extensions remain:

| Extension | Version | Description |
|:----------|:--------|:------------|
| [address_standardizer](/ext/e/address_standardizer) | `3.5.4` | Used to parse an address into constituent elements. Generally used to support geocoding address normalization step. |
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
| [pg_stat_monitor](/ext/e/pg_stat_monitor) | `2.3` | The pg_stat_monitor is a PostgreSQL Query Performance Monitoring tool, based on PostgreSQL contrib module pg_stat_statements. pg_stat_monitor provides aggregated statistics, client information, plan details including plan, and histogram information. |
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

Please note that Pigsty does not assume any warranty responsibility for using the IvorySQL kernel. Any issues or requirements encountered when using this kernel should be addressed with the original vendor.
