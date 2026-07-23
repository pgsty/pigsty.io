---
title: "Multi-Ext PKG"
linkTitle: "Multi-Ext PKG"
description: "PostgreSQL packages containing multiple extensions"
weight: 40
---

The following **24** packages contain multiple extensions, totaling **124** extensions.

When installing these packages, you will get all extensions in the package. The lead extension is shown in bold.

### postgis

Package [`postgis`](/ext/e/postgis) contains **7** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 1500 | [**`postgis`**](/ext/e/postgis) | `3.6.4` | `--s-d--` | - | PostGIS geometry and geography spatial types and functions |
| 1501 | [`postgis_topology`](/ext/e/postgis_topology) | `3.6.4` | `--s-d--` | `topology` | PostGIS topology spatial types and functions |
| 1502 | [`postgis_raster`](/ext/e/postgis_raster) | `3.6.4` | `--s-d--` | - | PostGIS raster types and functions |
| 1503 | [`postgis_sfcgal`](/ext/e/postgis_sfcgal) | `3.6.4` | `--s-d-r` | - | PostGIS SFCGAL functions |
| 1504 | [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) | `3.6.4` | `--s-dt-` | `tiger` | PostGIS tiger geocoder and reverse geocoder |
| 1505 | [`address_standardizer`](/ext/e/address_standardizer) | `3.6.4` | `--s-d-r` | - | Used to parse an address into constituent elements. Generally used to support geocoding address normalization step. |
| 1506 | [`address_standardizer_data_us`](/ext/e/address_standardizer_data_us) | `3.6.4` | `--s-d-r` | - | Address Standardizer US dataset example |
{.ext-table}

### pointcloud

Package [`pointcloud`](/ext/e/pointcloud) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 1520 | [**`pointcloud`**](/ext/e/pointcloud) | `1.2.5` | `--s-d--` | - | data type for lidar point clouds |
| 1521 | [`pointcloud_postgis`](/ext/e/pointcloud_postgis) | `1.2.5` | `--s-dt-` | - | integration for pointcloud LIDAR data and PostGIS geometry data |
{.ext-table}

### pg_h3

Package [`pg_h3`](/ext/e/h3) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 1530 | [**`h3`**](/ext/e/h3) | `4.2.3` | `--s-d-r` | - | H3 bindings for PostgreSQL |
| 1531 | [`h3_postgis`](/ext/e/h3_postgis) | `4.2.3` | `--s-d-r` | - | H3 PostGIS integration |
{.ext-table}

### pghydro

Package [`pghydro`](/ext/e/pghydro) contains **7** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 1600 | [**`pghydro`**](/ext/e/pghydro) | `6.6` | `----d--` | `pghydro` | Drainage network analysis core for PostgreSQL and PostGIS |
| 1601 | [`pgh_raster`](/ext/e/pgh_raster) | `6.6` | `----d--` | `pgh_raster` | Raster hydrology extension for PgHydro |
| 1602 | [`pgh_hgm`](/ext/e/pgh_hgm) | `2.2.6` | `----d--` | `pgh_hgm` | Hydrogeomorphological analysis extension for PgHydro |
| 1603 | [`pgh_output`](/ext/e/pgh_output) | `6.6` | `----d--` | `pgh_output` | Output and reporting objects for PgHydro |
| 1604 | [`pgh_output_en_au`](/ext/e/pgh_output_en_au) | `6.6` | `----d--` | `pgh_output_en_au` | Australian English output pack for PgHydro |
| 1605 | [`pgh_output_pt_br`](/ext/e/pgh_output_pt_br) | `6.6` | `----d--` | `pgh_output_pt_br` | Brazilian Portuguese output pack for PgHydro |
| 1606 | [`pgh_consistency`](/ext/e/pgh_consistency) | `6.6` | `----d--` | `pgh_consistency` | Pfafstetter consistency checks for PgHydro |
{.ext-table}

### mobilitydb

Package [`mobilitydb`](/ext/e/mobilitydb) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 1650 | [**`mobilitydb`**](/ext/e/mobilitydb) | `1.3.0` | `--sLd--` | - | MobilityDB geospatial trajectory data management & analysis platform |
| 1651 | [`mobilitydb_datagen`](/ext/e/mobilitydb_datagen) | `1.3.0` | `----d-r` | - | MobilityDB random data generator functions |
{.ext-table}

### pgroonga

Package [`pgroonga`](/ext/e/pgroonga) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 2110 | [**`pgroonga`**](/ext/e/pgroonga) | `4.0.4` | `--s-dtr` | - | Use Groonga as index, fast full text search platform for all languages! |
| 2111 | [`pgroonga_database`](/ext/e/pgroonga_database) | `4.0.4` | `--s-dtr` | - | PGroonga database management module |
{.ext-table}

### hunspell

Package [`hunspell`](/ext/e/hunspell_cs_cz) contains **10** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 2270 | [**`hunspell_cs_cz`**](/ext/e/hunspell_cs_cz) | `1.0` | `----d-r` | - | Czech Hunspell Dictionary |
| 2271 | [**`hunspell_de_de`**](/ext/e/hunspell_de_de) | `1.0` | `----d-r` | - | German Hunspell Dictionary |
| 2272 | [**`hunspell_en_us`**](/ext/e/hunspell_en_us) | `1.0` | `----d-r` | - | en_US Hunspell Dictionary |
| 2273 | [**`hunspell_fr`**](/ext/e/hunspell_fr) | `1.0` | `----d-r` | - | French Hunspell Dictionary |
| 2274 | [**`hunspell_ne_np`**](/ext/e/hunspell_ne_np) | `1.0` | `----d-r` | - | Nepali Hunspell Dictionary |
| 2275 | [**`hunspell_nl_nl`**](/ext/e/hunspell_nl_nl) | `1.0` | `----d-r` | - | Dutch Hunspell Dictionary |
| 2276 | [**`hunspell_nn_no`**](/ext/e/hunspell_nn_no) | `1.0` | `----d-r` | - | Norwegian (norsk) Hunspell Dictionary |
| 2277 | [**`hunspell_pt_pt`**](/ext/e/hunspell_pt_pt) | `1.0` | `----d-r` | - | Portuguese Hunspell Dictionary |
| 2278 | [**`hunspell_ru_ru`**](/ext/e/hunspell_ru_ru) | `1.0` | `----d-r` | - | Russian Hunspell Dictionary |
| 2279 | [**`hunspell_ru_ru_aot`**](/ext/e/hunspell_ru_ru_aot) | `1.0` | `----d-r` | - | Russian Hunspell Dictionary (from AOT.ru group) |
{.ext-table}

### citus

Package [`citus`](/ext/e/citus) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 2400 | [**`citus`**](/ext/e/citus) | `14.1.0` | `--sLd--` | `pg_catalog` | Distributed PostgreSQL as an extension |
| 2401 | [`citus_columnar`](/ext/e/citus_columnar) | `14.1.0` | `--s-d--` | `pg_catalog` | Citus columnar storage engine |
{.ext-table}

### pg_lake

Package [`pg_lake`](/ext/e/pg_lake) contains **8** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 2560 | [**`pg_lake`**](/ext/e/pg_lake) | `3.4` | `-bsLd--` | `lake` | Data lake extension by Snowflake |
| 2561 | [`pg_extension_base`](/ext/e/pg_extension_base) | `3.4` | `--sLd--` | `extension_base` | Extension development kit by Snowflake |
| 2562 | [`pg_extension_updater`](/ext/e/pg_extension_updater) | `3.4` | `--sLd--` | `extension_updater` | Automatic extension updater |
| 2563 | [`pg_map`](/ext/e/pg_map) | `3.4` | `--s-d--` | `map_type` | Map type for PostgreSQL, bundled as a required pg_lake component. |
| 2564 | [`pg_lake_engine`](/ext/e/pg_lake_engine) | `3.4` | `--sLd--` | `__lake__internal__nsp__` | Query engine for data lake queries |
| 2565 | [`pg_lake_iceberg`](/ext/e/pg_lake_iceberg) | `3.4` | `--s-d--` | `lake_iceberg` | Iceberg implementation in Postgres |
| 2566 | [`pg_lake_table`](/ext/e/pg_lake_table) | `3.4` | `--sLd--` | `__pg_lake_table_writes` | Data lake tables and Iceberg tables |
| 2567 | [`pg_lake_copy`](/ext/e/pg_lake_copy) | `3.4` | `--sLd--` | `pg_catalog` | Copy to/from data lake files |
{.ext-table}

### omnigres

Package [`omnigres`](/ext/e/omni) contains **37** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 2940 | [**`omni`**](/ext/e/omni) | `0.2.14` | `--sLd--` | `omni` | Advanced adapter for Postgres extensions |
| 2941 | [`omni_auth`](/ext/e/omni_auth) | `0.1.3` | `----d--` | `omni_auth` | Basic session management |
| 2942 | [`omni_aws`](/ext/e/omni_aws) | `0.1.2` | `----dt-` | `omni_aws` | Amazon Web Services APIs (S3) |
| 2943 | [`omni_cloudevents`](/ext/e/omni_cloudevents) | `0.1.0` | `----dt-` | `omni_cloudevents` | CloudEvents support |
| 2944 | [`omni_containers`](/ext/e/omni_containers) | `0.2.0` | `--s-d--` | `omni_containers` | Docker container management |
| 2945 | [`omni_credentials`](/ext/e/omni_credentials) | `0.2.0` | `----d--` | `omni_credentials` | Application credential management |
| 2948 | [`omni_email`](/ext/e/omni_email) | `0.1.0` | `----d--` | `omni_email` | E-mail framework |
| 2949 | [`omni_http`](/ext/e/omni_http) | `0.1.0` | `----d--` | `omni_http` | Basic HTTP types |
| 2950 | [`omni_httpc`](/ext/e/omni_httpc) | `0.1.10` | `--s-d--` | `omni_httpc` | HTTP client |
| 2951 | [`omni_httpd`](/ext/e/omni_httpd) | `0.4.11` | `--s-d--` | `omni_httpd` | HTTP server |
| 2952 | [`omni_id`](/ext/e/omni_id) | `0.4.3` | `--s-d-r` | - | Identity types |
| 2953 | [`omni_json`](/ext/e/omni_json) | `0.1.1` | `----dt-` | `omni_json` | JSON toolkit |
| 2954 | [`omni_kube`](/ext/e/omni_kube) | `0.4.2` | `--s-d--` | `omni_kube` | Kubernetes (k8s) integration |
| 2955 | [`omni_ledger`](/ext/e/omni_ledger) | `0.1.3` | `--s-d--` | `omni_ledger` | Financial ledger |
| 2956 | [`omni_manifest`](/ext/e/omni_manifest) | `0.1.2` | `----d--` | `omni_manifest` | Package installation manifests |
| 2957 | [`omni_mimetypes`](/ext/e/omni_mimetypes) | `0.1.0` | `----d--` | `omni_mimetypes` | MIME types |
| 2958 | [`omni_os`](/ext/e/omni_os) | `0.1.1` | `--s-d--` | `omni_os` | Operating system integration |
| 2959 | [`omni_polyfill`](/ext/e/omni_polyfill) | `0.2.2` | `--s-d--` | `omni_polyfill` | Postgres API polyfills |
| 2960 | [`omni_python`](/ext/e/omni_python) | `0.1.1` | `--s-d--` | `omni_python` | First-class Python support |
| 2961 | [`omni_regex`](/ext/e/omni_regex) | `0.1.0` | `--s-d-r` | - | PCRE-compatible regular expressions |
| 2962 | [`omni_rest`](/ext/e/omni_rest) | `0.1.1` | `----d--` | `omni_rest` | REST API toolkit (with PostgREST support) |
| 2963 | [`omni_schema`](/ext/e/omni_schema) | `0.3.0` | `----d--` | `omni_schema` | Advanced schema management tooling |
| 2964 | [`omni_seq`](/ext/e/omni_seq) | `0.1.1` | `--s-d--` | `omni_seq` | Distributed integer sequences |
| 2965 | [`omni_service`](/ext/e/omni_service) | `0.1.0` | `----d--` | `omni_service` | Service management |
| 2966 | [`omni_session`](/ext/e/omni_session) | `0.2.0` | `----d--` | `omni_session` | Session management |
| 2968 | [`omni_sql`](/ext/e/omni_sql) | `0.5.3` | `--s-d--` | `omni_sql` | Programmatic SQL manipulation |
| 2969 | [`omni_sqlite`](/ext/e/omni_sqlite) | `0.2.2` | `--s-d--` | `omni_sqlite` | Embedded SQLite |
| 2970 | [`omni_test`](/ext/e/omni_test) | `0.4.0` | `----d--` | `omni_test` | Testing framework |
| 2971 | [`omni_txn`](/ext/e/omni_txn) | `0.5.0` | `--s-d--` | `omni_txn` | Transaction management |
| 2972 | [`omni_types`](/ext/e/omni_types) | `0.3.6` | `--s-d--` | `omni_types` | Advanced types |
| 2973 | [`omni_var`](/ext/e/omni_var) | `0.3.0` | `--s-d--` | `omni_var` | Scoped variables |
| 2974 | [`omni_vfs`](/ext/e/omni_vfs) | `0.2.2` | `--s-d--` | `omni_vfs` | Virtual File System |
| 2975 | [`omni_vfs_types_v1`](/ext/e/omni_vfs_types_v1) | `0.1.0` | `----d--` | `omni_vfs_types_v1` | Virtual File System types (v1) |
| 2976 | [`omni_web`](/ext/e/omni_web) | `0.3.0` | `--s-d--` | `omni_web` | Common web stack primitives |
| 2977 | [`omni_worker`](/ext/e/omni_worker) | `0.2.1` | `--s-d--` | `omni_worker` | Generalized worker pool |
| 2978 | [`omni_xml`](/ext/e/omni_xml) | `0.1.2` | `--s-d--` | `omni_xml` | XML toolkit |
| 2979 | [`omni_yaml`](/ext/e/omni_yaml) | `0.1.0` | `--s-d--` | `omni_yaml` | YAML toolkit |
{.ext-table}

### pllua

Package [`pllua`](/ext/e/pllua) contains **4** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 3020 | [**`pllua`**](/ext/e/pllua) | `2.0.12` | `--s-d--` | `pg_catalog` | Lua as a procedural language |
| 3021 | [`hstore_pllua`](/ext/e/hstore_pllua) | `2.0.12` | `--s-d-r` | - | Hstore transform for Lua |
| 3030 | [`plluau`](/ext/e/plluau) | `2.0.12` | `--s-d--` | `pg_catalog` | Lua as an untrusted procedural language |
| 3031 | [`hstore_plluau`](/ext/e/hstore_plluau) | `2.0.12` | `--s-d-r` | `pg_catalog` | Hstore transform for untrusted Lua |
{.ext-table}

### pltcl

Package [`pltcl`](/ext/e/pltcl) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 3240 | [**`pltcl`**](/ext/e/pltcl) | `1.0` | `c-s-dt-` | `pg_catalog` | PL/Tcl procedural language |
| 3250 | [`pltclu`](/ext/e/pltclu) | `1.0` | `c---d--` | `pg_catalog` | PL/TclU untrusted procedural language |
{.ext-table}

### plperl

Package [`plperl`](/ext/e/plperl) contains **4** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 3260 | [**`plperl`**](/ext/e/plperl) | `1.0` | `c-s-dt-` | `pg_catalog` | PL/Perl procedural language |
| 3261 | [`bool_plperl`](/ext/e/bool_plperl) | `1.0` | `c-s-dt-` | - | transform between bool and plperl |
| 3262 | [`hstore_plperl`](/ext/e/hstore_plperl) | `1.0` | `c-s-d--` | - | transform between hstore and plperl |
| 3263 | [`jsonb_plperl`](/ext/e/jsonb_plperl) | `1.0` | `c---dt-` | - | transform between jsonb and plperl |
{.ext-table}

### plperlu

Package [`plperlu`](/ext/e/plperlu) contains **4** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 3270 | [**`plperlu`**](/ext/e/plperlu) | `1.0` | `c-s-d--` | `pg_catalog` | PL/PerlU untrusted procedural language |
| 3271 | [`bool_plperlu`](/ext/e/bool_plperlu) | `1.0` | `c---d--` | - | transform between bool and plperlu |
| 3272 | [`jsonb_plperlu`](/ext/e/jsonb_plperlu) | `1.0` | `c---d--` | - | transform between jsonb and plperlu |
| 3273 | [`hstore_plperlu`](/ext/e/hstore_plperlu) | `1.0` | `c---d--` | - | transform between hstore and plperlu |
{.ext-table}

### plpython3u

Package [`plpython3u`](/ext/e/plpython3u) contains **4** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 3290 | [**`plpython3u`**](/ext/e/plpython3u) | `1.0` | `c-s-d--` | `pg_catalog` | PL/Python3U untrusted procedural language |
| 3291 | [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) | `1.0` | `c---d-r` | - | transform between jsonb and plpython3u |
| 3292 | [`ltree_plpython3u`](/ext/e/ltree_plpython3u) | `1.0` | `c-s-d-r` | - | transform between ltree and plpython3u |
| 3293 | [`hstore_plpython3u`](/ext/e/hstore_plpython3u) | `1.0` | `c---d-r` | - | transform between hstore and plpython3u |
{.ext-table}

### pg_xenophile

Package [`pg_xenophile`](/ext/e/pg_xenophile) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 3670 | [**`pg_xenophile`**](/ext/e/pg_xenophile) | `0.8.3` | `----d--` | `xeno` | More than the bare necessities for PostgreSQL i18n and l10n. |
| 3671 | [`l10n_table_dependent_extension`](/ext/e/l10n_table_dependent_extension) | `0.8.3` | `----d-r` | - | PostgreSQL l10n toolbox |
{.ext-table}

### pg_readme

Package [`pg_readme`](/ext/e/pg_readme) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 4300 | [**`pg_readme`**](/ext/e/pg_readme) | `0.7.0` | `----d-r` | - | Generate a README.md document for a database extension or schema |
| 4301 | [`pg_readme_test_extension`](/ext/e/pg_readme_test_extension) | `0.7.0` | `----d-r` | - | Test generating a README.md document for extension or schema |
{.ext-table}

### pgpool

Package [`pgpool`](/ext/e/pgpool_adm) contains **3** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 5900 | [**`pgpool_adm`**](/ext/e/pgpool_adm) | `4.7.2` | `----d--` | - | Administrative functions for pgPool |
| 5910 | [`pgpool_recovery`](/ext/e/pgpool_recovery) | `4.7.2` | `----d--` | - | recovery functions for pgpool-II for V4.3 |
| 5920 | [`pgpool_regclass`](/ext/e/pgpool_regclass) | `4.7.2` | `----d--` | - | replacement for regclass |
{.ext-table}

### pg_flight_recorder

Package [`pg_flight_recorder`](/ext/e/pgfr_record) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 6060 | [**`pgfr_record`**](/ext/e/pgfr_record) | `2.29.2` | `----d--` | `pgfr_record` | Server-side PostgreSQL performance flight recorder |
| 6061 | [`pgfr_analyze`](/ext/e/pgfr_analyze) | `2.29.2` | `----d--` | `pgfr_analyze` | Reporting and analysis functions for pgfr_record |
{.ext-table}

### pgnodemx

Package [`pgnodemx`](/ext/e/pgnodemx) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 6440 | [**`pgnodemx`**](/ext/e/pgnodemx) | `2.0.1` | `--sLd-r` | - | Capture node OS metrics via SQL queries |
| 6450 | [`pg_proctab`](/ext/e/pg_proctab) | `2.0.1` | `--s-d-r` | - | PostgreSQL extension to access the OS process table |
{.ext-table}

### documentdb

Package [`documentdb`](/ext/e/documentdb) contains **4** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 9000 | [**`documentdb`**](/ext/e/documentdb) | `0.114` | `--sLd--` | - | API surface for DocumentDB for PostgreSQL |
| 9010 | [`documentdb_core`](/ext/e/documentdb_core) | `0.114` | `--sLd--` | - | Core API surface for DocumentDB on PostgreSQL |
| 9020 | [`documentdb_distributed`](/ext/e/documentdb_distributed) | `0.114` | `--sLd--` | - | Multi-Node API surface for DocumentDB |
| 9030 | [`documentdb_extended_rum`](/ext/e/documentdb_extended_rum) | `0.114` | `--sLd-r` | - | DocumentDB Extended RUM index access method |
{.ext-table}

### ivorysql

Package [`ivorysql`](/ext/e/ivorysql_ora) contains **6** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 9140 | [**`ivorysql_ora`**](/ext/e/ivorysql_ora) | `1.0` | `--s-d--` | `sys` | Oracle Compatible extension on Postgres Database |
| 9150 | [`ora_btree_gin`](/ext/e/ora_btree_gin) | `1.0` | `--s-dt-` | `sys` | Support for indexing oracle datatypes in GIN |
| 9160 | [`ora_btree_gist`](/ext/e/ora_btree_gist) | `1.0` | `--s-dt-` | `sys` | Support for oracle indexing common datatypes in GiST |
| 9170 | [`pg_get_functiondef`](/ext/e/pg_get_functiondef) | `1.0` | `--s-dt-` | - | Get function's definition |
| 9180 | [`plisql`](/ext/e/plisql) | `1.0` | `--s-dt-` | `pg_catalog` | PL/iSQL procedural language |
| 9190 | [`gb18030_2022`](/ext/e/gb18030_2022) | `1.0` | `--s-dt-` | `pg_catalog` | Support GB18030-2022 and UTF-8 conversion |
{.ext-table}

### babelfish

Package [`babelfish`](/ext/e/babelfishpg_common) contains **4** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 9300 | [**`babelfishpg_common`**](/ext/e/babelfishpg_common) | `5.4.0` | `--s-d-r` | - | SQL Server Transact SQL Datatype Support |
| 9310 | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | `5.4.0` | `--s-d-r` | - | SQL Server Transact SQL compatibility |
| 9320 | [`babelfishpg_tds`](/ext/e/babelfishpg_tds) | `1.0.0` | `--sLd-r` | - | SQL Server TDS protocol extension |
| 9330 | [`babelfishpg_money`](/ext/e/babelfishpg_money) | `1.1.0` | `--s-dt-` | - | SQL Server Money Data Type |
{.ext-table}

### pglogical

Package [`pglogical`](/ext/e/pglogical) contains **2** extensions:

| **ID** | **Extension** | **Version** | **Attr** | **Schema** | **Description** |
|:------:|:-----------|:--------:|:--------:|:---------|:---------|
| 9500 | [**`pglogical`**](/ext/e/pglogical) | `2.4.7` | `--sLd--` | `pglogical` | PostgreSQL Logical Replication |
| 9501 | [`pglogical_origin`](/ext/e/pglogical_origin) | `2.4.7` | `--s-d--` | `pglogical_origin` | Dummy extension for compatibility when upgrading from Postgres 9.4 |
{.ext-table}

