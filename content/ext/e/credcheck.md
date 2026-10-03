---
title: "credcheck"
linkTitle: "credcheck"
description: "credcheck - postgresql plain text credential checker"
weight: 7310
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HexaCluster/credcheck">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HexaCluster/credcheck</div>
    <div class="ext-card__desc">https://github.com/HexaCluster/credcheck</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`credcheck`**](/ext/e/credcheck) | `5.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7310  | [**`credcheck`**](/ext/e/credcheck) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_pwhash`](/ext/e/pg_pwhash) [`passwordcheck`](/ext/e/passwordcheck) [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`passwordpolicy`](/ext/e/passwordpolicy) [`chkpass`](/ext/e/chkpass) [`pg_enigma`](/ext/e/pg_enigma) [`column_encrypt`](/ext/e/column_encrypt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.0` | {{< pgvers "18,17,16,15,14" >}} | `credcheck` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.7` | {{< pgvers "18,17,16,15,14" >}} | `credcheck_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-credcheck` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.7 8 | AVAIL PGDG 4.7 9 | AVAIL PGDG 4.7 12 | AVAIL PGDG 4.7 17 | AVAIL PGDG 4.7 17 |
| el8.aarch64 | AVAIL PGDG 4.7 8 | AVAIL PGDG 4.7 9 | AVAIL PGDG 4.7 12 | AVAIL PGDG 4.7 17 | AVAIL PGDG 4.7 17 |
| el9.x86_64 | AVAIL PGDG 4.7 14 | AVAIL PGDG 4.7 15 | AVAIL PGDG 4.7 18 | AVAIL PGDG 4.7 23 | AVAIL PGDG 4.7 22 |
| el9.aarch64 | AVAIL PGDG 4.7 14 | AVAIL PGDG 4.7 15 | AVAIL PGDG 4.7 18 | AVAIL PGDG 4.7 23 | AVAIL PGDG 4.7 23 |
| el10.x86_64 | AVAIL PGDG 4.7 13 | AVAIL PGDG 4.7 13 | AVAIL PGDG 4.7 13 | AVAIL PGDG 4.7 13 | AVAIL PGDG 4.7 13 |
| el10.aarch64 | AVAIL PGDG 4.7 14 | AVAIL PGDG 4.7 14 | AVAIL PGDG 4.7 14 | AVAIL PGDG 4.7 14 | AVAIL PGDG 4.7 14 |
| d12.x86_64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| d12.aarch64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| d13.x86_64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| d13.aarch64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| u22.x86_64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| u22.aarch64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| u24.x86_64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| u24.aarch64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| u26.x86_64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
| u26.aarch64 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 | AVAIL PGDG 5.0 3 |
@ el8.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.7 42.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel8.x86_64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-3.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel8.aarch64.rpm pgdg 3.0 35.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-3.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel9.8.x86_64.rpm pgdg 4.7 41.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.7-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel9.7.x86_64.rpm pgdg 4.7 41.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.7-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel9.6.x86_64.rpm pgdg 4.7 41.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.7-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel9.6.x86_64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel9.6.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel9.6.x86_64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel9.x86_64.rpm pgdg 3.0 35.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-3.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel9.8.aarch64.rpm pgdg 4.7 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.7-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel9.7.aarch64.rpm pgdg 4.7 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.7-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel9.6.aarch64.rpm pgdg 4.7 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.7-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel9.6.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel9.6.aarch64.rpm pgdg 4.5 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.5-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 39.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel9.6.aarch64.rpm pgdg 4.4 39.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 4.3 39.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel9.aarch64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-3.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel10.2.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.7-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel10.1.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.7-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel10.0.x86_64.rpm pgdg 4.7 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.7-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel10.0.x86_64.rpm pgdg 4.6 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel10.0.x86_64.rpm pgdg 4.5 41.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel10.0.x86_64.rpm pgdg 4.4 40.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 4.3 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.7 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.7 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.7 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel10.0.aarch64.rpm pgdg 4.6 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.5 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel10.0.aarch64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 39.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg12+2_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg12+1_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg12+1_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg12+2_arm64.deb pgdg 5.0 79.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg12+1_arm64.deb pgdg 5.0 79.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg12+1_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg13+2_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg13+1_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg13+1_amd64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg13+2_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg13+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg13+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg22.04+2_amd64.deb pgdg 5.0 74.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg22.04+1_amd64.deb pgdg 5.0 74.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg22.04+1_amd64.deb pgdg 5.0 74.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg22.04+2_arm64.deb pgdg 5.0 73.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg22.04+1_arm64.deb pgdg 5.0 73.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg22.04+1_arm64.deb pgdg 5.0 73.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg24.04+2_amd64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg24.04+1_amd64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg24.04+1_amd64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg24.04+2_arm64.deb pgdg 5.0 72.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg24.04+1_arm64.deb pgdg 5.0 72.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg24.04+1_arm64.deb pgdg 5.0 72.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg26.04+2_amd64.deb pgdg 5.0 73.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg26.04+1_amd64.deb pgdg 5.0 73.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg26.04+1_amd64.deb pgdg 5.0 73.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg26.04+2_arm64.deb pgdg 5.0 72.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-2.pgdg26.04+1_arm64.deb pgdg 5.0 72.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_5.0-1.pgdg26.04+1_arm64.deb pgdg 5.0 72.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_5.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.7 42.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel8.x86_64.rpm pgdg 2.8 35.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-2.8-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel8.aarch64.rpm pgdg 2.8 34.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-2.8-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel9.8.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.7-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel9.7.x86_64.rpm pgdg 4.7 41.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.7-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel9.6.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.7-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel9.6.x86_64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel9.6.x86_64.rpm pgdg 4.5 41.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel9.6.x86_64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 4.3 40.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 35.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel9.x86_64.rpm pgdg 2.8 35.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-2.8-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel9.8.aarch64.rpm pgdg 4.7 40.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.7-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel9.7.aarch64.rpm pgdg 4.7 40.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.7-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel9.6.aarch64.rpm pgdg 4.7 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.7-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel9.6.aarch64.rpm pgdg 4.6 40.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel9.6.aarch64.rpm pgdg 4.5 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.5-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel9.6.aarch64.rpm pgdg 4.4 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel9.aarch64.rpm pgdg 2.8 35.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-2.8-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel10.2.x86_64.rpm pgdg 4.7 41.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.7-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel10.1.x86_64.rpm pgdg 4.7 41.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.7-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel10.0.x86_64.rpm pgdg 4.7 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.7-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel10.0.x86_64.rpm pgdg 4.6 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel10.0.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel10.0.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 4.3 40.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel10.0.aarch64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel10.0.aarch64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg12+2_amd64.deb pgdg 5.0 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg12+1_amd64.deb pgdg 5.0 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg12+1_amd64.deb pgdg 5.0 80.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg12+2_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg12+1_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg12+1_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg13+2_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg13+1_amd64.deb pgdg 5.0 81.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg13+1_amd64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg13+2_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg13+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg13+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg22.04+2_amd64.deb pgdg 5.0 81.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg22.04+1_amd64.deb pgdg 5.0 81.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg22.04+1_amd64.deb pgdg 5.0 81.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg22.04+2_arm64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg22.04+1_arm64.deb pgdg 5.0 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg22.04+1_arm64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg24.04+2_amd64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg24.04+1_amd64.deb pgdg 5.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg24.04+1_amd64.deb pgdg 5.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg24.04+2_arm64.deb pgdg 5.0 72.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg24.04+1_arm64.deb pgdg 5.0 72.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg24.04+1_arm64.deb pgdg 5.0 72.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg26.04+2_amd64.deb pgdg 5.0 73.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg26.04+1_amd64.deb pgdg 5.0 73.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg26.04+1_amd64.deb pgdg 5.0 73.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg26.04+2_arm64.deb pgdg 5.0 71.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-2.pgdg26.04+1_arm64.deb pgdg 5.0 71.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_5.0-1.pgdg26.04+1_arm64.deb pgdg 5.0 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_5.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.7 42.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 34.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 34.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 33.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel9.8.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.7-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel9.7.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.7-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel9.6.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.7-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel9.6.x86_64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel9.6.x86_64.rpm pgdg 4.5 41.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel9.6.x86_64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 4.3 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 36.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 35.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel9.x86_64.rpm pgdg 2.6 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel9.8.aarch64.rpm pgdg 4.7 40.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.7-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel9.7.aarch64.rpm pgdg 4.7 40.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.7-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel9.6.aarch64.rpm pgdg 4.7 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.7-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel9.6.aarch64.rpm pgdg 4.6 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel9.6.aarch64.rpm pgdg 4.5 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.5-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel9.6.aarch64.rpm pgdg 4.4 39.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 4.3 39.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 34.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 34.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel10.2.x86_64.rpm pgdg 4.7 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.7-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel10.1.x86_64.rpm pgdg 4.7 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.7-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel10.0.x86_64.rpm pgdg 4.7 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.7-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel10.0.x86_64.rpm pgdg 4.6 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel10.0.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel10.0.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 4.3 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel10.0.aarch64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel10.0.aarch64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg12+2_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg12+1_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg12+1_amd64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg12+2_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg12+1_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg12+1_arm64.deb pgdg 5.0 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg13+2_amd64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg13+1_amd64.deb pgdg 5.0 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg13+1_amd64.deb pgdg 5.0 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg13+2_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg13+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg13+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg22.04+2_amd64.deb pgdg 5.0 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg22.04+1_amd64.deb pgdg 5.0 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg22.04+1_amd64.deb pgdg 5.0 81.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg22.04+2_arm64.deb pgdg 5.0 80.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg22.04+1_arm64.deb pgdg 5.0 80.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg22.04+1_arm64.deb pgdg 5.0 80.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg24.04+2_amd64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg24.04+1_amd64.deb pgdg 5.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg24.04+1_amd64.deb pgdg 5.0 73.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg24.04+2_arm64.deb pgdg 5.0 72.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg24.04+1_arm64.deb pgdg 5.0 72.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg24.04+1_arm64.deb pgdg 5.0 72.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg26.04+2_amd64.deb pgdg 5.0 73.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg26.04+1_amd64.deb pgdg 5.0 73.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg26.04+1_amd64.deb pgdg 5.0 73.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg26.04+2_arm64.deb pgdg 5.0 71.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-2.pgdg26.04+1_arm64.deb pgdg 5.0 71.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_5.0-1.pgdg26.04+1_arm64.deb pgdg 5.0 71.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_5.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.7 42.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 34.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 34.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 31.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.0-1.rhel8.x86_64.rpm pgdg 2.0 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-1.2-1.rhel8.x86_64.rpm pgdg 1.2 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-1.0-1.rhel8.x86_64.rpm pgdg 1.0 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-1.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-0.2.0-3.rhel8.x86_64.rpm pgdg 0.2.0 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-0.2.0-3.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-0.2.0-1.rhel8.x86_64.rpm pgdg 0.2.0 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-0.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 34.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 33.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.0-1.rhel8.aarch64.rpm pgdg 2.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-1.2-1.rhel8.aarch64.rpm pgdg 1.2 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-1.0-1.rhel8.aarch64.rpm pgdg 1.0 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-1.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-0.2.0-3.rhel8.aarch64.rpm pgdg 0.2.0 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-0.2.0-3.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-0.2.0-1.rhel8.aarch64.rpm pgdg 0.2.0 34.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-0.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel9.8.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.7-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel9.7.x86_64.rpm pgdg 4.7 41.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.7-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel9.6.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.7-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel9.6.x86_64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel9.6.x86_64.rpm pgdg 4.5 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel9.6.x86_64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 4.3 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 36.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 35.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel9.x86_64.rpm pgdg 2.6 34.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.0-1.rhel9.x86_64.rpm pgdg 2.0 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-1.2-1.rhel9.x86_64.rpm pgdg 1.2 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-1.0-1.rhel9.x86_64.rpm pgdg 1.0 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-1.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-0.2.0-3.rhel9.x86_64.rpm pgdg 0.2.0 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-0.2.0-3.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-0.2.0-1.rhel9.x86_64.rpm pgdg 0.2.0 35.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-0.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel9.8.aarch64.rpm pgdg 4.7 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.7-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel9.7.aarch64.rpm pgdg 4.7 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.7-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel9.6.aarch64.rpm pgdg 4.7 40.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.7-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel9.6.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel9.6.aarch64.rpm pgdg 4.5 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.5-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel9.6.aarch64.rpm pgdg 4.4 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 4.3 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 34.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 34.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.0-1.rhel9.aarch64.rpm pgdg 2.0 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-1.2-1.rhel9.aarch64.rpm pgdg 1.2 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-1.2-1.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-1.0-1.rhel9.aarch64.rpm pgdg 1.0 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-1.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-0.2.0-3.rhel9.aarch64.rpm pgdg 0.2.0 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-0.2.0-3.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-0.2.0-1.rhel9.aarch64.rpm pgdg 0.2.0 35.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-0.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel10.2.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.7-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel10.1.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.7-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel10.0.x86_64.rpm pgdg 4.7 42.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.7-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel10.0.x86_64.rpm pgdg 4.6 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel10.0.x86_64.rpm pgdg 4.5 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel10.0.x86_64.rpm pgdg 4.4 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 4.3 40.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.7 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel10.0.aarch64.rpm pgdg 4.6 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.5 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel10.0.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 39.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg12+2_amd64.deb pgdg 5.0 80.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg12+1_amd64.deb pgdg 5.0 80.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg12+1_amd64.deb pgdg 5.0 80.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg12+2_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg12+1_arm64.deb pgdg 5.0 79.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg12+1_arm64.deb pgdg 5.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg13+2_amd64.deb pgdg 5.0 80.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg13+1_amd64.deb pgdg 5.0 80.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg13+1_amd64.deb pgdg 5.0 80.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg13+2_arm64.deb pgdg 5.0 79.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg13+1_arm64.deb pgdg 5.0 79.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg13+1_arm64.deb pgdg 5.0 79.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg22.04+2_amd64.deb pgdg 5.0 81.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg22.04+1_amd64.deb pgdg 5.0 81.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg22.04+1_amd64.deb pgdg 5.0 81.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg22.04+2_arm64.deb pgdg 5.0 79.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg22.04+1_arm64.deb pgdg 5.0 79.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg22.04+1_arm64.deb pgdg 5.0 79.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg24.04+2_amd64.deb pgdg 5.0 73.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg24.04+1_amd64.deb pgdg 5.0 73.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg24.04+1_amd64.deb pgdg 5.0 73.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg24.04+2_arm64.deb pgdg 5.0 72.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg24.04+1_arm64.deb pgdg 5.0 72.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg24.04+1_arm64.deb pgdg 5.0 72.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg26.04+2_amd64.deb pgdg 5.0 73.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg26.04+1_amd64.deb pgdg 5.0 73.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg26.04+1_amd64.deb pgdg 5.0 73.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg26.04+2_arm64.deb pgdg 5.0 71.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-2.pgdg26.04+1_arm64.deb pgdg 5.0 71.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_5.0-1.pgdg26.04+1_arm64.deb pgdg 5.0 71.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_5.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.7 42.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 34.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.0-1.rhel8.x86_64.rpm pgdg 2.0 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-1.2-1.rhel8.x86_64.rpm pgdg 1.2 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-1.0-1.rhel8.x86_64.rpm pgdg 1.0 27.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-1.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-0.2.0-3.rhel8.x86_64.rpm pgdg 0.2.0 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-0.2.0-3.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-0.2.0-1.rhel8.x86_64.rpm pgdg 0.2.0 35.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-0.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.7 41.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 39.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 34.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 33.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.0-1.rhel8.aarch64.rpm pgdg 2.0 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-1.2-1.rhel8.aarch64.rpm pgdg 1.2 27.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-1.0-1.rhel8.aarch64.rpm pgdg 1.0 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-1.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-0.2.0-3.rhel8.aarch64.rpm pgdg 0.2.0 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-0.2.0-3.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-0.2.0-1.rhel8.aarch64.rpm pgdg 0.2.0 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-0.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel9.8.x86_64.rpm pgdg 4.7 41.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.7-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel9.7.x86_64.rpm pgdg 4.7 41.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.7-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel9.6.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.7-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel9.6.x86_64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel9.6.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel9.6.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 36.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 35.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel9.x86_64.rpm pgdg 2.6 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.0-1.rhel9.x86_64.rpm pgdg 2.0 31.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-1.2-1.rhel9.x86_64.rpm pgdg 1.2 28.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-1.0-1.rhel9.x86_64.rpm pgdg 1.0 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-1.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-0.2.0-3.rhel9.x86_64.rpm pgdg 0.2.0 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-0.2.0-3.rhel9.x86_64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel9.8.aarch64.rpm pgdg 4.7 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.7-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel9.7.aarch64.rpm pgdg 4.7 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.7-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel9.6.aarch64.rpm pgdg 4.7 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.7-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel9.6.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel9.6.aarch64.rpm pgdg 4.5 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.5-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel9.6.aarch64.rpm pgdg 4.4 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 4.3 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 34.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 31.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.0-1.rhel9.aarch64.rpm pgdg 2.0 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-1.2-1.rhel9.aarch64.rpm pgdg 1.2 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-1.2-1.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-1.0-1.rhel9.aarch64.rpm pgdg 1.0 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-1.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-0.2.0-3.rhel9.aarch64.rpm pgdg 0.2.0 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-0.2.0-3.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-0.2.0-1.rhel9.aarch64.rpm pgdg 0.2.0 35.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-0.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel10.2.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.7-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel10.1.x86_64.rpm pgdg 4.7 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.7-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel10.0.x86_64.rpm pgdg 4.7 42.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.7-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel10.0.x86_64.rpm pgdg 4.6 41.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel10.0.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel10.0.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 4.3 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.7 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.7 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.7 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel10.0.aarch64.rpm pgdg 4.6 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.5 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel10.0.aarch64.rpm pgdg 4.4 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg12+2_amd64.deb pgdg 5.0 75.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg12+2_amd64.deb
@ d12.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg12+1_amd64.deb pgdg 5.0 75.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg12+1_amd64.deb pgdg 5.0 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg12+2_arm64.deb pgdg 5.0 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg12+2_arm64.deb
@ d12.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg12+1_arm64.deb pgdg 5.0 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg12+1_arm64.deb pgdg 5.0 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg13+2_amd64.deb pgdg 5.0 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg13+2_amd64.deb
@ d13.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg13+1_amd64.deb pgdg 5.0 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg13+1_amd64.deb pgdg 5.0 75.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg13+2_arm64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg13+2_arm64.deb
@ d13.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg13+1_arm64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg13+1_arm64.deb pgdg 5.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg22.04+2_amd64.deb pgdg 5.0 75.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg22.04+1_amd64.deb pgdg 5.0 75.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg22.04+1_amd64.deb pgdg 5.0 75.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg22.04+2_arm64.deb pgdg 5.0 74.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg22.04+1_arm64.deb pgdg 5.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg22.04+1_arm64.deb pgdg 5.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg24.04+2_amd64.deb pgdg 5.0 69.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg24.04+1_amd64.deb pgdg 5.0 69.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg24.04+1_amd64.deb pgdg 5.0 68.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg24.04+2_arm64.deb pgdg 5.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg24.04+1_arm64.deb pgdg 5.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg24.04+1_arm64.deb pgdg 5.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg26.04+2_amd64.deb pgdg 5.0 68.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg26.04+1_amd64.deb pgdg 5.0 68.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg26.04+1_amd64.deb pgdg 5.0 68.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg26.04+2_arm64.deb pgdg 5.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-2.pgdg26.04+1_arm64.deb pgdg 5.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_5.0-1.pgdg26.04+1_arm64.deb pgdg 5.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_5.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `credcheck` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install credcheck;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y credcheck -v 18  # PG 18
pig ext install -y credcheck -v 17  # PG 17
pig ext install -y credcheck -v 16  # PG 16
pig ext install -y credcheck -v 15  # PG 15
pig ext install -y credcheck -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y credcheck_18       # PG 18
dnf install -y credcheck_17       # PG 17
dnf install -y credcheck_16       # PG 16
dnf install -y credcheck_15       # PG 15
dnf install -y credcheck_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-credcheck   # PG 18
apt install -y postgresql-17-credcheck   # PG 17
apt install -y postgresql-16-credcheck   # PG 16
apt install -y postgresql-15-credcheck   # PG 15
apt install -y postgresql-14-credcheck   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'credcheck';
```


**Create Extension**:

```sql
CREATE EXTENSION credcheck;
```

## Usage

Sources:

- [v5.0 README](https://github.com/HexaCluster/credcheck/blob/v5.0/README.md)
- [v5.0 changelog](https://github.com/HexaCluster/credcheck/blob/v5.0/ChangeLog)
- [SQL objects 5.0.0](https://github.com/HexaCluster/credcheck/blob/v5.0/sql/credcheck--5.0.0.sql)
- [Password history WAL implementation](https://github.com/HexaCluster/credcheck/blob/v5.0/credcheck.c)
- [Login-event setup](https://github.com/HexaCluster/credcheck/blob/v5.0/event_trigger.sql)

`credcheck` enforces username and plaintext-password rules during role creation, password changes and role renames. It also tracks password reuse, bans repeated authentication failures and can require a password change at first login. Configure policy as a superuser; the defaults do not enforce a comprehensive password-strength policy.

### Enable and Set Policy

Add the library to the existing preload list and restart PostgreSQL. Install SQL objects in each database where administrators need its views and reset functions:

```ini
shared_preload_libraries = 'credcheck'
credcheck.password_min_length = 12
credcheck.password_contain_username = on
credcheck.password_reuse_history = 2
credcheck.password_reuse_interval = 365
```

```sql
CREATE EXTENSION credcheck;
CREATE ROLE app_user LOGIN PASSWORD 'example-Strong-Pass#123';
SELECT rolename, password_date FROM pg_password_history;
```

The interval is in days. Installing the SQL extension is separate from loading the server-wide hooks. Upstream release 5.0 uses SQL extension version 5.0.0; installing upgraded files requires a restart to reload the library.

### Policy Index

| Settings | Purpose |
|---|---|
| `credcheck.username_min_length`, `credcheck.username_min_special`, `credcheck.username_min_digit`, `credcheck.username_min_upper`, `credcheck.username_min_lower` | Username length and character requirements |
| `credcheck.password_min_length`, `credcheck.password_min_special`, `credcheck.password_min_digit`, `credcheck.password_min_upper`, `credcheck.password_min_lower` | Password length and character requirements |
| `credcheck.username_min_repeat`, `credcheck.password_min_repeat` | Maximum adjacent repetitions, despite the parameter names |
| `credcheck.username_contain`, `credcheck.username_not_contain`, `credcheck.password_contain`, `credcheck.password_not_contain` | Required or forbidden content |
| `credcheck.username_contain_password`, `credcheck.password_contain_username` | Reject credentials containing one another |
| `credcheck.username_ignore_case`, `credcheck.password_ignore_case` | Case handling |
| `credcheck.password_min_length_su`, `credcheck.password_valid_until_su` | Separate superuser requirements |
| `credcheck.password_valid_until`, `credcheck.password_valid_max` | Minimum and maximum password lifetime; the minimum also supplies an omitted expiry when a password is changed |
| `credcheck.whitelist`, `credcheck.superuser_nocheck` | Explicit policy exemptions |
| `credcheck.no_password_logging` | Suppress passwords in policy-error logs; enabled by default |

CrackLib strength checking is available only when the library was built with that support and its dictionary is available.

### Password History and Replication

History contains SHA-256 password hashes, is shared across databases, and is persisted in `$PGDATA/pg_password_history`. Include that file in backup planning and protect access to the SQL history view, which is granted to PUBLIC by default. `credcheck.history_max_size` changes the shared-memory capacity and requires a restart.

Version 5.0 replicates history changes through custom WAL resource manager ID 150 on PostgreSQL 15 and later. Keep the matching library preloaded on replicas and recovery servers that replay its WAL. Earlier PostgreSQL versions retain the file-backed history path without this replication support. History-reset and timestamp-test functions reject execution during recovery.

```sql
SELECT pg_password_history_reset('app_user');
```

Resetting history removes reuse protection for those records; reserve it for administrators.

### Authentication and Password Changes

```ini
credcheck.max_auth_failure = 3
credcheck.auth_delay_ms = 1000
credcheck.whitelist_auth_failure = 'service_user'
credcheck.password_change_first_login = true
```

```sql
SELECT * FROM pg_banned_role;
SELECT pg_banned_role_reset('app_user');
ALTER ROLE app_user SET credcheck_internal.force_change_password = true;
```

Bans remain until reset and their cache is lost at restart. `credcheck.reset_superuser` provides the documented superuser recovery path; `credcheck.auth_failure_cache_size` requires a restart.

Use the actual parameter `credcheck.disallow_change_password` to prohibit password changes. Even superusers are affected unless they enable `credcheck.superuser_nocheck` in their session. This exemption bypasses all corresponding role checks and must be controlled.

`credcheck.password_valid_warning` needs PostgreSQL 17 or later and the official login event trigger installed separately in every relevant database; SQL extension creation does not install that trigger.

### Plaintext Boundary

Strength and reuse checks need plaintext at password-change time. Already hashed passwords are rejected by default, including passwords sent by psql's `\password`. Setting `credcheck.encrypted_password_allowed` accepts them without providing equivalent plaintext checks. Protect the password-change connection and do not assume existing credentials are scanned retroactively. Username checks are skipped when creating a role without a password or renaming a role with no password.
