---
title: "jsquery"
linkTitle: "jsquery"
description: "data type for jsonb inspection"
weight: 2770
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgrespro/jsquery">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgrespro/jsquery</div>
    <div class="ext-card__desc">https://github.com/postgrespro/jsquery</div>
  </a>
  <a class="ext-card ext-card--source" href="jsquery-1.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">jsquery-1.2.tar.gz</div>
    <div class="ext-card__desc">jsquery-1.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`jsquery`**](/ext/e/jsquery) | `1.2` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2770  | [**`jsquery`**](/ext/e/jsquery) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`plv8`](/ext/e/plv8) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`pg_net`](/ext/e/pg_net) [`pg_summarize`](/ext/e/pg_summarize) [`age`](/ext/e/age) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2` | {{< pgvers "18,17,16,15,14" >}} | `jsquery` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2` | {{< pgvers "18,17,16,15,14" >}} | `jsquery_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-jsquery` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| el8.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| el9.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| el9.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| el10.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| el10.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| d12.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| d12.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| d13.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| d13.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| u22.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| u22.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| u24.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
| u24.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 1 |
@ el8.x86_64 18 jsquery_18 jsquery_18-1.2-4PGDG.rhel8.x86_64.rpm pgdg 1.2 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/jsquery_18-1.2-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 jsquery_18 jsquery_18-1.2-4PGDG.rhel8.aarch64.rpm pgdg 1.2 46.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/jsquery_18-1.2-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 jsquery_18 jsquery_18-1.2-4PGDG.rhel9.x86_64.rpm pgdg 1.2 48.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/jsquery_18-1.2-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 jsquery_18 jsquery_18-1.2-4PGDG.rhel9.aarch64.rpm pgdg 1.2 47.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/jsquery_18-1.2-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 jsquery_18 jsquery_18-1.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2 50.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/jsquery_18-1.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 jsquery_18 jsquery_18-1.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2 48.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/jsquery_18-1.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg12+1_amd64.deb pgdg 1.2 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg12+1_arm64.deb pgdg 1.2 120.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg13+1_amd64.deb pgdg 1.2 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg13+1_arm64.deb pgdg 1.2 120.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg22.04+1_amd64.deb pgdg 1.2 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg22.04+1_arm64.deb pgdg 1.2 120.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg24.04+1_amd64.deb pgdg 1.2 122.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-jsquery postgresql-18-jsquery_1.2-3.pgdg24.04+1_arm64.deb pgdg 1.2 119.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-18-jsquery_1.2-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 jsquery_17 jsquery_17-1.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2 49.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/jsquery_17-1.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 jsquery_17 jsquery_17-1.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2 46.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/jsquery_17-1.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 jsquery_17 jsquery_17-1.2-2PGDG.rhel9.x86_64.rpm pgdg 1.2 48.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/jsquery_17-1.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 jsquery_17 jsquery_17-1.2-2PGDG.rhel9.aarch64.rpm pgdg 1.2 47.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/jsquery_17-1.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 jsquery_17 jsquery_17-1.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/jsquery_17-1.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 jsquery_17 jsquery_17-1.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2 48.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/jsquery_17-1.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg12+1_amd64.deb pgdg 1.2 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg12+1_arm64.deb pgdg 1.2 120.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg13+1_amd64.deb pgdg 1.2 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg13+1_arm64.deb pgdg 1.2 120.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg22.04+1_amd64.deb pgdg 1.2 130.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg22.04+1_arm64.deb pgdg 1.2 127.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg24.04+1_amd64.deb pgdg 1.2 122.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-jsquery postgresql-17-jsquery_1.2-3.pgdg24.04+1_arm64.deb pgdg 1.2 119.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-17-jsquery_1.2-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 jsquery_16 jsquery_16-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 49.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/jsquery_16-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 jsquery_16 jsquery_16-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 46.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/jsquery_16-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 jsquery_16 jsquery_16-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/jsquery_16-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 jsquery_16 jsquery_16-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 47.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/jsquery_16-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 jsquery_16 jsquery_16-1.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2 49.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/jsquery_16-1.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 jsquery_16 jsquery_16-1.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2 48.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/jsquery_16-1.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg12+1_amd64.deb pgdg 1.2 122.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg12+1_arm64.deb pgdg 1.2 119.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg13+1_amd64.deb pgdg 1.2 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg13+1_arm64.deb pgdg 1.2 120.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg22.04+1_amd64.deb pgdg 1.2 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg22.04+1_arm64.deb pgdg 1.2 127.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg24.04+1_amd64.deb pgdg 1.2 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-jsquery postgresql-16-jsquery_1.2-3.pgdg24.04+1_arm64.deb pgdg 1.2 119.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-16-jsquery_1.2-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 jsquery_15 jsquery_15-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 50.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/jsquery_15-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 jsquery_15 jsquery_15-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 47.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/jsquery_15-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 jsquery_15 jsquery_15-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 51.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/jsquery_15-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 jsquery_15 jsquery_15-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/jsquery_15-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 jsquery_15 jsquery_15-1.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2 52.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/jsquery_15-1.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 jsquery_15 jsquery_15-1.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2 50.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/jsquery_15-1.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg12+1_amd64.deb pgdg 1.2 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg12+1_arm64.deb pgdg 1.2 120.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg13+1_amd64.deb pgdg 1.2 124.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg13+1_arm64.deb pgdg 1.2 121.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg22.04+1_amd64.deb pgdg 1.2 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg22.04+1_arm64.deb pgdg 1.2 129.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg24.04+1_amd64.deb pgdg 1.2 124.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-jsquery postgresql-15-jsquery_1.2-3.pgdg24.04+1_arm64.deb pgdg 1.2 121.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-15-jsquery_1.2-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 jsquery_14 jsquery_14-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 50.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/jsquery_14-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 jsquery_14 jsquery_14-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 47.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/jsquery_14-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 jsquery_14 jsquery_14-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 51.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/jsquery_14-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 jsquery_14 jsquery_14-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 49.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/jsquery_14-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 jsquery_14 jsquery_14-1.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2 52.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/jsquery_14-1.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 jsquery_14 jsquery_14-1.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2 50.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/jsquery_14-1.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg12+1_amd64.deb pgdg 1.2 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg12+1_arm64.deb pgdg 1.2 121.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg13+1_amd64.deb pgdg 1.2 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg13+1_arm64.deb pgdg 1.2 121.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg22.04+1_amd64.deb pgdg 1.2 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg22.04+1_arm64.deb pgdg 1.2 129.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg24.04+1_amd64.deb pgdg 1.2 124.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-jsquery postgresql-14-jsquery_1.2-3.pgdg24.04+1_arm64.deb pgdg 1.2 121.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/j/jsquery/postgresql-14-jsquery_1.2-3.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `jsquery` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install jsquery;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y jsquery -v 18  # PG 18
pig ext install -y jsquery -v 17  # PG 17
pig ext install -y jsquery -v 16  # PG 16
pig ext install -y jsquery -v 15  # PG 15
pig ext install -y jsquery -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y jsquery_18       # PG 18
dnf install -y jsquery_17       # PG 17
dnf install -y jsquery_16       # PG 16
dnf install -y jsquery_15       # PG 15
dnf install -y jsquery_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-jsquery   # PG 18
apt install -y postgresql-17-jsquery   # PG 17
apt install -y postgresql-16-jsquery   # PG 16
apt install -y postgresql-15-jsquery   # PG 15
apt install -y postgresql-14-jsquery   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION jsquery;
```




## Usage

> [jsquery: data type for jsonb inspection](https://github.com/postgrespro/jsquery)

JsQuery provides a query language for JSONB data, similar to what tsquery does for full-text search. It offers a concise way to search nested objects and arrays with index support via GIN.

### Operators

| Operator | Description |
|----------|-------------|
| `@@` | Match operator: test whether a jsonb value matches a jsquery expression |

### Query Syntax

Expressions follow the pattern `path operator value`:

**Binary operators:**
- `=` (equality), `>`, `>=`, `<`, `<=` (comparison)
- `IN` (list membership)
- `&&` (overlap), `@>` (contains), `<@` (contained in)

**Unary operators:**
- `= *` (existence check)
- `IS ARRAY`, `IS NUMERIC`, `IS OBJECT`, `IS STRING`, `IS BOOLEAN` (type checking)

### Path Expressions

| Symbol | Meaning |
|--------|---------|
| `#` | Any array index |
| `#N` | Specific array index N |
| `%` | Any object key |
| `*` | Any sequence of keys/indexes |
| `@#` | Array/object length |
| `$` | Entire document |

"Every" semantics (all elements must match):
- `#:` -- all array elements
- `%:` -- all object keys
- `*:` -- all nested paths

### Examples

Simple value matching:

```sql
SELECT * FROM jsonb_table WHERE data @@ 'name = "Alice"';
SELECT * FROM jsonb_table WHERE data @@ 'age > 21';
SELECT * FROM jsonb_table WHERE data @@ 'tags.#: IS STRING';
```

Logical combinations:

```sql
SELECT * FROM jsonb_table WHERE data @@ 'a = 1 AND (b = 2 OR c = 3)';
```

Array element matching (find array elements where both conditions hold):

```sql
SELECT * FROM jsonb_table WHERE data @@ '#(a = 1 AND b = 2)';
```

Object key range matching:

```sql
SELECT * FROM jsonb_table WHERE data @@ '%($ >= 10 AND $ <= 20)';
```

### GIN Indexing

Two operator classes for different query patterns:

```sql
-- Best for range and exact searches when full path is known
CREATE INDEX ON jsonb_table USING gin (data jsonb_path_value_ops);

-- Best for exact value searches; supports % and * in paths
CREATE INDEX ON jsonb_table USING gin (data jsonb_value_path_ops);
```

Optimizer hints for index usage:

```sql
SELECT * FROM jsonb_table WHERE data @@ 'x = 1 /*-- index */ AND y = 2';
SELECT * FROM jsonb_table WHERE data @@ 'x = 1 /*-- noindex */ AND y = 2';
```

### Schema Validation via CHECK Constraints

```sql
CREATE TABLE documents (
    id serial PRIMARY KEY,
    data jsonb CHECK (data @@ 'name IS STRING AND similar_ids.#: IS NUMERIC'::jsquery)
);
```
