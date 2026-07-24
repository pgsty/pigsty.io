---
title: pgtde
weight: 480
description: Percona PostgreSQL kernel, provides Transparent Data Encryption (pg_tde) capability
icon: fa-solid fa-lock
categories: [Reference]
---

The `pgtde` configuration template uses Percona PostgreSQL database kernel, providing Transparent Data Encryption (TDE) capability.


--------

## Overview

- Config Name: `pgtde`
- Node Count: Single node
- Description: Percona PostgreSQL transparent data encryption configuration
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c pgtde [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/pgtde.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgtde.yml)

{{< readfile file="yaml/pgtde.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `pgtde` template selects `pg_mode: pgtde` and installs the `pgtde` package
alias. Pigsty links the private `/usr/pgtde-$v` prefix (currently
`/usr/pgtde-18`) to its stable `/usr/pgsql` entry point.

**Key Features**:
- **Transparent Data Encryption**: Data automatically encrypted on disk, transparent to applications
- **Key Management**: Supports local keys and external Key Management Systems (KMS)
- **Table-level Encryption**: Selectively encrypt sensitive tables
- **Full Compatibility**: Fully compatible with native PostgreSQL

**Use Cases**:
- Meeting data security compliance requirements (e.g., PCI-DSS, HIPAA)
- Storing sensitive data (e.g., personal information, financial data)
- Scenarios requiring data-at-rest encryption
- Enterprise environments with strict data security requirements

**Usage**:

```sql
CREATE EXTENSION pg_tde;

SELECT pg_tde_add_database_key_provider_file(
    'local-file',
    '/secure/path/pg_tde_keys'
);
SELECT pg_tde_set_principal_key('app-principal-key', 'local-file');

-- Create encrypted table
CREATE TABLE sensitive_data (
    id SERIAL PRIMARY KEY,
    ssn VARCHAR(11)
) USING tde_heap;

-- Or enable encryption on existing table
ALTER TABLE existing_table SET ACCESS METHOD tde_heap;
```

**Notes**:
- Percona PostgreSQL is based on PostgreSQL 18
- Encryption brings some performance overhead (typically 5-15%)
- Encryption keys must be properly managed
- Both `x86_64` and `aarch64` packages are available on the listed distributions
