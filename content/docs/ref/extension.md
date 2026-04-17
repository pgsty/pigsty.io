---
title: Extensions
weight: 465
description: This page lists PostgreSQL extensions supported by Pigsty and their availability overview.
icon: fa-brands fa-usb
module: [PGSQL]
categories: [Reference]
hide: True
---

Pigsty extension data is synchronized from `~/pgsty/pgext/content/list/ext.md` and `~/pgsty/pgext/db/extension.csv`. For full details, see [**PGEXT.CLOUD**](/ext/list/).

There are currently **504** available PostgreSQL extensions.

### TIME

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [timescaledb](/ext/e/timescaledb/) | `2.25.2` | `TIME` | Enables scalable inserts and complex queries for time-series data |
| [timescaledb_toolkit](/ext/e/timescaledb_toolkit/) | `1.22.0` | `TIME` | Library of analytical hyperfunctions, time-series pipelining, and other SQL utilities |
| [timeseries](/ext/e/timeseries/) | `0.2.0` | `TIME` | Convenience API for time series stack |
| [periods](/ext/e/periods/) | `1.2.3` | `TIME` | Provide Standard SQL functionality for PERIODs and SYSTEM VERSIONING |
| [temporal_tables](/ext/e/temporal_tables/) | `1.2.2` | `TIME` | temporal tables |
| [emaj](/ext/e/emaj/) | `4.7.1` | `TIME` | Enables fine-grained write logging and time travel on subsets of the database. |
| [table_version](/ext/e/table_version/) | `1.11.1` | `TIME` | PostgreSQL table versioning extension |
| [pg_cron](/ext/e/pg_cron/) | `1.6.7` | `TIME` | Job scheduler for PostgreSQL |
| [pg_task](/ext/e/pg_task/) | `1.0.0` | `TIME` | execute any sql command at any specific time at background |
| [pg_later](/ext/e/pg_later/) | `0.4.0` | `TIME` | Run queries now and get results later |
| [pg_background](/ext/e/pg_background/) | `1.8` | `TIME` | Run SQL queries in the background |

### GIS

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [postgis](/ext/e/postgis/) | `3.6.2` | `GIS` | PostGIS geometry and geography spatial types and functions |
| [postgis_topology](/ext/e/postgis_topology/) | `3.6.2` | `GIS` | PostGIS topology spatial types and functions |
| [postgis_raster](/ext/e/postgis_raster/) | `3.6.2` | `GIS` | PostGIS raster types and functions |
| [postgis_sfcgal](/ext/e/postgis_sfcgal/) | `3.6.2` | `GIS` | PostGIS SFCGAL functions |
| [postgis_tiger_geocoder](/ext/e/postgis_tiger_geocoder/) | `3.6.2` | `GIS` | PostGIS tiger geocoder and reverse geocoder |
| [address_standardizer](/ext/e/address_standardizer/) | `3.6.2` | `GIS` | Used to parse an address into constituent elements. Generally used to support geocoding address normalization step. |
| [address_standardizer_data_us](/ext/e/address_standardizer_data_us/) | `3.6.2` | `GIS` | Address Standardizer US dataset example |
| [pgrouting](/ext/e/pgrouting/) | `4.0.1` | `GIS` | pgRouting Extension |
| [pointcloud](/ext/e/pointcloud/) | `1.2.5` | `GIS` | data type for lidar point clouds |
| [pointcloud_postgis](/ext/e/pointcloud_postgis/) | `1.2.5` | `GIS` | integration for pointcloud LIDAR data and PostGIS geometry data |
| [h3](/ext/e/h3/) | `4.2.3` | `GIS` | H3 bindings for PostgreSQL |
| [h3_postgis](/ext/e/h3_postgis/) | `4.2.3` | `GIS` | H3 PostGIS integration |
| [q3c](/ext/e/q3c/) | `2.0.2` | `GIS` | q3c sky indexing plugin |
| [ogr_fdw](/ext/e/ogr_fdw/) | `1.1.7` | `GIS` | foreign-data wrapper for GIS data access |
| [geoip](/ext/e/geoip/) | `0.3.0` | `GIS` | IP-based geolocation query |
| [pg_polyline](/ext/e/pg_polyline/) | `0.0.1` | `GIS` | Fast Google Encoded Polyline encoding & decoding for postgres |
| [pg_eviltransform](/ext/e/pg_eviltransform/) | `0.0.2` | `GIS` | BD09/GCJ02 coordinate transformation based on PostGIS ST_Transform |
| [pg_geohash](/ext/e/pg_geohash/) | `1.0` | `GIS` | Handle geohash based functionality for spatial coordinates |
| [mobilitydb](/ext/e/mobilitydb/) | `1.3.0` | `GIS` | MobilityDB geospatial trajectory data management & analysis platform |
| [mobilitydb_datagen](/ext/e/mobilitydb_datagen/) | `1.3.0` | `GIS` | MobilityDB random data generator functions |
| [tzf](/ext/e/tzf/) | `0.2.3` | `GIS` | Fast lookup timezone name by GPS coordinates |
| [earthdistance](/ext/e/earthdistance/) | `1.2` | `GIS` | calculate great-circle distances on the surface of the Earth |

### RAG

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [vector](/ext/e/vector/) | `0.8.2` | `RAG` | vector data type and ivfflat and hnsw access methods |
| [vchord](/ext/e/vchord/) | `1.1.1` | `RAG` | Vector database plugin for Postgres, written in Rust |
| [vectorscale](/ext/e/vectorscale/) | `0.9.0` | `RAG` | Advanced indexing for vector data with DiskANN |
| [vectorize](/ext/e/vectorize/) | `0.26.0` | `RAG` | The simplest way to do vector search on Postgres |
| [pg_similarity](/ext/e/pg_similarity/) | `1.0` | `RAG` | support similarity queries |
| [smlar](/ext/e/smlar/) | `1.0` | `RAG` | Effective similarity search |
| [pg_summarize](/ext/e/pg_summarize/) | `0.0.1` | `RAG` | Text Summarization using LLMs. Built using pgrx |
| [pg_tiktoken](/ext/e/pg_tiktoken/) | `0.0.1` | `RAG` | tiktoken tokenizer for use with OpenAI models in postgres |
| [pg4ml](/ext/e/pg4ml/) | `2.0` | `RAG` | Machine learning framework for PostgreSQL |
| [pgml](/ext/e/pgml/) | `2.10.0` | `RAG` | Run AL/ML workloads with SQL interface |

### FTS

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [pg_search](/ext/e/pg_search/) | `0.21.12` | `FTS` | Full text search for PostgreSQL using BM25 |
| [pgroonga](/ext/e/pgroonga/) | `4.0.4` | `FTS` | Use Groonga as index, fast full text search platform for all languages! |
| [pgroonga_database](/ext/e/pgroonga_database/) | `4.0.4` | `FTS` | PGroonga database management module |
| [pg_bigm](/ext/e/pg_bigm/) | `1.2` | `FTS` | create 2-gram (bigram) index for faster full text search. |
| [zhparser](/ext/e/zhparser/) | `2.3` | `FTS` | a parser for full-text search of Chinese |
| [pg_bestmatch](/ext/e/pg_bestmatch/) | `0.0.2` | `FTS` | Generate BM25 sparse vector inside PostgreSQL |
| [vchord_bm25](/ext/e/vchord_bm25/) | `0.3.0` | `FTS` | A postgresql extension for bm25 ranking algorithm |
| [pg_tokenizer](/ext/e/pg_tokenizer/) | `0.1.1` | `FTS` | Tokenizers for full-text search |
| [biscuit](/ext/e/biscuit/) | `2.2.2` | `FTS` | IAM-LIKE pattern matching with bitmap indexing |
| [pg_textsearch](/ext/e/pg_textsearch/) | `0.5.0` | `FTS` | Full-text search with BM25 ranking |
| [pg_pinyin](/ext/e/pg_pinyin/) | `0.0.2` | `FTS` | PostgreSQL Pinyin transliteration and search extension |
| [hunspell_cs_cz](/ext/e/hunspell_cs_cz/) | `1.0` | `FTS` | Czech Hunspell Dictionary |
| [hunspell_de_de](/ext/e/hunspell_de_de/) | `1.0` | `FTS` | German Hunspell Dictionary |
| [hunspell_en_us](/ext/e/hunspell_en_us/) | `1.0` | `FTS` | en_US Hunspell Dictionary |
| [hunspell_fr](/ext/e/hunspell_fr/) | `1.0` | `FTS` | French Hunspell Dictionary |
| [hunspell_ne_np](/ext/e/hunspell_ne_np/) | `1.0` | `FTS` | Nepali Hunspell Dictionary |
| [hunspell_nl_nl](/ext/e/hunspell_nl_nl/) | `1.0` | `FTS` | Dutch Hunspell Dictionary |
| [hunspell_nn_no](/ext/e/hunspell_nn_no/) | `1.0` | `FTS` | Norwegian (norsk) Hunspell Dictionary |
| [hunspell_pt_pt](/ext/e/hunspell_pt_pt/) | `1.0` | `FTS` | Portuguese Hunspell Dictionary |
| [hunspell_ru_ru](/ext/e/hunspell_ru_ru/) | `1.0` | `FTS` | Russian Hunspell Dictionary |
| [hunspell_ru_ru_aot](/ext/e/hunspell_ru_ru_aot/) | `1.0` | `FTS` | Russian Hunspell Dictionary (from AOT.ru group) |
| [fuzzystrmatch](/ext/e/fuzzystrmatch/) | `1.2` | `FTS` | determine similarities and distance between strings |
| [pg_trgm](/ext/e/pg_trgm/) | `1.6` | `FTS` | text similarity measurement and index searching based on trigrams |

### OLAP

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [citus](/ext/e/citus/) | `14.0.0` | `OLAP` | Distributed PostgreSQL as an extension |
| [citus_columnar](/ext/e/citus_columnar/) | `14.0.0` | `OLAP` | Citus columnar storage engine |
| [columnar](/ext/e/columnar/) | `1.1.2` | `OLAP` | Hydra Columnar extension |
| [pg_analytics](/ext/e/pg_analytics/) | `0.3.7` | `OLAP` | Postgres for analytics, powered by DuckDB |
| [pg_duckdb](/ext/e/pg_duckdb/) | `1.1.1` | `OLAP` | DuckDB Embedded in Postgres |
| [pg_mooncake](/ext/e/pg_mooncake/) | `0.2.0` | `OLAP` | Columnstore Table in Postgres |
| [pg_clickhouse](/ext/e/pg_clickhouse/) | `0.1.4` | `OLAP` | Interfaces to query ClickHouse databases from PostgreSQL |
| [duckdb_fdw](/ext/e/duckdb_fdw/) | `1.1.2` | `OLAP` | DuckDB Foreign Data Wrapper |
| [pg_parquet](/ext/e/pg_parquet/) | `0.5.1` | `OLAP` | copy data between Postgres and Parquet |
| [pg_fkpart](/ext/e/pg_fkpart/) | `1.7.0` | `OLAP` | Table partitioning by foreign key utility |
| [pg_partman](/ext/e/pg_partman/) | `5.4.2` | `OLAP` | Extension to manage partitioned tables by time or ID |
| [plproxy](/ext/e/plproxy/) | `2.11.0` | `OLAP` | Database partitioning implemented as procedural language |
| [pg_strom](/ext/e/pg_strom/) | `6.1` | `OLAP` | PG-Strom - big-data processing acceleration using GPU and NVME |
| [tablefunc](/ext/e/tablefunc/) | `1.0` | `OLAP` | functions that manipulate whole tables, including crosstab |

### FEAT

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [age](/ext/e/age/) | `1.7.0` | `FEAT` | AGE graph database extension |
| [hll](/ext/e/hll/) | `2.19` | `FEAT` | type for storing hyperloglog data |
| [rum](/ext/e/rum/) | `1.3.15` | `FEAT` | RUM index access method |
| [pg_ai_query](/ext/e/pg_ai_query/) | `0.1.1` | `FEAT` | AI-powered SQL query generation for PostgreSQL |
| [pg_ttl_index](/ext/e/pg_ttl_index/) | `2.0.0` | `FEAT` | Automatic data expiration with TTL indexes |
| [pg_graphql](/ext/e/pg_graphql/) | `1.5.12` | `FEAT` | Add in-database GraphQL support |
| [pg_jsonschema](/ext/e/pg_jsonschema/) | `0.3.4` | `FEAT` | PostgreSQL extension providing JSON Schema validation |
| [jsquery](/ext/e/jsquery/) | `1.2` | `FEAT` | data type for jsonb inspection |
| [pg_hint_plan](/ext/e/pg_hint_plan/) | `1.8.0` | `FEAT` | Give PostgreSQL ability to manually force some decisions in execution plans. |
| [hypopg](/ext/e/hypopg/) | `1.4.2` | `FEAT` | Hypothetical indexes for PostgreSQL |
| [index_advisor](/ext/e/index_advisor/) | `0.2.0` | `FEAT` | Query index advisor |
| [plan_filter](/ext/e/plan_filter/) | `0.0.1` | `FEAT` | filter statements by their execution plans. |
| [imgsmlr](/ext/e/imgsmlr/) | `1.0` | `FEAT` | Image similarity with haar |
| [pg_ivm](/ext/e/pg_ivm/) | `1.13` | `FEAT` | incremental view maintenance on PostgreSQL |
| [pg_incremental](/ext/e/pg_incremental/) | `1.4.1` | `FEAT` | Incremental Processing by Crunchy Data |
| [pgmb](/ext/e/pgmb/) | `1.0.0` | `FEAT` | A simple PostgreSQL Message Broker system |
| [pgmq](/ext/e/pgmq/) | `1.11.0` | `FEAT` | A lightweight message queue. Like AWS SQS and RSMQ but on Postgres. |
| [pgq](/ext/e/pgq/) | `3.5.1` | `FEAT` | Generic queue for PostgreSQL |
| [orioledb](/ext/e/orioledb/) | `1.6` | `FEAT` | OrioleDB, the next generation transactional engine |
| [pg_cardano](/ext/e/pg_cardano/) | `1.1.1` | `FEAT` | A suite of Cardano-related tools |
| [rdkit](/ext/e/rdkit/) | `202503.1` | `FEAT` | Cheminformatics functionality for PostgreSQL. |
| [omni](/ext/e/omni/) | `0.2.14` | `FEAT` | Advanced adapter for Postgres extensions |
| [omni_auth](/ext/e/omni_auth/) | `0.1.3` | `FEAT` | Basic session management |
| [omni_aws](/ext/e/omni_aws/) | `0.1.2` | `FEAT` | Amazon Web Services APIs (S3) |
| [omni_cloudevents](/ext/e/omni_cloudevents/) | `0.1.0` | `FEAT` | CloudEvents support |
| [omni_containers](/ext/e/omni_containers/) | `0.2.0` | `FEAT` | Docker container management |
| [omni_credentials](/ext/e/omni_credentials/) | `0.2.0` | `FEAT` | Application credential management |
| [omni_csv](/ext/e/omni_csv/) | `0.1.1` | `FEAT` | CSV toolkit |
| [omni_datasets](/ext/e/omni_datasets/) | `0.1.0` | `FEAT` | Dataset provisioning |
| [omni_email](/ext/e/omni_email/) | `0.1.0` | `FEAT` | E-mail framework |
| [omni_http](/ext/e/omni_http/) | `0.1.0` | `FEAT` | Basic HTTP types |
| [omni_httpc](/ext/e/omni_httpc/) | `0.1.10` | `FEAT` | HTTP client |
| [omni_httpd](/ext/e/omni_httpd/) | `0.4.11` | `FEAT` | HTTP server |
| [omni_id](/ext/e/omni_id/) | `0.4.3` | `FEAT` | Identity types |
| [omni_json](/ext/e/omni_json/) | `0.1.1` | `FEAT` | JSON toolkit |
| [omni_kube](/ext/e/omni_kube/) | `0.4.2` | `FEAT` | Kubernetes (k8s) integration |
| [omni_ledger](/ext/e/omni_ledger/) | `0.1.3` | `FEAT` | Financial ledger |
| [omni_manifest](/ext/e/omni_manifest/) | `0.1.2` | `FEAT` | Package installation manifests |
| [omni_mimetypes](/ext/e/omni_mimetypes/) | `0.1.0` | `FEAT` | MIME types |
| [omni_os](/ext/e/omni_os/) | `0.1.1` | `FEAT` | Operating system integration |
| [omni_polyfill](/ext/e/omni_polyfill/) | `0.2.2` | `FEAT` | Postgres API polyfills |
| [omni_python](/ext/e/omni_python/) | `0.1.1` | `FEAT` | First-class Python support |
| [omni_regex](/ext/e/omni_regex/) | `0.1.0` | `FEAT` | PCRE-compatible regular expressions |
| [omni_rest](/ext/e/omni_rest/) | `0.1.1` | `FEAT` | REST API toolkit (with PostgREST support) |
| [omni_schema](/ext/e/omni_schema/) | `0.3.0` | `FEAT` | Advanced schema management tooling |
| [omni_seq](/ext/e/omni_seq/) | `0.1.1` | `FEAT` | Distributed integer sequences |
| [omni_service](/ext/e/omni_service/) | `0.1.0` | `FEAT` | Service management |
| [omni_session](/ext/e/omni_session/) | `0.2.0` | `FEAT` | Session management |
| [omni_shmem](/ext/e/omni_shmem/) | `0.1.0` | `FEAT` | Shared Memory Management |
| [omni_sql](/ext/e/omni_sql/) | `0.5.3` | `FEAT` | Programmatic SQL manipulation |
| [omni_sqlite](/ext/e/omni_sqlite/) | `0.2.2` | `FEAT` | Embedded SQLite |
| [omni_test](/ext/e/omni_test/) | `0.4.0` | `FEAT` | Testing framework |
| [omni_txn](/ext/e/omni_txn/) | `0.5.0` | `FEAT` | Transaction management |
| [omni_types](/ext/e/omni_types/) | `0.3.6` | `FEAT` | Advanced types |
| [omni_var](/ext/e/omni_var/) | `0.3.0` | `FEAT` | Scoped variables |
| [omni_vfs](/ext/e/omni_vfs/) | `0.2.2` | `FEAT` | Virtual File System |
| [omni_vfs_types_v1](/ext/e/omni_vfs_types_v1/) | `0.1.0` | `FEAT` | Virtual File System types (v1) |
| [omni_web](/ext/e/omni_web/) | `0.3.0` | `FEAT` | Common web stack primitives |
| [omni_worker](/ext/e/omni_worker/) | `0.2.1` | `FEAT` | Generalized worker pool |
| [omni_xml](/ext/e/omni_xml/) | `0.1.2` | `FEAT` | XML toolkit |
| [omni_yaml](/ext/e/omni_yaml/) | `0.1.0` | `FEAT` | YAML toolkit |
| [bloom](/ext/e/bloom/) | `1.0` | `FEAT` | bloom access method - signature file based index |

### LANG

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [pg_tle](/ext/e/pg_tle/) | `1.5.2` | `LANG` | Trusted Language Extensions for PostgreSQL |
| [plv8](/ext/e/plv8/) | `3.2.4` | `LANG` | PL/JavaScript (v8) trusted procedural language |
| [pljs](/ext/e/pljs/) | `1.0.5` | `LANG` | PL/JS trusted procedural language |
| [pllua](/ext/e/pllua/) | `2.0.12` | `LANG` | Lua as a procedural language |
| [hstore_pllua](/ext/e/hstore_pllua/) | `2.0.12` | `LANG` | Hstore transform for Lua |
| [plluau](/ext/e/plluau/) | `2.0.12` | `LANG` | Lua as an untrusted procedural language |
| [hstore_plluau](/ext/e/hstore_plluau/) | `2.0.12` | `LANG` | Hstore transform for untrusted Lua |
| [plprql](/ext/e/plprql/) | `18.0.1` | `LANG` | Use PRQL in PostgreSQL - Pipelined Relational Query Language |
| [pldbgapi](/ext/e/pldbgapi/) | `1.9` | `LANG` | server-side support for debugging PL/pgSQL functions |
| [plpgsql_check](/ext/e/plpgsql_check/) | `2.8.11` | `LANG` | extended check for plpgsql functions |
| [plprofiler](/ext/e/plprofiler/) | `4.2.5` | `LANG` | server-side support for profiling PL/pgSQL functions |
| [plsh](/ext/e/plsh/) | `1.20220917` | `LANG` | PL/sh procedural language |
| [pljava](/ext/e/pljava/) | `1.6.10` | `LANG` | PL/Java procedural language |
| [plr](/ext/e/plr/) | `8.4.8` | `LANG` | load R interpreter and execute R script from within a database |
| [plxslt](/ext/e/plxslt/) | `0.20140221` | `LANG` | XSLT procedural language for PostgreSQL |
| [pgtap](/ext/e/pgtap/) | `1.3.4` | `LANG` | Unit testing for PostgreSQL |
| [faker](/ext/e/faker/) | `0.5.3` | `LANG` | Wrapper for the Faker Python library |
| [dbt2](/ext/e/dbt2/) | `0.61.7` | `LANG` | OSDL-DBT-2 test kit |
| [pltcl](/ext/e/pltcl/) | `1.0` | `LANG` | PL/Tcl procedural language |
| [pltclu](/ext/e/pltclu/) | `1.0` | `LANG` | PL/TclU untrusted procedural language |
| [plperl](/ext/e/plperl/) | `1.0` | `LANG` | PL/Perl procedural language |
| [bool_plperl](/ext/e/bool_plperl/) | `1.0` | `LANG` | transform between bool and plperl |
| [hstore_plperl](/ext/e/hstore_plperl/) | `1.0` | `LANG` | transform between hstore and plperl |
| [jsonb_plperl](/ext/e/jsonb_plperl/) | `1.0` | `LANG` | transform between jsonb and plperl |
| [plperlu](/ext/e/plperlu/) | `1.0` | `LANG` | PL/PerlU untrusted procedural language |
| [bool_plperlu](/ext/e/bool_plperlu/) | `1.0` | `LANG` | transform between bool and plperlu |
| [jsonb_plperlu](/ext/e/jsonb_plperlu/) | `1.0` | `LANG` | transform between jsonb and plperlu |
| [hstore_plperlu](/ext/e/hstore_plperlu/) | `1.0` | `LANG` | transform between hstore and plperlu |
| [plpgsql](/ext/e/plpgsql/) | `1.0` | `LANG` | PL/pgSQL procedural language |
| [plpython3u](/ext/e/plpython3u/) | `1.0` | `LANG` | PL/Python3U untrusted procedural language |
| [jsonb_plpython3u](/ext/e/jsonb_plpython3u/) | `1.0` | `LANG` | transform between jsonb and plpython3u |
| [ltree_plpython3u](/ext/e/ltree_plpython3u/) | `1.0` | `LANG` | transform between ltree and plpython3u |
| [hstore_plpython3u](/ext/e/hstore_plpython3u/) | `1.0` | `LANG` | transform between hstore and plpython3u |

### TYPE

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [prefix](/ext/e/prefix/) | `1.2.10` | `TYPE` | Prefix Range module for PostgreSQL |
| [semver](/ext/e/semver/) | `0.41.0` | `TYPE` | Semantic version data type |
| [unit](/ext/e/unit/) | `7.10` | `TYPE` | SI units extension |
| [pgpdf](/ext/e/pgpdf/) | `0.1.0` | `TYPE` | PDF type with meta admin & Full-Text Search |
| [pglite_fusion](/ext/e/pglite_fusion/) | `0.0.6` | `TYPE` | Embed an SQLite database in your PostgreSQL table |
| [md5hash](/ext/e/md5hash/) | `1.0.1` | `TYPE` | type for storing 128-bit binary data inline |
| [asn1oid](/ext/e/asn1oid/) | `1.6` | `TYPE` | asn1oid extension |
| [roaringbitmap](/ext/e/roaringbitmap/) | `1.1.0` | `TYPE` | support for Roaring Bitmaps |
| [pgfaceting](/ext/e/pgfaceting/) | `0.2.0` | `TYPE` | fast faceting queries using an inverted index |
| [pg_sphere](/ext/e/pg_sphere/) | `1.5.2` | `TYPE` | spherical objects with useful functions, operators and index support |
| [country](/ext/e/country/) | `0.0.3` | `TYPE` | Country data type, ISO 3166-1 |
| [pg_xenophile](/ext/e/pg_xenophile/) | `0.8.3` | `TYPE` | More than the bare necessities for PostgreSQL i18n and l10n. |
| [l10n_table_dependent_extension](/ext/e/l10n_table_dependent_extension/) | `0.8.3` | `TYPE` | PostgreSQL l10n toolbox |
| [currency](/ext/e/currency/) | `0.0.3` | `TYPE` | Custom PostgreSQL currency type in 1Byte |
| [collection](/ext/e/collection/) | `1.1.1` | `TYPE` | Memory optimized data type to be used inside of plpglsql func |
| [pgmp](/ext/e/pgmp/) | `1.0.5` | `TYPE` | Multiple Precision Arithmetic extension |
| [numeral](/ext/e/numeral/) | `1.3` | `TYPE` | numeral datatypes extension |
| [pg_rational](/ext/e/pg_rational/) | `0.0.2` | `TYPE` | bigint fractions |
| [uint](/ext/e/uint/) | `1.20250815` | `TYPE` | unsigned integer types |
| [uint128](/ext/e/uint128/) | `1.2.0` | `TYPE` | Native uint128 type |
| [hashtypes](/ext/e/hashtypes/) | `0.1.5` | `TYPE` | sha1, md5 and other data types for PostgreSQL |
| [ip4r](/ext/e/ip4r/) | `2.4.2` | `TYPE` | IPv4/v6 and IPv4/v6 range index type for PostgreSQL |
| [pg_duration](/ext/e/pg_duration/) | `1.0.2` | `TYPE` | data type for representing durations |
| [uri](/ext/e/uri/) | `1.20251029` | `TYPE` | URI Data type for PostgreSQL |
| [emailaddr](/ext/e/emailaddr/) | `0` | `TYPE` | Email address type for PostgreSQL |
| [acl](/ext/e/acl/) | `1.0.4` | `TYPE` | ACL Data type |
| [debversion](/ext/e/debversion/) | `1.2.0` | `TYPE` | Debian version number data type |
| [pg_rrule](/ext/e/pg_rrule/) | `0.3.0` | `TYPE` | RRULE field type for PostgreSQL |
| [timestamp9](/ext/e/timestamp9/) | `1.4.0` | `TYPE` | timestamp nanosecond resolution |
| [chkpass](/ext/e/chkpass/) | `1.0` | `TYPE` | data type for auto-encrypted passwords |
| [isn](/ext/e/isn/) | `1.2` | `TYPE` | data types for international product numbering standards |
| [seg](/ext/e/seg/) | `1.4` | `TYPE` | data type for representing line segments or floating-point intervals |
| [cube](/ext/e/cube/) | `1.5` | `TYPE` | data type for multidimensional cubes |
| [ltree](/ext/e/ltree/) | `1.3` | `TYPE` | data type for hierarchical tree-like structures |
| [hstore](/ext/e/hstore/) | `1.8` | `TYPE` | data type for storing sets of (key, value) pairs |
| [citext](/ext/e/citext/) | `1.6` | `TYPE` | data type for case-insensitive character strings |
| [xml2](/ext/e/xml2/) | `1.1` | `TYPE` | XPath querying and XSLT |

### UTIL

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [gzip](/ext/e/gzip/) | `1.0.0` | `UTIL` | gzip and gunzip functions. |
| [bzip](/ext/e/bzip/) | `1.0.0` | `UTIL` | Bzip compression and decompression |
| [zstd](/ext/e/zstd/) | `1.1.2` | `UTIL` | Zstandard compression algorithm implementation in PostgreSQL |
| [http](/ext/e/http/) | `1.7.0` | `UTIL` | HTTP client for PostgreSQL, allows web page retrieval inside the database. |
| [pg_net](/ext/e/pg_net/) | `0.20.2` | `UTIL` | Async HTTP Requests |
| [pg_curl](/ext/e/pg_curl/) | `2.4.5` | `UTIL` | Run curl actions for data transfer in URL syntax |
| [pg_retry](/ext/e/pg_retry/) | `1.0.0` | `UTIL` | Retry SQL statements on transient errors with exponential backoff |
| [pgjq](/ext/e/pgjq/) | `0.1.0` | `UTIL` | Use jq in Postgres |
| [pgjwt](/ext/e/pgjwt/) | `0.2.0` | `UTIL` | JSON Web Token API for Postgresql |
| [pg_smtp_client](/ext/e/pg_smtp_client/) | `0.2.1` | `UTIL` | PostgreSQL extension to send email using SMTP |
| [pg_html5_email_address](/ext/e/pg_html5_email_address/) | `1.2.3` | `UTIL` | PostgreSQL email validation that is consistent with the HTML5 spec |
| [url_encode](/ext/e/url_encode/) | `1.2.5` | `UTIL` | url_encode, url_decode functions |
| [pgsql_tweaks](/ext/e/pgsql_tweaks/) | `1.0.2` | `UTIL` | Some functions and views for daily usage |
| [pg_extra_time](/ext/e/pg_extra_time/) | `2.0.0` | `UTIL` | Some date time functions and operators that, |
| [pgpcre](/ext/e/pgpcre/) | `0.20190509` | `UTIL` | Perl Compatible Regular Expression functions |
| [icu_ext](/ext/e/icu_ext/) | `1.10.0` | `UTIL` | Access ICU functions |
| [pgqr](/ext/e/pgqr/) | `1.0` | `UTIL` | QR Code generator from PostgreSQL |
| [pg_protobuf](/ext/e/pg_protobuf/) | `1.0` | `UTIL` | Protobuf support for PostgreSQL |
| [envvar](/ext/e/envvar/) | `1.0.1` | `UTIL` | Fetch the value of an environment variable |
| [floatfile](/ext/e/floatfile/) | `1.3.1` | `UTIL` | Simple file storage for arrays of floats |
| [pg_render](/ext/e/pg_render/) | `0.1.3` | `UTIL` | Render HTML in SQL |
| [pg_readme](/ext/e/pg_readme/) | `0.7.0` | `UTIL` | Generate a README.md document for a database extension or schema |
| [pg_readme_test_extension](/ext/e/pg_readme_test_extension/) | `0.7.0` | `UTIL` | Test generating a README.md document for extension or schema |
| [ddl_historization](/ext/e/ddl_historization/) | `0.0.7` | `UTIL` | Historize the ddl changes inside PostgreSQL database |
| [data_historization](/ext/e/data_historization/) | `1.1.0` | `UTIL` | PLPGSQL Script to historize data in partitioned table |
| [schedoc](/ext/e/schedoc/) | `0.0.1` | `UTIL` | Cross documentation between Django and DBT projects |
| [hashlib](/ext/e/hashlib/) | `1.1` | `UTIL` | Stable hash functions for Postgres |
| [xxhash](/ext/e/xxhash/) | `0.0.1` | `UTIL` | xxhash functions for PostgreSQL |
| [shacrypt](/ext/e/shacrypt/) | `1.1` | `UTIL` | Implements SHA256-CRYPT and SHA512-CRYPT password encryption schemes |
| [cryptint](/ext/e/cryptint/) | `1.0.0` | `UTIL` | Encryption functions for int and bigint values |
| [pguecc](/ext/e/pguecc/) | `1.0` | `UTIL` | uECC bindings for Postgres |
| [sparql](/ext/e/sparql/) | `1.0` | `UTIL` | Query SPARQL datasource with SQL |

### FUNC

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [pg_idkit](/ext/e/pg_idkit/) | `0.4.0` | `FUNC` | multi-tool for generating new/niche universally unique identifiers (ex. UUIDv6, ULID, KSUID) |
| [pgx_ulid](/ext/e/pgx_ulid/) | `0.2.2` | `FUNC` | ulid type and methods |
| [pg_uuidv7](/ext/e/pg_uuidv7/) | `1.7.0` | `FUNC` | Create UUIDv7 values in postgres |
| [permuteseq](/ext/e/permuteseq/) | `1.2.2` | `FUNC` | Pseudo-randomly permute sequences with a format-preserving encryption on elements |
| [pg_hashids](/ext/e/pg_hashids/) | `1.3` | `FUNC` | Short unique id generator for PostgreSQL, using hashids |
| [sequential_uuids](/ext/e/sequential_uuids/) | `1.0.3` | `FUNC` | generator of sequential UUIDs |
| [typeid](/ext/e/typeid/) | `0.3.0` | `FUNC` | Allows to use TypeIDs in Postgres natively |
| [snowflake](/ext/e/snowflake/) | `2.4` | `FUNC` | Snowflake-style 64-bit ID generation and sequence utilities |
| [topn](/ext/e/topn/) | `2.7.0` | `FUNC` | type for top-n JSONB |
| [quantile](/ext/e/quantile/) | `1.1.8` | `FUNC` | Quantile aggregation function |
| [lower_quantile](/ext/e/lower_quantile/) | `1.0.3` | `FUNC` | Lower quantile aggregate function |
| [count_distinct](/ext/e/count_distinct/) | `3.0.2` | `FUNC` | An alternative to COUNT(DISTINCT …) aggregate, usable with HashAggregate |
| [omnisketch](/ext/e/omnisketch/) | `1.0.2` | `FUNC` | data structure for on-line agg of data into approximate sketch |
| [ddsketch](/ext/e/ddsketch/) | `1.0.1` | `FUNC` | Provides ddsketch aggregate function |
| [vasco](/ext/e/vasco/) | `0.1.0` | `FUNC` | discover hidden correlations in your data with MIC |
| [xicor](/ext/e/xicor/) | `0.1.0` | `FUNC` | XI Correlation Coefficient in Postgres |
| [weighted_statistics](/ext/e/weighted_statistics/) | `1.0.0` | `FUNC` | High-performance weighted statistics functions for sparse data |
| [tdigest](/ext/e/tdigest/) | `1.4.3` | `FUNC` | Provides tdigest aggregate function. |
| [first_last_agg](/ext/e/first_last_agg/) | `0.1.4` | `FUNC` | first() and last() aggregate functions |
| [extra_window_functions](/ext/e/extra_window_functions/) | `1.0` | `FUNC` | Extra Window Functions for PostgreSQL |
| [floatvec](/ext/e/floatvec/) | `1.1.1` | `FUNC` | Math for vectors (arrays) of numbers |
| [aggs_for_vecs](/ext/e/aggs_for_vecs/) | `1.4.1` | `FUNC` | Aggregate functions for array inputs |
| [aggs_for_arrays](/ext/e/aggs_for_arrays/) | `1.3.3` | `FUNC` | Various functions for computing statistics on arrays of numbers |
| [pg_csv](/ext/e/pg_csv/) | `1.0.1` | `FUNC` | Flexible CSV processing for Postgres |
| [arraymath](/ext/e/arraymath/) | `1.1` | `FUNC` | Array math and operators that work element by element on the contents of arrays |
| [pg_math](/ext/e/pg_math/) | `1.1.0` | `FUNC` | GSL statistical functions for postgresql |
| [random](/ext/e/random/) | `2.0.0` | `FUNC` | random data generator |
| [base36](/ext/e/base36/) | `1.0.0` | `FUNC` | Integer Base36 types |
| [base62](/ext/e/base62/) | `0.0.1` | `FUNC` | Base62 extension for PostgreSQL |
| [pg_base58](/ext/e/pg_base58/) | `0.0.1` | `FUNC` | Base58 Encoder/Decoder Extension for PostgreSQL |
| [financial](/ext/e/financial/) | `1.0.1` | `FUNC` | Financial aggregate functions |
| [convert](/ext/e/convert/) | `0.1.0` | `FUNC` | conversion functions for spatial, routing and other specialized uses |
| [refint](/ext/e/refint/) | `1.0` | `FUNC` | functions for implementing referential integrity (obsolete) |
| [autoinc](/ext/e/autoinc/) | `1.0` | `FUNC` | functions for autoincrementing fields |
| [insert_username](/ext/e/insert_username/) | `1.0` | `FUNC` | functions for tracking who changed a table |
| [moddatetime](/ext/e/moddatetime/) | `1.0` | `FUNC` | functions for tracking last modification time |
| [tsm_system_time](/ext/e/tsm_system_time/) | `1.0` | `FUNC` | TABLESAMPLE method which accepts time in milliseconds as a limit |
| [dict_xsyn](/ext/e/dict_xsyn/) | `1.0` | `FUNC` | text search dictionary template for extended synonym processing |
| [tsm_system_rows](/ext/e/tsm_system_rows/) | `1.0` | `FUNC` | TABLESAMPLE method which accepts number of rows as a limit |
| [tcn](/ext/e/tcn/) | `1.0` | `FUNC` | Triggered change notifications |
| [uuid-ossp](/ext/e/uuid-ossp/) | `1.1` | `FUNC` | generate universally unique identifiers (UUIDs) |
| [btree_gist](/ext/e/btree_gist/) | `1.7` | `FUNC` | support for indexing common datatypes in GiST |
| [btree_gin](/ext/e/btree_gin/) | `1.3` | `FUNC` | support for indexing common datatypes in GIN |
| [intarray](/ext/e/intarray/) | `1.5` | `FUNC` | functions, operators, and index support for 1-D arrays of integers |
| [intagg](/ext/e/intagg/) | `1.1` | `FUNC` | integer aggregator and enumerator (obsolete) |
| [dict_int](/ext/e/dict_int/) | `1.0` | `FUNC` | text search dictionary template for integers |
| [unaccent](/ext/e/unaccent/) | `1.1` | `FUNC` | text search dictionary that removes accents |

### ADMIN

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [pg_repack](/ext/e/pg_repack/) | `1.5.3` | `ADMIN` | Reorganize tables in PostgreSQL databases with minimal locks |
| [pg_rewrite](/ext/e/pg_rewrite/) | `2.1.0` | `ADMIN` | Tool allows read write to the table during the rewriting |
| [pg_squeeze](/ext/e/pg_squeeze/) | `1.9.1` | `ADMIN` | A tool to remove unused space from a relation. |
| [pg_dirtyread](/ext/e/pg_dirtyread/) | `2.7` | `ADMIN` | Read dead but unvacuumed rows from table |
| [pgfincore](/ext/e/pgfincore/) | `1.3.1` | `ADMIN` | examine and manage the os buffer cache |
| [pg_cooldown](/ext/e/pg_cooldown/) | `0.1` | `ADMIN` | remove buffered pages for specific relations |
| [ddlx](/ext/e/ddlx/) | `0.30` | `ADMIN` | DDL eXtractor functions |
| [pglinter](/ext/e/pglinter/) | `1.1.1` | `ADMIN` | PostgreSQL Linting and Analysis Extension |
| [prioritize](/ext/e/prioritize/) | `1.0.4` | `ADMIN` | get and set the priority of PostgreSQL backends |
| [pg_checksums](/ext/e/pg_checksums/) | `1.3` | `ADMIN` | Activate/deactivate/verify checksums in offline Postgres clusters |
| [pg_readonly](/ext/e/pg_readonly/) | `1.0.4` | `ADMIN` | cluster database read only |
| [pgdd](/ext/e/pgdd/) | `0.6.1` | `ADMIN` | Introspect pg data dictionary via standard SQL |
| [pg_permissions](/ext/e/pg_permissions/) | `1.4` | `ADMIN` | view object permissions and compare them with the desired state |
| [pgautofailover](/ext/e/pgautofailover/) | `2.2` | `ADMIN` | pg_auto_failover |
| [pg_catcheck](/ext/e/pg_catcheck/) | `1.6.0` | `ADMIN` | Diagnosing system catalog corruption |
| [pre_prepare](/ext/e/pre_prepare/) | `0.9` | `ADMIN` | Pre Prepare your Statement server side |
| [pg_upless](/ext/e/pg_upless/) | `0.0.3` | `ADMIN` | Detect Useless UPDATE |
| [pgcozy](/ext/e/pgcozy/) | `1.0` | `ADMIN` | Pre-warming shared buffers according to previous pg_buffercache snapshots for PostgreSQL. |
| [pg_orphaned](/ext/e/pg_orphaned/) | `1.0` | `ADMIN` | Deal with orphaned files |
| [pg_crash](/ext/e/pg_crash/) | `1.0` | `ADMIN` | Send random signals to random processes |
| [pg_cheat_funcs](/ext/e/pg_cheat_funcs/) | `1.0` | `ADMIN` | Provides cheat (but useful) functions |
| [fio](/ext/e/fio/) | `1.0` | `ADMIN` | PostgreSQL File I/O Functions |
| [qos](/ext/e/qos/) | `1.0` | `ADMIN` | PostgreSQL QoS resource governance extension (session & query throttling/isolation) |
| [pg_savior](/ext/e/pg_savior/) | `0.0.1` | `ADMIN` | Postgres extension to save OOPS mistakes |
| [safeupdate](/ext/e/safeupdate/) | `1.5` | `ADMIN` | Require criteria for UPDATE and DELETE |
| [pg_strict](/ext/e/pg_strict/) | `1.0.2` | `ADMIN` | Prevent dangerous UPDATE and DELETE without WHERE clause |
| [pg_drop_events](/ext/e/pg_drop_events/) | `0.1.0` | `ADMIN` | logs transaction ids of drop table, drop column, drop materialized view statements |
| [table_log](/ext/e/table_log/) | `0.6.4` | `ADMIN` | record table modification logs and PITR for table/row |
| [pgagent](/ext/e/pgagent/) | `4.2.3` | `ADMIN` | A PostgreSQL job scheduler |
| [pg_prewarm](/ext/e/pg_prewarm/) | `1.2` | `ADMIN` | prewarm relation data |
| [pgpool_adm](/ext/e/pgpool_adm/) | `4.7.1` | `ADMIN` | Administrative functions for pgPool |
| [pgpool_recovery](/ext/e/pgpool_recovery/) | `4.7.1` | `ADMIN` | recovery functions for pgpool-II for V4.3 |
| [pgpool_regclass](/ext/e/pgpool_regclass/) | `4.7.1` | `ADMIN` | replacement for regclass |
| [lo](/ext/e/lo/) | `1.1` | `ADMIN` | Large Object maintenance |
| [basic_archive](/ext/e/basic_archive/) | `-` | `ADMIN` | an example of an archive module |
| [basebackup_to_shell](/ext/e/basebackup_to_shell/) | `-` | `ADMIN` | adds a custom basebackup target called shell |
| [old_snapshot](/ext/e/old_snapshot/) | `1.0` | `ADMIN` | utilities in support of old_snapshot_threshold |
| [adminpack](/ext/e/adminpack/) | `2.1` | `ADMIN` | administrative functions for PostgreSQL |
| [amcheck](/ext/e/amcheck/) | `1.4` | `ADMIN` | functions for verifying relation integrity |
| [pg_surgery](/ext/e/pg_surgery/) | `1.0` | `ADMIN` | extension to perform surgery on a damaged relation |

### STAT

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [pg_profile](/ext/e/pg_profile/) | `4.11` | `STAT` | PostgreSQL load profile repository and report builder |
| [pg_tracing](/ext/e/pg_tracing/) | `0.1.3` | `STAT` | Distributed Tracing for PostgreSQL |
| [pg_show_plans](/ext/e/pg_show_plans/) | `2.1.7` | `STAT` | show query plans of all currently running SQL statements |
| [pg_stat_kcache](/ext/e/pg_stat_kcache/) | `2.3.1` | `STAT` | Kernel statistics gathering |
| [pg_stat_monitor](/ext/e/pg_stat_monitor/) | `2.3.2` | `STAT` | The pg_stat_monitor is a PostgreSQL Query Performance Monitoring tool, based on PostgreSQL contrib module pg_stat_statements. pg_stat_monitor provides aggregated statistics, client information, plan details including plan, and histogram information. |
| [pg_qualstats](/ext/e/pg_qualstats/) | `2.1.3` | `STAT` | An extension collecting statistics about quals |
| [pg_store_plans](/ext/e/pg_store_plans/) | `1.9` | `STAT` | track plan statistics of all SQL statements executed |
| [pg_track_settings](/ext/e/pg_track_settings/) | `2.1.2` | `STAT` | Track settings changes |
| [pg_track_optimizer](/ext/e/pg_track_optimizer/) | `0.9.1` | `STAT` | Track planning decisions in comparison with   execution reality |
| [pg_wait_sampling](/ext/e/pg_wait_sampling/) | `1.1.9` | `STAT` | sampling based statistics of wait events |
| [pgsentinel](/ext/e/pgsentinel/) | `1.4.0` | `STAT` | active session history |
| [system_stats](/ext/e/system_stats/) | `3.2` | `STAT` | EnterpriseDB system statistics for PostgreSQL |
| [meta](/ext/e/meta/) | `0.4.0` | `STAT` | Normalized, friendlier system catalog for PostgreSQL |
| [pgnodemx](/ext/e/pgnodemx/) | `1.7` | `STAT` | Capture node OS metrics via SQL queries |
| [pg_proctab](/ext/e/pg_proctab/) | `1.7` | `STAT` | PostgreSQL extension to access the OS process table |
| [pg_sqlog](/ext/e/pg_sqlog/) | `1.6` | `STAT` | Provide SQL interface to logs |
| [bgw_replstatus](/ext/e/bgw_replstatus/) | `1.0.8` | `STAT` | Small PostgreSQL background worker to report whether a node is a replication master or standby |
| [pgmeminfo](/ext/e/pgmeminfo/) | `1.0.0` | `STAT` | show memory usage |
| [toastinfo](/ext/e/toastinfo/) | `1.5` | `STAT` | show details on toasted datums |
| [explain_ui](/ext/e/explain_ui/) | `0.0.2` | `STAT` | easily jump into a visual plan UI for any SQL query |
| [pg_relusage](/ext/e/pg_relusage/) | `0.0.1` | `STAT` | Log all the queries that reference a particular column |
| [pagevis](/ext/e/pagevis/) | `0.1` | `STAT` | Visualise database pages in ascii code |
| [powa](/ext/e/powa/) | `5.1.1` | `STAT` | PostgreSQL Workload Analyser-core |
| [pg_overexplain](/ext/e/pg_overexplain/) | `1.0` | `STAT` | Allow EXPLAIN to dump even more details |
| [pg_logicalinspect](/ext/e/pg_logicalinspect/) | `1.0` | `STAT` | Logical decoding components inspection |
| [pageinspect](/ext/e/pageinspect/) | `1.12` | `STAT` | inspect the contents of database pages at a low level |
| [pgrowlocks](/ext/e/pgrowlocks/) | `1.2` | `STAT` | show row-level locking information |
| [sslinfo](/ext/e/sslinfo/) | `1.2` | `STAT` | information about SSL certificates |
| [pg_buffercache](/ext/e/pg_buffercache/) | `1.5` | `STAT` | examine the shared buffer cache |
| [pg_walinspect](/ext/e/pg_walinspect/) | `1.1` | `STAT` | functions to inspect contents of PostgreSQL Write-Ahead Log |
| [pg_freespacemap](/ext/e/pg_freespacemap/) | `1.2` | `STAT` | examine the free space map (FSM) |
| [pg_visibility](/ext/e/pg_visibility/) | `1.2` | `STAT` | examine the visibility map (VM) and page-level visibility info |
| [pgstattuple](/ext/e/pgstattuple/) | `1.5` | `STAT` | show tuple-level statistics |
| [auto_explain](/ext/e/auto_explain/) | `-` | `STAT` | Provides a means for logging execution plans of slow statements automatically |
| [pg_stat_statements](/ext/e/pg_stat_statements/) | `1.11` | `STAT` | track planning and execution statistics of all SQL statements executed |

### SEC

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [passwordcheck_cracklib](/ext/e/passwordcheck_cracklib/) | `3.1.0` | `SEC` | Strengthen PostgreSQL user password checks with cracklib |
| [supautils](/ext/e/supautils/) | `3.1.0` | `SEC` | Extension that secures a cluster on a cloud environment |
| [pgsodium](/ext/e/pgsodium/) | `3.1.9` | `SEC` | Postgres extension for libsodium functions |
| [supabase_vault](/ext/e/supabase_vault/) | `0.3.1` | `SEC` | Supabase Vault Extension |
| [pg_session_jwt](/ext/e/pg_session_jwt/) | `0.4.0` | `SEC` | Manage authentication sessions using JWTs |
| [anon](/ext/e/anon/) | `3.0.1` | `SEC` | PostgreSQL Anonymizer (anon) extension |
| [pgsmcrypto](/ext/e/pgsmcrypto/) | `0.1.1` | `SEC` | PostgreSQL SM Algorithm Extension |
| [pg_enigma](/ext/e/pg_enigma/) | `0.5.0` | `SEC` | Encrypted postgres data type |
| [pgaudit](/ext/e/pgaudit/) | `18.0` | `SEC` | provides auditing functionality |
| [pgauditlogtofile](/ext/e/pgauditlogtofile/) | `1.8.0` | `SEC` | pgAudit addon to redirect audit log to an independent file |
| [pg_auditor](/ext/e/pg_auditor/) | `0.2` | `SEC` | Audit data changes and provide flashback ability |
| [logerrors](/ext/e/logerrors/) | `2.1.5` | `SEC` | Function for collecting statistics about messages in logfile |
| [pg_auth_mon](/ext/e/pg_auth_mon/) | `3.0` | `SEC` | monitor connection attempts per user |
| [pg_jobmon](/ext/e/pg_jobmon/) | `1.4.1` | `SEC` | Extension for logging and monitoring functions in PostgreSQL |
| [credcheck](/ext/e/credcheck/) | `4.6` | `SEC` | credcheck - postgresql plain text credential checker |
| [pgcryptokey](/ext/e/pgcryptokey/) | `0.85` | `SEC` | cryptographic key management |
| [pg_pwhash](/ext/e/pg_pwhash/) | `1.0` | `SEC` | Advanced password hashing methods for PostgreSQL |
| [login_hook](/ext/e/login_hook/) | `1.7` | `SEC` | login_hook - hook to execute login_hook.login() at login time |
| [set_user](/ext/e/set_user/) | `4.2.0` | `SEC` | similar to SET ROLE but with added logging |
| [pg_snakeoil](/ext/e/pg_snakeoil/) | `1.4` | `SEC` | The PostgreSQL Antivirus |
| [pgextwlist](/ext/e/pgextwlist/) | `1.19` | `SEC` | PostgreSQL Extension Whitelisting |
| [sslutils](/ext/e/sslutils/) | `1.4` | `SEC` | A Postgres extension for managing SSL certificates through SQL |
| [noset](/ext/e/noset/) | `0.3.0` | `SEC` | Module for blocking SET variables for non-super users. |
| [pg_tde](/ext/e/pg_tde/) | `2.1` | `SEC` | Percona pg_tde access method |
| [sepgsql](/ext/e/sepgsql/) | `-` | `SEC` | label-based mandatory access control (MAC) based on SELinux security policy. |
| [auth_delay](/ext/e/auth_delay/) | `-` | `SEC` | pause briefly before reporting authentication failure |
| [pgcrypto](/ext/e/pgcrypto/) | `1.3` | `SEC` | cryptographic functions |
| [passwordcheck](/ext/e/passwordcheck/) | `-` | `SEC` | checks user passwords and reject weak password |

### FDW

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [wrappers](/ext/e/wrappers/) | `0.5.7` | `FDW` | Foreign data wrappers developed by Supabase |
| [multicorn](/ext/e/multicorn/) | `3.2` | `FDW` | Fetch foreign data in Python in your PostgreSQL server. |
| [odbc_fdw](/ext/e/odbc_fdw/) | `0.5.1` | `FDW` | Foreign data wrapper for accessing remote databases using ODBC |
| [jdbc_fdw](/ext/e/jdbc_fdw/) | `0.4.0` | `FDW` | foreign-data wrapper for remote servers available over JDBC |
| [pgspider_ext](/ext/e/pgspider_ext/) | `1.3.0` | `FDW` | foreign-data wrapper for remote PGSpider servers |
| [mysql_fdw](/ext/e/mysql_fdw/) | `2.9.3` | `FDW` | Foreign data wrapper for querying a MySQL server |
| [oracle_fdw](/ext/e/oracle_fdw/) | `2.8.0` | `FDW` | foreign data wrapper for Oracle access |
| [tds_fdw](/ext/e/tds_fdw/) | `2.0.5` | `FDW` | Foreign data wrapper for querying a TDS database (Sybase or Microsoft SQL Server) |
| [db2_fdw](/ext/e/db2_fdw/) | `18.1.1` | `FDW` | foreign data wrapper for DB2 access |
| [sqlite_fdw](/ext/e/sqlite_fdw/) | `2.5.0` | `FDW` | SQLite Foreign Data Wrapper |
| [pgbouncer_fdw](/ext/e/pgbouncer_fdw/) | `1.4.0` | `FDW` | Extension for querying PgBouncer stats from normal SQL views & running pgbouncer commands from normal SQL functions |
| [etcd_fdw](/ext/e/etcd_fdw/) | `0.0.0` | `FDW` | Foreign data wrapper for etcd |
| [informix_fdw](/ext/e/informix_fdw/) | `0.6.3` | `FDW` | Foreign data wrapper for Informix access |
| [nominatim_fdw](/ext/e/nominatim_fdw/) | `1.1.0` | `FDW` | Nominatim Foreign Data Wrapper for PostgreSQL |
| [mongo_fdw](/ext/e/mongo_fdw/) | `5.5.3` | `FDW` | foreign data wrapper for MongoDB access |
| [redis_fdw](/ext/e/redis_fdw/) | `1.0` | `FDW` | Foreign data wrapper for querying a Redis server |
| [redis](/ext/e/redis/) | `0.0.1` | `FDW` | Send redis pub/sub messages to Redis from PostgreSQL Directly |
| [kafka_fdw](/ext/e/kafka_fdw/) | `0.0.3` | `FDW` | kafka Foreign Data Wrapper for CSV formatted messages |
| [hdfs_fdw](/ext/e/hdfs_fdw/) | `2.3.3` | `FDW` | foreign-data wrapper for remote hdfs servers |
| [firebird_fdw](/ext/e/firebird_fdw/) | `1.4.1` | `FDW` | Foreign data wrapper for Firebird |
| [aws_s3](/ext/e/aws_s3/) | `0.0.1` | `FDW` | aws_s3 postgres extension to import/export data from/to s3 |
| [log_fdw](/ext/e/log_fdw/) | `1.4` | `FDW` | foreign-data wrapper for Postgres log file access |
| [dblink](/ext/e/dblink/) | `1.2` | `FDW` | connect to other PostgreSQL databases from within a database |
| [file_fdw](/ext/e/file_fdw/) | `1.0` | `FDW` | foreign-data wrapper for flat file access |
| [postgres_fdw](/ext/e/postgres_fdw/) | `1.1` | `FDW` | foreign-data wrapper for remote PostgreSQL servers |

### SIM

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [documentdb](/ext/e/documentdb/) | `0.109` | `SIM` | API surface for DocumentDB for PostgreSQL |
| [documentdb_core](/ext/e/documentdb_core/) | `0.109` | `SIM` | Core API surface for DocumentDB for PostgreSQL |
| [documentdb_distributed](/ext/e/documentdb_distributed/) | `0.109` | `SIM` | Multi-Node API surface for DocumentDB |
| [documentdb_extended_rum](/ext/e/documentdb_extended_rum/) | `0.109` | `SIM` | DocumentDB Extended RUM index access method |
| [orafce](/ext/e/orafce/) | `4.16.4` | `SIM` | Functions and operators that emulate a subset of functions and packages from the Oracle RDBMS |
| [pgtt](/ext/e/pgtt/) | `4.4` | `SIM` | Extension to add Global Temporary Tables feature to PostgreSQL |
| [session_variable](/ext/e/session_variable/) | `3.4` | `SIM` | Registration and manipulation of session variables and constants |
| [pg_statement_rollback](/ext/e/pg_statement_rollback/) | `1.5` | `SIM` | Server side rollback at statement level for PostgreSQL like Oracle or DB2 |
| [ivorysql_ora](/ext/e/ivorysql_ora/) | `1.0` | `SIM` | Oracle compatibility extension |
| [ora_btree_gin](/ext/e/ora_btree_gin/) | `1.0` | `SIM` | GIN index support for Oracle data types |
| [ora_btree_gist](/ext/e/ora_btree_gist/) | `1.0` | `SIM` | GiST index support for Oracle data types |
| [pg_get_functiondef](/ext/e/pg_get_functiondef/) | `1.0` | `SIM` | Get function definition |
| [plisql](/ext/e/plisql/) | `1.0` | `SIM` | PL/iSQL procedural language |
| [gb18030_2022](/ext/e/gb18030_2022/) | `1.0` | `SIM` | Support GB18030-2022 to UTF-8 encoding conversion |
| [pg_dbms_metadata](/ext/e/pg_dbms_metadata/) | `1.0.0` | `SIM` | Extension to add Oracle DBMS_METADATA compatibility to PostgreSQL |
| [pg_dbms_lock](/ext/e/pg_dbms_lock/) | `1.0` | `SIM` | Extension to add Oracle DBMS_LOCK full compatibility to PostgreSQL |
| [pg_dbms_job](/ext/e/pg_dbms_job/) | `1.5` | `SIM` | Extension to add Oracle DBMS_JOB full compatibility to PostgreSQL |
| [pg_dbms_errlog](/ext/e/pg_dbms_errlog/) | `2.2` | `SIM` | Emulate DBMS_ERRLOG Oracle module to log DML errors in a dedicated table. |
| [pg_utl_smtp](/ext/e/pg_utl_smtp/) | `1.0.0` | `SIM` | Oracle UTL_SMTP compatibility extension for PostgreSQL |
| [babelfishpg_common](/ext/e/babelfishpg_common/) | `5.5.0` | `SIM` | SQL Server Transact SQL Datatype Support |
| [babelfishpg_tsql](/ext/e/babelfishpg_tsql/) | `5.5.0` | `SIM` | SQL Server Transact SQL compatibility |
| [babelfishpg_tds](/ext/e/babelfishpg_tds/) | `1.0.0` | `SIM` | SQL Server TDS protocol extension |
| [babelfishpg_money](/ext/e/babelfishpg_money/) | `1.1.0` | `SIM` | SQL Server Money Data Type |
| [spat](/ext/e/spat/) | `0.1.0a4` | `SIM` | Redis-like In-Memory DB Embedded in Postgres |
| [pgmemcache](/ext/e/pgmemcache/) | `2.3.0` | `SIM` | memcached interface |
| [aux_mysql](/ext/e/aux_mysql/) | `1.5` | `SIM` | MySQL compatibility auxiliary extension module |

### ETL

| Extension | Version | Category | Description |
|:---|:---|:---:|:---|
| [pglogical](/ext/e/pglogical/) | `2.4.6` | `ETL` | PostgreSQL Logical Replication |
| [pglogical_origin](/ext/e/pglogical_origin/) | `2.4.6` | `ETL` | Dummy extension for compatibility when upgrading from Postgres 9.4 |
| [pglogical_ticker](/ext/e/pglogical_ticker/) | `1.4.1` | `ETL` | Have an accurate view on pglogical replication delay |
| [pgl_ddl_deploy](/ext/e/pgl_ddl_deploy/) | `2.2.1` | `ETL` | automated ddl deployment using pglogical |
| [pg_failover_slots](/ext/e/pg_failover_slots/) | `1.2.0` | `ETL` | PG Failover Slots extension |
| [db_migrator](/ext/e/db_migrator/) | `1.0.0` | `ETL` | Tools to migrate other databases to PostgreSQL |
| [pgactive](/ext/e/pgactive/) | `2.1.7` | `ETL` | Active-Active Replication Extension for PostgreSQL |
| [spock](/ext/e/spock/) | `5.0.5` | `ETL` | Multi-master logical replication extension for PostgreSQL |
| [lolor](/ext/e/lolor/) | `1.2.2` | `ETL` | Extension to make PostgreSQL large objects compatible with logical replication |
| [wal2json](/ext/e/wal2json/) | `2.6` | `ETL` | Changing data capture in JSON format |
| [wal2mongo](/ext/e/wal2mongo/) | `1.0.7` | `ETL` | PostgreSQL logical decoding output plugin for MongoDB |
| [decoderbufs](/ext/e/decoderbufs/) | `3.4.1` | `ETL` | Logical decoding plugin that delivers WAL stream changes using a Protocol Buffer format |
| [decoder_raw](/ext/e/decoder_raw/) | `1.0` | `ETL` | Output plugin for logical replication in Raw SQL format |
| [mimeo](/ext/e/mimeo/) | `1.5.1` | `ETL` | Extension for specialized, per-table replication between PostgreSQL instances |
| [repmgr](/ext/e/repmgr/) | `5.5.0` | `ETL` | Replication manager for PostgreSQL |
| [pg_fact_loader](/ext/e/pg_fact_loader/) | `2.0.1` | `ETL` | build fact tables with Postgres |
| [pg_bulkload](/ext/e/pg_bulkload/) | `3.1.23` | `ETL` | pg_bulkload is a high speed data loading utility for PostgreSQL |
| [test_decoding](/ext/e/test_decoding/) | `-` | `ETL` | SQL-based test/example module for WAL logical decoding |
| [pgoutput](/ext/e/pgoutput/) | `-` | `ETL` | Logical Replication output plugin |
