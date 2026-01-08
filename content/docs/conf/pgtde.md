---
title: pgtde
weight: 820
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
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`
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

The `pgtde` template uses Percona PostgreSQL kernel, providing enterprise-grade transparent data encryption capability.

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
-- Create encrypted table
CREATE TABLE sensitive_data (
    id SERIAL PRIMARY KEY,
    ssn VARCHAR(11)
) USING pg_tde;

-- Or enable encryption on existing table
ALTER TABLE existing_table SET ACCESS METHOD pg_tde;
```

**Notes**:
- Percona PostgreSQL is based on PostgreSQL 18
- Encryption brings some performance overhead (typically 5-15%)
- Encryption keys must be properly managed
- ARM64 architecture not supported

