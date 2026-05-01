---
title: "ETL - Data Integration"
linkTitle: "ETL"
description: "Logical Replication, Decoding, CDC in protobuf/JSON/Mongo format, Copy & Load & Compare Postgres Databases,..."
weight: 895
icon: fas fa-truck
---

## Extension List

There are **22** extensions in **21** packages.

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`pglogical`](/ext/e/pglogical) | [`pglogical`](https://github.com/2ndQuadrant/pglogical) | `2.4.6` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PostgreSQL Logical Replication |
| [`pglogical_origin`](/ext/e/pglogical_origin) | [`pglogical`](https://github.com/2ndQuadrant/pglogical) | `2.4.6` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Dummy extension for compatibility when upgrading from Postgres 9.4 |
| [`pglogical_ticker`](/ext/e/pglogical_ticker) | [`pglogical_ticker`](https://github.com/enova/pglogical_ticker) | `1.4.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Have an accurate view on pglogical replication delay |
| [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) | [`pgl_ddl_deploy`](https://github.com/enova/pgl_ddl_deploy) | `2.2.1` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | automated ddl deployment using pglogical |
| [`logical_ddl`](/ext/e/logical_ddl) | [`logical_ddl`](https://github.com/samedyildirim/logical_ddl) | `0.1.0` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Replicate supported DDL changes over PostgreSQL logical replication |
| [`pg_failover_slots`](/ext/e/pg_failover_slots) | [`pg_failover_slots`](https://github.com/EnterpriseDB/pg_failover_slots) | `1.2.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PG Failover Slots extension |
| [`db_migrator`](/ext/e/db_migrator) | [`db_migrator`](https://github.com/cybertec-postgresql/db_migrator) | `1.0.0` | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Tools to migrate other databases to PostgreSQL |
| [`pgactive`](/ext/e/pgactive) | [`pgactive`](https://github.com/aws/pgactive) | `2.1.7` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Active-Active Replication Extension for PostgreSQL |
| [`spock`](/ext/e/spock) | [`spock`](https://github.com/pgEdge/spock) | `5.0.6` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Multi-master logical replication extension for PostgreSQL |
| [`lolor`](/ext/e/lolor) | [`lolor`](https://github.com/pgEdge/lolor) | `1.2.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Logical-replication-friendly replacement for PostgreSQL large objects |
| [`pgclone`](/ext/e/pgclone) | [`pgclone`](https://github.com/valehdba/pgclone) | `4.0.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Clone PostgreSQL databases, schemas, tables, and functions across environments |
| [`pgmqtt`](/ext/e/pgmqtt) | [`pgmqtt`](https://github.com/RayElg/pgmqtt) | `0.1.0` | <a class="ext-badge ext-badge--license elastic license 20" href="/ext/license#elasticlicense20">Elastic License 2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | CDC-to-MQTT broker for PostgreSQL |
| [`wal2json`](/ext/e/wal2json) | [`wal2json`](https://github.com/eulerto/wal2json) | `2.6` | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Changing data capture in JSON format |
| [`wal2mongo`](/ext/e/wal2mongo) | [`wal2mongo`](https://github.com/HighgoSoftware/wal2mongo) | `1.0.7` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PostgreSQL logical decoding output plugin for MongoDB |
| [`decoderbufs`](/ext/e/decoderbufs) | [`decoderbufs`](https://github.com/debezium/postgres-decoderbufs) | `3.5.0` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Logical decoding plugin that delivers WAL stream changes using a Protocol Buffer format |
| [`decoder_raw`](/ext/e/decoder_raw) | [`decoder_raw`](https://github.com/michaelpq/pg_plugins/blob/main/decoder_raw/) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Output plugin for logical replication in Raw SQL format |
| [`mimeo`](/ext/e/mimeo) | [`mimeo`](https://github.com/omniti-labs/mimeo) | `1.5.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Extension for specialized, per-table replication between PostgreSQL instances |
| [`repmgr`](/ext/e/repmgr) | [`repmgr`](https://github.com/EnterpriseDB/repmgr) | `5.5.0` | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Replication manager for PostgreSQL |
| [`pg_fact_loader`](/ext/e/pg_fact_loader) | [`pg_fact_loader`](https://github.com/enova/pg_fact_loader) | `2.0.1` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | build fact tables with Postgres |
| [`pg_bulkload`](/ext/e/pg_bulkload) | [`pg_bulkload`](https://github.com/ossc-db/pg_bulkload) | `3.1.23` | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | pg_bulkload is a high speed data loading utility for PostgreSQL |
| [`test_decoding`](/ext/e/test_decoding) | [`test_decoding`](https://www.postgresql.org/docs/current/test-decoding.html) | `-` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | SQL-based test/example module for WAL logical decoding |
| [`pgoutput`](/ext/e/pgoutput) | [`pgoutput`](https://www.postgresql.org/docs/current/protocol-logical-replication.html) | `-` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Logical Replication output plugin |
{.ext-table}


---------

## pglogical {#pglogical}

[**`pglogical`**](/ext/e/pglogical) - `2.4.6` : PostgreSQL Logical Replication

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pglogical`](/ext/e/pglogical) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pglogical`](https://github.com/2ndQuadrant/pglogical) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pglogical_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pglogical` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pglogical_origin {#pglogical_origin}

[**`pglogical`**](/ext/e/pglogical_origin) - `2.4.6` : Dummy extension for compatibility when upgrading from Postgres 9.4

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pglogical_origin`](/ext/e/pglogical_origin) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pglogical`](https://github.com/2ndQuadrant/pglogical) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pglogical_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pglogical` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pglogical_ticker {#pglogical_ticker}

[**`pglogical_ticker`**](/ext/e/pglogical_ticker) - `1.4.1` : Have an accurate view on pglogical replication delay

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pglogical_ticker`](/ext/e/pglogical_ticker) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pglogical_ticker`](https://github.com/enova/pglogical_ticker) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pglogical_ticker_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pglogical-ticker` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgl_ddl_deploy {#pgl_ddl_deploy}

[**`pgl_ddl_deploy`**](/ext/e/pgl_ddl_deploy) - `2.2.1` : automated ddl deployment using pglogical

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) | **el8** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **Package** | [`pgl_ddl_deploy`](https://github.com/enova/pgl_ddl_deploy) | **el9** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **RPM** | `pgl_ddl_deploy_$v` | **el10** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgl-ddl-deploy` | **d12** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| | | **u26** | - | - |
{.ext-table .ext-table--cate}


---------

## logical_ddl {#logical_ddl}

[**`logical_ddl`**](/ext/e/logical_ddl) - `0.1.0` : Replicate supported DDL changes over PostgreSQL logical replication

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`logical_ddl`](/ext/e/logical_ddl) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`logical_ddl`](https://github.com/samedyildirim/logical_ddl) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `logical_ddl_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-logical-ddl` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_failover_slots {#pg_failover_slots}

[**`pg_failover_slots`**](/ext/e/pg_failover_slots) - `1.2.1` : PG Failover Slots extension

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_failover_slots`](/ext/e/pg_failover_slots) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_failover_slots`](https://github.com/EnterpriseDB/pg_failover_slots) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_failover_slots_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-failover-slots` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## db_migrator {#db_migrator}

[**`db_migrator`**](/ext/e/db_migrator) - `1.0.0` : Tools to migrate other databases to PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`db_migrator`](/ext/e/db_migrator) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`db_migrator`](https://github.com/cybertec-postgresql/db_migrator) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `db_migrator_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-db-migrator` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgactive {#pgactive}

[**`pgactive`**](/ext/e/pgactive) - `2.1.7` : Active-Active Replication Extension for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgactive`](/ext/e/pgactive) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgactive`](https://github.com/aws/pgactive) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgactive_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgactive` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## spock {#spock}

[**`spock`**](/ext/e/spock) - `5.0.6` : Multi-master logical replication extension for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`spock`](/ext/e/spock) | **el8** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Package** | [`spock`](https://github.com/pgEdge/spock) | **el9** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **RPM** | `spock_$v` | **el10** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **DEB** | `pgedge-$v-spock` | **d12** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| | | **u26** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
{.ext-table .ext-table--cate}


---------

## lolor {#lolor}

[**`lolor`**](/ext/e/lolor) - `1.2.2` : Logical-replication-friendly replacement for PostgreSQL large objects

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`lolor`](/ext/e/lolor) | **el8** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Package** | [`lolor`](https://github.com/pgEdge/lolor) | **el9** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **RPM** | `lolor_$v` | **el10** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **DEB** | `pgedge-$v-lolor` | **d12** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| | | **u26** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
{.ext-table .ext-table--cate}


---------

## pgclone {#pgclone}

[**`pgclone`**](/ext/e/pgclone) - `4.0.0` : Clone PostgreSQL databases, schemas, tables, and functions across environments

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgclone`](/ext/e/pgclone) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgclone`](https://github.com/valehdba/pgclone) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgclone_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgclone` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgmqtt {#pgmqtt}

[**`pgmqtt`**](/ext/e/pgmqtt) - `0.1.0` : CDC-to-MQTT broker for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgmqtt`](/ext/e/pgmqtt) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgmqtt`](https://github.com/RayElg/pgmqtt) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgmqtt_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgmqtt` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license elastic license 20" href="/ext/license#elasticlicense20">Elastic License 2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | - | - |
{.ext-table .ext-table--cate}


---------

## wal2json {#wal2json}

[**`wal2json`**](/ext/e/wal2json) - `2.6` : Changing data capture in JSON format

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`wal2json`](/ext/e/wal2json) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`wal2json`](https://github.com/eulerto/wal2json) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `wal2json_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-wal2json` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## wal2mongo {#wal2mongo}

[**`wal2mongo`**](/ext/e/wal2mongo) - `1.0.7` : PostgreSQL logical decoding output plugin for MongoDB

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`wal2mongo`](/ext/e/wal2mongo) | **el8** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **Package** | [`wal2mongo`](https://github.com/HighgoSoftware/wal2mongo) | **el9** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **RPM** | `wal2mongo_$v` | **el10** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **DEB** | `postgresql-$v-wal2mongo` | **d12** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| | | **u26** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## decoderbufs {#decoderbufs}

[**`decoderbufs`**](/ext/e/decoderbufs) - `3.5.0` : Logical decoding plugin that delivers WAL stream changes using a Protocol Buffer format

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`decoderbufs`](/ext/e/decoderbufs) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`decoderbufs`](https://github.com/debezium/postgres-decoderbufs) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgres-decoderbufs_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-decoderbufs` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## decoder_raw {#decoder_raw}

[**`decoder_raw`**](/ext/e/decoder_raw) - `1.0` : Output plugin for logical replication in Raw SQL format

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`decoder_raw`](/ext/e/decoder_raw) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`decoder_raw`](https://github.com/michaelpq/pg_plugins/blob/main/decoder_raw/) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `decoder_raw_$v` | **el10** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **DEB** | `postgresql-$v-decoder-raw` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## mimeo {#mimeo}

[**`mimeo`**](/ext/e/mimeo) - `1.5.1` : Extension for specialized, per-table replication between PostgreSQL instances

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`mimeo`](/ext/e/mimeo) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`mimeo`](https://github.com/omniti-labs/mimeo) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `mimeo_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-mimeo` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## repmgr {#repmgr}

[**`repmgr`**](/ext/e/repmgr) - `5.5.0` : Replication manager for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`repmgr`](/ext/e/repmgr) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`repmgr`](https://github.com/EnterpriseDB/repmgr) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `repmgr_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-repmgr` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_fact_loader {#pg_fact_loader}

[**`pg_fact_loader`**](/ext/e/pg_fact_loader) - `2.0.1` : build fact tables with Postgres

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_fact_loader`](/ext/e/pg_fact_loader) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_fact_loader`](https://github.com/enova/pg_fact_loader) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_fact_loader_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-fact-loader` | **d12** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "17,16,15,14" >}} | {{< pgvers "17,16,15,14" >}} |
| | | **u26** | - | - |
{.ext-table .ext-table--cate}


---------

## pg_bulkload {#pg_bulkload}

[**`pg_bulkload`**](/ext/e/pg_bulkload) - `3.1.23` : pg_bulkload is a high speed data loading utility for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_bulkload`](/ext/e/pg_bulkload) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_bulkload`](https://github.com/ossc-db/pg_bulkload) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_bulkload_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-bulkload` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## test_decoding {#test_decoding}

[**`test_decoding`**](/ext/e/test_decoding) - `-` : SQL-based test/example module for WAL logical decoding

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`test_decoding`](/ext/e/test_decoding) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`test_decoding`](https://www.postgresql.org/docs/current/test-decoding.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgoutput {#pgoutput}

[**`pgoutput`**](/ext/e/pgoutput) - `-` : Logical Replication output plugin

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgoutput`](/ext/e/pgoutput) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgoutput`](https://www.postgresql.org/docs/current/protocol-logical-replication.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}

