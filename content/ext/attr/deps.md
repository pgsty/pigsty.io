---
title: "Dependencies"
linkTitle: "Dependencies"
description: "PostgreSQL extensions with dependency relationships"
weight: 30
---

**105** extensions depend on other extensions, **58** extensions are depended upon by others.

## Upstream Dependencies

The following **105** extensions require other extensions to be installed first:

| **Extension** | **Requires** | **Description** |
|:-----------|:-------------|:---------|
| [`timeseries`](/ext/e/timeseries) | [`pg_cron`](/ext/e/pg_cron) [`pg_partman`](/ext/e/pg_partman) | Convenience API for time series stack |
| [`periods`](/ext/e/periods) | [`btree_gist`](/ext/e/btree_gist) | Provide Standard SQL functionality for PERIODs and SYSTEM VERSIONING |
| [`emaj`](/ext/e/emaj) | [`dblink`](/ext/e/dblink) [`btree_gist`](/ext/e/btree_gist) | Enables fine-grained write logging and time travel on subsets of the database. |
| [`table_version`](/ext/e/table_version) | [`plpgsql`](/ext/e/plpgsql) | PostgreSQL table versioning extension |
| [`pg_later`](/ext/e/pg_later) | [`pgmq`](/ext/e/pgmq) | Run queries now and get results later |
| [`pg_dispatch`](/ext/e/pg_dispatch) | [`pgcrypto`](/ext/e/pgcrypto) [`pg_cron`](/ext/e/pg_cron) | Asynchronous SQL dispatcher built on pg_cron |
| [`postgis_topology`](/ext/e/postgis_topology) | [`postgis`](/ext/e/postgis) | PostGIS topology spatial types and functions |
| [`postgis_raster`](/ext/e/postgis_raster) | [`postgis`](/ext/e/postgis) | PostGIS raster types and functions |
| [`postgis_sfcgal`](/ext/e/postgis_sfcgal) | [`postgis`](/ext/e/postgis) | PostGIS SFCGAL functions |
| [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) | [`postgis`](/ext/e/postgis) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) | PostGIS tiger geocoder and reverse geocoder |
| [`pgrouting`](/ext/e/pgrouting) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) | pgRouting Extension |
| [`pointcloud_postgis`](/ext/e/pointcloud_postgis) | [`postgis`](/ext/e/postgis) [`pointcloud`](/ext/e/pointcloud) | integration for pointcloud LIDAR data and PostGIS geometry data |
| [`h3_postgis`](/ext/e/h3_postgis) | [`h3`](/ext/e/h3) [`postgis`](/ext/e/postgis) [`postgis_raster`](/ext/e/postgis_raster) | H3 PostGIS integration |
| [`geoip`](/ext/e/geoip) | [`ip4r`](/ext/e/ip4r) | IP-based geolocation query |
| [`pg_eviltransform`](/ext/e/pg_eviltransform) | [`postgis`](/ext/e/postgis) | Coordinate transforms for BD09/GCJ02 via PostGIS ST_Transform |
| [`pghydro`](/ext/e/pghydro) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) | Drainage network analysis core for PostgreSQL and PostGIS |
| [`pgh_raster`](/ext/e/pgh_raster) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`postgis_raster`](/ext/e/postgis_raster) [`pghydro`](/ext/e/pghydro) | Raster hydrology extension for PgHydro |
| [`pgh_hgm`](/ext/e/pgh_hgm) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`postgis_raster`](/ext/e/postgis_raster) [`pghydro`](/ext/e/pghydro) [`pgh_raster`](/ext/e/pgh_raster) | Hydrogeomorphological analysis extension for PgHydro |
| [`pgh_output`](/ext/e/pgh_output) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`pghydro`](/ext/e/pghydro) | Output and reporting objects for PgHydro |
| [`pgh_output_en_au`](/ext/e/pgh_output_en_au) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`pghydro`](/ext/e/pghydro) | Australian English output pack for PgHydro |
| [`pgh_output_pt_br`](/ext/e/pgh_output_pt_br) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`pghydro`](/ext/e/pghydro) | Brazilian Portuguese output pack for PgHydro |
| [`pgh_consistency`](/ext/e/pgh_consistency) | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`pghydro`](/ext/e/pghydro) | Pfafstetter consistency checks for PgHydro |
| [`mobilitydb`](/ext/e/mobilitydb) | [`postgis`](/ext/e/postgis) | MobilityDB geospatial trajectory data management & analysis platform |
| [`mobilitydb_datagen`](/ext/e/mobilitydb_datagen) | [`mobilitydb`](/ext/e/mobilitydb) | MobilityDB random data generator functions |
| [`earthdistance`](/ext/e/earthdistance) | [`cube`](/ext/e/cube) | calculate great-circle distances on the surface of the Earth |
| [`vchord`](/ext/e/vchord) | [`vector`](/ext/e/vector) | Vector database plugin for Postgres, written in Rust |
| [`vectorscale`](/ext/e/vectorscale) | [`vector`](/ext/e/vector) | Advanced indexing for vector data with DiskANN |
| [`vectorize`](/ext/e/vectorize) | [`pg_cron`](/ext/e/pg_cron) [`pgmq`](/ext/e/pgmq) [`vector`](/ext/e/vector) | The simplest way to do vector search on Postgres |
| [`pg4ml`](/ext/e/pg4ml) | [`plpgsql`](/ext/e/plpgsql) [`tablefunc`](/ext/e/tablefunc) [`cube`](/ext/e/cube) [`plpython3u`](/ext/e/plpython3u) | Machine learning framework for PostgreSQL |
| [`biscuit`](/ext/e/biscuit) | [`plpgsql`](/ext/e/plpgsql) | IAM-LIKE pattern matching with bitmap indexing |
| [`pg_mooncake`](/ext/e/pg_mooncake) | [`pg_duckdb`](/ext/e/pg_duckdb) | Columnstore Table in Postgres |
| [`pg_partman`](/ext/e/pg_partman) | [`plpgsql`](/ext/e/plpgsql) | Extension to manage partitioned tables by time or ID |
| [`pgmb`](/ext/e/pgmb) | [`pg_cron`](/ext/e/pg_cron) [`http`](/ext/e/http) | A simple PostgreSQL Message Broker system |
| [`index_advisor`](/ext/e/index_advisor) | [`hypopg`](/ext/e/hypopg) | Query index advisor |
| [`provsql`](/ext/e/provsql) | [`uuid-ossp`](/ext/e/uuid-ossp) | Semiring provenance and uncertainty management for PostgreSQL |
| [`omni_auth`](/ext/e/omni_auth) | [`omni_types`](/ext/e/omni_types) [`omni_id`](/ext/e/omni_id) [`pgcrypto`](/ext/e/pgcrypto) [`btree_gist`](/ext/e/btree_gist) [`omni_polyfill`](/ext/e/omni_polyfill) | Basic session management |
| [`omni_aws`](/ext/e/omni_aws) | [`omni_httpc`](/ext/e/omni_httpc) [`pgcrypto`](/ext/e/pgcrypto) [`omni_xml`](/ext/e/omni_xml) [`omni_web`](/ext/e/omni_web) | Amazon Web Services APIs (S3) |
| [`omni_cloudevents`](/ext/e/omni_cloudevents) | [`omni_web`](/ext/e/omni_web) | CloudEvents support |
| [`omni_containers`](/ext/e/omni_containers) | [`omni_httpc`](/ext/e/omni_httpc) [`omni_web`](/ext/e/omni_web) | Docker container management |
| [`omni_credentials`](/ext/e/omni_credentials) | [`pgcrypto`](/ext/e/pgcrypto) [`omni_os`](/ext/e/omni_os) | Application credential management |
| [`omni_email`](/ext/e/omni_email) | [`omni_id`](/ext/e/omni_id) [`omni_cloudevents`](/ext/e/omni_cloudevents) [`omni_polyfill`](/ext/e/omni_polyfill) | E-mail framework |
| [`omni_httpc`](/ext/e/omni_httpc) | [`omni_http`](/ext/e/omni_http) [`omni_types`](/ext/e/omni_types) | HTTP client |
| [`omni_httpd`](/ext/e/omni_httpd) | [`omni_types`](/ext/e/omni_types) [`omni_http`](/ext/e/omni_http) | HTTP server |
| [`omni_kube`](/ext/e/omni_kube) | [`omni_httpc`](/ext/e/omni_httpc) [`omni_web`](/ext/e/omni_web) [`omni_var`](/ext/e/omni_var) [`omni_yaml`](/ext/e/omni_yaml) | Kubernetes (k8s) integration |
| [`omni_ledger`](/ext/e/omni_ledger) | [`omni_id`](/ext/e/omni_id) [`omni_polyfill`](/ext/e/omni_polyfill) | Financial ledger |
| [`omni_python`](/ext/e/omni_python) | [`plpython3u`](/ext/e/plpython3u) | First-class Python support |
| [`omni_rest`](/ext/e/omni_rest) | [`omni_httpd`](/ext/e/omni_httpd) [`omni_sql`](/ext/e/omni_sql) [`omni_web`](/ext/e/omni_web) [`omni_var`](/ext/e/omni_var) [`pgcrypto`](/ext/e/pgcrypto) | REST API toolkit (with PostgREST support) |
| [`omni_schema`](/ext/e/omni_schema) | [`omni_sql`](/ext/e/omni_sql) [`omni_vfs`](/ext/e/omni_vfs) [`omni_polyfill`](/ext/e/omni_polyfill) [`omni_yaml`](/ext/e/omni_yaml) [`dblink`](/ext/e/dblink) [`postgres_fdw`](/ext/e/postgres_fdw) [`omni_types`](/ext/e/omni_types) [`omni_cloudevents`](/ext/e/omni_cloudevents) | Advanced schema management tooling |
| [`omni_session`](/ext/e/omni_session) | [`omni_var`](/ext/e/omni_var) [`omni_id`](/ext/e/omni_id) [`omni_web`](/ext/e/omni_web) [`omni_httpd`](/ext/e/omni_httpd) [`omni_polyfill`](/ext/e/omni_polyfill) | Session management |
| [`omni_test`](/ext/e/omni_test) | [`dblink`](/ext/e/dblink) [`omni_cloudevents`](/ext/e/omni_cloudevents) | Testing framework |
| [`omni_vfs`](/ext/e/omni_vfs) | [`omni_vfs_types_v1`](/ext/e/omni_vfs_types_v1) [`dblink`](/ext/e/dblink) | Virtual File System |
| [`hstore_pllua`](/ext/e/hstore_pllua) | [`hstore`](/ext/e/hstore) [`pllua`](/ext/e/pllua) | Hstore transform for Lua |
| [`hstore_plluau`](/ext/e/hstore_plluau) | [`hstore`](/ext/e/hstore) [`plluau`](/ext/e/plluau) | Hstore transform for untrusted Lua |
| [`plpgsql_check`](/ext/e/plpgsql_check) | [`plpgsql`](/ext/e/plpgsql) | extended check for plpgsql functions |
| [`pgtap`](/ext/e/pgtap) | [`plpgsql`](/ext/e/plpgsql) | Unit testing for PostgreSQL |
| [`plperl`](/ext/e/plperl) | [`plperl`](/ext/e/plperl) | PL/Perl procedural language |
| [`bool_plperl`](/ext/e/bool_plperl) | [`plperl`](/ext/e/plperl) | transform between bool and plperl |
| [`hstore_plperl`](/ext/e/hstore_plperl) | [`hstore`](/ext/e/hstore) [`plperl`](/ext/e/plperl) | transform between hstore and plperl |
| [`jsonb_plperl`](/ext/e/jsonb_plperl) | [`plperl`](/ext/e/plperl) | transform between jsonb and plperl |
| [`plperlu`](/ext/e/plperlu) | [`plperlu`](/ext/e/plperlu) | PL/PerlU untrusted procedural language |
| [`bool_plperlu`](/ext/e/bool_plperlu) | [`plperlu`](/ext/e/plperlu) | transform between bool and plperlu |
| [`jsonb_plperlu`](/ext/e/jsonb_plperlu) | [`plperlu`](/ext/e/plperlu) | transform between jsonb and plperlu |
| [`hstore_plperlu`](/ext/e/hstore_plperlu) | [`hstore`](/ext/e/hstore) [`plperlu`](/ext/e/plperlu) | transform between hstore and plperlu |
| [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) | [`plpython3u`](/ext/e/plpython3u) | transform between jsonb and plpython3u |
| [`ltree_plpython3u`](/ext/e/ltree_plpython3u) | [`ltree`](/ext/e/ltree) [`plpython3u`](/ext/e/plpython3u) | transform between ltree and plpython3u |
| [`hstore_plpython3u`](/ext/e/hstore_plpython3u) | [`hstore`](/ext/e/hstore) [`plpython3u`](/ext/e/plpython3u) | transform between hstore and plpython3u |
| [`unit`](/ext/e/unit) | [`plpgsql`](/ext/e/plpgsql) | SI units extension |
| [`pgfaceting`](/ext/e/pgfaceting) | [`roaringbitmap`](/ext/e/roaringbitmap) | fast faceting queries using an inverted index |
| [`pg_xenophile`](/ext/e/pg_xenophile) | [`hstore`](/ext/e/hstore) | More than the bare necessities for PostgreSQL i18n and l10n. |
| [`l10n_table_dependent_extension`](/ext/e/l10n_table_dependent_extension) | [`pg_xenophile`](/ext/e/pg_xenophile) | PostgreSQL l10n toolbox |
| [`currency`](/ext/e/currency) | [`plpgsql`](/ext/e/plpgsql) | Custom PostgreSQL currency type in 1Byte |
| [`pg_fsql`](/ext/e/pg_fsql) | [`plpgsql`](/ext/e/plpgsql) | Recursive SQL template engine with JSONB-driven execution |
| [`pglock`](/ext/e/pglock) | [`pg_cron`](/ext/e/pg_cron) | Lightweight distributed lock service inside PostgreSQL |
| [`pgjwt`](/ext/e/pgjwt) | [`pgcrypto`](/ext/e/pgcrypto) | JSON Web Token API for Postgresql |
| [`pg_readme`](/ext/e/pg_readme) | [`hstore`](/ext/e/hstore) | Generate a README.md document for a database extension or schema |
| [`pg_readme_test_extension`](/ext/e/pg_readme_test_extension) | [`hstore`](/ext/e/hstore) | Test generating a README.md document for extension or schema |
| [`ddl_historization`](/ext/e/ddl_historization) | [`plpgsql`](/ext/e/plpgsql) | Historize the ddl changes inside PostgreSQL database |
| [`data_historization`](/ext/e/data_historization) | [`plpgsql`](/ext/e/plpgsql) | PLPGSQL Script to historize data in partitionned table |
| [`schedoc`](/ext/e/schedoc) | [`ddl_historization`](/ext/e/ddl_historization) | Cross documentation between Django and DBT projects |
| [`sparql`](/ext/e/sparql) | [`plperl`](/ext/e/plperl) [`plperlu`](/ext/e/plperlu) | Query SPARQL datasource with SQL |
| [`pgautofailover`](/ext/e/pgautofailover) | [`btree_gist`](/ext/e/btree_gist) | pg_auto_failover |
| [`pg_upless`](/ext/e/pg_upless) | [`plpgsql`](/ext/e/plpgsql) | Detect Useless UPDATE |
| [`pgcozy`](/ext/e/pgcozy) | [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_prewarm`](/ext/e/pg_prewarm) | Pre-warming shared buffers according to previous pg_buffercache snapshots for PostgreSQL. |
| [`pg_drop_events`](/ext/e/pg_drop_events) | [`plpgsql`](/ext/e/plpgsql) | logs transaction ids of drop table, drop column, drop materialized view statements |
| [`pgelog`](/ext/e/pgelog) | [`dblink`](/ext/e/dblink) [`pg_variables`](/ext/e/pg_variables) | Extended logging via pseudo-autonomous transactions |
| [`pg_profile`](/ext/e/pg_profile) | [`dblink`](/ext/e/dblink) [`plpgsql`](/ext/e/plpgsql) | PostgreSQL load profile repository and report builder |
| [`pg_stat_kcache`](/ext/e/pg_stat_kcache) | [`pg_stat_statements`](/ext/e/pg_stat_statements) | Kernel statistics gathering |
| [`pg_sqlog`](/ext/e/pg_sqlog) | [`file_fdw`](/ext/e/file_fdw) | Provide SQL interface to logs |
| [`powa`](/ext/e/powa) | [`plpgsql`](/ext/e/plpgsql) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`btree_gist`](/ext/e/btree_gist) | PostgreSQL Workload Analyser-core |
| [`column_encrypt`](/ext/e/column_encrypt) | [`pgcrypto`](/ext/e/pgcrypto) | Transparent column-level encryption with encrypted_text and encrypted_bytea types |
| [`supabase_vault`](/ext/e/supabase_vault) | [`pgsodium`](/ext/e/pgsodium) | Supabase Vault Extension |
| [`pg_auditor`](/ext/e/pg_auditor) | [`hstore`](/ext/e/hstore) | Audit data changes and provide flashback ability |
| [`pg_jobmon`](/ext/e/pg_jobmon) | [`dblink`](/ext/e/dblink) | Extension for logging and monitoring functions in PostgreSQL |
| [`pgcryptokey`](/ext/e/pgcryptokey) | [`pgcrypto`](/ext/e/pgcrypto) | cryptographic key management |
| [`pgbouncer_fdw`](/ext/e/pgbouncer_fdw) | [`dblink`](/ext/e/dblink) | Extension for querying PgBouncer stats from normal SQL views & running pgbouncer commands from normal SQL functions |
| [`documentdb`](/ext/e/documentdb) | [`documentdb_core`](/ext/e/documentdb_core) [`pg_cron`](/ext/e/pg_cron) [`postgis`](/ext/e/postgis) [`tsm_system_rows`](/ext/e/tsm_system_rows) [`vector`](/ext/e/vector) | API surface for DocumentDB for PostgreSQL |
| [`documentdb_distributed`](/ext/e/documentdb_distributed) | [`citus`](/ext/e/citus) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb`](/ext/e/documentdb) | Multi-Node API surface for DocumentDB |
| [`ora_btree_gin`](/ext/e/ora_btree_gin) | [`ivorysql_ora`](/ext/e/ivorysql_ora) | Support for indexing oracle datatypes in GIN |
| [`ora_btree_gist`](/ext/e/ora_btree_gist) | [`ivorysql_ora`](/ext/e/ivorysql_ora) | Support for oracle indexing common datatypes in GiST |
| [`pg_utl_smtp`](/ext/e/pg_utl_smtp) | [`plperlu`](/ext/e/plperlu) | Oracle UTL_SMTP compatibility extension for PostgreSQL |
| [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | [`babelfishpg_common`](/ext/e/babelfishpg_common) [`uuid-ossp`](/ext/e/uuid-ossp) | SQL Server Transact SQL compatibility |
| [`babelfishpg_tds`](/ext/e/babelfishpg_tds) | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | SQL Server TDS protocol extension |
| [`pglogical_ticker`](/ext/e/pglogical_ticker) | [`pglogical`](/ext/e/pglogical) | Have an accurate view on pglogical replication delay |
| [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) | [`pglogical`](/ext/e/pglogical) | automated ddl deployment using pglogical |
| [`mimeo`](/ext/e/mimeo) | [`dblink`](/ext/e/dblink) | Extension for specialized, per-table replication between PostgreSQL instances |
{.ext-table}

## Downstream Dependencies

The following **58** extensions are depended upon by other extensions:

| **Extension** | **Required By** | **Description** |
|:-----------|:-------------|:---------|
| [`pg_cron`](/ext/e/pg_cron) | [`documentdb`](/ext/e/documentdb) [`pg_incremental`](/ext/e/pg_incremental) [`timeseries`](/ext/e/timeseries) [`vectorize`](/ext/e/vectorize) [`pgmb`](/ext/e/pgmb) | Job scheduler for PostgreSQL |
| [`postgis`](/ext/e/postgis) | [`documentdb`](/ext/e/documentdb) [`h3_postgis`](/ext/e/h3_postgis) [`mobilitydb`](/ext/e/mobilitydb) [`pgrouting`](/ext/e/pgrouting) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`postgis_topology`](/ext/e/postgis_topology) [`pg_eviltransform`](/ext/e/pg_eviltransform) | PostGIS geometry and geography spatial types and functions |
| [`postgis_raster`](/ext/e/postgis_raster) | [`h3_postgis`](/ext/e/h3_postgis) | PostGIS raster types and functions |
| [`pointcloud`](/ext/e/pointcloud) | [`pointcloud_postgis`](/ext/e/pointcloud_postgis) | data type for lidar point clouds |
| [`h3`](/ext/e/h3) | [`h3_postgis`](/ext/e/h3_postgis) | H3 bindings for PostgreSQL |
| [`mobilitydb`](/ext/e/mobilitydb) | [`mobilitydb_datagen`](/ext/e/mobilitydb_datagen) | MobilityDB geospatial trajectory data management & analysis platform |
| [`vector`](/ext/e/vector) | [`documentdb`](/ext/e/documentdb) [`vchord`](/ext/e/vchord) [`vectorize`](/ext/e/vectorize) [`vectorscale`](/ext/e/vectorscale) | vector data type and ivfflat and hnsw access methods |
| [`fuzzystrmatch`](/ext/e/fuzzystrmatch) | [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) | determine similarities and distance between strings |
| [`citus`](/ext/e/citus) | [`documentdb_distributed`](/ext/e/documentdb_distributed) | Distributed PostgreSQL as an extension |
| [`pg_duckdb`](/ext/e/pg_duckdb) | [`pg_mooncake`](/ext/e/pg_mooncake) | DuckDB Embedded in Postgres |
| [`pg_partman`](/ext/e/pg_partman) | [`timeseries`](/ext/e/timeseries) | Extension to manage partitioned tables by time or ID |
| [`tablefunc`](/ext/e/tablefunc) | [`pg4ml`](/ext/e/pg4ml) | functions that manipulate whole tables, including crosstab |
| [`pgmq`](/ext/e/pgmq) | [`pg_later`](/ext/e/pg_later) [`vectorize`](/ext/e/vectorize) | A lightweight message queue. Like AWS SQS and RSMQ but on Postgres. |
| [`rum`](/ext/e/rum) | [`documentdb`](/ext/e/documentdb) | RUM index access method |
| [`omni_cloudevents`](/ext/e/omni_cloudevents) | [`omni_email`](/ext/e/omni_email) [`omni_schema`](/ext/e/omni_schema) [`omni_test`](/ext/e/omni_test) | CloudEvents support |
| [`omni_http`](/ext/e/omni_http) | [`omni_httpc`](/ext/e/omni_httpc) [`omni_httpd`](/ext/e/omni_httpd) | Basic HTTP types |
| [`omni_httpc`](/ext/e/omni_httpc) | [`omni_aws`](/ext/e/omni_aws) [`omni_containers`](/ext/e/omni_containers) [`omni_kube`](/ext/e/omni_kube) | HTTP client |
| [`omni_httpd`](/ext/e/omni_httpd) | [`omni_rest`](/ext/e/omni_rest) [`omni_session`](/ext/e/omni_session) | HTTP server |
| [`omni_id`](/ext/e/omni_id) | [`omni_auth`](/ext/e/omni_auth) [`omni_email`](/ext/e/omni_email) [`omni_ledger`](/ext/e/omni_ledger) [`omni_session`](/ext/e/omni_session) | Identity types |
| [`omni_os`](/ext/e/omni_os) | [`omni_credentials`](/ext/e/omni_credentials) | Operating system integration |
| [`omni_polyfill`](/ext/e/omni_polyfill) | [`omni_auth`](/ext/e/omni_auth) [`omni_email`](/ext/e/omni_email) [`omni_ledger`](/ext/e/omni_ledger) [`omni_schema`](/ext/e/omni_schema) [`omni_session`](/ext/e/omni_session) | Postgres API polyfills |
| [`omni_sql`](/ext/e/omni_sql) | [`omni_rest`](/ext/e/omni_rest) [`omni_schema`](/ext/e/omni_schema) | Programmatic SQL manipulation |
| [`omni_types`](/ext/e/omni_types) | [`omni_auth`](/ext/e/omni_auth) [`omni_httpc`](/ext/e/omni_httpc) [`omni_httpd`](/ext/e/omni_httpd) [`omni_schema`](/ext/e/omni_schema) | Advanced types |
| [`omni_var`](/ext/e/omni_var) | [`omni_kube`](/ext/e/omni_kube) [`omni_rest`](/ext/e/omni_rest) [`omni_session`](/ext/e/omni_session) | Scoped variables |
| [`omni_vfs`](/ext/e/omni_vfs) | [`omni_schema`](/ext/e/omni_schema) | Virtual File System |
| [`omni_vfs_types_v1`](/ext/e/omni_vfs_types_v1) | [`omni_vfs`](/ext/e/omni_vfs) | Virtual File System types (v1) |
| [`omni_web`](/ext/e/omni_web) | [`omni_aws`](/ext/e/omni_aws) [`omni_cloudevents`](/ext/e/omni_cloudevents) [`omni_containers`](/ext/e/omni_containers) [`omni_kube`](/ext/e/omni_kube) [`omni_rest`](/ext/e/omni_rest) [`omni_session`](/ext/e/omni_session) | Common web stack primitives |
| [`omni_xml`](/ext/e/omni_xml) | [`omni_aws`](/ext/e/omni_aws) | XML toolkit |
| [`omni_yaml`](/ext/e/omni_yaml) | [`omni_kube`](/ext/e/omni_kube) [`omni_schema`](/ext/e/omni_schema) | YAML toolkit |
| [`pllua`](/ext/e/pllua) | [`hstore_pllua`](/ext/e/hstore_pllua) | Lua as a procedural language |
| [`plluau`](/ext/e/plluau) | [`hstore_plluau`](/ext/e/hstore_plluau) | Lua as an untrusted procedural language |
| [`plperl`](/ext/e/plperl) | [`bool_plperl`](/ext/e/bool_plperl) [`hstore_plperl`](/ext/e/hstore_plperl) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`plperl`](/ext/e/plperl) [`sparql`](/ext/e/sparql) | PL/Perl procedural language |
| [`plperlu`](/ext/e/plperlu) | [`bool_plperlu`](/ext/e/bool_plperlu) [`hstore_plperlu`](/ext/e/hstore_plperlu) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`plperlu`](/ext/e/plperlu) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`sparql`](/ext/e/sparql) | PL/PerlU untrusted procedural language |
| [`plpgsql`](/ext/e/plpgsql) | [`data_historization`](/ext/e/data_historization) [`ddl_historization`](/ext/e/ddl_historization) [`pg4ml`](/ext/e/pg4ml) [`pg_drop_events`](/ext/e/pg_drop_events) [`pg_profile`](/ext/e/pg_profile) [`pg_upless`](/ext/e/pg_upless) [`plpgsql_check`](/ext/e/plpgsql_check) [`powa`](/ext/e/powa) [`table_version`](/ext/e/table_version) [`unit`](/ext/e/unit) [`biscuit`](/ext/e/biscuit) | PL/pgSQL procedural language |
| [`plpython3u`](/ext/e/plpython3u) | [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`ltree_plpython3u`](/ext/e/ltree_plpython3u) [`omni_python`](/ext/e/omni_python) [`pg4ml`](/ext/e/pg4ml) | PL/Python3U untrusted procedural language |
| [`roaringbitmap`](/ext/e/roaringbitmap) | [`pgfaceting`](/ext/e/pgfaceting) | support for Roaring Bitmaps |
| [`pg_xenophile`](/ext/e/pg_xenophile) | [`l10n_table_dependent_extension`](/ext/e/l10n_table_dependent_extension) | More than the bare necessities for PostgreSQL i18n and l10n. |
| [`ip4r`](/ext/e/ip4r) | [`geoip`](/ext/e/geoip) | IPv4/v6 and IPv4/v6 range index type for PostgreSQL |
| [`cube`](/ext/e/cube) | [`earthdistance`](/ext/e/earthdistance) [`pg4ml`](/ext/e/pg4ml) | data type for multidimensional cubes |
| [`ltree`](/ext/e/ltree) | [`ltree_plpython3u`](/ext/e/ltree_plpython3u) | data type for hierarchical tree-like structures |
| [`hstore`](/ext/e/hstore) | [`hstore_pllua`](/ext/e/hstore_pllua) [`hstore_plluau`](/ext/e/hstore_plluau) [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`pg_readme`](/ext/e/pg_readme) [`pg_readme_test_extension`](/ext/e/pg_readme_test_extension) | data type for storing sets of (key, value) pairs |
| [`pg_net`](/ext/e/pg_net) | [`pgmb`](/ext/e/pgmb) | Async HTTP Requests |
| [`ddl_historization`](/ext/e/ddl_historization) | [`schedoc`](/ext/e/schedoc) | Historize the ddl changes inside PostgreSQL database |
| [`tsm_system_rows`](/ext/e/tsm_system_rows) | [`documentdb`](/ext/e/documentdb) | TABLESAMPLE method which accepts number of rows as a limit |
| [`uuid-ossp`](/ext/e/uuid-ossp) | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | generate universally unique identifiers (UUIDs) |
| [`btree_gist`](/ext/e/btree_gist) | [`emaj`](/ext/e/emaj) [`omni_auth`](/ext/e/omni_auth) [`periods`](/ext/e/periods) [`pgautofailover`](/ext/e/pgautofailover) [`powa`](/ext/e/powa) | support for indexing common datatypes in GiST |
| [`pg_stat_statements`](/ext/e/pg_stat_statements) | [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`powa`](/ext/e/powa) | track planning and execution statistics of all SQL statements executed |
| [`pgsodium`](/ext/e/pgsodium) | [`supabase_vault`](/ext/e/supabase_vault) | Postgres extension for libsodium functions |
| [`pgcrypto`](/ext/e/pgcrypto) | [`omni_auth`](/ext/e/omni_auth) [`omni_aws`](/ext/e/omni_aws) [`omni_credentials`](/ext/e/omni_credentials) [`omni_rest`](/ext/e/omni_rest) [`pgcryptokey`](/ext/e/pgcryptokey) [`pgjwt`](/ext/e/pgjwt) | cryptographic functions |
| [`dblink`](/ext/e/dblink) | [`emaj`](/ext/e/emaj) [`mimeo`](/ext/e/mimeo) [`omni_schema`](/ext/e/omni_schema) [`omni_test`](/ext/e/omni_test) [`omni_vfs`](/ext/e/omni_vfs) [`pg_jobmon`](/ext/e/pg_jobmon) [`pg_profile`](/ext/e/pg_profile) | connect to other PostgreSQL databases from within a database |
| [`file_fdw`](/ext/e/file_fdw) | [`pg_sqlog`](/ext/e/pg_sqlog) | foreign-data wrapper for flat file access |
| [`postgres_fdw`](/ext/e/postgres_fdw) | [`omni_schema`](/ext/e/omni_schema) | foreign-data wrapper for remote PostgreSQL servers |
| [`documentdb`](/ext/e/documentdb) | [`documentdb_distributed`](/ext/e/documentdb_distributed) | API surface for DocumentDB for PostgreSQL |
| [`documentdb_core`](/ext/e/documentdb_core) | [`documentdb`](/ext/e/documentdb) [`documentdb_distributed`](/ext/e/documentdb_distributed) | Core API surface for DocumentDB for PostgreSQL |
| [`ivorysql_ora`](/ext/e/ivorysql_ora) | [`ora_btree_gin`](/ext/e/ora_btree_gin) [`ora_btree_gist`](/ext/e/ora_btree_gist) | Oracle Compatible extension on Postgres Database |
| [`babelfishpg_common`](/ext/e/babelfishpg_common) | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | SQL Server Transact SQL Datatype Support |
| [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) | [`babelfishpg_tds`](/ext/e/babelfishpg_tds) | SQL Server Transact SQL compatibility |
| [`pglogical`](/ext/e/pglogical) | [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`pglogical_ticker`](/ext/e/pglogical_ticker) | PostgreSQL Logical Replication |
{.ext-table}

