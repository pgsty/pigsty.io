---
title: "pg_dbms_job"
linkTitle: "pg_dbms_job"
description: "Extension to add Oracle DBMS_JOB full compatibility to PostgreSQL"
weight: 9260
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/MigOpsRepos/pg_dbms_job">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">MigOpsRepos/pg_dbms_job</div>
    <div class="ext-card__desc">https://github.com/MigOpsRepos/pg_dbms_job</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dbms_job`**](/ext/e/pg_dbms_job) | `1.5` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9260  | [**`pg_dbms_job`**](/ext/e/pg_dbms_job) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pgagent`](/ext/e/pgagent) [`pg_jobmon`](/ext/e/pg_jobmon) [`oracle_fdw`](/ext/e/oracle_fdw) [`orafce`](/ext/e/orafce) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_job` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_job_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 3 |
| el8.aarch64 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 | BREAK PGDG 1.5 1 |
| el9.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 3 |
| el9.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| el10.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| el10.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 pg_dbms_job_18 pg_dbms_job_18-1.5-5PGDG.rhel8.x86_64.rpm pgdg 1.5 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_dbms_job_18-1.5-5PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_dbms_job_18 pg_dbms_job_18-1.5-5PGDG.rhel8.aarch64.rpm pgdg 1.5 26.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_dbms_job_18-1.5-5PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_dbms_job_18 pg_dbms_job_18-1.5-5PGDG.rhel9.x86_64.rpm pgdg 1.5 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_job_18-1.5-5PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_dbms_job_18 pg_dbms_job_18-1.5-5PGDG.rhel9.aarch64.rpm pgdg 1.5 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_job_18-1.5-5PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_dbms_job_18 pg_dbms_job_18-1.5-5PGDG.rhel10.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_job_18-1.5-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_dbms_job_18 pg_dbms_job_18-1.5-5PGDG.rhel10.aarch64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_job_18-1.5-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 17 pg_dbms_job_17 pg_dbms_job_17-1.5-3PGDG.rhel8.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_dbms_job_17-1.5-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_dbms_job_17 pg_dbms_job_17-1.5-3PGDG.rhel8.aarch64.rpm pgdg 1.5 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_dbms_job_17-1.5-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_dbms_job_17 pg_dbms_job_17-1.5-3PGDG.rhel9.x86_64.rpm pgdg 1.5 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_job_17-1.5-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_dbms_job_17 pg_dbms_job_17-1.5-3PGDG.rhel9.aarch64.rpm pgdg 1.5 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_job_17-1.5-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_dbms_job_17 pg_dbms_job_17-1.5-5PGDG.rhel10.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_job_17-1.5-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_dbms_job_17 pg_dbms_job_17-1.5-5PGDG.rhel10.aarch64.rpm pgdg 1.5 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_job_17-1.5-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 16 pg_dbms_job_16 pg_dbms_job_16-1.5-3PGDG.rhel8.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_dbms_job_16-1.5-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_dbms_job_16 pg_dbms_job_16-1.5-3PGDG.rhel8.aarch64.rpm pgdg 1.5 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_dbms_job_16-1.5-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_dbms_job_16 pg_dbms_job_16-1.5-3PGDG.rhel9.x86_64.rpm pgdg 1.5 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_job_16-1.5-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_dbms_job_16 pg_dbms_job_16-1.5-3PGDG.rhel9.aarch64.rpm pgdg 1.5 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_job_16-1.5-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_dbms_job_16 pg_dbms_job_16-1.5-5PGDG.rhel10.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_job_16-1.5-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_dbms_job_16 pg_dbms_job_16-1.5-5PGDG.rhel10.aarch64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_job_16-1.5-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 15 pg_dbms_job_15 pg_dbms_job_15-1.5-1.rhel8.x86_64.rpm pgdg 1.5 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dbms_job_15-1.5-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_dbms_job_15 pg_dbms_job_15-1.5-1.rhel8.aarch64.rpm pgdg 1.5 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_dbms_job_15-1.5-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_dbms_job_15 pg_dbms_job_15-1.5-1.rhel9.x86_64.rpm pgdg 1.5 25.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_job_15-1.5-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_dbms_job_15 pg_dbms_job_15-1.5-1.rhel9.aarch64.rpm pgdg 1.5 25.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_job_15-1.5-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_dbms_job_15 pg_dbms_job_15-1.5-5PGDG.rhel10.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_job_15-1.5-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_dbms_job_15 pg_dbms_job_15-1.5-5PGDG.rhel10.aarch64.rpm pgdg 1.5 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_job_15-1.5-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.5-1.rhel8.x86_64.rpm pgdg 1.5 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_job_14-1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.4.0-1.rhel8.x86_64.rpm pgdg 1.4.0 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_job_14-1.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.2.0-1.rhel8.x86_64.rpm pgdg 1.2.0 25.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_job_14-1.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_dbms_job_14 pg_dbms_job_14-1.5-1.rhel8.aarch64.rpm pgdg 1.5 26.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_job_14-1.5-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.5-1.rhel9.x86_64.rpm pgdg 1.5 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_job_14-1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.4.0-1.rhel9.x86_64.rpm pgdg 1.4.0 25.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_job_14-1.4.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.2.0-1.rhel9.x86_64.rpm pgdg 1.2.0 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_job_14-1.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_dbms_job_14 pg_dbms_job_14-1.5-1.rhel9.aarch64.rpm pgdg 1.5 25.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_job_14-1.5-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_dbms_job_14 pg_dbms_job_14-1.5-5PGDG.rhel10.x86_64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_job_14-1.5-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_dbms_job_14 pg_dbms_job_14-1.5-5PGDG.rhel10.aarch64.rpm pgdg 1.5 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_job_14-1.5-5PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `pg_dbms_job` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_dbms_job;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_dbms_job -v 18  # PG 18
pig ext install -y pg_dbms_job -v 17  # PG 17
pig ext install -y pg_dbms_job -v 16  # PG 16
pig ext install -y pg_dbms_job -v 15  # PG 15
pig ext install -y pg_dbms_job -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_dbms_job_18       # PG 18
dnf install -y pg_dbms_job_17       # PG 17
dnf install -y pg_dbms_job_16       # PG 16
dnf install -y pg_dbms_job_15       # PG 15
dnf install -y pg_dbms_job_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_dbms_job;
```



## Usage

> [pg_dbms_job: Extension to add Oracle DBMS_JOB full compatibility to PostgreSQL](https://github.com/MigOpsRepos/pg_dbms_job)

### Enabling

```sql
CREATE EXTENSION pg_dbms_job;
```

A dedicated scheduler daemon must be running per database:

```bash
pg_dbms_job -c /etc/pg_dbms_job/mydb-dbms_job.conf
```

### SUBMIT - Schedule a Job

```sql
BEGIN;
-- Scheduled job: run a procedure every day
CALL dbms_job.submit(
    job       => jobid,
    what      => 'CALL my_procedure();',
    next_date => current_timestamp + interval '1 minute',
    interval  => 'current_timestamp + ''1 day''::interval'
);
COMMIT;
```

When `next_date` and `interval` are omitted, the job executes immediately and asynchronously.

### BROKEN - Disable/Enable a Job

```sql
BEGIN;
CALL dbms_job.broken(12345, true);   -- disable job
CALL dbms_job.broken(12345, false);  -- re-enable job
COMMIT;
```

### CHANGE - Modify a Job

```sql
BEGIN;
CALL dbms_job.change(12345, null, null, 'current_timestamp + ''3 days''::interval');
COMMIT;
```

### INTERVAL - Change Execution Interval

```sql
BEGIN;
CALL dbms_job.interval(12345, 'current_timestamp + ''1 hour''::interval');
COMMIT;
```

### NEXT_DATE - Change Next Execution Date

```sql
BEGIN;
CALL dbms_job.next_date(12345, current_timestamp + interval '30 minutes');
COMMIT;
```

### WHAT - Change Job Code

```sql
BEGIN;
CALL dbms_job.what(12345, 'CALL new_procedure();');
COMMIT;
```

### REMOVE - Delete a Job

```sql
BEGIN;
CALL dbms_job.remove(12345);
COMMIT;
```

### RUN - Execute Immediately

```sql
CALL dbms_job.run(12345);
```

### Viewing Jobs

```sql
SELECT * FROM dbms_job.all_jobs;
```

### Execution History

```sql
SELECT * FROM dbms_job.all_scheduler_job_run_details;
```
