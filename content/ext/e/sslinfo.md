---
title: "sslinfo"
linkTitle: "sslinfo"
description: "information about SSL certificates"
weight: 6920
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/sslinfo.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/sslinfo.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/sslinfo.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`sslinfo`**](/ext/e/sslinfo) | `1.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6920  | [**`sslinfo`**](/ext/e/sslinfo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`sslutils`](/ext/e/sslutils) [`pg_profile`](/ext/e/pg_profile) [`pg_tracing`](/ext/e/pg_tracing) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_store_plans`](/ext/e/pg_store_plans) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION sslinfo;
```



## Usage

> [sslinfo: SSL certificate information functions](https://www.postgresql.org/docs/current/sslinfo.html)

sslinfo provides functions to access information about the SSL certificate used in the current database connection.

### Functions

```sql
-- Check if current connection uses SSL
SELECT ssl_is_used();

-- SSL/TLS protocol version (TLSv1.2, TLSv1.3, etc.)
SELECT ssl_version();

-- Cipher name (e.g., DHE-RSA-AES256-SHA)
SELECT ssl_cipher();

-- Check if client presented a valid certificate
SELECT ssl_client_cert_present();

-- Client certificate serial number
SELECT ssl_client_serial();

-- Client certificate subject (full DN)
SELECT ssl_client_dn();
-- e.g., /CN=Somebody /C=Some country/O=Some organization

-- Certificate issuer (full DN)
SELECT ssl_issuer_dn();

-- Specific field from client certificate subject
SELECT ssl_client_dn_field('CN');
SELECT ssl_client_dn_field('O');

-- Specific field from certificate issuer
SELECT ssl_issuer_field('CN');

-- Client certificate extensions
SELECT * FROM ssl_extension_info();
-- Returns: name, value, critical
```

### Notes

- Most functions return NULL if the connection does not use SSL
- Requires PostgreSQL compiled with OpenSSL support
- The combination of `ssl_client_serial()` and `ssl_issuer_dn()` uniquely identifies a certificate
