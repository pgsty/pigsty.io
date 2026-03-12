---
title: "faker"
linkTitle: "faker"
description: "Wrapper for the Faker Python library"
weight: 3210
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/anpandu/postgresql_faker">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">anpandu/postgresql_faker</div>
    <div class="ext-card__desc">https://github.com/anpandu/postgresql_faker</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`faker`**](/ext/e/faker) | `0.5.3` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang python" href="/ext/language#python">Python</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3210  | [**`faker`**](/ext/e/faker) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpython3u`](/ext/e/plpython3u) [`pgtap`](/ext/e/pgtap) [`dbt2`](/ext/e/dbt2) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`ltree_plpython3u`](/ext/e/ltree_plpython3u) [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`random`](/ext/e/random) [`pg_tle`](/ext/e/pg_tle) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.5.3` | {{< pgvers "18,17,16,15,14" >}} | `faker` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.5.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql_faker_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 2 |
| el8.aarch64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 |
| el9.x86_64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 2 |
| el9.aarch64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 |
| el10.x86_64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 |
| el10.aarch64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel8.x86_64.rpm pgdg 0.5.3 46.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgresql_faker_18-0.5.3-7PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel8.aarch64.rpm pgdg 0.5.3 46.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgresql_faker_18-0.5.3-7PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel9.x86_64.rpm pgdg 0.5.3 44.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgresql_faker_18-0.5.3-7PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel9.aarch64.rpm pgdg 0.5.3 43.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgresql_faker_18-0.5.3-7PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgresql_faker_18-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgresql_faker_18-0.5.3-7PGDG.rhel10.aarch64.rpm
@ el8.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel8.x86_64.rpm pgdg 0.5.3 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgresql_faker_17-0.5.3-6PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel8.aarch64.rpm pgdg 0.5.3 46.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgresql_faker_17-0.5.3-6PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel9.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgresql_faker_17-0.5.3-6PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel9.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgresql_faker_17-0.5.3-6PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgresql_faker_17-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgresql_faker_17-0.5.3-7PGDG.rhel10.aarch64.rpm
@ el8.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel8.x86_64.rpm pgdg 0.5.3 45.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgresql_faker_16-0.5.3-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel8.aarch64.rpm pgdg 0.5.3 45.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgresql_faker_16-0.5.3-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel9.x86_64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgresql_faker_16-0.5.3-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel9.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgresql_faker_16-0.5.3-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgresql_faker_16-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgresql_faker_16-0.5.3-7PGDG.rhel10.aarch64.rpm
@ el8.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel8.x86_64.rpm pgdg 0.5.3 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgresql_faker_15-0.5.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel8.aarch64.rpm pgdg 0.5.3 49.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgresql_faker_15-0.5.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel9.x86_64.rpm pgdg 0.5.3 48.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql_faker_15-0.5.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel9.aarch64.rpm pgdg 0.5.3 48.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql_faker_15-0.5.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgresql_faker_15-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgresql_faker_15-0.5.3-7PGDG.rhel10.aarch64.rpm
@ el8.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel8.x86_64.rpm pgdg 0.5.3 49.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql_faker_14-0.5.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.4.0-1.rhel8.noarch.rpm pgdg 0.4.0 37.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql_faker_14-0.4.0-1.rhel8.noarch.rpm
@ el8.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel8.aarch64.rpm pgdg 0.5.3 49.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgresql_faker_14-0.5.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel9.x86_64.rpm pgdg 0.5.3 48.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql_faker_14-0.5.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel9.noarch.rpm pgdg 0.5.3 47.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql_faker_14-0.5.3-1.rhel9.noarch.rpm
@ el9.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel9.aarch64.rpm pgdg 0.5.3 48.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql_faker_14-0.5.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgresql_faker_14-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgresql_faker_14-0.5.3-7PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `faker` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install faker;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y faker -v 18  # PG 18
pig ext install -y faker -v 17  # PG 17
pig ext install -y faker -v 16  # PG 16
pig ext install -y faker -v 15  # PG 15
pig ext install -y faker -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y postgresql_faker_18       # PG 18
dnf install -y postgresql_faker_17       # PG 17
dnf install -y postgresql_faker_16       # PG 16
dnf install -y postgresql_faker_15       # PG 15
dnf install -y postgresql_faker_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION faker;
```




## Usage

> [faker: Wrapper for the Faker Python library](https://github.com/anpandu/postgresql_faker)

`faker` is a PostgreSQL extension that wraps Python's Faker library, providing functions to generate realistic fake data directly in SQL queries. It requires `plpython3u`.

```sql
CREATE EXTENSION faker;
```

### Generate Fake Data

```sql
SELECT faker.name();           -- 'John Smith'
SELECT faker.first_name();     -- 'Jane'
SELECT faker.last_name();      -- 'Doe'
SELECT faker.email();          -- 'jane.doe@example.com'
SELECT faker.address();        -- '123 Main St, Anytown, US 12345'
SELECT faker.company();        -- 'Smith LLC'
SELECT faker.phone_number();   -- '(555) 123-4567'
SELECT faker.text();           -- random paragraph of text
SELECT faker.city();           -- 'Portland'
SELECT faker.country();        -- 'United States'
```

Note: `faker.date()` and `faker.time()` are **not available** because `date` and `time` are reserved PostgreSQL keywords. Use `faker.date_between()` or `faker.date_this_century()` instead.

### Populate Tables with Fake Data

```sql
INSERT INTO users (name, email, address, created_at)
SELECT
  faker.name(),
  faker.email(),
  faker.address(),
  faker.date_this_century()::timestamp
FROM generate_series(1, 1000);
```

### Localized Fake Data

Locale is set per session, not per function call:

```sql
SELECT faker.faker('de_DE');   -- set locale for this session
SELECT faker.name();           -- returns a German name
SELECT faker.address();        -- returns a German address
```

### Unique Values

Use the `unique_` prefix to guarantee unique values within a session:

```sql
SELECT faker.unique_name();
SELECT faker.unique_email();
```

### Discover All Functions

```sql
SELECT faker._functions();     -- list all 500+ available functions
```

All faker functions return `text`. Cast explicitly for other types.

### Common Faker Providers

| Function | Description |
|----------|-------------|
| `faker.name()` | Full name |
| `faker.first_name()` | First name |
| `faker.last_name()` | Last name |
| `faker.email()` | Email address |
| `faker.company_email()` | Company email |
| `faker.phone_number()` | Phone number |
| `faker.address()` | Full address |
| `faker.city()` | City name |
| `faker.country()` | Country name |
| `faker.company()` | Company name |
| `faker.text()` | Random text |
| `faker.date_this_century()` | Random date |
| `faker.ssn()` | Social security number |
| `faker.ean()` | EAN barcode |
