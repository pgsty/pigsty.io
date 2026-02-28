---
title: Open-Source Impact
weight: 171
description: Impact comparison of PostgreSQL ecosystem projects, mainly measured by GitHub star counts.
icon: fa-solid fa-sack-dollar
module: [PIGSTY]
categories: [Reference]
---


## PostgreSQL Distribution Influence Metrics

Sorted by GitHub stars in descending order (commercial products without public stars are placed at the bottom). Last updated: 2026-02-27 (Beijing time).

| Project                                                                                                   |                                     Star                                     | Vendor        | Type         | License     | Summary                                                                |
|-----------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------:|---------------|--------------|-------------|------------------------------------------------------------------------|
| [CloudNativePG](https://github.com/cloudnative-pg/cloudnative-pg)                                         |   [**8093**](https://github.com/cloudnative-pg/cloudnative-pg/stargazers)    | EDB           | K8S Native   | Apache-2.0  | Mainstream PG Operator without Patroni dependency                      |
| [Zalando Postgres Operator](https://github.com/zalando/postgres-operator)                                 |     [**5095**](https://github.com/zalando/postgres-operator/stargazers)      | Zalando       | K8S Native   | MIT         | Long-standing Patroni/Spilo architecture operator                      |
| [Stolon](https://github.com/sorintlab/stolon)                                                             |          [**4807**](https://github.com/sorintlab/stolon/stargazers)          | Sorint.lab    | K8S Native   | Apache-2.0  | Early PG HA orchestration framework (non-typical operator)             |
| [Pigsty](https://github.com/pgsty/pigsty)                                                                 |            [**4766**](https://github.com/pgsty/pigsty/stargazers)            | **PGSTY**     | Linux Native | Apache-2.0  | Ansible-driven integrated PostgreSQL distribution                      |
| [PGO](https://github.com/CrunchyData/postgres-operator)                                                   |   [**4371**](https://github.com/CrunchyData/postgres-operator/stargazers)    | Crunchy Data  | K8S Native   | Apache-2.0  | Production-grade operator with backup and monitoring                   |
| [Autobase](https://github.com/vitabaks/autobase)                                                          |         [**3964**](https://github.com/vitabaks/autobase/stargazers)          | vitabaks      | Linux Native | MIT         | Automated deployment for Patroni/etcd/Consul                           |
| [KubeBlocks](https://github.com/apecloud/kubeblocks)                                                      |        [**2986**](https://github.com/apecloud/kubeblocks/stargazers)         | ApeCloud      | K8S Native   | AGPL-3.0    | Unified multi-database operator platform                               |
| [StackGres](https://github.com/ongres/stackgres)                                                          |          [**1368**](https://github.com/ongres/stackgres/stargazers)          | OnGres        | K8S Native   | AGPL-3.0    | Integrated PG operator with CRD/CLI/Web UI                             |
| [Kubegres](https://github.com/reactive-tech/kubegres)                                                     |       [**1353**](https://github.com/reactive-tech/kubegres/stargazers)       | Reactive Tech | K8S Native   | Apache-2.0  | Minimal operator built on native streaming replication                 |
| [Tembo Operator](https://github.com/tembo/tembo)                                                          |            [**1261**](https://github.com/tembo/tembo/stargazers)             | Tembo         | K8S Native   | Unspecified | Scenario-based stacks for PostgreSQL                                   |
| [KubeDB](https://github.com/kubedb/cli)                                                                   |             [**733**](https://github.com/kubedb/cli/stargazers)              | AppsCode      | K8S Native   | ACL-1.0     | Multi-database operator with kubectl plugin                            |
| [pgEdge](https://github.com/pgEdge)                                                                       |            [**676**](https://github.com/pgEdge/spock/stargazers)             | pgEdge        | Linux Native | PostgreSQL  | Distributed PG distribution focused on Spock multi-master replication  |
| [Percona Operator for PostgreSQL](https://github.com/percona/percona-postgresql-operator)                 | [**356**](https://github.com/percona/percona-postgresql-operator/stargazers) | Percona       | K8S Native   | Apache-2.0  | PostgreSQL operator in Percona ecosystem                               |
| [EDB TPA](https://github.com/EnterpriseDB/tpa)                                                            |           [**82**](https://github.com/EnterpriseDB/tpa/stargazers)           | EDB           | Linux Native | GPL-3.0     | EDB official Ansible delivery toolkit                                  |
| [Percona Distribution for PostgreSQL](https://www.percona.com/software/postgresql-distribution)           |                                      -                                       | Percona       | Linux Native | Multi       | Integrated PostgreSQL distribution bundle                              |
| [ClusterControl](https://www.severalnines.com/product/clustercontrol)                                     |                                      -                                       | ServerNines   | Linux Native | Commercial  | Multi-database deploy, monitoring, backup, and failover platform       |
| [CYBERTEC PGEE](https://www.cybertec-postgresql.com/en/products/cybertec-postgresql-enterprise-edition/)  |                                      -                                       | CYBERTEC      | Linux Native | Commercial  | Enterprise PostgreSQL distribution focused on security and performance |
| [Crunchy Postgres for Ansible](https://www.crunchydata.com/)                                              |                                      -                                       | Crunchy Data  | Linux Native | Commercial  | Crunchy bare-metal/VM automation solution                              |
| [EDB Postgres Advanced Server (EPAS)](https://www.enterprisedb.com/products/edb-postgres-advanced-server) |                                      -                                       | EDB           | Linux Native | Commercial  | EDB flagship distribution with Oracle-compatibility features           |
{.full-width}

[![Star History Chart](/img/pigsty/star-history-2026227.webp)](https://www.star-history.com/#pgsty/pigsty&vitabaks/autobase&cloudnative-pg/cloudnative-pg&zalando/postgres-operator&sorintlab/stolon&CrunchyData/postgres-operator&apecloud/kubeblocks&ongres/stackgres&type=date&legend=top-left)



## Influence of Chinese PostgreSQL Ecosystem Projects

Sorted by GitHub stars (descending). Last updated: 2026-02-27 (Beijing time).

| Project                                                                                                 |                                      Star                                       | Maintainer               |  Type  | Summary                                                |
|---------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------:|--------------------------|:------:|:-------------------------------------------------------|
| [`pgsty/pigsty`](https://github.com/pgsty/pigsty)                                                       |             [**4766**](https://github.com/pgsty/pigsty/stargazers)              | Ruohang Feng @ **PGSTY** | Distro | Batteries-included PostgreSQL distribution             |
| [`ApsaraDB/PolarDB-for-PostgreSQL`](https://github.com/ApsaraDB/PolarDB-for-PostgreSQL)                 |    [**3135**](https://github.com/ApsaraDB/PolarDB-for-PostgreSQL/stargazers)    | Alibaba Cloud            | Kernel | Open-source PolarDB for PostgreSQL kernel              |
| [`tensorchord/pgvecto.rs`](https://github.com/tensorchord/pgvecto.rs)                                   |        [**2158**](https://github.com/tensorchord/pgvecto.rs/stargazers)         | TensorChord              |  Ext   | Vector search extension written in Rust                |
| [`tensorchord/VectorChord`](https://github.com/tensorchord/VectorChord)                                 |        [**1572**](https://github.com/tensorchord/VectorChord/stargazers)        | TensorChord              |  Ext   | Next-generation vector search extension                |
| [`Tencent/TBase`](https://github.com/Tencent/TBase)                                                     |             [**1434**](https://github.com/Tencent/TBase/stargazers)             | Tencent Cloud            | Kernel | Tencent distributed HTAP database kernel               |
| [`apache/cloudberry`](https://github.com/apache/cloudberry)                                             |           [**1189**](https://github.com/apache/cloudberry/stargazers)           | HashData                 | Kernel | Open-source MPP data warehouse kernel                  |
| [`IvorySQL/IvorySQL`](https://github.com/IvorySQL/IvorySQL)                                             |           [**992**](https://github.com/IvorySQL/IvorySQL/stargazers)            | HighGo                   | Kernel | Oracle-compatible PostgreSQL branch                    |
| [`amutu/zhparser`](https://github.com/amutu/zhparser)                                                   |             [**832**](https://github.com/amutu/zhparser/stargazers)             | Jov                      |  Ext   | Chinese full-text segmentation extension based on SCWS |
| [`pgplex/pgschema`](https://github.com/pgplex/pgschema)                                                 |            [**804**](https://github.com/pgplex/pgschema/stargazers)             | Tianzhou Chen            |  Tool  | Declarative PostgreSQL schema migration CLI            |
| [`opengauss-mirror/openGauss-server`](https://github.com/opengauss-mirror/openGauss-server)             |   [**765**](https://github.com/opengauss-mirror/openGauss-server/stargazers)    | Huawei                   | Kernel | Early fork of PG 9.2                                   |
| [`HaloTech-Co-Ltd/openHalo`](https://github.com/HaloTech-Co-Ltd/openHalo)                               |        [**605**](https://github.com/HaloTech-Co-Ltd/openHalo/stargazers)        | Halohz                   | Kernel | PostgreSQL kernel with MySQL protocol compatibility    |
| [`alitrack/duckdb_fdw`](https://github.com/alitrack/duckdb_fdw)                                         |          [**401**](https://github.com/alitrack/duckdb_fdw/stargazers)           | Hongyan Li               |  Ext   | DuckDB foreign data wrapper                            |
| [`jaiminpan/pg_jieba`](https://github.com/jaiminpan/pg_jieba)                                           |           [**400**](https://github.com/jaiminpan/pg_jieba/stargazers)           | Pan Jiamin               |  Ext   | Chinese full-text extension based on Jieba             |
| [`tensorchord/VectorChord-bm25`](https://github.com/tensorchord/VectorChord-bm25)                       |      [**355**](https://github.com/tensorchord/VectorChord-bm25/stargazers)      | TensorChord              |  Ext   | Native BM25 ranking index for PostgreSQL               |
| [`pgsty/pg_exporter`](https://github.com/pgsty/pg_exporter)                                             |           [**322**](https://github.com/pgsty/pg_exporter/stargazers)            | Ruohang Feng @ **PGSTY** |  Tool  | PostgreSQL and Pgbouncer metrics exporter              |
| [`ChenHuajun/pg_roaringbitmap`](https://github.com/ChenHuajun/pg_roaringbitmap)                         |      [**271**](https://github.com/ChenHuajun/pg_roaringbitmap/stargazers)       | Huajun Chen @ Suning     |  Ext   | PostgreSQL RoaringBitmap extension                     |
| [`pgsty/pig`](https://github.com/pgsty/pig)                                                             |               [**185**](https://github.com/pgsty/pig/stargazers)                | Ruohang Feng @ **PGSTY** |  Tool  | PostgreSQL extension package manager                   |
| [`tensorchord/pg_bestmatch.rs`](https://github.com/tensorchord/pg_bestmatch.rs)                         |       [**92**](https://github.com/tensorchord/pg_bestmatch.rs/stargazers)       | TensorChord              |  Ext   | BM25 sparse-vector generation inside PostgreSQL        |
| [`wublabdubdub/PDU-PostgreSQLDataUnloader`](https://github.com/wublabdubdub/PDU-PostgreSQLDataUnloader) | [**69**](https://github.com/wublabdubdub/PDU-PostgreSQLDataUnloader/stargazers) | Chen Zhang               |  Tool  | PostgreSQL rescue and data unload toolkit              |
| [`jaiminpan/pg_scws`](https://github.com/jaiminpan/pg_scws)                                             |            [**41**](https://github.com/jaiminpan/pg_scws/stargazers)            | Pan Jiamin               |  Ext   | Chinese segmentation extension based on SCWS           |
| [`tensorchord/pg_tokenizer.rs`](https://github.com/tensorchord/pg_tokenizer.rs)                         |       [**37**](https://github.com/tensorchord/pg_tokenizer.rs/stargazers)       | TensorChord              |  Ext   | Full-text search tokenizer extension                   |
| [`pgsty/pgext`](https://github.com/pgsty/pgext)                                                         |               [**20**](https://github.com/pgsty/pgext/stargazers)               | Ruohang Feng @ **PGSTY** |  Tool  | PG extension catalog and metadata tool                 |
{.full-width}

{{< echarts height="820px" >}}
```js
var fnum = function(n) {
  n = Number(n);
  return Number.isFinite(n) ? n.toLocaleString("en-US") : '';
};
var labfmt = function(params) {
  if (!params || params.value == null) return '';
  return fnum(params.value);
};
var tipfmt = function(params) {
  if (!params || !params.length) return '';
  return '<b>' + params[0].name + '</b><br/>' + params[0].marker + ' Star: ' + fnum(params[0].value);
};
var barclr = function(params) {
  if (params.name === 'pgsty/pigsty') {
    return new echarts.graphic.LinearGradient(0, 0, 1, 0, [
      { offset: 0, color: '#d94841' },
      { offset: 1, color: '#f97316' }
    ]);
  }
  return '#7aa6c2';
};
```
```yaml
tooltip:
  trigger: axis
  axisPointer: { type: shadow }
  formatter: $fn:tipfmt
grid: { left: 320, right: 72, top: 20, bottom: 26 }
xAxis:
  type: value
  max: 5000
  name: GitHub Star
  nameLocation: middle
  nameGap: 24
  axisLabel: { formatter: $fn:fnum }
  splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.45 } }
yAxis:
  type: category
  inverse: true
  axisLabel:
    align: right
    margin: 8
    width: 300
    overflow: truncate
    fontSize: 11
    fontFamily: monospace
  data:
    - 'pgsty/pigsty'
    - 'ApsaraDB/PolarDB-for-PostgreSQL'
    - 'tensorchord/pgvecto.rs'
    - 'tensorchord/VectorChord'
    - 'Tencent/TBase'
    - 'apache/cloudberry'
    - 'IvorySQL/IvorySQL'
    - 'amutu/zhparser'
    - 'pgplex/pgschema'
    - 'opengauss-mirror/openGauss-server'
    - 'HaloTech-Co-Ltd/openHalo'
    - 'alitrack/duckdb_fdw'
    - 'jaiminpan/pg_jieba'
    - 'tensorchord/VectorChord-bm25'
    - 'pgsty/pg_exporter'
    - 'ChenHuajun/pg_roaringbitmap'
    - 'pgsty/pig'
    - 'tensorchord/pg_bestmatch.rs'
    - 'wublabdubdub/PDU-PostgreSQLDataUnloader'
    - 'jaiminpan/pg_scws'
    - 'tensorchord/pg_tokenizer.rs'
    - 'pgsty/pgext'
series:
  - name: Star
    type: bar
    barWidth: 20
    showBackground: true
    backgroundStyle: { color: "rgba(148, 163, 184, 0.16)" }
    itemStyle:
      color: $fn:barclr
      borderRadius: [0, 5, 5, 0]
    label:
      show: true
      position: right
      formatter: $fn:labfmt
      color: '#334155'
      fontWeight: 600
    data: [4766, 3135, 2158, 1572, 1434, 1189, 992, 832, 804, 765, 605, 401, 400, 355, 322, 271, 185, 92, 69, 41, 37, 20]
```
{{< /echarts >}}


## Other Resources

- Map of GitHub: [Pigsty](https://anvaka.github.io/map-of-github/#2.25/0/0)
- DeepWiki: [pgsty/pigsty](https://deepwiki.com/pgsty/pigsty)
- OSS Insight: [`pgsty/pigsty`](https://next.ossinsight.io/analyze/pgsty/pigsty#overview)
- OSS Insight: [pgsty](https://next.ossinsight.io/analyze/pgsty#overview)
