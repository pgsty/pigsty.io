---
title: Subscription
weight: 150
description: Pigsty Professional/Enterprise subscription service - When you encounter
  difficulties related to PostgreSQL and Pigsty, our subscription service provides
  you with comprehensive support.
icon: fas fa-briefcase
module: [PIGSTY]
categories: [Reference]
---


Pigsty aims to unite the power of the PostgreSQL ecosystem and help users make the most of the world's [**most popular**](/blog/pg/pg-is-no1-again/) database, PostgreSQL, with self-driving database management software.

While Pigsty itself has already resolved many issues in PostgreSQL usage, achieving truly enterprise-grade service quality requires expert support and comprehensive coverage from the original provider.
We deeply understand the importance of professional commercial support for enterprise customers. Therefore, Pigsty Enterprise Edition provides a series of value-added services on top of the open-source version, helping users better utilize PostgreSQL and Pigsty for customers to choose according to their needs.

**If you have any of the following needs, please consider Pigsty subscription service:**

- Running databases in critical scenarios requiring strict SLA guarantees and comprehensive coverage.
- Need comprehensive support for complex issues related to Pigsty and PostgreSQL.
- Seeking guidance on PostgreSQL/Pigsty production environment best practices.
- Want experts to help interpret monitoring dashboards, analyze and identify performance bottlenecks and fault root causes, and provide recommendations.
- Need to plan database architectures that meet security/disaster recovery/compliance requirements based on existing resources and business needs.
- Need to migrate from other databases to PostgreSQL, or migrate and transform legacy instances.
- Building an observability system, data dashboards, and visualization applications based on the Victoria/Grafana technology stack.
- Migrating off cloud and seeking open-source alternatives to RDS for PostgreSQL - cloud-neutral, vendor lock-in-free solutions.
- Want professional support for Redis/ETCD/MinIO, as well as extensions like TimescaleDB/Citus.
- Want to perform secondary development and OEM branding with explicit commercial authorization.
- Want to sell Pigsty as SaaS/PaaS/DBaaS, or provide technical services/consulting/cloud services based on this distribution.


--------

## Subscription Plans

In addition to the [**Open Source Edition**](#pigsty-open-source-edition-oss), Pigsty offers two different subscription service tiers: [**Professional Edition**](#pigsty-professional-edition-pro) and [**Enterprise Edition**](#pigsty-enterprise-edition), which you can choose based on your actual situation and needs.

> **Note on `/price`:** The [**`/price`**](/price/) page is a simplified global pricing landing page (USD pricing, includes the `Standard` tier and node-cap presets). This page is the detailed subscription reference (CNY pricing, delivery scope, and OS/PG compatibility matrix). For technical compatibility boundaries, this page and [**Supported Linux**](/docs/ref/linux/) prevail.

{{< cardpane >}}

{{< card header="**Pigsty Open Source Edition (OSS)**" title="Free and Open Source" subtitle="No scale limit, no warranty" footer="Self-sufficient open source veterans">}}

<p><b>License: <a href="/docs/about/license">Apache-2.0</a></b></p>
<p><b>PG Support: 18 (default), 14 - 18 available</b></p>
<p><b>Architecture Support: x86_64, Arm64</b></p>
<p><b>OS Support: Latest minor versions of three families</b><p>
<ul>
<li>EL 9.8 / 10.2</li>
<li>Debian 12.14 / 13.5</li>
<li>Ubuntu 26.04.0 / 24.04.4 / 22.04.5</li>
</ul>
<p><b>Features: <a href="/docs/ref/module#core-modules">Core Modules</a></b></p>
<p><b>SLA: No SLA commitment</b></p>
<p><b>Community support Q&A:</b></p>
<ul>
<li><a href="/docs/about/community">WeChat discussion groups</a></li>
<li><a href="https://github.com/pgsty/pigsty/issues/">GitHub Issues</a></li>
<li><a href="https://discord.gg/j5pG8qfKxU">Discord Channel</a></li>
</ul>

<p><b>Support: No person-day support option</b></p>
<p><b>Repository: Global Cloudflare hosted repository</b></p>
{{< /card >}}


{{< card header="**Pigsty Professional Edition (PRO)**" title="Starting Price: ¥150,000 / year" subtitle="Default choice for regular users" footer="Default choice for regular users">}}

<p><b>License: Commercial License</b></p>
<p><b>PG Support: 14 - 18</b></p>
<p><b>Architecture Support: x86_64, Arm64</b></p>
<p><b>OS Support: Mainstream OS major/minor versions</b><p>
<ul>
<li>EL 8 / 9 / 10 compatible</li>
<li>Debian 12 / 13</li>
<li>Ubuntu 22 / 24 / 26</li>
</ul>

<p><b>Features: <a href="/docs/ref/module">All Modules</a></b> (except domestic innovation kernels)</p>
<p><b>SLA: Response within business hours</b></p>
<p><b>Expert consulting services:</b></p>
<ul>
<li>Software bug fixes</li>
<li>Complex issue analysis</li>
<li>Expert ticket support</li>
</ul>

<p><b>Support: 1 person-day included per year</b></p>
<p><b>Delivery: Standard offline software package</b></p>
<p><b>Repository: China mainland mirror sites</b></p>
{{< /card >}}





{{< card header="**Pigsty Enterprise Edition (ENTERPRISE)**" title="Starting Price: ¥400,000 / year" subtitle="Critical scenarios with strict SLA" footer="Critical scenarios with strict SLA">}}

<p><b>License: Commercial License</b></p>
<p><b>PG Support: 14 - 18+ (legacy versions on request)</b></p>
<p><b>Architecture Support: x86_64, Arm64</b></p>
<p><b>OS Support: Customized on demand</b><p>
<ul>
<li>EL, Debian, Ubuntu</li>
<li>Cloud Linux operating systems</li>
<li>Domestic OS and ARM</li>
</ul>

<p><b>Features: <a href="/docs/ref/module">All Modules</a></b></p>
<p><b>SLA: 7 x 24 (< 1h)</b></p>
<p><b>Enterprise-level expert consulting services:</b></p>
<ul>
<li>Software bug fixes</li>
<li>Complex issue analysis</li>
<li>Expert Q&A support</li>
<li>Backup compliance advice</li>
<li>Upgrade path support</li>
<li>Performance bottleneck identification</li>
<li>Annual architecture review</li>
<li>Extension plugin integration</li>
<li>DBaaS & OEM use cases</li>
</ul>

<p><b>Support: 2 person-days included per year</b></p>

<p><b>Repository: China mainland mirror sites</b></p>
<p><b>Delivery: Customized offline software package</b></p>
<p><b>Domestic Innovation: <a href="/docs/pgsql/kernel/polardb-o">PolarDB-O</a> support</b></p>

{{< /card >}}
{{< /cardpane >}}




----------------

## Pigsty Open Source Edition (OSS)

Pigsty Open Source Edition uses the [**Apache-2.0**](/docs/about/license) license, provides complete core functionality, requires no fees, but does not guarantee any warranty service. If you find defects in Pigsty, we welcome you to submit an [Issue](https://github.com/pgsty/pigsty/issues/) on Github.

For the open source edition, we provide pre-built standard offline software packages for PostgreSQL 18 on seven mainstream distro releases with current minor baselines: EL 9.8 / 10.2, Debian 12.14 / 13.5, Ubuntu 26.04.0 / 24.04.4 / 22.04.5, with both `x86_64` and `aarch64` builds.

Using the Pigsty open source version allows junior development/operations engineers to have **70%+** of the capabilities of professional DBAs. Even without database experts, they can easily set up a highly available, high-performance, easy-to-maintain, secure and reliable PostgreSQL database cluster.

|   Code   | OS Distribution Version    |   `x86_64`    |   `aarch64`    |                       PG18                       |                   PG17                    |                   PG16                    |                   PG15                    |                   PG14                    |
|:--------:|----------------------------|:-------------:|:--------------:|:------------------------------------------------:|:-----------------------------------------:|:-----------------------------------------:|:-----------------------------------------:|:-----------------------------------------:|
| **EL10** | RHEL 10 / Rocky10 / Alma10 | `el10.x86_64` | `el10.aarch64` | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **EL9**  | RHEL 9 / Rocky9 / Alma9    | `el9.x86_64`  | `el9.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U26**  | Ubuntu 26.04 (`resolute`)  | `u26.x86_64`  | `u26.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U24**  | Ubuntu 24.04 (`noble`)     | `u24.x86_64`  | `u24.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U22**  | Ubuntu 22.04 (`jammy`)     | `u22.x86_64`  | `u22.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D13**  | Debian 13 (`trixie`)       | `d13.x86_64`  | `d13.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D12**  | Debian 12 (`bookworm`)     | `d12.x86_64`  | `d12.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |

> <i class="fas fa-circle-check text-primary"></i> = Primary support, <i class="fas fa-check text-primary"></i> = Optional support



----------------

## Pigsty Professional Edition (PRO)

{{% alert title="Professional Edition Subscription: Starting Price ¥150,000 / year" color="secondary" %}}{{% /alert %}}

Pigsty Professional Edition subscription provides complete functional modules and warranty for Pigsty itself. For defects in PostgreSQL itself and extension plugins, we will make our best efforts to provide feedback and fixes through the PostgreSQL global developer community.

Pigsty Professional Edition is built on the open source version, fully compatible with all open source features, and provides additional modules plus broader database/OS compatibility options: we provide build options for **all minor versions** of eight mainstream Linux releases (EL8/9/10, Debian 12/13, Ubuntu 22/24/26).

Pigsty Professional Edition includes support for PostgreSQL **14 - 18**, and tracks upstream PostgreSQL minor updates continuously (for active majors, typically day-zero or near-day availability), ensuring smooth rolling upgrades to newer majors and minors.

Pigsty Professional Edition subscription allows you to use China mainland mirror site software repositories, accessible without VPN/proxy; we will also customize offline software installation packages for your exact operating system major/minor version, ensuring normal installation and delivery in air-gapped environments, achieving autonomous and controllable deployment.

Pigsty Professional Edition subscription provides standard expert consulting services, including complex issue analysis, DBA Q&A support, backup compliance advice, etc. We commit to responding to your issues within business hours (5x8), and provide **1** person-day support per year, with optional person-day add-on options.

Pigsty Professional Edition uses a commercial license, providing additional modules, technical support, and warranty services.

Pigsty Professional Edition starting price is **¥150,000 / year**, equivalent to the annual fee for **9** vCPU AWS high-availability RDS PostgreSQL, or a junior operations engineer with a monthly salary of **10,000 yuan**.

|   Code   | OS Distribution Version           |   `x86_64`    |   `aarch64`    |                       PG18                       |                       PG17                       |                   PG16                    |                   PG15                    |                   PG14                    |
|:--------:|-----------------------------------|:-------------:|:--------------:|:------------------------------------------------:|:------------------------------------------------:|:-----------------------------------------:|:-----------------------------------------:|:-----------------------------------------:|
| **EL10** | RHEL 10 / Rocky10 / Alma10        | `el10.x86_64` | `el10.aarch64` | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **EL9**  | RHEL 9 / Rocky9 / Alma9           | `el9.x86_64`  | `el9.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **EL8**  | RHEL 8 / Rocky8 / Alma8 / Anolis8 | `el8.x86_64`  | `el8.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U26**  | Ubuntu 26.04 (`resolute`)         | `u26.x86_64`  | `u26.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U24**  | Ubuntu 24.04 (`noble`)            | `u24.x86_64`  | `u24.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U22**  | Ubuntu 22.04 (`jammy`)            | `u22.x86_64`  | `u22.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D13**  | Debian 13 (`trixie`)              | `d13.x86_64`  | `d13.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D12**  | Debian 12 (`bookworm`)            | `d12.x86_64`  | `d12.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |


----------------

## Pigsty Enterprise Edition

{{% alert title="Enterprise Edition Subscription: Starting Price ¥400,000 / year" color="primary" %}}{{% /alert %}}

Pigsty Enterprise Edition subscription includes all service content provided by the Pigsty Professional Edition subscription, plus the following value-added service items:

Pigsty Enterprise Edition subscription provides the broadest range of database/operating system version support, including extended support for EOL operating systems (EL7, D11), domestic operating systems, cloud vendor operating systems, and legacy PostgreSQL major versions (PG12+ on request), as well as full support for Arm64 architecture chips.

Pigsty Enterprise Edition subscription provides domestic innovation and localization solutions, allowing you to use [PolarDB v2.0](http://www.itsec.gov.cn/aqkkcp/cpgg/202312/t20231226_162074.html) (this kernel license needs to be purchased separately) kernel to replace the native PostgreSQL kernel and meet local compliance requirements.

Pigsty Enterprise Edition subscription provides higher-standard enterprise-level consulting services, committing to 7x24 with (< 1h) response time SLA, and can provide more types of consulting support: version upgrades, performance bottleneck identification, annual architecture review, extension plugin integration, etc.

Pigsty Enterprise Edition subscription includes **2** person-days of support per year, with optional person-day add-on options, for resolving more complex and time-consuming issues.

Pigsty Enterprise Edition allows you to use Pigsty for DBaaS purposes, building cloud database services for external sales.

Pigsty Enterprise Edition starting price is **¥400,000 / year**, equivalent to the annual fee for **24** vCPU AWS high-availability RDS, or an operations expert with a monthly salary of **30,000 yuan**.

|   Code   | OS Distribution Version           |   `x86_64`    |   `aarch64`    |                       PG18                       |                       PG17                       |                       PG16                       |                       PG15                       |                       PG14                       |                       PG13                       |                   PG12                    |
|:--------:|-----------------------------------|:-------------:|:--------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:-----------------------------------------:|
| **EL10** | RHEL 10 / Rocky10 / Alma10        | `el10.x86_64` | `el10.aarch64` | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **EL9**  | RHEL 9 / Rocky9 / Alma9           | `el9.x86_64`  | `el9.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **EL8**  | RHEL 8 / Rocky8 / Alma8 / Anolis8 | `el8.x86_64`  | `el8.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U26**  | Ubuntu 26.04 (`resolute`)         | `u26.x86_64`  | `u26.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |                                                  |                                           |
| **U24**  | Ubuntu 24.04 (`noble`)            | `u24.x86_64`  | `u24.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **U22**  | Ubuntu 22.04 (`jammy`)            | `u22.x86_64`  | `u22.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D13**  | Debian 13 (`trixie`)              | `d13.x86_64`  | `d13.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D12**  | Debian 12 (`bookworm`)            | `d12.x86_64`  | `d12.aarch64`  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-check text-primary"></i> |
| **D11**  | Debian 11 (`bullseye`)            | `d11.x86_64`  | `d11.aarch64`  |                                                  |    <i class="fas fa-check text-primary"></i>     |    <i class="fas fa-check text-primary"></i>     |    <i class="fas fa-check text-primary"></i>     |    <i class="fas fa-check text-primary"></i>     |    <i class="fas fa-check text-primary"></i>     | <i class="fas fa-check text-primary"></i> |
| **EL7**  | RHEL7 / CentOS7 / UOS ...         | `el7.x86_64`  |      `-`       |                                                  |                                                  |                                                  |    <i class="fas fa-check text-primary"></i>     |    <i class="fas fa-check text-primary"></i>     |    <i class="fas fa-check text-primary"></i>     | <i class="fas fa-check text-primary"></i> |




----------------

## Pigsty Subscription Notes

**Feature Differences**

Pigsty Professional/Enterprise Edition includes the following additional features compared to the open source version:

- **Command Line Management Tool**: Unlock the full functionality of the Pigsty command line tool (`pig`)
- **System Customization Capability**: Provide pre-built offline installation packages for exact mainstream Linux operating system distribution major/minor versions
- **Offline Installation Capability**: Complete Pigsty installation in environments without Internet access (air-gapped environments)
- **Multi-version PG Kernel**: Allow users to freely specify and install PostgreSQL major versions within the lifecycle (14 - 18)
- **Kernel Replacement Capability**: Allow users to use other PostgreSQL-compatible kernels to replace the native PG kernel, and the ability to install these kernels offline
    - [**Babelfish**](/docs/pgsql/kernel/babelfish): Provides Microsoft SQL Server wire protocol-level compatibility
    - [**IvorySQL**](/docs/pgsql/kernel/ivorysql): Based on PG, provides Oracle syntax/type/stored procedure compatibility
    - [**PolarDB PG**](/docs/pgsql/kernel/polardb): Provides support for open-source PolarDB for PostgreSQL kernel
    - [**PolarDB O**](/docs/pgsql/kernel/polardb-o): Domestic innovation database with Oracle-compatible kernel for local compliance requirements (**Enterprise Edition subscription only**)
- **Extension Support Capability**: Provides out-of-the-box installation for 531 available PG extensions for PG 14-18 on mainstream operating systems.
- **Complete Functional Modules**: Provides all functional modules:
    - [**Supabase**](/docs/pgsql/kernel/supabase): Reliably self-host production-grade open-source Firebase
    - [**MinIO**](/docs/minio): Enterprise PB-level object storage planning and self-hosting
    - [**DuckDB**](/docs/pilot/duckdb): Provides comprehensive DuckDB support, and PostgreSQL + DuckDB OLAP extension plugin support
    - [**Kafka**](/docs/pilot/kafka): Provides high-availability Kafka cluster deployment and monitoring
    - Kubernetes, VictoriaMetrics & VictoriaLogs
- **Domestic Operating System Support**: Provides domestic innovation OS support options (**Enterprise Edition subscription only**)
- **Domestic ARM Architecture Support**: Provides domestic ARM64 architecture support options (**Enterprise Edition subscription only**)
- **China Mainland Mirror Repository**: Smooth installation without VPN, providing domestic YUM/APT repository mirrors and DockerHub access proxy.
- **Chinese Interface Support**: Monitoring system Chinese interface support (Beta)


**Payment Model**

Pigsty subscription uses an annual payment model. After signing the contract, the one-year validity period is calculated from the contract date. If payment is made before the subscription contract expires, it is considered automatic renewal.
Consecutive subscriptions have discounts. The first renewal (second year) enjoys a 95% discount, the second and subsequent renewals enjoy a 90% discount on subscription fees, and one-time subscriptions for three years or more enjoy an overall 85% discount.

After the annual subscription contract terminates, you can choose not to renew the subscription service. Pigsty will no longer provide software updates, technical support, and consulting services, but you can continue to use the already installed version of Pigsty Professional Edition software.
If you subscribed to Pigsty professional services and choose not to renew, when re-subscribing **you do not need to** make up for the subscription fees during the interruption period, but all discounts and benefits will be reset.

Pigsty's pricing strategy ensures value for money - you can immediately get top DBA's database architecture construction solutions and management best practices, with their consulting support and comprehensive coverage;
while the cost is highly competitive compared to hiring database experts full-time or using cloud databases. Here are market references for [enterprise-level database professional service pricing](https://mp.weixin.qq.com/s/E0MtNxPVMQ4PAkIFmispTw):

- [AWS RDS for PostgreSQL High Availability Edition](https://instances.vantage.sh/rds/): ¥1,160 ~ ¥1,582 / (vCPU·month), equivalent to **14K ~ 19K/year** (**per vCPU**)
- [Alibaba Cloud RDS for PostgreSQL High Availability Edition](/blog/cloud/rds): ¥270 ~ ¥432 / (vCPU·month), equivalent to **3K ~ 5K/year** (**per vCPU**)
- [EDB PostgreSQL Cloud Database Enterprise Edition](https://www.enterprisedb.com/products/plans-comparison#edbbiganimalcommunity360plan): $183.3 / (vCPU·month), equivalent to **16K/year** (**per vCPU**)
- [Fujitsu Enterprise PostgreSQL Kubernetes](https://www.enterprisedb.com/products/plans-comparison#edbbiganimalcommunity360plan): $3200 / (Core·year), equivalent to **12K/year** (**per vCPU**)
- [Oracle Annual Service Fee](https://www.oracle.com/a/ocom/docs/corporate/pricing/technology-price-list-070617.pdf): (Enterprise \$47,500 + Rac \$23,000) * 22% per year, equivalent to **28K/year** (**per vCPU**)

The fair price for decent database professional services is **10,000 ~ 20,000 yuan / year**, with the billing unit being **vCPU**, i.e., one CPU thread (1 Intel core = 2 vCPU threads).
Pigsty provides top-tier PostgreSQL expert services in China and adopts a **per-node billing** model. On commonly seen high-core-count server nodes, it brings users an unparalleled **cost reduction and efficiency improvement** experience.




--------

## Pigsty Expert Services

In addition to Pigsty subscription, Pigsty also provides on-demand Pigsty x PostgreSQL expert services - industry-leading database experts available for consultation.


{{% alert title="Expert Advisor: ¥300,000 / three years" color="primary" %}}

<br>
Within three years, provides 10 complex case handling sessions related to PostgreSQL and Pigsty, and unlimited Q&A.

{{% /alert %}}


{{% alert title="Expert Support: ¥30,000 / person·day" color="secondary" %}}

<br>
Industry-leading expert on-site support, available for architecture consultation, fault analysis, problem troubleshooting, database health checks, monitoring interpretation, migration assessment, teaching and training, cloud migration/de-cloud consultation, and other continuous time-consuming scenarios.

{{% /alert %}}

{{% alert title="Expert Consultation: ¥3,000 / case" color="success" %}}

<br>
Consult on any questions you want to know about Pigsty, PostgreSQL, databases, cloud computing, AI...
Database veterans, cloud computing maverick sharing industry-leading insights, cognition, and judgment.

{{% /alert %}}

{{% alert title="Quick Consultation: ¥300 / question" color="danger" %}}

<br>
Get a quick diagnostic opinion and response to questions related to PostgreSQL / Pigsty / databases, not exceeding 5 minutes.

{{% /alert %}}





--------

## Contact Information

Please send an email to [**rh@vonng.com**](mailto:rh@vonng.com). Users in mainland China are welcome to add WeChat ID `RuohangFeng`.
