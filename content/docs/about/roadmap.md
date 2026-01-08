---
title: Roadmap
weight: 110
description: Future feature planning, new feature release schedule, and todo list.
icon: fas fa-map
module: [PIGSTY]
categories: [Reference]
tags: []
---


----------------

## Release Strategy

Pigsty uses semantic versioning: `<major>.<minor>.<patch>`. Alpha/Beta/RC versions will have suffixes like `-a1`, `-b1`, `-c1` appended to the version number.

Major version updates signify incompatible foundational changes and major new features; minor version updates typically indicate regular feature updates and small API changes; patch version updates mean bug fixes and package version updates.

Pigsty plans to release one major version update per year. Minor version updates usually follow PostgreSQL's minor version update rhythm, catching up within a month at the latest after a new PostgreSQL version is released.
Pigsty typically plans 4-6 minor versions per year. For complete release history, please refer to [**Release Notes**](/docs/about/release).

{{% alert title="Deploy with Specific Version Numbers" color="primary" %}}
Pigsty develops using the **main** trunk branch. Please always use [**Releases**](https://github.com/pgsty/pigsty/releases) with version numbers.

Unless you know what you're doing, do not use GitHub's **main** branch. Always check out and use a specific version.
{{% /alert %}}



----------------

## Features Under Consideration

- [x] A sufficiently good command-line management tool
- [x] ARM architecture support for infrastructure components
- [x] Add more extensions for PostgreSQL
- [x] More preset scenario-based configuration templates
- [x] Fully migrate software repository and installation download sources to Cloudflare
- [x] Deploy and monitor highly available Kubernetes clusters using SealOS!
- [x] Use VictoriaMetrics to replace Prometheus for time-series data storage
- [ ] Monitor and deploy MySQL databases
- [ ] Monitor databases in Kubernetes
- [ ] Provide richer Docker application templates
- [ ] [PGLite](https://github.com/electric-sql/pglite) browser-side support

Here are our [**Active Issues**](https://github.com/pgsty/pigsty/issues) and [**Roadmap**](https://github.com/users/Vonng/projects/2/views/3).



----------

## Extensions and Packages

For the extension support roadmap, you can find it here: https://pgext.cloud/e/roadmap


### Under Consideration

- walminer
- is_jsonb_valid https://github.com/furstenheim/is_jsonb_valid
- pg_kafka https://github.com/xstevens/pg_kafka
- pg_jieba https://github.com/jaiminpan/pg_jieba
- pg_paxos https://github.com/microsoft/pg_paxos
- OneSparse https://github.com/OneSparse/OneSparse
- PipelineDB https://github.com/pipelinedb/pipelinedb
- SQL Firewall https://github.com/uptimejp/sql_firewall
- zcurve https://github.com/bmuratshin/zcurve
- PG dot net https://github.com/Brick-Abode/pldotnet/releases
- pg_scws: https://github.com/jaiminpan/pg_scws
- themsis: https://github.com/cossacklabs/pg_themis
- pgspeck https://github.com/johto/pgspeck
- lsm3 https://github.com/postgrespro/lsm3
- monq https://github.com/postgrespro/monq
- pg_badplan https://github.com/trustly/pg_badplan
- pg_recall https://github.com/mreithub/pg_recall
- pgfsm https://github.com/michelp/pgfsm
- pg_trgm pro https://github.com/postgrespro/pg_trgm_pro
- pgsql-fio: https://github.com/csimsek/pgsql-fio

### Not Considering for Now

- [pg_tier](https://github.com/tembo-io/pg_tier): not ready due to incomplete dep parquet_s3_fdw
- [parquet_s3_fdw](https://github.com/pgspider/parquet_s3_fdw): not ready due to compiler version
- pg_top: not ready due to cmake error
- timestamp9: not ready due to compiler error
- pg_tier obsolete
- pg_timeseries, we already have timescaledb
- pg_quack, we already have a pg_lakehouse
- pg_telemetry, we already have better observability
- pgx_ulid, https://github.com/pksunkara/pgx_ulid, already covered by pg_idkit (MIT, but RUST)
- embedding: obsolete
- FEAT zson https://github.com/postgrespro/zson MIT C (too old)
- GIS pghydro https://github.com/pghydro/pghydro C GPL-2.0 6.6 (no makefile)
- https://github.com/Zeleo/pg_natural_sort_order (too old)
- https://github.com/postgrespro/pg_query_state
- https://github.com/no0p/pgsampler
- pg_lz4 https://github.com/zilder/pg_lz4
- pg_amqp https://github.com/omniti-labs/pg_amqp
- tinyint https://github.com/umitanuki/tinyint-postgresql
- pg_blkchain https://github.com/blkchain/pg_blkchain
- hashtypes https://github.com/pandrewhk/hashtypes
- foreign_table_exposer https://github.com/komamitsu/foreign_table_exposer
- ldap_fdw https://github.com/guedes/ldap_fdw
- pg_backtrace https://github.com/postgrespro/pg_backtrace
- connection_limits https://github.com/tvondra/connection_limits
- fixeddecimal https://github.com/2ndQuadrant/fixeddecimal



