---
title: "rdkit"
linkTitle: "rdkit"
description: "Cheminformatics functionality for PostgreSQL."
weight: 2930
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rdkit/rdkit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rdkit/rdkit</div>
    <div class="ext-card__desc">https://github.com/rdkit/rdkit</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`rdkit`**](/ext/e/rdkit) | `202503.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2930  | [**`rdkit`**](/ext/e/rdkit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> u24 has rdkit for pg17


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `202503.1` | {{< pgvers "18,17,16,15,14" >}} | `rdkit` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `202503.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rdkit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 |
| d13.x86_64 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 |
| d13.aarch64 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 | AVAIL PGDG 202303.3 1 |
| u24.x86_64 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 |
| u24.aarch64 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 | AVAIL PGDG 202503.1 1 |
@ d13.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u24.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ d13.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u24.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ d12.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg120+1_amd64.deb pgdg 202303.3 393.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg120+1_amd64.deb
@ d12.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg120+1_arm64.deb pgdg 202303.3 384.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg120+1_arm64.deb
@ d13.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg22.04+1_amd64.deb pgdg 202303.3 395.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg22.04+1_arm64.deb pgdg 202303.3 387.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ d12.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg120+1_amd64.deb pgdg 202303.3 394.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg120+1_amd64.deb
@ d12.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg120+1_arm64.deb pgdg 202303.3 385.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg120+1_arm64.deb
@ d13.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg22.04+1_amd64.deb pgdg 202303.3 395.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg22.04+1_arm64.deb pgdg 202303.3 387.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ d12.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg120+1_amd64.deb pgdg 202303.3 394.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg120+1_amd64.deb
@ d12.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg120+1_arm64.deb pgdg 202303.3 385.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg120+1_arm64.deb
@ d13.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg22.04+1_amd64.deb pgdg 202303.3 395.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg22.04+1_arm64.deb pgdg 202303.3 387.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 242.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `rdkit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install rdkit;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y rdkit -v 18  # PG 18
pig ext install -y rdkit -v 17  # PG 17
pig ext install -y rdkit -v 16  # PG 16
pig ext install -y rdkit -v 15  # PG 15
pig ext install -y rdkit -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-rdkit   # PG 18
apt install -y postgresql-17-rdkit   # PG 17
apt install -y postgresql-16-rdkit   # PG 16
apt install -y postgresql-15-rdkit   # PG 15
apt install -y postgresql-14-rdkit   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION rdkit;
```




## Usage

> [rdkit: Cheminformatics and molecule toolkit PostgreSQL cartridge](https://github.com/rdkit/rdkit)

The RDKit PostgreSQL cartridge provides the `mol` datatype for molecules, `fp` datatype for fingerprints, substructure and similarity search operations, and GiST index support.

```sql
CREATE EXTENSION rdkit;
```

### Data Types

| Type | Description |
|------|-------------|
| `mol` | Molecular structure (from SMILES, SMARTS, etc.) |
| `bfp` | Bit vector fingerprint |
| `sfp` | Sparse (count) fingerprint |

### Molecule Input/Output

```sql
-- Create molecule from SMILES
SELECT 'c1ccccc1'::mol;

-- Check if SMILES is valid
SELECT is_valid_smiles('c1ccccc1');

-- Convert molecule to SMILES
SELECT mol_to_smiles('c1ccccc1'::mol);
```

### Substructure Search

```sql
-- Substructure match operator
SELECT 'c1ccccc1O'::mol @> 'c1ccccc1'::mol;   -- true (phenol contains benzene)
SELECT 'c1ccccc1'::mol <@ 'c1ccccc1O'::mol;    -- true

-- Using SMARTS patterns
SELECT 'c1ccccc1O'::mol @> 'c1ccc(O)cc1'::mol;
```

### Similarity Search

```sql
-- Tanimoto similarity (returns value between 0 and 1)
SELECT tanimoto_sml(morganbv_fp('c1ccccc1'::mol), morganbv_fp('c1ccccc1O'::mol));

-- Dice similarity
SELECT dice_sml(morganbv_fp('c1ccccc1'::mol), morganbv_fp('c1ccccc1O'::mol));
```

### Fingerprint Functions

```sql
-- Morgan fingerprint (bit vector)
SELECT morganbv_fp('c1ccccc1'::mol);
SELECT morganbv_fp('c1ccccc1'::mol, 2);  -- radius=2

-- RDKit fingerprint
SELECT rdkit_fp('c1ccccc1'::mol);

-- Topological torsion fingerprint
SELECT torsionbv_fp('c1ccccc1'::mol);

-- Atom pair fingerprint
SELECT atompairbv_fp('c1ccccc1'::mol);
```

### Descriptor Calculations

```sql
SELECT mol_amw('c1ccccc1'::mol);          -- average molecular weight
SELECT mol_logp('c1ccccc1'::mol);         -- LogP
SELECT mol_hba('c1ccccc1O'::mol);         -- H-bond acceptors
SELECT mol_hbd('c1ccccc1O'::mol);         -- H-bond donors
SELECT mol_numrotatablebonds('c1ccccc1'::mol); -- rotatable bonds
SELECT mol_numatoms('c1ccccc1'::mol);     -- number of atoms
SELECT mol_numheavyatoms('c1ccccc1'::mol);    -- heavy atoms
SELECT mol_numrings('c1ccccc1'::mol);     -- number of rings
```

### GiST Index Support

Create indexes for fast substructure and similarity searches:

```sql
-- Substructure search index
CREATE INDEX idx_mol ON molecules USING gist(molecule);

-- Fingerprint similarity index
CREATE INDEX idx_fp ON molecules USING gist(morganbv_fp(molecule));
```

Query with index support:

```sql
-- Substructure search
SELECT * FROM molecules WHERE molecule @> 'c1ccccc1'::mol;

-- Similarity search (with threshold)
SET rdkit.dice_threshold = 0.5;
SELECT * FROM molecules WHERE morganbv_fp(molecule) % morganbv_fp('c1ccccc1O'::mol);
```

### GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `rdkit.tanimoto_threshold` | 0.5 | Threshold for Tanimoto similarity operator `<%>` |
| `rdkit.dice_threshold` | 0.5 | Threshold for Dice similarity operator `%` |
