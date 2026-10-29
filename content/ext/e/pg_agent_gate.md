---
title: "pg_agent_gate"
linkTitle: "pg_agent_gate"
description: "SQL proposal, verification and execution gate with human approval for agent roles."
weight: 7470
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Manuelreyesbravo/pg_agent_gate">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Manuelreyesbravo/pg_agent_gate</div>
    <div class="ext-card__desc">https://github.com/Manuelreyesbravo/pg_agent_gate</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_agent_gate-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_agent_gate-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_agent_gate-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_agent_gate`**](/ext/e/pg_agent_gate) | `0.3.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7470  | [**`pg_agent_gate`**](/ext/e/pg_agent_gate) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `agent_gate` |
{.ext-table}

| **Related** | [`pg_living_assertions`](/ext/e/pg_living_assertions) [`pg_policy`](/ext/e/pg_policy) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream PG18-19; packages PG18. Preload before the first agent statement; READ COMMITTED required. Human approval preserves commit guards; pg_living_assertions optional. Build pgrx 0.19.3, upstream 0.19.2. Trusted code and external effects remain outside the sandbox.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18" >}} | `pg_agent_gate` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18" >}} | `pg_agent_gate_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18" >}} | `postgresql-$v-pg-agent-gate` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_agent_gate_18 pg_agent_gate_18-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 524.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_agent_gate_18-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_agent_gate_18 pg_agent_gate_18-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 457.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_agent_gate_18-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_agent_gate_18 pg_agent_gate_18-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 526.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_agent_gate_18-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_agent_gate_18 pg_agent_gate_18-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 485.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_agent_gate_18-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_agent_gate_18 pg_agent_gate_18-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 526.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_agent_gate_18-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_agent_gate_18 pg_agent_gate_18-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 462.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_agent_gate_18-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 461.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 397.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 460.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 397.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 500.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 459.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 494.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 451.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 493.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-agent-gate postgresql-18-pg-agent-gate_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 451.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-agent-gate/postgresql-18-pg-agent-gate_0.3.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_agent_gate` using `pig build`:

```bash
pig build pkg pg_agent_gate         # build RPM / DEB packages
```


## Install

You can install `pg_agent_gate` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_agent_gate;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_agent_gate -v 18  # PG 18
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_agent_gate_18       # PG 18
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-agent-gate   # PG 18
```


**Preload**:

```bash
shared_preload_libraries = 'pg_agent_gate';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_agent_gate;
```

## Usage

Sources:

- [README](https://github.com/Manuelreyesbravo/pg_agent_gate/blob/v0.3.0/README.md)
- [Control](https://github.com/Manuelreyesbravo/pg_agent_gate/blob/v0.3.0/pg_agent_gate.control)
- [CHANGELOG](https://github.com/Manuelreyesbravo/pg_agent_gate/blob/v0.3.0/CHANGELOG.md)
- [SQL upgrade](https://github.com/Manuelreyesbravo/pg_agent_gate/blob/v0.3.0/sql/pg_agent_gate--0.2.15--0.3.0.sql)

`pg_agent_gate` 0.3.0 routes registered agent roles through proposals, checks, dry runs and guarded execution on PostgreSQL 18/19, with optional human approval before commit. The library must be loaded before the first agent statement, through shared preload or a role-level session preload followed by reconnection.

### Core Workflow

```sql
CREATE EXTENSION pg_agent_gate;
```

```sql
SELECT agent_gate.whoami();
SELECT agent_gate.discover('customers');
SELECT agent_gate.propose('SELECT 1', 'Check connectivity');
```

### Operational Boundaries

Install as a superuser and register ordinary roles with narrow table privileges, row limits and a DDL allow-list. The API includes `agent_gate.whoami`, `agent_gate.discover`, `agent_gate.propose`, `agent_gate.dry_run`, `agent_gate.commit` and `agent_gate.acts`. Verbs require READ COMMITTED. Proposal-time session settings are checked again before dry-run/commit, and reads that invoke known state-changing built-ins are rejected. Re-registering a name does not inherit old proposals. `agent_gate.max_proposal_bytes` and `agent_gate.max_intent_bytes` bound input sizes. Existing duplicate committed proposals can block the upgrade and require inspection. Optional bound checks use `pg_living_assertions`. Rollback cannot undo every sequence or external effect; existing privileged code must remain trusted. The server log can contain literal SQL. Attempt records participate in the outer transaction, and the default fast durability mode can lose recent records on a crash.

### Human Approval

Set `p_requires_approval` when calling `agent_gate.register_agent` to require consent for that agent's proposals. A member of `agent_gate_approver` records consent with `agent_gate.approve`; the agent then commits its own proposal. Approval executes no SQL and does not bypass row limits, assertions or commit-time checks. The agent cannot approve itself, and `propose_and_commit` cannot bypass the approval requirement.

The fixed `agent_gate_internal` schema stores proposals, executions and approvals; agents do not access those tables directly. The execution record identifies the approver in `approved_by`.

### Library and SQL Upgrades

The library retains the 0.2.15 protections against function-running argument casts and lone-semicolon crashes. Replace the library and restart or reconnect every process that preloads it, then update each database to 0.3.0 using the supplied SQL upgrade. The 0.3.0 migration adds approval objects and is not a no-op. Treat DDL permission as schema power that row-count limits do not bound.
