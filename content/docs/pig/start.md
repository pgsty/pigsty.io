---
title: "Getting Started"
linkTitle: "Getting Started"
description: "Quick start with pig, the PostgreSQL package manager"
weight: 5210
icon: fas fa-rocket
module: [PIG]
categories: [Tutorial]
---

Here's a simple getting started tutorial to help you experience the core capabilities of the PIG package manager.

## Short Version

```bash
curl -fsSL https://repo.pigsty.io/pig | bash   # Install PIG from Cloudflare
pig repo set                                   # One-time setup for Linux, Pigsty + PGDG repos (overwrites!)
pig install -v 18 -y pg18 pg_duckdb vector     # Install PG 18 kernel, pg_duckdb, pgvector extensions...
```


## Installation

You can [**install**](/docs/pig/install/) `pig` with the following command:

**Default Installation** (Cloudflare CDN):

```bash
curl -fsSL https://repo.pigsty.io/pig | bash
```

**China Mirror**:

```bash
curl -fsSL https://repo.pigsty.cc/pig | bash
```

The PIG binary is approximately 4 MB and will automatically use `rpm` or `dpkg` to install the latest available version on Linux:

```bash
[INFO] kernel = Linux
[INFO] machine = x86_64
[INFO] package = rpm
[INFO] pkg_url = https://repo.pigsty.io/pkg/pig/v0.9.0/pig-0.9.0-1.x86_64.rpm
[INFO] download = /tmp/pig-0.7.2-1.x86_64.rpm
[INFO] downloading pig v0.7.2
curl -fSL https://repo.pigsty.io/pkg/pig/v0.7.2/pig-0.7.2-1.x86_64.rpm -o /tmp/pig-0.7.2-1.x86_64.rpm
######################################################################## 100.0%
[INFO] md5sum = 85d75c16dfd3ce935d9d889fae345430
[INFO] installing: rpm -ivh /tmp/pig-0.7.2-1.x86_64.rpm
Verifying...                          ################################# [100%]
Preparing...                          ################################# [100%]
Updating / installing...
   1:pig-0.7.2-1                      ################################# [100%]
[INFO] pig v0.7.2 installed successfully
check https://ext.pigsty.io for details
```



## Check Environment

PIG is a Go-written binary program, installed by default at `/usr/bin/pig`. `pig version` prints version information:

```bash
$ pig version

pig version 0.7.2 linux/amd64
build: HEAD 9cdb57a 2025-11-10T11:14:17Z
```

Use the `pig status` command to print the current environment status, OS code, PG installation status, and repository accessibility with latency.

```bash
$ pig status

# [Configuration] ================================
Pig Version      : 0.7.2
Pig Config       : /root/.pig/config.yml
Log Level        : info
Log Path         : stderr

# [OS Environment] ===============================
OS Distro Code   : el10
OS OSArch        : amd64
OS Package Type  : rpm
OS Vendor ID     : rocky
OS Version       : 10
OS Version Full  : 10.0
OS Version Code  : el10

# [PG Environment] ===============================
No PostgreSQL installation found

No active PostgreSQL found in PATH:
- /root/.local/bin
- /root/bin
- /usr/local/sbin
- /usr/local/bin
- /usr/sbin
- /usr/bin

# [Pigsty Environment] ===========================
Inventory Path   : Not Found
Pigsty Home      : Not Found

# [Network Conditions] ===========================
pigsty.cc  ping ok: 612 ms
pigsty.io  ping ok: 1222 ms
google.com request error
Internet Access   :  true
Pigsty Repo       :  pigsty.io
Inferred Region   :  china
Latest Pigsty Ver :  v3.6.1
```


## List Extensions

Use the `pig ext list` command to print the built-in PG extension data catalog.

```bash
[root@pg-meta ~]# pig ext list

Name                            Version     Cate   Flags   License       RPM      DEB      PG Ver  Description
----                            -------     ----   ------  -------       ------   ------   ------  ---------------------
timescaledb                     2.23.0      TIME   -dsl--  Timescale     PIGSTY   PIGSTY   15-18   Enables scalable inserts and complex queries for time-series dat...
timescaledb_toolkit             1.22.0      TIME   -ds-t-  Timescale     PIGSTY   PIGSTY   15-18   Library of analytical hyperfunctions, time-series pipelining, an...
timeseries                      0.1.7       TIME   -d----  PostgreSQL    PIGSTY   PIGSTY   13-18   Convenience API for time series stack
periods                         1.2.3       TIME   -ds---  PostgreSQL    PGDG     PGDG     13-18   Provide Standard SQL functionality for PERIODs and SYSTEM VERSIO...
temporal_tables                 1.2.2       TIME   -ds--r  BSD 2-Clause  PIGSTY   PIGSTY   13-18   temporal tables
.........
pg_fact_loader                  2.0.1       ETL    -ds--x  MIT           PGDG     PGDG     13-18   build fact tables with Postgres
pg_bulkload                     3.1.22      ETL    bds---  BSD 3-Clause  PGDG     PIGSTY   13-17   pg_bulkload is a high speed data loading utility for PostgreSQL
test_decoding                   -           ETL    --s--x  PostgreSQL    CONTRIB  CONTRIB  13-18   SQL-based test/example module for WAL logical decoding
pgoutput                        -           ETL    --s---  PostgreSQL    CONTRIB  CONTRIB  13-18   Logical Replication output plugin

(431 Rows) (Flags: b = HasBin, d = HasDDL, s = HasLib, l = NeedLoad, t = Trusted, r = Relocatable, x = Unknown)
```

All extension metadata is defined in a data file named [`extension.csv`](https://github.com/pgsty/pig/blob/main/cli/ext/assets/extension.csv).
This file is updated with each pig version release. You can update it directly using the [`pig ext reload`](/docs/pig/ext/#ext-reload) command.
The updated file is placed in `~/.pig/extension.csv` by default, which you can view and modify — you can also find the [**authoritative version**](https://github.com/pgsty/pgext/blob/main/db/extension.csv) of this data file in the project.




## Add Repositories

To install extensions, you first need to add upstream repositories. [`pig repo`](/docs/pig/repo/) can be used to manage Linux APT/YUM/DNF software repository configuration.

You can use the straightforward [`pig repo set`](/docs/pig/repo/#repo-set) to overwrite existing repository configuration, ensuring only necessary repositories exist in the system:

```bash
pig repo set                # One-time setup for all repos including Linux system, PGDG, PIGSTY (PGSQL+INFRA)
```

> **Warning**: `pig repo set` will backup and clear existing repository configuration, then add required repositories, implementing Overwrite semantics — please be aware!


Or choose the gentler [`pig repo add`](/docs/pig/repo/#repo-add) to add needed repositories:

```bash
pig repo add pgdg pigsty     # Add PGDG official repo and PIGSTY supplementary repo
pig repo add pgsql           # [Optional] You can also add PGDG and PIGSTY together as one "pgsql" module
pig repo update              # Update cache: apt update / yum makecache
```

PIG will detect your network environment and choose to use Cloudflare global CDN or China cloud CDN, but you can force a specific region with the `--region` parameter.

```bash
pig repo set      --region=china              # Use China region mirror repos for faster downloads
pig repo add pgdg --region=default --update   # Force using PGDG upstream repo
```

PIG itself doesn't support offline installation. You can download RPM/DEB packages yourself and copy them to network-isolated production servers for installation.
The related PIGSTY project provides local software repositories that can use pig to install already-downloaded extensions from local repos.



## Install PG

After adding repositories, you can use the [`pig ext add`](/docs/pig/ext/#ext-add) subcommand to install extensions (and related packages)

```bash
pig ext add -v 18 -y pgsql timescaledb postgis vector pg_duckdb pg_mooncake # Install PG 18 kernel and extensions, auto-confirm

# This command automatically translates packages to:
INFO[20:34:44] translate alias 'pgsql' to package: postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit
INFO[20:34:44] translate extension 'timescaledb' to package: timescaledb-tsl_18*
INFO[20:34:44] translate extension 'postgis' to package: postgis36_18*
INFO[20:34:44] translate extension 'vector' to package: pgvector_18*
INFO[20:34:44] translate extension 'pg_duckdb' to package: pg_duckdb_18*
INFO[20:34:44] translate extension 'pg_mooncake' to package: pg_mooncake_18*
INFO[20:34:44] installing packages: dnf install -y postgresql18 postgresql18-server postgresql18-libs postgresql18-contrib postgresql18-plperl postgresql18-plpython3 postgresql18-pltcl postgresql18-llvmjit timescaledb-tsl_18* postgis36_18* pgvector_18* pg_duckdb_18* pg_mooncake_18*
```

This uses an "alias translation" mechanism to translate clean PG kernel/extension logical package names into actual RPM/DEB lists. If you don't need alias translation, you can use `apt/dnf` directly,
or use the `-n|--no-translation` parameter with the variant `pig install`:

```bash
pig install vector     # With translation, installs pgvector_18 or postgresql-18-pgvector for current PG 18
pig install vector -n  # Without translation, installs the package literally named 'vector' (a log collector from pigsty-infra repo)
```




## Alias Translation

PostgreSQL kernels and extensions correspond to a series of RPM/DEB packages. Remembering these packages is tedious, so pig provides many common aliases to simplify the installation process:

For example, on EL systems, the following aliases will be translated to the corresponding RPM package list on the right:

```yaml
pgsql:        "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit"
pg18:         "postgresql18 postgresql18-server postgresql18-libs postgresql18-contrib postgresql18-plperl postgresql18-plpython3 postgresql18-pltcl postgresql18-llvmjit"
pg17-client:  "postgresql17"
pg17-server:  "postgresql17-server postgresql17-libs postgresql17-contrib"
pg17-devel:   "postgresql17-devel"
pg17-basic:   "pg_repack_17* wal2json_17* pgvector_17*"
pg16-mini:    "postgresql16 postgresql16-server postgresql16-libs postgresql16-contrib"
pg15-full:    "postgresql15 postgresql15-server postgresql15-libs postgresql15-contrib postgresql15-plperl postgresql15-plpython3 postgresql15-pltcl postgresql15-llvmjit postgresql15-test postgresql15-devel"
pg14-main:    "postgresql14 postgresql14-server postgresql14-libs postgresql14-contrib postgresql14-plperl postgresql14-plpython3 postgresql14-pltcl postgresql14-llvmjit pg_repack_14* wal2json_14* pgvector_14*"
pg13-core:    "postgresql13 postgresql13-server postgresql13-libs postgresql13-contrib postgresql13-plperl postgresql13-plpython3 postgresql13-pltcl postgresql13-llvmjit"
```

Note that the `$v` placeholder is replaced with the PG major version number, so when you use the `pgsql` alias, `$v` is actually replaced with 18, 17, etc.
Therefore, when you install the `pg17-server` alias, on EL it actually installs `postgresql17-server`, `postgresql17-libs`, `postgresql17-contrib`, and on Debian/Ubuntu it installs `postgresql-17` — pig handles all the details.

<details>
<summary>Common PostgreSQL Aliases</summary>

[EL alias translation list](https://github.com/pgsty/pig/blob/main/cli/ext/catalog.go#L154)

```bash
"pgsql":        "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit",
"pgsql-mini":   "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib",
"pgsql-core":   "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit",
"pgsql-full":   "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit postgresql$v-test postgresql$v-devel",
"pgsql-main":   "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit pg_repack_$v* wal2json_$v* pgvector_$v*",
"pgsql-client": "postgresql$v",
"pgsql-server": "postgresql$v-server postgresql$v-libs postgresql$v-contrib",
"pgsql-devel":  "postgresql$v-devel",
"pgsql-basic":  "pg_repack_$v* wal2json_$v* pgvector_$v*",
```

[Debian/Ubuntu alias translation](https://github.com/pgsty/pig/blob/main/cli/ext/catalog.go#L260)

```bash
"pgsql":        "postgresql-$v postgresql-client-$v postgresql-plpython3-$v postgresql-plperl-$v postgresql-pltcl-$v",
"pgsql-mini":   "postgresql-$v postgresql-client-$v",
"pgsql-core":   "postgresql-$v postgresql-client-$v postgresql-plpython3-$v postgresql-plperl-$v postgresql-pltcl-$v",
"pgsql-full":   "postgresql-$v postgresql-client-$v postgresql-plpython3-$v postgresql-plperl-$v postgresql-pltcl-$v postgresql-server-dev-$v",
"pgsql-main":   "postgresql-$v postgresql-client-$v postgresql-plpython3-$v postgresql-plperl-$v postgresql-pltcl-$v postgresql-$v-repack postgresql-$v-wal2json postgresql-$v-pgvector",
"pgsql-client": "postgresql-client-$v",
"pgsql-server": "postgresql-$v",
"pgsql-devel":  "postgresql-server-dev-$v",
"pgsql-basic":  "postgresql-$v-repack postgresql-$v-wal2json postgresql-$v-pgvector",
```

These aliases can be used directly and instantiated with major version numbers via parameters, or you can use alias variants with major version numbers: replacing `pgsql` with `pg18`, `pg17`, `pgxx`, etc.
For example, for PostgreSQL 18, you can directly use these aliases:

| `pgsql` | `pg18` | `pg17` | `pg16` | `pg15` | `pg14` | `pg13` |
|:---|:---|:---|:---|:---|:---|:---|
| `pgsql` | **`pg18`** | `pg17` | `pg16` | `pg15` | `pg14` | `pg13` |
| `pgsql-mini` | `pg18-mini` | `pg17-mini` | `pg16-mini` | `pg15-mini` | `pg14-mini` | `pg13-mini` |
| `pgsql-core` | `pg18-core` | `pg17-core` | `pg16-core` | `pg15-core` | `pg14-core` | `pg13-core` |
| `pgsql-full` | `pg18-full` | `pg17-full` | `pg16-full` | `pg15-full` | `pg14-full` | `pg13-full` |
| `pgsql-main` | `pg18-main` | `pg17-main` | `pg16-main` | `pg15-main` | `pg14-main` | `pg13-main` |
| `pgsql-client` | `pg18-client` | `pg17-client` | `pg16-client` | `pg15-client` | `pg14-client` | `pg13-client` |
| `pgsql-server` | `pg18-server` | `pg17-server` | `pg16-server` | `pg15-server` | `pg14-server` | `pg13-server` |
| `pgsql-devel` | `pg18-devel` | `pg17-devel` | `pg16-devel` | `pg15-devel` | `pg14-devel` | `pg13-devel` |
| `pgsql-basic` | `pg18-basic` | `pg17-basic` | `pg16-basic` | `pg15-basic` | `pg14-basic` | `pg13-basic` |

</details>



## Install Extensions

pig detects the PostgreSQL installation in the current system environment. If it detects an active PG installation (based on `pg_config` in `PATH`), pig will automatically install extensions for that PG major version without you explicitly specifying it.

```bash
pig install pg_smtp_client          # Simpler
pig install pg_smtp_client -v 18    # Explicitly specify major version, more stable and reliable
pig install pg_smtp_client -p /usr/lib/postgresql/16/bin/pg_config   # Another way to specify PG version
dnf install pg_smtp_client_18       # Most direct... but not all extensions are this simple...
```

Tip: To add a specific major version of PostgreSQL kernel binaries to `PATH`, use the `pig ext link` command:

```bash
pig ext link pg17             # Create /usr/pgsql symlink and write to /etc/profile.d/pgsql.sh
. /etc/profile.d/pgsql.sh     # Take effect immediately, update PATH environment variable
```

If you want to install a specific version of software, you can use the `name=ver` syntax:

```bash
pig ext add -v 17 pgvector=0.7.2 # install pgvector 0.7.2 for PG 17
pig ext add pg16=16.5            # install PostgreSQL 16 with a specific minor version
```

> **Warning**: Note that currently only PGDG YUM repository provides historical extension versions. PIGSTY repository and PGDG APT repository only provide the **latest version** of extensions.




## Show Extensions

The [`pig ext status`](/docs/pig/ext/#ext-status) command can be used to show currently installed extensions.

```bash
$ pig ext status -v 18

Installed:
- PostgreSQL 18.0  80  Extensions

No active PostgreSQL found in PATH:
- /root/.local/bin
- /root/bin
- /usr/local/sbin
- /usr/local/bin
- /usr/sbin
- /usr/bin
Extension Stat  :  11 Installed (PIGSTY 3, PGDG 8) + 69 CONTRIB = 80 Total

Name                          Version  Cate  Flags   License     Repo    Package              Description
----                          -------  ----  ------  -------     ------  ------------         ---------------------
timescaledb                   2.23.0   TIME  -dsl--  Timescale   PIGSTY  timescaledb-tsl_18*  Enables scalable inserts and complex queries for time-series dat
postgis                       3.6.0    GIS   -ds---  GPL-2.0     PGDG    postgis36_18*        PostGIS geometry and geography spatial types and functions
postgis_topology              3.6.0    GIS   -ds---  GPL-2.0     PGDG    postgis36_18*        PostGIS topology spatial types and functions
postgis_raster                3.6.0    GIS   -ds---  GPL-2.0     PGDG    postgis36_18*        PostGIS raster types and functions
postgis_sfcgal                3.6.0    GIS   -ds--r  GPL-2.0     PGDG    postgis36_18*        PostGIS SFCGAL functions
postgis_tiger_geocoder        3.6.0    GIS   -ds-t-  GPL-2.0     PGDG    postgis36_18*        PostGIS tiger geocoder and reverse geocoder
address_standardizer          3.6.0    GIS   -ds--r  GPL-2.0     PGDG    postgis36_18*        Used to parse an address into constituent elements. Generally us
address_standardizer_data_us  3.6.0    GIS   -ds--r  GPL-2.0     PGDG    postgis36_18*        Address Standardizer US dataset example
vector                        0.8.1    RAG   -ds--r  PostgreSQL  PGDG    pgvector_18*         vector data type and ivfflat and hnsw access methods
pg_duckdb                     1.1.0    OLAP  -dsl--  MIT         PIGSTY  pg_duckdb_18*        DuckDB Embedded in Postgres
pg_mooncake                   0.2.0    OLAP  -d----  MIT         PIGSTY  pg_mooncake_18*      Columnstore Table in Postgres
```

If PostgreSQL cannot be found in your current system path (based on `pg_config` in `PATH`), please make sure to specify the PG major version number or `pg_config` path via `-v|-p`.



## Scan Extensions

[`pig ext scan`](/docs/pig/ext/#ext-scan) provides lower-level extension scanning functionality, scanning shared libraries in the specified PostgreSQL directory to discover installed extensions:

```bash
root@s37451:~# pig ext scan
Installed:
* PostgreSQL 17.6 (Debian 17.6-2.pgdg13+1)    70  Extensions
- PostgreSQL 15.14 (Debian 15.14-1.pgdg13+1)  69  Extensions
- PostgreSQL 14.19 (Debian 14.19-1.pgdg13+1)  66  Extensions
- PostgreSQL 13.22 (Debian 13.22-1.pgdg13+1)  64  Extensions
- PostgreSQL 18.0 (Debian 18.0-1.pgdg13+3)    70  Extensions
- PostgreSQL 16.10 (Debian 16.10-1.pgdg13+1)  70  Extensions

Active:
PG Version      :  PostgreSQL 17.6 (Debian 17.6-2.pgdg13+1)
Config Path     :  /usr/lib/postgresql/17/bin/pg_config
Binary Path     :  /usr/lib/postgresql/17/bin
Library Path    :  /usr/lib/postgresql/17/lib
Extension Path  :  /usr/share/postgresql/17/extension
Name                 Version  SharedLibs                                       Description            Meta
----                 -------  ----------                                       ---------------------  ------
amcheck              1.4      functions for verifying relation integrity       relocatable=true module_pathname=$libdir/amcheck lib=amcheck.so
...
pg_duckdb            1.1.0    DuckDB Embedded in Postgres                      module_pathname=$libdir/pg_duckdb relocatable=false schema=public lib=libduckdb.so, pg_duckdb.so
pg_mooncake          0.2.0    Real-time analytics on Postgres tables           module_pathname=pg_mooncake relocatable=false requires=pg_duckdb superuser=true lib=pg_mooncake.so
pg_prewarm           1.2      prewarm relation data                            module_pathname=$libdir/pg_prewarm relocatable=true lib=pg_prewarm.so
pg_smtp_client       0.2.1    PostgreSQL extension to send email using SMTP    relocatable=false superuser=false schema=smtp_client module_pathname=$libdir/pg_smtp_client lib=pg_smtp_client.so
...
Encoding Libs: cyrillic_and_mic, euc2004_sjis2004, euc_cn_and_mic, euc_jp_and_sjis, euc_kr_and_mic, euc_tw_and_big5, latin2_and_win1250, latin_and_mic, utf8_and_big5, utf8_and_cyrillic, utf8_and_euc2004, utf8_and_euc_cn, utf8_and_euc_jp, utf8_and_euc_kr, utf8_and_euc_tw, utf8_and_gb18030, utf8_and_gbk, utf8_and_iso8859, utf8_and_iso8859_1, utf8_and_johab, utf8_and_sjis, utf8_and_sjis2004, utf8_and_uhc, utf8_and_win
Built-in Libs: dict_snowball, libpqwalreceiver, llvmjit
```



## Container Practice

You can create a fresh virtual machine, or use the following Docker container for testing. Create a `d13` directory with a `Dockerfile`:

```dockerfile
FROM debian:13
USER root
WORKDIR /root/
CMD ["/bin/bash"]

RUN apt update && apt install -y ca-certificates curl && curl https://repo.pigsty.io/pig | bash
```

```bash
docker build -t d13:latest .
docker run -it d13:latest /bin/bash

pig repo set --region=china    # Add China region repositories
pig install -y pg18            # Install PGDG 18 kernel packages
pig install -y postgis timescaledb pgvector pg_duckdb
```

