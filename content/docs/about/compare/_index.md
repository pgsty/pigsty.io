---
title: Comparison
weight: 170
description: This article compares Pigsty with similar products and projects, highlighting
  feature differences.
icon: fa-solid fa-circle-half-stroke
module: [INFRA]
categories: [Reference]
tags: [Cost]
---


------------------

## Comparison with RDS

[Pigsty](https://pigsty.io) is a local-first RDS alternative released under AGPLv3, deployable on your own physical/virtual machines or cloud servers.

We've chosen Amazon [AWS RDS for PostgreSQL](https://aws.amazon.com/rds/postgresql/) (the global market leader) and Alibaba Cloud [RDS for PostgreSQL](https://www.alibabacloud.com/product/apsaradb-for-rds-postgresql) (China's market leader) as benchmarks for comparison.

Both Aliyun RDS and AWS RDS are closed-source cloud database services, available only through rental models on public clouds. The following comparison is based on the latest PostgreSQL 16 as of February 2024.


-----------

### Feature Comparison

| **Feature** | **Pigsty**                                                             | **Aliyun RDS**                                                             | **AWS RDS**                                                                      |
|--------|------------------------------------------------------------------------|----------------------------------------------------------------------------|----------------------------------------------------------------------------------|
| Major Version Support  | 13 - 18                                                                | 13 - 18                                                                    | 13 - 18                                                                          |
| Read Replicas   | <i class="fas fa-circle-check text-success"></i> Supports unlimited read replicas            | <i class="fas fa-circle-xmark text-danger"></i> Standby instances not exposed to users                  | <i class="fas fa-circle-xmark text-danger"></i> Standby instances not exposed to users                        |
| Read/Write Splitting   | <i class="fas fa-circle-check text-success"></i> Port-based traffic separation            | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Separate paid component     | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Separate paid component           |
| Fast/Slow Separation   | <i class="fas fa-circle-check text-success"></i> Supports offline ETL instances           | <i class="fas fa-circle-xmark text-danger"></i> Not available                     | <i class="fas fa-circle-xmark text-danger"></i> Not available                           |
| Cross-Region DR   | <i class="fas fa-circle-check text-success"></i> Supports standby clusters                | <i class="fas fa-circle-check text-success"></i> Multi-AZ deployment supported                  | <i class="fas fa-circle-check text-success"></i> Multi-AZ deployment supported                        |
| Delayed Replicas   | <i class="fas fa-circle-check text-success"></i> Supports delayed instances                | <i class="fas fa-circle-xmark text-danger"></i> Not available                     | <i class="fas fa-circle-xmark text-danger"></i> Not available                           |
| Load Balancing   | <i class="fas fa-circle-check text-success"></i> HAProxy / LVS         | <i class="fas fa-circle-check text-success"></i> Separate paid component                    | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Separate paid component           |
| Connection Pool    | <i class="fas fa-circle-check text-success"></i> Pgbouncer             | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Separate paid component: RDS | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Separate paid component: RDS Proxy |
| High Availability    | <i class="fas fa-circle-check text-success"></i> Patroni / etcd        | <i class="fas fa-circle-check text-success"></i> Requires HA edition                 | <i class="fas fa-circle-check text-success"></i> Requires HA edition                       |
| Point-in-Time Recovery  | <i class="fas fa-circle-check text-success"></i> pgBackRest / MinIO    | <i class="fas fa-circle-check text-success"></i> Backup supported                    | <i class="fas fa-circle-check text-success"></i> Backup supported                          |
| Metrics Monitoring   | <i class="fas fa-circle-check text-success"></i> Prometheus / Exporter | <i class="fas fa-circle-check text-secondary"></i> Free basic / Paid advanced             | <i class="fas fa-circle-check text-secondary"></i>  Free basic / Paid advanced                  |
| Log Collection   | <i class="fas fa-circle-check text-success"></i> Loki / Promtail       | <i class="fas fa-circle-check text-success"></i>  Basic support                     | <i class="fas fa-circle-check text-success"></i> Basic support                            |
| Visualization  | <i class="fas fa-circle-check text-success"></i> Grafana / Echarts     | <i class="fas fa-circle-check text-secondary"></i> Basic monitoring                  | <i class="fas fa-circle-check text-secondary"></i> Basic monitoring                        |
| Alert Aggregation | <i class="fas fa-circle-check text-success"></i> AlertManager          | <i class="fas fa-circle-check text-success"></i> Basic support                      | <i class="fas fa-circle-check text-success"></i> Basic support                            |


----------

### Key Extensions

Here are some important extensions compared based on PostgreSQL 16, as of 2024-02-28

- [**Pigsty Extension List**](https://pgext.cloud/list/)
- [**AWS RDS Extension List**](https://docs.aws.amazon.com/AmazonRDS/latest/PostgreSQLReleaseNotes/postgresql-extensions.html):
- [**Aliyun RDS Extension List**](https://help.aliyun.com/zh/rds/apsaradb-rds-for-postgresql/extensions-supported-by-apsaradb-rds-for-postgresql)

| **Extension** | **Pigsty RDS** / PGDG Official Repo                                                      |                                **Aliyun RDS**                                 |                           **AWS RDS**                            |
|----------|---------------------------------------------------------------------------------|:--------------------------------------------------------------------------:|:----------------------------------------------------------------:|
| Install Extensions     | <i class="fas fa-circle-check text-success"></i> Free to install                           |            <i class="fas fa-circle-xmark text-danger"></i> Not allowed             |       <i class="fas fa-circle-xmark text-danger"></i> Not allowed        |
| Geospatial     | <i class="fas fa-circle-check text-success"></i> PostGIS 3.4.2                  | <i class="fas fa-circle-check text-success"></i> PostGIS 3.3.4 / Ganos 6.1 |  <i class="fas fa-circle-check text-success"></i> PostGIS 3.4.1  |
| Point Cloud     | <i class="fas fa-circle-check text-success"></i> PG PointCloud 1.2.5            |   <i class="fas fa-circle-check text-success"></i> Ganos PointCloud 6.1    |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Vector Embedding     | <i class="fas fa-circle-check text-success"></i> PGVector 0.6.1 / Svector 0.5.6 |   <i class="fas fa-triangle-exclamation text-secondary"></i> pase 0.0.1    |  <i class="fas fa-circle-check text-success"></i> PGVector 0.6   |
| Machine Learning     | <i class="fas fa-circle-check text-success"></i> PostgresML 2.8.1               |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Time Series     | <i class="fas fa-circle-check text-success"></i> TimescaleDB 2.14.2             |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Horizontal Scaling    | <i class="fas fa-circle-check text-success"></i> Citus 12.1                     |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Columnar Storage     | <i class="fas fa-circle-check text-success"></i> Hydra 1.1.1                    |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Full Text Search     | <i class="fas fa-circle-check text-success"></i> pg_bm25 0.5.6<br />            |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Graph Database     | <i class="fas fa-circle-check text-success"></i> Apache AGE 1.5.0               |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| GraphQL  | <i class="fas fa-circle-check text-success"></i> PG GraphQL 1.5.0               |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| OLAP     | <i class="fas fa-circle-check text-success"></i> pg_analytics 0.5.6             |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Message Queue     | <i class="fas fa-circle-check text-success"></i> pgq 3.5.0                      |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| DuckDB   | <i class="fas fa-circle-check text-success"></i> duckdb_fdw 1.1                 |              <i class="fas fa-circle-xmark text-danger"></i>               |         <i class="fas fa-circle-xmark text-danger"></i>          |
| Fuzzy Tokenization     | <i class="fas fa-circle-check text-success"></i> zhparser 1.1 / pg_bigm 1.2     |  <i class="fas fa-circle-check text-success"></i> zhparser 1.0 / pg_jieba  |   <i class="fas fa-circle-check text-success"></i> pg_bigm 1.2   |
| CDC Extraction    | <i class="fas fa-circle-check text-success"></i> wal2json 2.5.3                 |              <i class="fas fa-circle-xmark text-danger"></i>               |  <i class="fas fa-circle-check text-success"></i> wal2json 2.5   |
| Bloat Management     | <i class="fas fa-circle-check text-success"></i> pg_repack 1.5.0                |      <i class="fas fa-circle-check text-success"></i> pg_repack 1.4.8      | <i class="fas fa-circle-check text-success"></i> pg_repack 1.5.0 |

<details><summary>AWS RDS PG Available Extensions</summary>

AWS RDS for PostgreSQL 16 available extensions (excluding PG built-in extensions)

| name                 | pg16 | pg15 | pg14 | pg13 | pg12 | pg11 | pg10 |
|:---------------------|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
| amcheck              | 1.3  | 1.3  | 1.3  | 1.2  | 1.2  | yes  | 1    |
| auto\_explain        | yes  | yes  | yes  | yes  | yes  | yes  | yes  |
| autoinc              | 1    | 1    | 1    | 1    | null | null | null |
| bloom                | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| bool\_plperl         | 1    | 1    | 1    | 1    | null | null | null |
| btree\_gin           | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.2  |
| btree\_gist          | 1.7  | 1.7  | 1.6  | 1.5  | 1.5  | 1.5  | 1.5  |
| citext               | 1.6  | 1.6  | 1.6  | 1.6  | 1.6  | 1.5  | 1.4  |
| cube                 | 1.5  | 1.5  | 1.5  | 1.4  | 1.4  | 1.4  | 1.2  |
| dblink               | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  |
| dict\_int            | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| dict\_xsyn           | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| earthdistance        | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  |
| fuzzystrmatch        | 1.2  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  |
| hstore               | 1.8  | 1.8  | 1.8  | 1.7  | 1.6  | 1.5  | 1.4  |
| hstore\_plperl       | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| insert\_username     | 1    | 1    | 1    | 1    | null | null | null |
| intagg               | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  |
| intarray             | 1.5  | 1.5  | 1.5  | 1.3  | 1.2  | 1.2  | 1.2  |
| isn                  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.1  |
| jsonb\_plperl        | 1    | 1    | 1    | 1    | 1    | null | null |
| lo                   | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  |
| ltree                | 1.2  | 1.2  | 1.2  | 1.2  | 1.1  | 1.1  | 1.1  |
| moddatetime          | 1    | 1    | 1    | 1    | null | null | null |
| old\_snapshot        | 1    | 1    | 1    | null | null | null | null |
| pageinspect          | 1.12 | 1.11 | 1.9  | 1.8  | 1.7  | 1.7  | 1.6  |
| pg\_buffercache      | 1.4  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  |
| pg\_freespacemap     | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  |
| pg\_prewarm          | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.1  |
| pg\_stat\_statements | 1.1  | 1.1  | 1.9  | 1.8  | 1.7  | 1.6  | 1.6  |
| pg\_trgm             | 1.6  | 1.6  | 1.6  | 1.5  | 1.4  | 1.4  | 1.3  |
| pg\_visibility       | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  |
| pg\_walinspect       | 1.1  | 1    | null | null | null | null | null |
| pgcrypto             | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  |
| pgrowlocks           | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  |
| pgstattuple          | 1.5  | 1.5  | 1.5  | 1.5  | 1.5  | 1.5  | 1.5  |
| plperl               | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| plpgsql              | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| pltcl                | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| postgres\_fdw        | 1.1  | 1.1  | 1.1  | 1    | 1    | 1    | 1    |
| refint               | 1    | 1    | 1    | 1    | null | null | null |
| seg                  | 1.4  | 1.4  | 1.4  | 1.3  | 1.3  | 1.3  | 1.1  |
| sslinfo              | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  |
| tablefunc            | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| tcn                  | 1    | 1    | 1    | 1    | 1    | 1    | 1    |
| tsm\_system\_rows    | 1    | 1    | 1    | 1    | 1    | 1    | 1.1  |
| tsm\_system\_time    | 1    | 1    | 1    | 1    | 1    | 1    | 1.1  |
| unaccent             | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  |
| uuid-ossp            | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  |


</details>


<details><summary>Aliyun RDS PG Available Extensions</summary>

Aliyun RDS for PostgreSQL 16 available extensions (excluding PG built-in extensions)

| name                 | pg16 | pg15 | pg14 | pg13 | pg12 | pg11 | pg10 | description                                |
|:---------------------|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-------------------------------------------|
| bloom                | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Provides a bloom filter-based index access method.                     |
| btree\_gin           | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.2  | Provides GIN operator class examples that implement B-tree equivalent behavior for multiple data types and all enum types.  |
| btree\_gist          | 1.7  | 1.7  | 1.6  | 1.5  | 1.5  | 1.5  | 1.5  | Provides GiST operator class examples that implement B-tree equivalent behavior for multiple data types and all enum types. |
| citext               | 1.6  | 1.6  | 1.6  | 1.6  | 1.6  | 1.5  | 1.4  | Provides a case-insensitive string type.                        |
| cube                 | 1.5  | 1.5  | 1.5  | 1.4  | 1.4  | 1.4  | 1.2  | Provides a data type for representing multi-dimensional cubes.                        |
| dblink               | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | Cross-database table operations.                                   |
| dict\_int            | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Additional full-text search dictionary template example.                           |
| earthdistance        | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | Provides two different methods to calculate great circle distances on the Earth's surface.                   |
| fuzzystrmatch        | 1.2  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | Determines similarities and distances between strings.                          |
| hstore               | 1.8  | 1.8  | 1.8  | 1.7  | 1.6  | 1.5  | 1.4  | Stores key-value pairs in a single PostgreSQL value.                    |
| intagg               | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | Provides an integer aggregator and an enumerator.                         |
| intarray             | 1.5  | 1.5  | 1.5  | 1.3  | 1.2  | 1.2  | 1.2  | Provides some useful functions and operators for manipulating null-free integer arrays.               |
| isn                  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.1  | Validates input according to a hard-coded prefix list, also used for concatenating numbers during output.        |
| ltree                | 1.2  | 1.2  | 1.2  | 1.2  | 1.1  | 1.1  | 1.1  | For representing labels of data stored in a hierarchical tree structure.                  |
| pg\_buffercache      | 1.4  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | Provides a way to examine the shared buffer cache in real time.                         |
| pg\_freespacemap     | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | Examines the free space map (FSM).                           |
| pg\_prewarm          | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.1  | Provides a convenient way to load data into the OS buffer or PostgreSQL buffer.   |
| pg\_stat\_statements | 1.1  | 1.1  | 1.9  | 1.8  | 1.7  | 1.6  | 1.6  | Provides a means of tracking execution statistics of all SQL statements executed by a server.            |
| pg\_trgm             | 1.6  | 1.6  | 1.6  | 1.5  | 1.4  | 1.4  | 1.3  | Provides functions and operators for alphanumeric text similarity, and index operator classes that support fast searching of similar strings. |
| pgcrypto             | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | 1.3  | Provides cryptographic functions for PostgreSQL.                      |
| pgrowlocks           | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | Provides a function to show row locking information for a specified table.                    |
| pgstattuple          | 1.5  | 1.5  | 1.5  | 1.5  | 1.5  | 1.5  | 1.5  | Provides multiple functions to obtain tuple-level statistics.                       |
| plperl               | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Provides Perl procedural language.                              |
| plpgsql              | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Provides SQL procedural language.                               |
| pltcl                | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Provides Tcl procedural language.                               |
| postgres\_fdw        | 1.1  | 1.1  | 1.1  | 1    | 1    | 1    | 1    | Cross-database table operations.                                   |
| sslinfo              | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | 1.2  | Provides information about the SSL certificate provided by the current client.                  |
| tablefunc            | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Contains multiple table-returning functions.                              |
| tsm\_system\_rows    | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Provides the table sampling method SYSTEM\_ROWS.                     |
| tsm\_system\_time    | 1    | 1    | 1    | 1    | 1    | 1    | 1    | Provides the table sampling method SYSTEM\_TIME.                     |
| unaccent             | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | A text search dictionary that can remove accents (diacritics) from lexemes.                 |
| uuid-ossp            | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | Provides functions to generate universally unique identifiers (UUIDs) using several standard algorithms.           |
| xml2                 | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | 1.1  | Provides XPath queries and XSLT functionality.                        |


</details>




-----------

### Performance Comparison

| **Metric**       | **Pigsty**                                                                                   | **Aliyun RDS**                                                                                          | **AWS RDS**                                                                                                                                                         |
|--------------|----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Peak Performance         | [PGTPC on NVME SSD Benchmark](https://github.com/Vonng/pgtpc/tree/master/sysbench) sysbench oltp_rw | [RDS PG Performance Whitepaper](https://help.aliyun.com/document_detail/101470.html) sysbench oltp scenario QPS 4000 ~ 8000 per core |                                                                                                                                                                     |
| Storage Spec: Max Capacity   | 32TB / [NVME SSD](https://en.shannon-sys.com/product.html?name=gen_4)                        | 32 TB / **ESSD PL3**                                                                                    | 64 TB / **io2** [EBS](https://aws.amazon.com/blogs/storage/achieve-higher-database-performance-using-amazon-ebs-io2-block-express-volumes/) Block Express        |
| Storage Spec: Max IOPS | 4K Random Read: Max 3M, Random Write 2000~350K                                                                     | 4K Random Read: Max 1M                                                                             | 16K Random IOPS: 256K                                                                                                                                                     |
| Storage Spec: Max Latency   | 4K Random Read: 75µs, Random Write: 15µs                                                                          | 4K Random Read: 200µs                                                                                             | 500µs / Inferred as 16K random IO                                                                                                                                  |
| Storage Spec: Max Reliability  | UBER < 1e-18, equivalent to 18 nines MTBF: 2M hours 5DWPD, 3 years continuous                                  | Reliability 9 nines, equivalent to UBER 1e-9 [Storage and Data Reliability](https://help.aliyun.com/document_detail/476273.html)                    | **Durability**: 99.999%, 5 nines (0.001% annual failure rate) [io2 specification](https://aws.amazon.com/blogs/storage/achieve-higher-database-performance-using-amazon-ebs-io2-block-express-volumes/) |
| Storage Spec: Max Cost   | ¥31.5/TB·month (5-year warranty amortized / 3.2T / Enterprise-grade / MLC)                                                    | ¥3200/TB·month (original ¥6400, monthly ¥4000) 50% off with 3-year prepaid                                                            | ¥1900/TB·month using max spec 65536GB / 256K IOPS best discount                                                                                                         |

-----------

### Observability

Pigsty provides nearly 3000 monitoring metrics and 50+ monitoring dashboards, covering database monitoring, host monitoring, connection pool monitoring, load balancer monitoring, and more, providing users with an unparalleled observability experience.

![](/img/pigsty/dashboard.jpg)

Pigsty provides 638 PostgreSQL-related monitoring metrics, while AWS RDS only has 99, and Aliyun RDS has only single-digit metrics:

![](/img/docs/compare/aliyun.png)

Additionally, some projects provide PostgreSQL monitoring capabilities, but are relatively simple:

- [pgwatch](https://pgwatch.com/): 123 metric types
- [pgmonitor](https://github.com/CrunchyData/pgmonitor): 156 metric types
- [datadog](https://docs.datadoghq.com/integrations/postgres): 69 metric types
- [pgDash](https://pgdash.io/)
- [ClusterControl](https://severalnines.com/product/clustercontrol)
- [pganalyze](https://pganalyze.com/)
- [Aliyun RDS](https://help.aliyun.com/document_detail/102748.html): 8 metric types
- [AWS RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html): 99 metric types
- [Azure RDS](https://docs.microsoft.com/en-us/azure/postgresql/)


-----------

### Maintainability

| **Metric**        | **Pigsty**                                       | **Aliyun RDS**                                                                                                        | **AWS RDS**   |
|---------------|--------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|---------------|
| System Usability         | Simple                                               | Simple                                                                                                                    | Simple            |
| Configuration Management          | Config files / CMDB based on Ansible Inventory                 | Can use Terraform                                                                                                         | Can use Terraform |
| Change Method          | Idempotent Playbooks based on Ansible Playbook                         | Console click operations                                                                                                               | Console click operations       |
| Parameter Tuning          | Auto-adapts to node specs, Four preset templates: OLTP, OLAP, TINY, CRIT           |                                                                                                                       |               |
| Infra as Code | Natively supported                                             | Can use Terraform                                                                                                         | Can use Terraform |
| Customizable Parameters        | [Pigsty Parameters](/docs/ref/param) 283 parameters |                                                                                                                       |               |
| Service & Support         | Commercial subscription support available                                       | After-sales ticket support                                                                                                              | After-sales ticket support      |
| Air-gapped Deployment        | Offline installation supported                                          | N/A                                                                                                                   | N/A           |
| Database Migration         | Playbooks for zero-downtime migration from existing v10+ PG instances to Pigsty managed instances via logical replication          | Cloud migration assistance [Aliyun RDS Data Sync](https://help.aliyun.com/document_detail/322179.html?spm=a2c4g.11186623.0.0.5fb374c9OOi4Dm) |               |

-----------

### Cost

Based on experience, RDS unit cost is 5-15 times that of self-hosted for software and hardware resources, with a rent-to-own ratio typically around one month. For details, see [Cost Analysis](/docs/about/compare/cost/).

| Factor | **Metric**    | **Pigsty**           | **Aliyun RDS**  | **AWS RDS**      |
|----|-----------|----------------------|-----------------|------------------|
| Cost | Software License/Service Fee | Free, hardware ~¥20-40/core·month | ¥200-400/core·month | ¥400-1300/core·month |
|    | Support Service Fee    | Service ~¥100/core·month       | Included in RDS cost     |                  |

------------------

## Other On-Premises Database Management Software

Some software and vendors providing PostgreSQL management capabilities:

- [Aiven](https://aiven.io/): Closed-source commercial cloud-hosted solution
- [Percona](https://www.percona.com/software/postgresql-distribution): Commercial consulting, simple PG distribution
- [ClusterControl](https://docs.severalnines.com/docs/clustercontrol/): Commercial database management software

------------------

## Other Kubernetes Operators

Pigsty refuses to use Kubernetes for managing databases in production, so there are ecological differences with these solutions.

- PGO
- StackGres
- CloudNativePG
- TemboOperator
- PostgresOperator
- PerconaOperator
- Kubegres
- KubeDB
- KubeBlocks

For more information, see:

- [Is Putting Databases in K8S a Good Idea?](/blog/db/db-in-k8s/)
- [Is Putting Databases in Containers a Good Idea?](/blog/db/pg-in-docker/)
