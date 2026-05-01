---
title: "Kernel Forks"
linkTitle: "Kernel Forks"
description: "Extensions based on PostgreSQL kernel forks"
weight: 50
---

The following **16** extensions are based on **6** different PostgreSQL kernel forks.

These extensions require a specific PostgreSQL kernel fork, not the vanilla PostgreSQL kernel.

## Babelfish

The following extensions are based on the [**Babelfish**](/docs/pgsql/kernel/babelfish) kernel fork:

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`babelfishpg_common`](/ext/e/babelfishpg_common) | [`babelfish`](https://babelfishpg.org/) | `5.5.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | SQL Server Transact SQL Datatype Support |
| [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | [`babelfish`](https://babelfishpg.org/) | `5.5.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | SQL Server Transact SQL compatibility |
| [`babelfishpg_tds`](/ext/e/babelfishpg_tds) | [`babelfish`](https://babelfishpg.org/) | `1.0.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | SQL Server TDS protocol extension |
| [`babelfishpg_money`](/ext/e/babelfishpg_money) | [`babelfish`](https://babelfishpg.org/) | `1.1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | SQL Server Money Data Type |
{.ext-table}

## IvorySQL

The following extensions are based on the [**IvorySQL**](/docs/pgsql/kernel/ivorysql) kernel fork:

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`ivorysql_ora`](/ext/e/ivorysql_ora) | [`ivorysql`](https://github.com/IvorySQL/IvorySQL/tree/master/contrib/ivorysql_ora) | `1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Oracle Compatible extension on Postgres Database |
| [`ora_btree_gin`](/ext/e/ora_btree_gin) | [`ivorysql`](https://github.com/IvorySQL/IvorySQL/tree/master/contrib/ora_btree_gin) | `1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Support for indexing oracle datatypes in GIN |
| [`ora_btree_gist`](/ext/e/ora_btree_gist) | [`ivorysql`](https://github.com/IvorySQL/IvorySQL/tree/master/contrib/ora_btree_gist) | `1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Support for oracle indexing common datatypes in GiST |
| [`pg_get_functiondef`](/ext/e/pg_get_functiondef) | [`ivorysql`](https://github.com/IvorySQL/IvorySQL/tree/master/contrib/pg_get_functiondef) | `1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Get function's definition |
| [`plisql`](/ext/e/plisql) | [`ivorysql`](https://github.com/IvorySQL/IvorySQL/tree/master/src/pl/plisql) | `1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PL/iSQL procedural language |
| [`gb18030_2022`](/ext/e/gb18030_2022) | [`ivorysql`](https://github.com/IvorySQL/IvorySQL/tree/master/contrib/gb18030_2022) | `1.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Support GB18030-2022 and UTF-8 conversion |
{.ext-table}

## openHalo

The following extensions are based on the [**openHalo**](/docs/pgsql/kernel/openhalo) kernel fork:

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`aux_mysql`](/ext/e/aux_mysql) | [`openhalo`](https://github.com/HaloTech-Co-Ltd/openHalo) | `1.5` | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | MySQL Supplementary Extension |
{.ext-table}

## OrioleDB

The following extensions are based on the [**OrioleDB**](/docs/pgsql/kernel/orioledb) kernel fork:

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`orioledb`](/ext/e/orioledb) | [`orioledb`](https://github.com/orioledb/orioledb) | `1.7` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | OrioleDB, the next generation transactional engine |
{.ext-table}

## Percona

The following extensions are based on the [**Percona**](/docs/pgsql/kernel/percona) kernel fork:

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`pg_tde`](/ext/e/pg_tde) | [`pg_tde`](https://github.com/percona/pg_tde) | `2.1` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Percona pg_tde access method |
{.ext-table}

## pgEdge

The following extensions are based on the [**pgEdge**](/docs/pgsql/kernel/pgedge) kernel fork:

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`snowflake`](/ext/e/snowflake) | [`snowflake`](https://github.com/pgEdge/snowflake) | `2.4` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Snowflake-style 64-bit ID generator and sequence utilities for PostgreSQL |
| [`spock`](/ext/e/spock) | [`spock`](https://github.com/pgEdge/spock) | `5.0.6` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Multi-master logical replication extension for PostgreSQL |
| [`lolor`](/ext/e/lolor) | [`lolor`](https://github.com/pgEdge/lolor) | `1.2.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Logical-replication-friendly replacement for PostgreSQL large objects |
{.ext-table}

