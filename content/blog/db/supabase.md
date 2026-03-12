---
title: Self-Hosting Supabase on PostgreSQL
linkTitle: "Self-Hosting Supabase"
date: 2024-11-25
author: |
  [Ruohang Feng](https://vonng.com) ([@Vonng](https://vonng.com/en/))
summary: Supabase is great, own your own Supabase is even better. A tutorial for self-hosting production-grade supabase on local/cloud VM/BMs.
tags: [Database,Supabase]
---

Supabase is great, own your own Supabase is even better. 
Here's a comprehensive tutorial for self-hosting production-grade supabase on local/cloud VM/BMs.


## What is Supabase?

[Supabase](https://supabase.com/) is an open-source Firebase alternative, a Backend as a Service (BaaS).

Supabase wraps PostgreSQL kernel and vector extensions, alone with authentication, realtime subscriptions, edge functions, object storage, and instant REST and GraphQL APIs from your postgres schema.
It let you skip most backend work, requiring only database design and frontend skills to ship quickly.

Currently, Supabase may be the [most popular](https://ossrank.com/cat/368-postgresql-extension-ecosystem) open-source project in the PostgreSQL ecosystem, boasting over 74,000 stars on GitHub.
And become quite popular among developers, and startups, since they have a [generous free plan](https://supabase.com/pricing), just like cloudflare & neon.



------

## Why Self-Hosting?

Supabase's slogan is: "**Build in a weekend, Scale to millions**". It has great cost-effectiveness in small scales (4c8g) indeed.
But there is no doubt that when you really grow to millions of users, some may choose to self-hosting their own Supabase —— for functionality, performance, cost, and other reasons.

That's where Pigsty comes in. Pigsty provides a complete one-click self-hosting solution for Supabase.
Self-hosted Supabase can enjoy full PostgreSQL monitoring, IaC, PITR, and high availability capability,

You can run the latest PostgreSQL 17(,16,15,14) kernels, (supabase is using the 15 currently), alone with [390](/ext/list/) PostgreSQL extensions out-of-the-box.
Run on [mainstream](/docs/ref/linux) Linus OS distros with production grade [HA](/docs/concept/ha) [PostgreSQL](/docs/pgsql), [MinIO](/docs/minio), Prometheus & Grafana Stack for observability, and Nginx for reverse proxy.

[**TIME**](/ext/cate/time): [`timescaledb`](/ext/e/timescaledb) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`table_version`](/ext/e/table_version) [`pg_cron`](/ext/e/pg_cron) [`pg_later`](/ext/e/pg_later) [`pg_background`](/ext/e/pg_background)
[**GIS**](/ext/cate/gis): [`postgis`](/ext/e/postgis) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`address_standardizer`](/ext/e/address_standardizer) [`address_standardizer_data_us`](/ext/e/address_standardizer_data_us) [`pgrouting`](/ext/e/pgrouting) [`pointcloud`](/ext/e/pointcloud) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`h3`](/ext/e/h3) [`h3_postgis`](/ext/e/h3_postgis) [`q3c`](/ext/e/q3c) [`ogr_fdw`](/ext/e/ogr_fdw) [`geoip`](/ext/e/geoip) [`pg_polyline`](/ext/e/pg_polyline) [`pg_geohash`](/ext/e/pg_geohash) [`mobilitydb`](/ext/e/mobilitydb) [`earthdistance`](/ext/e/earthdistance)
[**RAG**](/ext/cate/rag): [`vector`](/ext/e/vector) [`vectorscale`](/ext/e/vectorscale) [`vectorize`](/ext/e/vectorize) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pgml`](/ext/e/pgml) [`pg4ml`](/ext/e/pg4ml)
[**FTS**](/ext/cate/fts): [`pg_search`](/ext/e/pg_search) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) [`hunspell_de_de`](/ext/e/hunspell_de_de) [`hunspell_en_us`](/ext/e/hunspell_en_us) [`hunspell_fr`](/ext/e/hunspell_fr) [`hunspell_ne_np`](/ext/e/hunspell_ne_np) [`hunspell_nl_nl`](/ext/e/hunspell_nl_nl) [`hunspell_nn_no`](/ext/e/hunspell_nn_no) [`hunspell_pt_pt`](/ext/e/hunspell_pt_pt) [`hunspell_ru_ru`](/ext/e/hunspell_ru_ru) [`hunspell_ru_ru_aot`](/ext/e/hunspell_ru_ru_aot) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pg_trgm`](/ext/e/pg_trgm)
[**OLAP**](/ext/cate/olap): [`citus`](/ext/e/citus) [`citus_columnar`](/ext/e/citus_columnar) [`columnar`](/ext/e/columnar) [`pg_analytics`](/ext/e/pg_analytics) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_mooncake`](/ext/e/pg_mooncake) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_parquet`](/ext/e/pg_parquet) [`pg_fkpart`](/ext/e/pg_fkpart) [`pg_partman`](/ext/e/pg_partman) [`plproxy`](/ext/e/plproxy) [`pg_strom`](/ext/e/pg_strom) [`tablefunc`](/ext/e/tablefunc)
[**FEAT**](/ext/cate/feat): [`age`](/ext/e/age) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) [`plan_filter`](/ext/e/plan_filter) [`imgsmlr`](/ext/e/imgsmlr) [`pg_ivm`](/ext/e/pg_ivm) [`pgmq`](/ext/e/pgmq) [`pgq`](/ext/e/pgq) [`pg_cardano`](/ext/e/pg_cardano) [`rdkit`](/ext/e/rdkit) [`bloom`](/ext/e/bloom)
[**LANG**](/ext/cate/lang): [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) [`pllua`](/ext/e/pllua) [`hstore_pllua`](/ext/e/hstore_pllua) [`plluau`](/ext/e/plluau) [`hstore_plluau`](/ext/e/hstore_plluau) [`plprql`](/ext/e/plprql) [`pldbgapi`](/ext/e/pldbgapi) [`plpgsql_check`](/ext/e/plpgsql_check) [`plprofiler`](/ext/e/plprofiler) [`plsh`](/ext/e/plsh) [`pljava`](/ext/e/pljava) [`plr`](/ext/e/plr) [`pgtap`](/ext/e/pgtap) [`faker`](/ext/e/faker) [`dbt2`](/ext/e/dbt2) [`pltcl`](/ext/e/pltcl) [`pltclu`](/ext/e/pltclu) [`plperl`](/ext/e/plperl) [`bool_plperl`](/ext/e/bool_plperl) [`hstore_plperl`](/ext/e/hstore_plperl) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`plperlu`](/ext/e/plperlu) [`bool_plperlu`](/ext/e/bool_plperlu) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`hstore_plperlu`](/ext/e/hstore_plperlu) [`plpgsql`](/ext/e/plpgsql) [`plpython3u`](/ext/e/plpython3u) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`ltree_plpython3u`](/ext/e/ltree_plpython3u) [`hstore_plpython3u`](/ext/e/hstore_plpython3u)
[**TYPE**](/ext/cate/type): [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) [`pgfaceting`](/ext/e/pgfaceting) [`pg_sphere`](/ext/e/pg_sphere) [`country`](/ext/e/country) [`currency`](/ext/e/currency) [`pgmp`](/ext/e/pgmp) [`numeral`](/ext/e/numeral) [`pg_rational`](/ext/e/pg_rational) [`uint`](/ext/e/uint) [`uint128`](/ext/e/uint128) [`ip4r`](/ext/e/ip4r) [`uri`](/ext/e/uri) [`pgemailaddr`](/ext/e/emailaddr) [`acl`](/ext/e/acl) [`debversion`](/ext/e/debversion) [`pg_rrule`](/ext/e/pg_rrule) [`timestamp9`](/ext/e/timestamp9) [`chkpass`](/ext/e/chkpass) [`isn`](/ext/e/isn) [`seg`](/ext/e/seg) [`cube`](/ext/e/cube) [`ltree`](/ext/e/ltree) [`hstore`](/ext/e/hstore) [`citext`](/ext/e/citext) [`xml2`](/ext/e/xml2)
[**FUNC**](/ext/cate/func): [`topn`](/ext/e/topn) [`gzip`](/ext/e/gzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_smtp_client`](/ext/e/pg_smtp_client) [`pg_html5_email_address`](/ext/e/pg_html5_email_address) [`pgsql_tweaks`](/ext/e/pgsql_tweaks) [`pg_extra_time`](/ext/e/pg_extra_time) `timeit` [`count_distinct`](/ext/e/count_distinct) [`extra_window_functions`](/ext/e/extra_window_functions) [`first_last_agg`](/ext/e/first_last_agg) [`tdigest`](/ext/e/tdigest) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`arraymath`](/ext/e/arraymath) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`pg_idkit`](/ext/e/pg_idkit) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`permuteseq`](/ext/e/permuteseq) [`pg_hashids`](/ext/e/pg_hashids) [`sequential_uuids`](/ext/e/sequential_uuids) [`pg_math`](/ext/e/pg_math) [`random`](/ext/e/random) [`base36`](/ext/e/base36) [`base62`](/ext/e/base62) [`pg_base58`](/ext/e/pg_base58) [`floatvec`](/ext/e/floatvec) [`financial`](/ext/e/financial) [`pgjwt`](/ext/e/pgjwt) [`pg_hashlib`](/ext/e/hashlib) [`shacrypt`](/ext/e/shacrypt) [`cryptint`](/ext/e/cryptint) [`pguecc`](/ext/e/pguecc) [`pgpcre`](/ext/e/pgpcre) [`icu_ext`](/ext/e/icu_ext) [`pgqr`](/ext/e/pgqr) [`envvar`](/ext/e/envvar) [`pg_protobuf`](/ext/e/pg_protobuf) [`url_encode`](/ext/e/url_encode) [`refint`](/ext/e/refint) [`autoinc`](/ext/e/autoinc) [`insert_username`](/ext/e/insert_username) [`moddatetime`](/ext/e/moddatetime) [`tsm_system_time`](/ext/e/tsm_system_time) [`dict_xsyn`](/ext/e/dict_xsyn) [`tsm_system_rows`](/ext/e/tsm_system_rows) [`tcn`](/ext/e/tcn) [`uuid-ossp`](/ext/e/uuid-ossp) [`btree_gist`](/ext/e/btree_gist) [`btree_gin`](/ext/e/btree_gin) [`intarray`](/ext/e/intarray) [`intagg`](/ext/e/intagg) [`dict_int`](/ext/e/dict_int) [`unaccent`](/ext/e/unaccent)
[**ADMIN**](/ext/cate/admin): [`pg_repack`](/ext/e/pg_repack) [`pg_squeeze`](/ext/e/pg_squeeze) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pgfincore`](/ext/e/pgfincore) [`pgdd`](/ext/e/pgdd) [`ddlx`](/ext/e/ddlx) [`prioritize`](/ext/e/prioritize) [`pg_checksums`](/ext/e/pg_checksums) [`pg_readonly`](/ext/e/pg_readonly) [`safeupdate`](/ext/e/safeupdate) [`pg_permissions`](/ext/e/pg_permissions) [`pgautofailover`](/ext/e/pgautofailover) [`pg_catcheck`](/ext/e/pg_catcheck) [`pre_prepare`](/ext/e/pre_prepare) [`pgcozy`](/ext/e/pgcozy) [`pg_orphaned`](/ext/e/pg_orphaned) [`pg_crash`](/ext/e/pg_crash) [`pg_cheat_funcs`](/ext/e/pg_cheat_funcs) [`pg_savior`](/ext/e/pg_savior) [`table_log`](/ext/e/table_log) [`pg_fio`](/ext/e/fio) [`pgpool_adm`](/ext/e/pgpool_adm) [`pgpool_recovery`](/ext/e/pgpool_recovery) [`pgpool_regclass`](/ext/e/pgpool_regclass) [`pgagent`](/ext/e/pgagent) `vacuumlo` [`pg_prewarm`](/ext/e/pg_prewarm) `oid2name` [`lo`](/ext/e/lo) [`basic_archive`](/ext/e/basic_archive) [`basebackup_to_shell`](/ext/e/basebackup_to_shell) [`old_snapshot`](/ext/e/old_snapshot) [`adminpack`](/ext/e/adminpack) [`amcheck`](/ext/e/amcheck) [`pg_surgery`](/ext/e/pg_surgery)
[**STAT**](/ext/cate/stat): [`pg_profile`](/ext/e/pg_profile) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_track_settings`](/ext/e/pg_track_settings) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) [`system_stats`](/ext/e/system_stats) [`meta`](/ext/e/meta) [`pgnodemx`](/ext/e/pgnodemx) [`pg_proctab`](/ext/e/pg_proctab) [`pg_sqlog`](/ext/e/pg_sqlog) [`bgw_replstatus`](/ext/e/bgw_replstatus) [`pgmeminfo`](/ext/e/pgmeminfo) [`toastinfo`](/ext/e/toastinfo) [`explain_ui`](/ext/e/explain_ui) [`pg_relusage`](/ext/e/pg_relusage) `pg_top` [`pagevis`](/ext/e/pagevis) [`powa`](/ext/e/powa) [`pageinspect`](/ext/e/pageinspect) [`pgrowlocks`](/ext/e/pgrowlocks) [`sslinfo`](/ext/e/sslinfo) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_walinspect`](/ext/e/pg_walinspect) [`pg_freespacemap`](/ext/e/pg_freespacemap) [`pg_visibility`](/ext/e/pg_visibility) [`pgstattuple`](/ext/e/pgstattuple) [`auto_explain`](/ext/e/auto_explain) [`pg_stat_statements`](/ext/e/pg_stat_statements)
[**SEC**](/ext/cate/sec): [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`supautils`](/ext/e/supautils) [`pgsodium`](/ext/e/pgsodium) [`supabase_vault`](/ext/e/supabase_vault) [`pg_session_jwt`](/ext/e/pg_session_jwt) [`anon`](/ext/e/anon) [`pg_tde`](/ext/e/pg_tde) [`pgsmcrypto`](/ext/e/pgsmcrypto) [`pgaudit`](/ext/e/pgaudit) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`credcheck`](/ext/e/credcheck) [`pgcryptokey`](/ext/e/pgcryptokey) [`pg_jobmon`](/ext/e/pg_jobmon) [`logerrors`](/ext/e/logerrors) [`login_hook`](/ext/e/login_hook) [`set_user`](/ext/e/set_user) [`pg_snakeoil`](/ext/e/pg_snakeoil) [`pgextwlist`](/ext/e/pgextwlist) [`pg_auditor`](/ext/e/pg_auditor) [`sslutils`](/ext/e/sslutils) [`noset`](/ext/e/noset) [`sepgsql`](/ext/e/sepgsql) [`auth_delay`](/ext/e/auth_delay) [`pgcrypto`](/ext/e/pgcrypto) [`passwordcheck`](/ext/e/passwordcheck)
[**FDW**](/ext/cate/fdw): [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`sqlite_fdw`](/ext/e/sqlite_fdw) [`pgbouncer_fdw`](/ext/e/pgbouncer_fdw) [`mongo_fdw`](/ext/e/mongo_fdw) [`redis_fdw`](/ext/e/redis_fdw) [`redis`](/ext/e/redis) [`kafka_fdw`](/ext/e/kafka_fdw) [`hdfs_fdw`](/ext/e/hdfs_fdw) [`firebird_fdw`](/ext/e/firebird_fdw) [`aws_s3`](/ext/e/aws_s3) [`log_fdw`](/ext/e/log_fdw) [`dblink`](/ext/e/dblink) [`file_fdw`](/ext/e/file_fdw) [`postgres_fdw`](/ext/e/postgres_fdw)
[**SIM**](/ext/cate/sim): [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) [`session_variable`](/ext/e/session_variable) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`babelfishpg_common`](/ext/e/babelfishpg_common) [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) [`babelfishpg_tds`](/ext/e/babelfishpg_tds) [`babelfishpg_money`](/ext/e/babelfishpg_money) [`pgmemcache`](/ext/e/pgmemcache)
[**ETL**](/ext/cate/etl): [`pglogical`](/ext/e/pglogical) [`pglogical_origin`](/ext/e/pglogical_origin) [`pglogical_ticker`](/ext/e/pglogical_ticker) [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`wal2json`](/ext/e/wal2json) [`wal2mongo`](/ext/e/wal2mongo) [`decoderbufs`](/ext/e/decoderbufs) [`decoder_raw`](/ext/e/decoder_raw) [`test_decoding`](/ext/e/test_decoding) [`mimeo`](/ext/e/mimeo) [`repmgr`](/ext/e/repmgr) [`pg_fact_loader`](/ext/e/pg_fact_loader) [`pg_bulkload`](/ext/e/pg_bulkload)

Since most of the supabase maintained extensions are not available in the official PGDG repo, 
we have compiled all the RPM/DEBs for these extensions and put them in the [Pigsty repo](/ext/):
[pg_graphql](/ext/e/pg_graphql), [pg_jsonschema](/ext/e/pg_jsonschema), [wrappers](/ext/e/wrappers), [index_advisor](/ext/e/index_advisor), [pg_net](/ext/e/pg_net), [vault](/ext/e/supabase_vault), [pgjwt](/ext/e/pgjwt), [supautils](/ext/e/supautils), [pg_plan_filter](/ext/e/plan_filter),  

Everything is under your control, you have the ability and freedom to scale PGSQL, MinIO, and Supabase itself.
And take full advantage of the performance and cost advantages of modern hardware like Gen5 NVMe SSD.

All you need is prepare a VM with several commands and wait for 10 minutes....


------

## Get Started

First, download & [install](/docs/setup/install) pigsty as usual, with the `supa` config template:

```bash
 curl -fsSL https://repo.pigsty.io/get | bash
./bootstrap          # install deps (ansible)
./configure -c supa  # use supa config template (IMPORTANT: CHANGE PASSWORDS!)
./deploy.yml         # install pigsty, create ha postgres & minio clusters 
```

> Please change the `pigsty.yml` config file according to your need before deploying Supabase. (**Credentials**)
> For dev/test/demo purposes, we will just skip that, and comes back later.

Then, run the [`supabase.yml`](https://github.com/pgsty/pigsty/blob/main/supabase.yml) to launch stateless part of supabase.

```bash
./supabase.yml       # launch stateless supabase containers with docker compose
```

You can access the supabase API / Web UI through the `8000/8443` directly.

with configured DNS, or a local `/etc/hosts` entry, you can also use the default `supa.pigsty` domain name via the 80/443 infra portal.

> Credentials for Supabase Studio: `supabase` : `pigsty`

[![asciicast](https://asciinema.org/a/692194.svg)](https://asciinema.org/a/692194)



-------

## Architecture

Pigsty's supabase is based on the [Supabase Docker Compose Template](https://supabase.com/docs/guides/self-hosting/docker), 
with some slight modifications to fit-in Pigsty's default [ACL](/docs/pgsql/misc/acl) model.

The stateful part of this template is replaced by Pigsty's managed PostgreSQL cluster and MinIO cluster.
The container part are stateless, so you can launch / destroy / run multiple supabase containers on the same stateful PGSQL / MINIO cluster simultaneously to scale out.

![](/img/pigsty/supa-arch.svg)

The built-in [`supa.yml`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml) [config](/docs/conf/supabase) template will create a single-node supabase, with a [singleton PostgreSQL](/docs/pgsql) and SNSD [MinIO](/docs/minio) server.
You can use [Multinode PostgreSQL Clusters](/docs/pgsql/config#replica) and [MNMD MinIO Clusters](/docs/minio/config#multi-node-multi-drive) / external S3 service instead in production, we will cover that later.



-------

## Config Detail

Here are checklists for self-hosting

- [x] [**Hardware**](/docs/deploy/prepare#node): necessary VM/BM resources, one node at least, 3-4 are recommended for HA.
- [x] [**Linux OS**](/docs/deploy/prepare#operating-system): Linux x86_64 server with fresh installed Linux, [check compatible distro](/docs/ref/linux)
- [x] [**Network**](/docs/deploy/prepare#network): Static IPv4 address which can be used as node identity
- [x] [**Admin User**](/docs/deploy/prepare#admin-user): nopass ssh & sudo are recommended for admin user
- [x] [**Conf Template**](/docs/setup/config): Use the [`supa`](/docs/conf/supabase) config template, if you don't know how to manually configure pigsty

The built-in [`supa.yml`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml) config template is shown below.

<br>

<details><summary>The supa Config Template</summary>

```yaml
all:
  children:

    # infra cluster for proxy, monitor, alert, etc..
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }

    # etcd cluster for ha postgres
    etcd: { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

    # minio cluster, s3 compatible object storage
    minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }

    # pg-meta, the underlying postgres database for supabase
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_users:
          # supabase roles: anon, authenticated, dashboard_user
          - { name: anon           ,login: false }
          - { name: authenticated  ,login: false }
          - { name: dashboard_user ,login: false ,replication: true ,createdb: true ,createrole: true }
          - { name: service_role   ,login: false ,bypassrls: true }
          # supabase users: please use the same password
          - { name: supabase_admin             ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: true   ,roles: [ dbrole_admin ] ,superuser: true ,replication: true ,createdb: true ,createrole: true ,bypassrls: true }
          - { name: authenticator              ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin, authenticated ,anon ,service_role ] }
          - { name: supabase_auth_admin        ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin ] ,createrole: true }
          - { name: supabase_storage_admin     ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin, authenticated ,anon ,service_role ] ,createrole: true }
          - { name: supabase_functions_admin   ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin ] ,createrole: true }
          - { name: supabase_replication_admin ,password: 'DBUser.Supa' ,replication: true ,roles: [ dbrole_admin ]}
          - { name: supabase_read_only_user    ,password: 'DBUser.Supa' ,bypassrls: true ,roles: [ dbrole_readonly, pg_read_all_data ] }
        pg_databases:
          - name: postgres
            baseline: supabase.sql
            owner: supabase_admin
            comment: supabase postgres database
            schemas: [ extensions ,auth ,realtime ,storage ,graphql_public ,supabase_functions ,_analytics ,_realtime ]
            extensions:
              - { name: pgcrypto  ,schema: extensions  } # 1.3   : cryptographic functions
              - { name: pg_net    ,schema: extensions  } # 0.9.2 : async HTTP
              - { name: pgjwt     ,schema: extensions  } # 0.2.0 : json web token API for postgres
              - { name: uuid-ossp ,schema: extensions  } # 1.1   : generate universally unique identifiers (UUIDs)
              - { name: pgsodium        }                # 3.1.9 : pgsodium is a modern cryptography library for Postgres.
              - { name: supabase_vault  }                # 0.2.8 : Supabase Vault Extension
              - { name: pg_graphql      }                # 1.5.9 : pg_graphql: GraphQL support
              - { name: pg_jsonschema   }                # 0.3.3 : pg_jsonschema: Validate json schema
              - { name: wrappers        }                # 0.4.3 : wrappers: FDW collections
              - { name: http            }                # 1.6   : http: allows web page retrieval inside the database.
              - { name: pg_cron         }                # 1.6   : pg_cron: Job scheduler for PostgreSQL
              - { name: timescaledb     }                # 2.17  : timescaledb: Enables scalable inserts and complex queries for time-series data
              - { name: pg_tle          }                # 1.2   : pg_tle: Trusted Language Extensions for PostgreSQL
              - { name: vector          }                # 0.8.0 : pgvector: the vector similarity search
        # supabase required extensions
        pg_libs: 'pg_stat_statements, plpgsql, plpgsql_check, pg_cron, pg_net, timescaledb, auto_explain, pg_tle, plan_filter'
        pg_extensions: # extensions to be installed on this cluster
          - supabase   # essential extensions for supabase
          - timescaledb postgis pg_graphql pg_jsonschema wrappers pg_search pg_analytics pg_parquet plv8 duckdb_fdw pg_cron pg_timetable pgqr
          - supautils pg_plan_filter passwordcheck plpgsql_check pgaudit pgsodium pg_vault pgjwt pg_ecdsa pg_session_jwt index_advisor
          - pgvector pgvectorscale pg_summarize pg_tiktoken pg_tle pg_stat_monitor hypopg pg_hint_plan pg_http pg_net pg_smtp_client pg_idkit
        pg_parameters:
          cron.database_name: postgres
          pgsodium.enable_event_trigger: off
        pg_hba_rules: # supabase hba rules, require access from docker network
          - { user: all ,db: postgres  ,addr: intra         ,auth: pwd ,title: 'allow supabase access from intranet'    }
          - { user: all ,db: postgres  ,addr: 172.17.0.0/16 ,auth: pwd ,title: 'allow access from local docker network' }
        node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # make a full backup every 1am

    # launch supabase stateless part with docker compose: ./supabase.yml
    supabase:
      hosts:
        10.10.10.10: { supa_seq: 1 }  # instance id
      vars:
        supa_cluster: supa            # cluster name
        docker_enabled: true          # enable docker

        # use these to pull docker images via proxy and mirror registries
        #docker_registry_mirrors: ['https://docker.xxxxx.io']
        #proxy_env:   # add [OPTIONAL] proxy env to /etc/docker/daemon.json configuration file
        #  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.myqcloud.com,*.tsinghua.edu.cn"
        #  #all_proxy: http://user:pass@host:port

        # these configuration entries will OVERWRITE or APPEND to /opt/supabase/.env file (src template: app/supabase/.env)
        # check https://github.com/pgsty/pigsty/blob/main/app/supabase/.env for default values
        supa_config:

          # IMPORTANT: CHANGE JWT_SECRET AND REGENERATE CREDENTIAL ACCORDING!!!!!!!!!!!
          # https://supabase.com/docs/guides/self-hosting/docker#securing-your-services
          jwt_secret: your-super-secret-jwt-token-with-at-least-32-characters-long
          anon_key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UtZGVtbyIsCiAgICAiaWF0IjogMTY0MTc2OTIwMCwKICAgICJleHAiOiAxNzk5NTM1NjAwCn0.dc_X5iR_VP_qT0zsiyj_I_OZ2T9FtRU2BBNWN8Bu4GE
          service_role_key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJzZXJ2aWNlX3JvbGUiLAogICAgImlzcyI6ICJzdXBhYmFzZS1kZW1vIiwKICAgICJpYXQiOiAxNjQxNzY5MjAwLAogICAgImV4cCI6IDE3OTk1MzU2MDAKfQ.DaYlNEoUrrEn2Ig7tqibS-PHK5vgusbcbo7X36XVt4Q
          dashboard_username: supabase
          dashboard_password: pigsty

          # postgres connection string (use the correct ip and port)
          postgres_host: 10.10.10.10
          postgres_port: 5436             # access via the 'default' service, which always route to the primary postgres
          postgres_db: postgres
          postgres_password: DBUser.Supa  # password for supabase_admin and multiple supabase users

          # expose supabase via domain name
          site_url: http://supa.pigsty
          api_external_url: http://supa.pigsty
          supabase_public_url: http://supa.pigsty

          # if using s3/minio as file storage
          s3_bucket: supa
          s3_endpoint: https://sss.pigsty:9000
          s3_access_key: supabase
          s3_secret_key: S3User.Supabase
          s3_force_path_style: true
          s3_protocol: https
          s3_region: stub
          minio_domain_ip: 10.10.10.10  # sss.pigsty domain name will resolve to this ip statically

          # if using SMTP (optional)
          #smtp_admin_email: admin@example.com
          #smtp_host: supabase-mail
          #smtp_port: 2500
          #smtp_user: fake_mail_user
          #smtp_pass: fake_mail_password
          #smtp_sender_name: fake_sender
          #enable_anonymous_users: false


  vars:
    version: v3.1.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default|china|europe
    node_tune: oltp                   # node tuning specs: oltp,olap,tiny,crit
    pg_conf: oltp.yml                 # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    infra_portal:                     # domain names and upstream servers
      home         : { domain: h.pigsty }
      grafana      : { domain: g.pigsty ,endpoint: "${admin_ip}:3000" , websocket: true }
      prometheus   : { domain: p.pigsty ,endpoint: "${admin_ip}:9090" }
      alertmanager : { domain: a.pigsty ,endpoint: "${admin_ip}:9093" }
      minio        : { domain: m.pigsty ,endpoint: "10.10.10.10:9001", https: true, websocket: true }
      blackbox     : { endpoint: "${admin_ip}:9115" }
      loki         : { endpoint: "${admin_ip}:3100" }  # expose supa studio UI and API via nginx
      supa         : { domain: supa.pigsty ,endpoint: "10.10.10.10:8000", websocket: true }

    #----------------------------------#
    # Credential: CHANGE THESE PASSWORDS
    #----------------------------------#
    #grafana_admin_username: admin
    grafana_admin_password: pigsty
    #pg_admin_username: dbuser_dba
    pg_admin_password: DBUser.DBA
    #pg_monitor_username: dbuser_monitor
    pg_monitor_password: DBUser.Monitor
    #pg_replication_username: replicator
    pg_replication_password: DBUser.Replicator
    #patroni_username: postgres
    patroni_password: Patroni.API
    #haproxy_admin_username: admin
    haproxy_admin_password: pigsty

    # use minio as supabase file storage, single node single driver mode for demonstration purpose
    minio_access_key: minioadmin      # root access key, `minioadmin` by default
    minio_secret_key: minioadmin      # root secret key, `minioadmin` by default
    minio_buckets: [ { name: pgsql }, { name: supa } ]
    minio_users:
      - { access_key: dba , secret_key: S3User.DBA, policy: consoleAdmin }
      - { access_key: pgbackrest , secret_key: S3User.Backup,   policy: readwrite }
      - { access_key: supabase   , secret_key: S3User.Supabase, policy: readwrite }
    minio_endpoint: https://sss.pigsty:9000    # explicit overwrite minio endpoint with haproxy port
    node_etc_hosts: ["10.10.10.10 sss.pigsty"] # domain name to access minio from all nodes (required)

    # use minio as default backup repo for PostgreSQL
    pgbackrest_method: minio          # pgbackrest repo method: local,minio,[user-defined...]
    pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
      local:                          # default pgbackrest repo with local posix fs
        path: /pg/backup              # local backup directory, `/pg/backup` by default
        retention_full_type: count    # retention full backups by count
        retention_full: 2             # keep 2, at most 3 full backup when using local fs repo
      minio:                          # optional minio repo for pgbackrest
        type: s3                      # minio is s3-compatible, so s3 is used
        s3_endpoint: sss.pigsty       # minio endpoint domain name, `sss.pigsty` by default
        s3_region: us-east-1          # minio region, us-east-1 by default, useless for minio
        s3_bucket: pgsql              # minio bucket name, `pgsql` by default
        s3_key: pgbackrest            # minio user access key for pgbackrest
        s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
        s3_uri_style: path            # use path style uri for minio rather than host style
        path: /pgbackrest             # minio backup path, default is `/pgbackrest`
        storage_port: 9000            # minio port, 9000 by default
        storage_ca_file: /pg/cert/ca.crt  # minio ca file path, `/pg/cert/ca.crt` by default
        bundle: y                     # bundle small files into a single file
        cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
        cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
        retention_full_type: time     # retention full backup by time on minio repo
        retention_full: 14            # keep full backup for last 14 days

    # download docker and supabase related extensions
    pg_version: 17
    repo_modules: node,pgsql,infra,docker
    repo_packages: [node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-utility, docker ]
    repo_extra_packages:
      - pgsql-main
      - supabase   # essential extensions for supabase
      - timescaledb postgis pg_graphql pg_jsonschema wrappers pg_search pg_analytics pg_parquet plv8 duckdb_fdw pg_cron pg_timetable pgqr
      - supautils pg_plan_filter passwordcheck plpgsql_check pgaudit pgsodium pg_vault pgjwt pg_ecdsa pg_session_jwt index_advisor
      - pgvector pgvectorscale pg_summarize pg_tiktoken pg_tle pg_stat_monitor hypopg pg_hint_plan pg_http pg_net pg_smtp_client pg_idkit

```

</details>

<br>

For advanced topics, we may need to modify the configuration file to fit our needs.

- [Security Enhancement](#security-enhancement)
- [Domain Name and HTTPS](#domain-name-and-https)
- [Sending Mail with SMTP](#sending-mail-with-smtp)
- [MinIO or External S3](#minio-or-external-s3)
- [True High Availability](#true-high-availability)



--------

## Security Enhancement

For security reasons, you should change the default passwords in the `pigsty.yml` config file.

- [`grafana_admin_password`](/docs/pgsql/param/#grafana_admin_password): `pigsty`, Grafana admin password
- [`pg_admin_password`](/docs/pgsql/param/#pg_admin_password): `DBUser.DBA`, PGSQL superuser password
- [`pg_monitor_password`](/docs/pgsql/param/#pg_monitor_password): `DBUser.Monitor`, PGSQL monitor user password
- [`pg_replication_password`](/docs/pgsql/param/#pg_replication_password): `DBUser.Replicator`, PGSQL replication user password
- [`patroni_password`](/docs/pgsql/param/#patroni_password): `Patroni.API`, Patroni HA Agent Password
- [`haproxy_admin_password`](/docs/pgsql/param/#haproxy_admin_password): `pigsty`, Load balancer admin password
- [`minio_access_key`](/docs/minio/param#grafana_admin_password): `minioadmin`, MinIO root username
- [`minio_secret_key`](/docs/minio/param#minio_secret_key): `minioadmin`, MinIO root password

Supabase will use PostgreSQL & MinIO as its backend, so also change the following passwords for supabase business users: 

- [`pg_users`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L49): password for supabase business users in postgres
- [`minio_users`](/docs/minio/param#minio_secret_key): `minioadmin`, MinIO business user's password

The pgbackrest will take backups and WALs to MinIO, so also change the following passwords reference

- [`pgbackrest_repo`](/docs/minio/param#pgbackrest_repo): refer to the 

PLEASE check the [Supabase Self-Hosting: Generate API Keys](https://supabase.com/docs/guides/self-hosting/docker#generate-api-keys) to generate supabase credentials:

- [`jwt_secret`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L114): a secret key with at least 40 characters
- [`anon_key`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L115): a jwt token generate for anonymous users, based on `jwt_secret`
- [`service_role_key`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L116): a jwt token generate for elevated service roles, based on `jwt_secret`
- [`dashboard_username`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L117): supabase studio web portal username, `supabase` by default
- [`dashboard_password`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L128): supabase studio web portal password, `pigsty` by default

If you have chanaged the default password for PostgreSQL and MinIO, you have to update the following parameters as well:

- [`postgres_password`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#L126), according to [`pg_users`](/docs/pgsql/admin/user)
- [`s3_access_key`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#136) and [`s3_secret_key`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml#137), according to [`minio_users`](/docs/minio/param#minio_users)



--------

## Domain Name and HTTPS

For local or intranet use, you can connect directly to Kong port on `http://<IP>:8000` or `8443` for https.
This works but isn’t ideal. Using a domain with HTTPS is strongly recommended when serving Supabase to the public.

Pigsty has a Nginx server installed & configured on the admin node to act as a reverse proxy for all web based service. which is configured via the `infra_portal` parameter.

```yaml
all:
  vars:     # global vars
    #.....
    infra_portal:  # domain names and upstream servers
      home         : { domain: h.pigsty }
      grafana      : { domain: g.pigsty ,endpoint: "${admin_ip}:3000" , websocket: true }
      prometheus   : { domain: p.pigsty ,endpoint: "${admin_ip}:9090" }
      alertmanager : { domain: a.pigsty ,endpoint: "${admin_ip}:9093" }
      minio        : { domain: m.pigsty ,endpoint: "10.10.10.10:9001", https: true, websocket: true }
      blackbox     : { endpoint: "${admin_ip}:9115" }
      loki         : { endpoint: "${admin_ip}:3100" }  # expose supa studio UI and API via nginx
      supa         : { domain: supa.pigsty ,endpoint: "10.10.10.10:8000", websocket: true }
```

On the client side, you can use the domain `supa.pigsty` to access the Supabase Studio management interface.
You can add this domain to your local `/etc/hosts` file or use a local DNS server to resolve it to the server's **external** IP address.


To use a real domain with HTTPS, you will need to modify the `all.vars.infra_portal.supa` with updated domain name (such as `supa.pigsty.cc` here).
You can obtain a free HTTPS certificate from [Let’s Encrypt](https://letsencrypt.org/), and just put the cert/key files in the specified path.

```yaml
#supa : { domain: supa.pigsty ,endpoint: "10.10.10.10:8000", websocket: true }  # add your HTTPS certs/keys and specify the path
supa  : { domain: supa.pigsty.cc ,endpoint: "10.10.10.10:8000", websocket: true ,cert: /etc/cert/suap.pigsty.cc.crt ,key: /etc/cert/supa.pigsty.cc.key }
```

To reload the new configuration after installation, use the `infra.yml` playbook:

```bash
./infra.yml -t nginx_config,nginx_launch   # reload nginx config
```

You also have to update the `all.children.supabase.vars.supa_config` to tell supabase to use the new domain name:

```yaml
all:
  children:           # clusters
    supabase:         # supabase group
      vars:           # supabase param
        supa_config:  # supabase config
          
          # update supabase domain names here
          site_url: http://supa.pigsty.cc
          api_external_url: http://supa.pigsty.cc
          supabase_public_url: http://supa.pigsty.cc
```

And reload the supabase service to apply the new configuration:

```bash
./supabase.yml -t supa_config,supa_launch # reload supabase config
```




--------

## Sending Mail with SMTP

Some Supabase features require email. For production use, I'd recommend using an external SMTP service. 
Since self-hosted SMTP servers often result in rejected or spam-flagged emails.

To do this, modify the Supabase configuration and add SMTP credentials:

```yaml
all:
  children:
    supabase:
      vars:
        supa_config:
          smtp_host: smtpdm.aliyun.com:80
          smtp_port: 80
          smtp_user: no_reply@mail.your.domain.com
          smtp_pass: your_email_user_password
          smtp_sender_name: MySupabase
          smtp_admin_email: adminxxx@mail.your.domain.com
          enable_anonymous_users: false
```

And don't forget to reload the supabase service with `./supabase.yml -t supa_config,supa_launch`





--------

## MinIO or External S3

Pigsty's self-hosting supabase will use a local [SNSD MinIO](/docs/minio/config#single-node-single-drive) server,
which is used by Supabase itself for object storage, and by PostgreSQL for backups.
For production use, you should consider using a HA [MNMD MinIO](/docs/minio/config#multi-node-multi-drive) cluster or an external S3 compatible service instead.

We recommend using an external S3 when:

- you just have one single server available, then external s3 gives you a minimal disaster recovery guarantee, with RTO in hours and RPO in MBs.
- you are operating in the cloud, then using S3 directly is recommended rather than wrap expensively EBS with MinIO 

> The [`terraform/spec/aliyun-meta-s3.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-meta-s3.tf) provides an example of how to provision a single node alone with an S3 bucket.

To use an external S3 compatible service, you'll have to update two related references in the `pigsty.yml` config.

For example, to use Aliyun OSS as the object storage for Supabase, you can modify the `all.children.supabase.vars.supa_config` to point to the Aliyun OSS bucket:

```yaml
all:
  children:
    supabase:
      vars:
        supa_config:
          s3_bucket: pigsty-oss
          s3_endpoint: https://oss-cn-beijing-internal.aliyuncs.com
          s3_access_key: xxxxxxxxxxxxxxxx
          s3_secret_key: xxxxxxxxxxxxxxxx
          s3_force_path_style: false
          s3_protocol: https
          s3_region: oss-cn-beijing
```

Reload the supabase service with `./supabase.yml -t supa_config,supa_launch` again.

The next reference is in the PostgreSQL backup repo:

```yaml
all:
  vars:
    # use minio as default backup repo for PostgreSQL
    pgbackrest_method: minio          # pgbackrest repo method: local,minio,[user-defined...]
    pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
      local:                          # default pgbackrest repo with local posix fs
        path: /pg/backup              # local backup directory, `/pg/backup` by default
        retention_full_type: count    # retention full backups by count
        retention_full: 2             # keep 2, at most 3 full backup when using local fs repo
      minio:                          # optional minio repo for pgbackrest
        type: s3                      # minio is s3-compatible, so s3 is used
        
        # update your credentials here
        s3_endpoint: oss-cn-beijing-internal.aliyuncs.com
        s3_region: oss-cn-beijing
        s3_bucket: pigsty-oss
        s3_key: xxxxxxxxxxxxxx
        s3_key_secret: xxxxxxxx
        s3_uri_style: host

        path: /pgbackrest             # minio backup path, default is `/pgbackrest`
        storage_port: 9000            # minio port, 9000 by default
        storage_ca_file: /pg/cert/ca.crt  # minio ca file path, `/pg/cert/ca.crt` by default
        bundle: y                     # bundle small files into a single file
        cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
        cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
        retention_full_type: time     # retention full backup by time on minio repo
        retention_full: 14            # keep full backup for last 14 days
```

After updating the `pgbackrest_repo`, you can reset the pgBackrest backup with `./pgsql.yml -t pgbackrest`.


--------

## True High Availability

The default single-node deployment (with external S3) provide a minimal disaster recovery guarantee, with RTO in hours and RPO in MBs.

To achieve RTO < 30s and zero data loss, you need a multi-node high availability cluster with at least 3-nodes.

Which involves high availability for these components:

- [ETCD](/docs/etcd): DCS requires at least three nodes to tolerate one node failure.
- [PGSQL](/docs/pgsql): PGSQL synchronous commit mode recommends at least three nodes.
- [INFRA](/docs/infra): It's good to have two or three copies of observability stack.
- Supabase itself can also have multiple replicas to achieve high availability.

We recommend you to refer to the [trio](/docs/conf/trio) and [safe](/docs/conf/safe) config to upgrade your cluster to three nodes or more.

In this case, you also need to modify the access points for PostgreSQL and MinIO to use the DNS / L2 VIP / HAProxy [HA access points](/docs/pgsql/misc/svc).


```yaml
all:
  children:
    supabase:
      hosts:
        10.10.10.10: { supa_seq: 1 }
        10.10.10.11: { supa_seq: 2 }
        10.10.10.12: { supa_seq: 3 } 
      vars:
        supa_cluster: supa            # cluster name
        supa_config:
          postgres_host: 10.10.10.2             # use the PG L2 VIP
          postgres_port: 5433                   # use the 5433 port to access the primary instance through pgbouncer
          s3_endpoint: https://sss.pigsty:9002  # If you are using MinIO through the haproxy lb port 9002
          minio_domain_ip: 10.10.10.3           # use the L2 VIP binds to all proxy nodes
```


<details><summary>The 3-Node HA Supabase Config Template</summary>

```yaml
all:

  #==============================================================#
  # Clusters, Nodes, and Modules
  #==============================================================#
  children:

    # infra cluster for proxy, monitor, alert, etc..
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 ,nodename: infra-1 }
        10.10.10.11: { infra_seq: 2 ,nodename: infra-2, repo_enabled: false, grafana_enabled: false }
        10.10.10.12: { infra_seq: 3 ,nodename: infra-3, repo_enabled: false, grafana_enabled: false }
      vars:

        vip_enabled: true
        vip_vrid: 128
        vip_address: 10.10.10.3
        vip_interface: eth1
        haproxy_services:
          - name: minio                    # [REQUIRED] service name, unique
            port: 9002                     # [REQUIRED] service port, unique
            balance: leastconn             # [OPTIONAL] load balancer algorithm
            options:                       # [OPTIONAL] minio health check
              - option httpchk
              - option http-keep-alive
              - http-check send meth OPTIONS uri /minio/health/live
              - http-check expect status 200
            servers:
              - { name: minio-1 ,ip: 10.10.10.10 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-2 ,ip: 10.10.10.11 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-3 ,ip: 10.10.10.12 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }



    etcd: # dcs service for postgres/patroni ha consensus
      hosts: # 1 node for testing, 3 or 5 for production
        10.10.10.10: { etcd_seq: 1 }  # etcd_seq required
        10.10.10.11: { etcd_seq: 2 }  # assign from 1 ~ n
        10.10.10.12: { etcd_seq: 3 }  # odd number please
      vars: # cluster level parameter override roles/etcd
        etcd_cluster: etcd  # mark etcd cluster name etcd
        etcd_safeguard: false # safeguard against purging
        etcd_clean: true # purge etcd during init process

    # minio cluster 4-node
    minio:
      hosts:
        10.10.10.10: { minio_seq: 1 , nodename: minio-1 }
        10.10.10.11: { minio_seq: 2 , nodename: minio-2 }
        10.10.10.12: { minio_seq: 3 , nodename: minio-3 }
      vars:
        minio_cluster: minio
        minio_data: '/data{1...4}'
        minio_buckets: [ { name: pgsql }, { name: supa } ]
        minio_users:
          - { access_key: dba , secret_key: S3User.DBA, policy: consoleAdmin }
          - { access_key: pgbackrest , secret_key: S3User.Backup,   policy: readwrite }
          - { access_key: supabase   , secret_key: S3User.Supabase, policy: readwrite }

    # pg-meta, the underlying postgres database for supabase
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
        10.10.10.11: { pg_seq: 2, pg_role: replica }
        10.10.10.12: { pg_seq: 3, pg_role: replica }
      vars:
        pg_cluster: pg-meta
        pg_users:
          # supabase roles: anon, authenticated, dashboard_user
          - { name: anon           ,login: false }
          - { name: authenticated  ,login: false }
          - { name: dashboard_user ,login: false ,replication: true ,createdb: true ,createrole: true }
          - { name: service_role   ,login: false ,bypassrls: true }
          # supabase users: please use the same password
          - { name: supabase_admin             ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: true   ,roles: [ dbrole_admin ] ,superuser: true ,replication: true ,createdb: true ,createrole: true ,bypassrls: true }
          - { name: authenticator              ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin, authenticated ,anon ,service_role ] }
          - { name: supabase_auth_admin        ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin ] ,createrole: true }
          - { name: supabase_storage_admin     ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin, authenticated ,anon ,service_role ] ,createrole: true }
          - { name: supabase_functions_admin   ,password: 'DBUser.Supa' ,pgbouncer: true ,inherit: false  ,roles: [ dbrole_admin ] ,createrole: true }
          - { name: supabase_replication_admin ,password: 'DBUser.Supa' ,replication: true ,roles: [ dbrole_admin ]}
          - { name: supabase_read_only_user    ,password: 'DBUser.Supa' ,bypassrls: true ,roles: [ dbrole_readonly, pg_read_all_data ] }
        pg_databases:
          - name: postgres
            baseline: supabase.sql
            owner: supabase_admin
            comment: supabase postgres database
            schemas: [ extensions ,auth ,realtime ,storage ,graphql_public ,supabase_functions ,_analytics ,_realtime ]
            extensions:
              - { name: pgcrypto  ,schema: extensions  } # 1.3   : cryptographic functions
              - { name: pg_net    ,schema: extensions  } # 0.9.2 : async HTTP
              - { name: pgjwt     ,schema: extensions  } # 0.2.0 : json web token API for postgres
              - { name: uuid-ossp ,schema: extensions  } # 1.1   : generate universally unique identifiers (UUIDs)
              - { name: pgsodium        }                # 3.1.9 : pgsodium is a modern cryptography library for Postgres.
              - { name: supabase_vault  }                # 0.2.8 : Supabase Vault Extension
              - { name: pg_graphql      }                # 1.5.9 : pg_graphql: GraphQL support
              - { name: pg_jsonschema   }                # 0.3.3 : pg_jsonschema: Validate json schema
              - { name: wrappers        }                # 0.4.3 : wrappers: FDW collections
              - { name: http            }                # 1.6   : http: allows web page retrieval inside the database.
              - { name: pg_cron         }                # 1.6   : pg_cron: Job scheduler for PostgreSQL
              - { name: timescaledb     }                # 2.17  : timescaledb: Enables scalable inserts and complex queries for time-series data
              - { name: pg_tle          }                # 1.2   : pg_tle: Trusted Language Extensions for PostgreSQL
              - { name: vector          }                # 0.8.0 : pgvector: the vector similarity search
        # supabase required extensions
        pg_libs: 'pg_stat_statements, plpgsql, plpgsql_check, pg_cron, pg_net, timescaledb, auto_explain, pg_tle, plan_filter'
        pg_extensions: # extensions to be installed on this cluster
          - supabase   # essential extensions for supabase
          - timescaledb postgis pg_graphql pg_jsonschema wrappers pg_search pg_analytics pg_parquet plv8 duckdb_fdw pg_cron pg_timetable pgqr
          - supautils pg_plan_filter passwordcheck plpgsql_check pgaudit pgsodium pg_vault pgjwt pg_ecdsa pg_session_jwt index_advisor
          - pgvector pgvectorscale pg_summarize pg_tiktoken pg_tle pg_stat_monitor hypopg pg_hint_plan pg_http pg_net pg_smtp_client pg_idkit
        pg_parameters:
          cron.database_name: postgres
          pgsodium.enable_event_trigger: off
        pg_hba_rules: # supabase hba rules, require access from docker network
          - { user: all ,db: postgres  ,addr: intra         ,auth: pwd ,title: 'allow supabase access from intranet'    }
          - { user: all ,db: postgres  ,addr: 172.17.0.0/16 ,auth: pwd ,title: 'allow access from local docker network' }
        pg_vip_enabled: true
        pg_vip_address: 10.10.10.2/24
        pg_vip_interface: eth1
        node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # make a full backup every 1am


    # launch supabase stateless part with docker compose: ./supabase.yml
    supabase:
      hosts:
        10.10.10.10: { supa_seq: 1 }  # instance 1
        10.10.10.11: { supa_seq: 2 }  # instance 2
        10.10.10.12: { supa_seq: 3 }  # instance 3
      vars:
        supa_cluster: supa            # cluster name
        docker_enabled: true          # enable docker

        # use these to pull docker images via proxy and mirror registries
        #docker_registry_mirrors: ['https://docker.xxxxx.io']
        #proxy_env:   # add [OPTIONAL] proxy env to /etc/docker/daemon.json configuration file
        #  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.myqcloud.com,*.tsinghua.edu.cn"
        #  #all_proxy: http://user:pass@host:port

        # these configuration entries will OVERWRITE or APPEND to /opt/supabase/.env file (src template: app/supabase/.env)
        # check https://github.com/pgsty/pigsty/blob/main/app/supabase/.env for default values
        supa_config:

          # IMPORTANT: CHANGE JWT_SECRET AND REGENERATE CREDENTIAL ACCORDING!!!!!!!!!!!
          # https://supabase.com/docs/guides/self-hosting/docker#securing-your-services
          jwt_secret: your-super-secret-jwt-token-with-at-least-32-characters-long
          anon_key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UtZGVtbyIsCiAgICAiaWF0IjogMTY0MTc2OTIwMCwKICAgICJleHAiOiAxNzk5NTM1NjAwCn0.dc_X5iR_VP_qT0zsiyj_I_OZ2T9FtRU2BBNWN8Bu4GE
          service_role_key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJzZXJ2aWNlX3JvbGUiLAogICAgImlzcyI6ICJzdXBhYmFzZS1kZW1vIiwKICAgICJpYXQiOiAxNjQxNzY5MjAwLAogICAgImV4cCI6IDE3OTk1MzU2MDAKfQ.DaYlNEoUrrEn2Ig7tqibS-PHK5vgusbcbo7X36XVt4Q
          dashboard_username: supabase
          dashboard_password: pigsty

          # postgres connection string (use the correct ip and port)
          postgres_host: 10.10.10.3       # use the pg_vip_address rather than single node ip
          postgres_port: 5433             # access via the 'default' service, which always route to the primary postgres
          postgres_db: postgres
          postgres_password: DBUser.Supa  # password for supabase_admin and multiple supabase users

          # expose supabase via domain name
          site_url: http://supa.pigsty
          api_external_url: http://supa.pigsty
          supabase_public_url: http://supa.pigsty

          # if using s3/minio as file storage
          s3_bucket: supa
          s3_endpoint: https://sss.pigsty:9002
          s3_access_key: supabase
          s3_secret_key: S3User.Supabase
          s3_force_path_style: true
          s3_protocol: https
          s3_region: stub
          minio_domain_ip: 10.10.10.3   # sss.pigsty domain name will resolve to this l2 vip that bind to all nodes

          # if using SMTP (optional)
          #smtp_admin_email: admin@example.com
          #smtp_host: supabase-mail
          #smtp_port: 2500
          #smtp_user: fake_mail_user
          #smtp_pass: fake_mail_password
          #smtp_sender_name: fake_sender
          #enable_anonymous_users: false



  #==============================================================#
  # Global Parameters
  #==============================================================#
  vars:
    version: v3.1.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: china                     # upstream mirror region: default|china|europe
    node_tune: oltp                   # node tuning specs: oltp,olap,tiny,crit
    pg_conf: oltp.yml                 # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    infra_portal:                     # domain names and upstream servers
      home         : { domain: h.pigsty }
      grafana      : { domain: g.pigsty ,endpoint: "${admin_ip}:3000" , websocket: true }
      prometheus   : { domain: p.pigsty ,endpoint: "${admin_ip}:9090" }
      alertmanager : { domain: a.pigsty ,endpoint: "${admin_ip}:9093" }
      minio        : { domain: m.pigsty ,endpoint: "10.10.10.10:9001", https: true, websocket: true }
      blackbox     : { endpoint: "${admin_ip}:9115" }
      loki         : { endpoint: "${admin_ip}:3100" }  # expose supa studio UI and API via nginx
      supa         : { domain: supa.pigsty ,endpoint: "10.10.10.10:8000", websocket: true }

    #----------------------------------#
    # Credential: CHANGE THESE PASSWORDS
    #----------------------------------#
    #grafana_admin_username: admin
    grafana_admin_password: pigsty
    #pg_admin_username: dbuser_dba
    pg_admin_password: DBUser.DBA
    #pg_monitor_username: dbuser_monitor
    pg_monitor_password: DBUser.Monitor
    #pg_replication_username: replicator
    pg_replication_password: DBUser.Replicator
    #patroni_username: postgres
    patroni_password: Patroni.API
    #haproxy_admin_username: admin
    haproxy_admin_password: pigsty

    # use minio as supabase file storage, single node single driver mode for demonstration purpose
    minio_access_key: minioadmin      # root access key, `minioadmin` by default
    minio_secret_key: minioadmin      # root secret key, `minioadmin` by default
    minio_buckets: [ { name: pgsql }, { name: supa } ]
    minio_users:
      - { access_key: dba , secret_key: S3User.DBA, policy: consoleAdmin }
      - { access_key: pgbackrest , secret_key: S3User.Backup,   policy: readwrite }
      - { access_key: supabase   , secret_key: S3User.Supabase, policy: readwrite }
    minio_endpoint: https://sss.pigsty:9000    # explicit overwrite minio endpoint with haproxy port
    node_etc_hosts: ["10.10.10.3 sss.pigsty"] # domain name to access minio from all nodes (required)

    # use minio as default backup repo for PostgreSQL
    pgbackrest_method: minio          # pgbackrest repo method: local,minio,[user-defined...]
    pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
      local:                          # default pgbackrest repo with local posix fs
        path: /pg/backup              # local backup directory, `/pg/backup` by default
        retention_full_type: count    # retention full backups by count
        retention_full: 2             # keep 2, at most 3 full backup when using local fs repo
      minio:                          # optional minio repo for pgbackrest
        type: s3                      # minio is s3-compatible, so s3 is used
        s3_endpoint: sss.pigsty       # minio endpoint domain name, `sss.pigsty` by default
        s3_region: us-east-1          # minio region, us-east-1 by default, useless for minio
        s3_bucket: pgsql              # minio bucket name, `pgsql` by default
        s3_key: pgbackrest            # minio user access key for pgbackrest
        s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
        s3_uri_style: path            # use path style uri for minio rather than host style
        path: /pgbackrest             # minio backup path, default is `/pgbackrest`
        storage_port: 9002            # minio port, 9000 by default
        storage_ca_file: /pg/cert/ca.crt  # minio ca file path, `/pg/cert/ca.crt` by default
        bundle: y                     # bundle small files into a single file
        cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
        cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
        retention_full_type: time     # retention full backup by time on minio repo
        retention_full: 14            # keep full backup for last 14 days

    # download docker and supabase related extensions
    pg_version: 17
    repo_modules: node,pgsql,infra,docker
    repo_packages: [node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-utility, docker ]
    repo_extra_packages:
      - pgsql-main
      - supabase   # essential extensions for supabase
      - timescaledb postgis pg_graphql pg_jsonschema wrappers pg_search pg_analytics pg_parquet plv8 duckdb_fdw pg_cron pg_timetable pgqr
      - supautils pg_plan_filter passwordcheck plpgsql_check pgaudit pgsodium pg_vault pgjwt pg_ecdsa pg_session_jwt index_advisor
      - pgvector pgvectorscale pg_summarize pg_tiktoken pg_tle pg_stat_monitor hypopg pg_hint_plan pg_http pg_net pg_smtp_client pg_idkit
```

</details>


<br>

------------

<br>
