---
title: "PGDG Repo"
icon: fas fa-republican
description: "The official PostgreSQL APT/YUM repository"
weight: 5410
---

The Pigsty PGSQL Repo is designed to work together with the official PostgreSQL Global Development Group ([PGDG](https://www.postgresql.org/download/linux/)) repo.
Together, they can provide [{{< param pgext_count >}} packaged PostgreSQL extensions](/ext/) out-of-the-box.

> The PGDG mirror is continuously synchronized. Refer to each repository's `InRelease` or `repomd.xml` metadata for its actual state.


---------

## Quick Start

You can install [pig](/docs/pig/) - the CLI tool, and add pgdg repo with it (recommended):

```bash
pig repo add pgdg                           # add pgdg repo file
pig repo add pgdg -u                        # add pgdg repo and update cache
pig repo add pgdg -u --region=default       # add pgdg repo, enforce using the default repo (postgresql.org)
pig repo add pgdg -u --region=china         # add pgdg repo, always use the china mirror (repo.pigsty.cc)
pig repo add pgsql -u                       # pgsql = pgdg + pigsty-pgsql (add pigsty + official PGDG)
pig repo add -u                             # all = node + pgsql (pgdg + pigsty) + infra
```


---------

## Mirror

Since 2025-05, PGDG has closed the rsync/ftp sync channel, which makes almost all mirror sites out-of-sync.

Currently, Pigsty, Yandex, and Xtom are providing regular synced mirror service.

The Pigsty PGDG mirror is a subset of the official PGDG repo, covering EL 7-10, Debian 11-13, and Ubuntu 22.04 - 26.04 on x86_64 and arm64. The stable repository covers supported PostgreSQL 14 - 18 releases, while the `beta` module additionally provides PostgreSQL 19 Beta.

{{% alert title="2025-11 Update Notice: Aliyun/Tsinghua TUNA Resumed" color="info" %}}
Currently, the Aliyun/Tsinghua TUNA mirror sites have resumed PGDG repository synchronization.
{{% /alert %}}


---------

## Compatibility

|   OS Code      | Vendor | Major |                PG Major Version                | Comment  |
|:--------------:|:-------|:-----:|:----------------------------------------------:|:--------:|
| el7.x86_64     | EL     |   7   | **18**, **17**, **16**, **15**, **14** |   EOL    |
| el8.x86_64     | EL     |   8   | **18**, **17**, **16**, **15**, **14** | Near EOL |
| el8.aarch64    | EL     |   8   | **18**, **17**, **16**, **15**, **14** | Near EOL |
| el9.x86_64     | EL     |   9   | **18**, **17**, **16**, **15**, **14** |    OK    |
| el9.aarch64    | EL     |   9   | **18**, **17**, **16**, **15**, **14** |    OK    |
| el10.x86_64    | EL     |  10   | **18**, **17**, **16**, **15**, **14** |    OK    |
| el10.aarch64   | EL     |  10   | **18**, **17**, **16**, **15**, **14** |    OK    |
| d11.x86_64     | Debian |  11   | **18**, **17**, **16**, **15**, **14** |   EOL    |
| d11.aarch64    | Debian |  11   | **18**, **17**, **16**, **15**, **14** |   EOL    |
| d12.x86_64     | Debian |  12   | **18**, **17**, **16**, **15**, **14** |    OK    |
| d12.aarch64    | Debian |  12   | **18**, **17**, **16**, **15**, **14** |    OK    |
| d13.x86_64     | Debian |  13   | **18**, **17**, **16**, **15**, **14** |    OK    |
| d13.aarch64    | Debian |  13   | **18**, **17**, **16**, **15**, **14** |    OK    |
| u22.x86_64     | Ubuntu |  22   | **18**, **17**, **16**, **15**, **14** |    OK    |
| u22.aarch64    | Ubuntu |  22   | **18**, **17**, **16**, **15**, **14** |    OK    |
| u24.x86_64     | Ubuntu |  24   | **18**, **17**, **16**, **15**, **14** |    OK    |
| u24.aarch64    | Ubuntu |  24   | **18**, **17**, **16**, **15**, **14** |    OK    |
| u26.x86_64     | Ubuntu |  26   | **18**, **17**, **16**, **15**, **14** |    OK    |
| u26.aarch64    | Ubuntu |  26   | **18**, **17**, **16**, **15**, **14** |    OK    |

---------

## Repo Configuration

### EL YUM/DNF Repo

```yaml
  - { name: pgdg-common    ,description: 'PostgreSQL Common'  ,module: pgsql   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/common/redhat/rhel-$releasever-$basearch'      ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/common/redhat/rhel-$releasever-$basearch'      ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/common/redhat/rhel-$releasever-$basearch' }}
  - { name: pgdg14         ,description: 'PostgreSQL 14'      ,module: pgsql   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-$releasever-$basearch'          ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/14/redhat/rhel-$releasever-$basearch'          ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/14/redhat/rhel-$releasever-$basearch' }}
  - { name: pgdg15         ,description: 'PostgreSQL 15'      ,module: pgsql   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-$releasever-$basearch'          ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/15/redhat/rhel-$releasever-$basearch'          ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/15/redhat/rhel-$releasever-$basearch' }}
  - { name: pgdg16         ,description: 'PostgreSQL 16'      ,module: pgsql   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-$releasever-$basearch'          ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/16/redhat/rhel-$releasever-$basearch'          ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/16/redhat/rhel-$releasever-$basearch' }}
  - { name: pgdg17         ,description: 'PostgreSQL 17'      ,module: pgsql   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-$releasever-$basearch'          ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/17/redhat/rhel-$releasever-$basearch'          ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/17/redhat/rhel-$releasever-$basearch' }}
  - { name: pgdg18         ,description: 'PostgreSQL 18'      ,module: pgsql   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-$releasever-$basearch'          ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/18/redhat/rhel-$releasever-$basearch'          ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/18/redhat/rhel-$releasever-$basearch' }}
  - { name: pgdg-beta      ,description: 'PostgreSQL Testing' ,module: beta    ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/testing/19/redhat/rhel-$releasever-$basearch'  ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/testing/19/redhat/rhel-$releasever-$basearch'  ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/testing/19/redhat/rhel-$releasever-$basearch'  }}
  - { name: pgdg-extras    ,description: 'PostgreSQL Extra'   ,module: extra   ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/extras/redhat/rhel-$releasever-$basearch'      ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/extras/redhat/rhel-$releasever-$basearch'      ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/extras/redhat/rhel-$releasever-$basearch'      }}
  - { name: pgdg14-nonfree ,description: 'PostgreSQL 14+'     ,module: extra   ,releases: [8,9,10] ,arch: [x86_64         ] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-$releasever-$basearch' ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/non-free/14/redhat/rhel-$releasever-$basearch' ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/non-free/14/redhat/rhel-$releasever-$basearch' } ,meta: { skip_if_unavailable: 1 }}
  - { name: pgdg15-nonfree ,description: 'PostgreSQL 15+'     ,module: extra   ,releases: [8,9,10] ,arch: [x86_64         ] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-$releasever-$basearch' ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/non-free/15/redhat/rhel-$releasever-$basearch' ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/non-free/15/redhat/rhel-$releasever-$basearch' } ,meta: { skip_if_unavailable: 1 }}
  - { name: pgdg16-nonfree ,description: 'PostgreSQL 16+'     ,module: extra   ,releases: [8,9,10] ,arch: [x86_64         ] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-$releasever-$basearch' ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/non-free/16/redhat/rhel-$releasever-$basearch' ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/non-free/16/redhat/rhel-$releasever-$basearch' } ,meta: { skip_if_unavailable: 1 }}
  - { name: pgdg17-nonfree ,description: 'PostgreSQL 17+'     ,module: extra   ,releases: [8,9,10] ,arch: [x86_64         ] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-$releasever-$basearch' ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/non-free/17/redhat/rhel-$releasever-$basearch' ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/non-free/17/redhat/rhel-$releasever-$basearch' } ,meta: { skip_if_unavailable: 1 }}
  - { name: pgdg18-nonfree ,description: 'PostgreSQL 18+'     ,module: extra   ,releases: [8,9,10] ,arch: [x86_64         ] ,baseurl: { default: 'https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-$releasever-$basearch' ,china: 'https://mirrors.aliyun.com/postgresql/repos/yum/non-free/18/redhat/rhel-$releasever-$basearch' ,europe: 'https://mirrors.xtom.de/postgresql/repos/yum/non-free/18/redhat/rhel-$releasever-$basearch' } ,meta: { skip_if_unavailable: 1 }}
```


### Debian / Ubuntu APT Repo

```yaml
  - { name: pgdg           ,description: 'PGDG'               ,module: pgsql   ,releases: [11,12,13,22,24,26] ,arch: [x86_64, aarch64] ,baseurl: { default: 'http://apt.postgresql.org/pub/repos/apt/ ${distro_codename}-pgdg main' ,china: 'https://mirrors.aliyun.com/postgresql/repos/apt/ ${distro_codename}-pgdg main' }}
  - { name: pgdg-beta      ,description: 'PGDG Beta'          ,module: beta    ,releases: [11,12,13,22,24,26] ,arch: [x86_64, aarch64] ,baseurl: { default: 'http://apt.postgresql.org/pub/repos/apt/ ${distro_codename}-pgdg-testing main 19' ,china: 'https://mirrors.aliyun.com/postgresql/repos/apt/ ${distro_codename}-pgdg-testing main 19' }}
```


---------

## APT GPG Key

PGDG APT repo is signed with the following GPG key: `B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8` (`ACCC4CF8`)

MD5 checksum is `f54c5c1aa1329dc26e33b29762faaec4`, see https://www.postgresql.org/download/linux/debian/ for details.

{{< tabpane text=true persist=header >}}
{{% tab header="Official" %}}
```bash
sudo curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc
. /etc/os-release
sudo sh -c "echo 'deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $VERSION_CODENAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```bash
sudo curl -fsSL https://repo.pigsty.cc/apt/pgdg/ACCC4CF8.key -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc
. /etc/os-release
sudo sh -c "echo 'deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://repo.pigsty.cc/apt/pgdg/ $VERSION_CODENAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
```
{{% /tab %}}
{{< /tabpane >}}


---------

## YUM GPG Key

PGDG YUM repo is signed with a series of keys from `https://ftp.postgresql.org/pub/repos/yum/keys/`. Please choose and use as needed.
