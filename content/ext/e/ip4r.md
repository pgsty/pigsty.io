---
title: "ip4r"
linkTitle: "ip4r"
description: "IPv4/v6 and IPv4/v6 range index type for PostgreSQL"
weight: 3770
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RhodiumToad/ip4r">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RhodiumToad/ip4r</div>
    <div class="ext-card__desc">https://github.com/RhodiumToad/ip4r</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ip4r`**](/ext/e/ip4r) | `2.4.2` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3770  | [**`ip4r`**](/ext/e/ip4r) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_net`](/ext/e/pg_net) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`geoip`](/ext/e/geoip) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.2` | {{< pgvers "18,17,16,15,14" >}} | `ip4r` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.2` | {{< pgvers "18,17,16,15,14" >}} | `ip4r_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ip4r` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 2 | AVAIL PGDG 2.4.2 2 |
| el8.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 2 | AVAIL PGDG 2.4.2 2 |
| el9.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 2 | AVAIL PGDG 2.4.2 1 |
| el9.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 2 | AVAIL PGDG 2.4.2 2 |
| el10.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| el10.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| d12.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| d12.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| d13.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| d13.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| u22.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| u22.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| u24.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| u24.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| u26.x86_64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
| u26.aarch64 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 | AVAIL PGDG 2.4.2 1 |
@ el8.x86_64 18 ip4r_18 ip4r_18-2.4.2-3PGDG.rhel8.x86_64.rpm pgdg 2.4.2 78.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ip4r_18-2.4.2-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 ip4r_18 ip4r_18-2.4.2-3PGDG.rhel8.aarch64.rpm pgdg 2.4.2 73.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ip4r_18-2.4.2-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 ip4r_18 ip4r_18-2.4.2-3PGDG.rhel9.x86_64.rpm pgdg 2.4.2 76.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ip4r_18-2.4.2-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 ip4r_18 ip4r_18-2.4.2-3PGDG.rhel9.aarch64.rpm pgdg 2.4.2 72.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ip4r_18-2.4.2-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 ip4r_18 ip4r_18-2.4.2-3PGDG.rhel10.x86_64.rpm pgdg 2.4.2 79.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ip4r_18-2.4.2-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 ip4r_18 ip4r_18-2.4.2-3PGDG.rhel10.aarch64.rpm pgdg 2.4.2 74.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ip4r_18-2.4.2-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg12+1_amd64.deb pgdg 2.4.2 180.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg12+1_arm64.deb pgdg 2.4.2 173.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg13+1_amd64.deb pgdg 2.4.2 180.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg13+1_arm64.deb pgdg 2.4.2 175.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb pgdg 2.4.2 181.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb pgdg 2.4.2 176.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb pgdg 2.4.2 176.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb pgdg 2.4.2 171.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb pgdg 2.4.2 174.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-ip4r postgresql-18-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb pgdg 2.4.2 170.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-18-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 ip4r_17 ip4r_17-2.4.2-2PGDG.rhel8.x86_64.rpm pgdg 2.4.2 77.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ip4r_17-2.4.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 ip4r_17 ip4r_17-2.4.2-2PGDG.rhel8.aarch64.rpm pgdg 2.4.2 73.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ip4r_17-2.4.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 ip4r_17 ip4r_17-2.4.2-2PGDG.rhel9.x86_64.rpm pgdg 2.4.2 76.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ip4r_17-2.4.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 ip4r_17 ip4r_17-2.4.2-2PGDG.rhel9.aarch64.rpm pgdg 2.4.2 72.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ip4r_17-2.4.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 ip4r_17 ip4r_17-2.4.2-3PGDG.rhel10.x86_64.rpm pgdg 2.4.2 79.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ip4r_17-2.4.2-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 ip4r_17 ip4r_17-2.4.2-3PGDG.rhel10.aarch64.rpm pgdg 2.4.2 74.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ip4r_17-2.4.2-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg12+1_amd64.deb pgdg 2.4.2 180.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg12+1_arm64.deb pgdg 2.4.2 174.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg13+1_amd64.deb pgdg 2.4.2 180.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg13+1_arm64.deb pgdg 2.4.2 175.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb pgdg 2.4.2 194.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb pgdg 2.4.2 189.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb pgdg 2.4.2 176.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb pgdg 2.4.2 171.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb pgdg 2.4.2 174.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-ip4r postgresql-17-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb pgdg 2.4.2 170.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-17-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 ip4r_16 ip4r_16-2.4.2-1PGDG.rhel8.x86_64.rpm pgdg 2.4.2 77.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ip4r_16-2.4.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 ip4r_16 ip4r_16-2.4.2-1PGDG.rhel8.aarch64.rpm pgdg 2.4.2 73.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ip4r_16-2.4.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 ip4r_16 ip4r_16-2.4.2-1PGDG.rhel9.x86_64.rpm pgdg 2.4.2 76.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ip4r_16-2.4.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 ip4r_16 ip4r_16-2.4.2-1PGDG.rhel9.aarch64.rpm pgdg 2.4.2 72.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ip4r_16-2.4.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 ip4r_16 ip4r_16-2.4.2-3PGDG.rhel10.x86_64.rpm pgdg 2.4.2 78.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ip4r_16-2.4.2-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 ip4r_16 ip4r_16-2.4.2-3PGDG.rhel10.aarch64.rpm pgdg 2.4.2 74.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ip4r_16-2.4.2-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg12+1_amd64.deb pgdg 2.4.2 180.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg12+1_arm64.deb pgdg 2.4.2 174.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg13+1_amd64.deb pgdg 2.4.2 180.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg13+1_arm64.deb pgdg 2.4.2 175.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb pgdg 2.4.2 194.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb pgdg 2.4.2 189.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb pgdg 2.4.2 176.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb pgdg 2.4.2 171.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb pgdg 2.4.2 175.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-ip4r postgresql-16-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb pgdg 2.4.2 170.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-16-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 ip4r_15 ip4r_15-2.4.2-1PGDG.rhel8.x86_64.rpm pgdg 2.4.2 77.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ip4r_15-2.4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ip4r_15 ip4r_15-2.4.1-2.rhel8.x86_64.rpm pgdg 2.4.1 208.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ip4r_15-2.4.1-2.rhel8.x86_64.rpm
@ el8.aarch64 15 ip4r_15 ip4r_15-2.4.2-1PGDG.rhel8.aarch64.rpm pgdg 2.4.2 72.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ip4r_15-2.4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ip4r_15 ip4r_15-2.4.1-2.rhel8.aarch64.rpm pgdg 2.4.1 203.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ip4r_15-2.4.1-2.rhel8.aarch64.rpm
@ el9.x86_64 15 ip4r_15 ip4r_15-2.4.2-1PGDG.rhel9.x86_64.rpm pgdg 2.4.2 75.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ip4r_15-2.4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ip4r_15 ip4r_15-2.4.1-2.rhel9.x86_64.rpm pgdg 2.4.1 209.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ip4r_15-2.4.1-2.rhel9.x86_64.rpm
@ el9.aarch64 15 ip4r_15 ip4r_15-2.4.2-1PGDG.rhel9.aarch64.rpm pgdg 2.4.2 71.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ip4r_15-2.4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ip4r_15 ip4r_15-2.4.1-2.rhel9.aarch64.rpm pgdg 2.4.1 204.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ip4r_15-2.4.1-2.rhel9.aarch64.rpm
@ el10.x86_64 15 ip4r_15 ip4r_15-2.4.2-3PGDG.rhel10.x86_64.rpm pgdg 2.4.2 78.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ip4r_15-2.4.2-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 ip4r_15 ip4r_15-2.4.2-3PGDG.rhel10.aarch64.rpm pgdg 2.4.2 73.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ip4r_15-2.4.2-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg12+1_amd64.deb pgdg 2.4.2 179.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg12+1_arm64.deb pgdg 2.4.2 172.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg13+1_amd64.deb pgdg 2.4.2 179.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg13+1_arm64.deb pgdg 2.4.2 173.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb pgdg 2.4.2 192.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb pgdg 2.4.2 187.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb pgdg 2.4.2 175.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb pgdg 2.4.2 170.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb pgdg 2.4.2 172.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-ip4r postgresql-15-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb pgdg 2.4.2 169.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-15-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 ip4r_14 ip4r_14-2.4.2-1PGDG.rhel8.x86_64.rpm pgdg 2.4.2 77.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ip4r_14-2.4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 ip4r_14 ip4r_14-2.4.1-2.rhel8.x86_64.rpm pgdg 2.4.1 210.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ip4r_14-2.4.1-2.rhel8.x86_64.rpm
@ el8.aarch64 14 ip4r_14 ip4r_14-2.4.2-1PGDG.rhel8.aarch64.rpm pgdg 2.4.2 71.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ip4r_14-2.4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ip4r_14 ip4r_14-2.4.1-2.rhel8.aarch64.rpm pgdg 2.4.1 203.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ip4r_14-2.4.1-2.rhel8.aarch64.rpm
@ el9.x86_64 14 ip4r_14 ip4r_14-2.4.2-1PGDG.rhel9.x86_64.rpm pgdg 2.4.2 75.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ip4r_14-2.4.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 ip4r_14 ip4r_14-2.4.2-1PGDG.rhel9.aarch64.rpm pgdg 2.4.2 71.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ip4r_14-2.4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ip4r_14 ip4r_14-2.4.1-2.rhel9.aarch64.rpm pgdg 2.4.1 204.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ip4r_14-2.4.1-2.rhel9.aarch64.rpm
@ el10.x86_64 14 ip4r_14 ip4r_14-2.4.2-3PGDG.rhel10.x86_64.rpm pgdg 2.4.2 78.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ip4r_14-2.4.2-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 ip4r_14 ip4r_14-2.4.2-3PGDG.rhel10.aarch64.rpm pgdg 2.4.2 73.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ip4r_14-2.4.2-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg12+1_amd64.deb pgdg 2.4.2 179.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg12+1_arm64.deb pgdg 2.4.2 172.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg13+1_amd64.deb pgdg 2.4.2 179.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg13+1_arm64.deb pgdg 2.4.2 173.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb pgdg 2.4.2 192.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb pgdg 2.4.2 187.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb pgdg 2.4.2 175.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb pgdg 2.4.2 170.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb pgdg 2.4.2 173.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-ip4r postgresql-14-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb pgdg 2.4.2 168.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/ip4r/postgresql-14-ip4r_2.4.2-4.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `ip4r` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install ip4r;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y ip4r -v 18  # PG 18
pig ext install -y ip4r -v 17  # PG 17
pig ext install -y ip4r -v 16  # PG 16
pig ext install -y ip4r -v 15  # PG 15
pig ext install -y ip4r -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ip4r_18       # PG 18
dnf install -y ip4r_17       # PG 17
dnf install -y ip4r_16       # PG 16
dnf install -y ip4r_15       # PG 15
dnf install -y ip4r_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ip4r   # PG 18
apt install -y postgresql-17-ip4r   # PG 17
apt install -y postgresql-16-ip4r   # PG 16
apt install -y postgresql-15-ip4r   # PG 15
apt install -y postgresql-14-ip4r   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION ip4r;
```



## Usage

> [ip4r: IPv4/IPv6 address and range types with GiST indexing](https://github.com/RhodiumToad/ip4r)

The `ip4r` extension provides specialized data types for IPv4/IPv6 addresses and ranges with superior indexing for containment queries.

```sql
CREATE EXTENSION ip4r;
```

### Data Types

| Type | Description |
|------|-------------|
| `ip4` | Single IPv4 address (32-bit) |
| `ip6` | Single IPv6 address (dual 64-bit) |
| `ip4r` | IPv4 address range |
| `ip6r` | IPv6 address range |
| `ipaddress` | Mixed IPv4/IPv6 address |
| `iprange` | Mixed IPv4/IPv6 range |

### Address Input

```sql
SELECT '192.168.1.1'::ip4;
SELECT '2001:db8::1'::ip6;
SELECT '10.0.0.0/24'::ip4r;                   -- CIDR notation
SELECT '192.168.1.100-192.168.1.200'::ip4r;   -- explicit range
```

### Address Operators

- **Comparison**: `=`, `<>`, `<`, `>`, `<=`, `>=`
- **Arithmetic**: `+`, `-` with integers
- **Bitwise**: `&` (AND), `|` (OR), `#` (XOR), `~` (NOT)

### Address Functions

```sql
SELECT family('192.168.1.1'::ipaddress);       -- 4
SELECT ip4_netmask(24);                         -- 255.255.255.0
```

### Range Operators

| Operator | Description |
|----------|-------------|
| `>>=` | Contains or equal |
| `>>` | Strictly contains |
| `<<=` | Contained in or equal |
| `<<` | Strictly contained in |
| `&&` | Overlaps |

### Range Functions

```sql
SELECT lower('10.0.0.0/24'::ip4r);           -- 10.0.0.0
SELECT upper('10.0.0.0/24'::ip4r);           -- 10.0.0.255
SELECT is_cidr('10.0.0.0/24'::ip4r);         -- true
SELECT cidr_split('10.0.0.0-10.0.0.5'::ip4r); -- decompose to CIDRs
SELECT @ '10.0.0.0/24'::ip4r;                 -- approximate size
```

### Indexing

```sql
-- GiST index for containment queries
CREATE INDEX idx ON ipranges USING gist (range);

-- Find ranges containing a specific IP
SELECT * FROM ipranges WHERE range >>= '10.0.1.15'::ip4;

-- Find most specific match
SELECT * FROM ipranges
WHERE range >>= '10.0.1.15'::ip4
ORDER BY @ range LIMIT 1;
```
