# Subscription

> Pigsty Professional/Enterprise subscription service - When you encounter difficulties related to PostgreSQL and Pigsty, our subscription service provides you with comprehensive support.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty combines tools from the PostgreSQL ecosystem with automated database management. It helps users use PostgreSQL, the world's [**most popular**](/blog/pg/pg-is-no1-again/) database.

Pigsty resolves many PostgreSQL operational issues. Enterprise service quality also requires expert support and full coverage from the original provider. Pigsty Enterprise Edition adds these commercial services to the open-source edition. Choose services that meet your needs.

**Consider a Pigsty subscription if you have any of these needs:**

- Run critical databases with strict SLA guarantees and full support coverage.
- Get support for complex Pigsty and PostgreSQL issues.
- Get guidance on PostgreSQL/Pigsty production practices.
- Get expert help to interpret monitoring dashboards, identify performance bottlenecks and fault causes, and recommend actions.
- Plan database architectures for security, disaster recovery, and compliance. Use your existing resources and business requirements.
- Migrate other databases to PostgreSQL, or migrate and transform legacy instances.
- Build observability systems, data dashboards, and visualization applications with Victoria/Grafana.
- Move off the cloud to open-source RDS for PostgreSQL alternatives. Use solutions that are cloud-neutral and avoid vendor lock-in.
- Get professional support for Redis/ETCD/Silo and extensions such as TimescaleDB/Citus.
- Develop customized products and OEM branding with explicit commercial authorization.
- Sell Pigsty as SaaS/PaaS/DBaaS, or provide technical services, consulting, and cloud services based on this distribution.


--------

## Subscription Plans

Pigsty offers the [**Open Source Edition**](#pigsty-open-source-edition-oss) and two subscription tiers. Choose [**Professional Edition**](#pigsty-professional-edition-pro) or [**Enterprise Edition**](#pigsty-enterprise-edition) to meet your needs.

> **Note on `/price`:** The [**`/price`**](/price/) page gives simplified global pricing in USD. It includes the `Standard` tier and preset node limits. This page gives detailed CNY pricing, delivery scope, and the OS/PG compatibility matrix. For technical compatibility, use this page and [**Supported Linux**](/docs/ref/linux/).



- **Pigsty Open Source Edition \(OSS\)** (Free and Open Source) — **No scale limit, no warranty** <p><b>License: <a href="/docs/about/license">Apache-2.0</a></b></p> <p><b>PG Support: 18 (default), 14 - 18 available</b></p> <p><b>Architecture Support: x86_64, Arm64</b></p> <p><b>OS Support: Latest minor versions of three families</b><p> <ul> <li>EL 9.8 / 10.2</li> <li>Debian 12.15 / 13.6</li> <li>Ubuntu 22.04.5 / 24.04.4 / 26.04.0</li> </ul> <p><b>Features: <a href="/docs/ref/module#core-modules">Core Modules</a></b></p> <p><b>SLA: No SLA commitment</b></p> <p><b>Community support Q&A:</b></p> <ul> <li><a href="/docs/about/community">WeChat discussion groups</a></li> <li><a href="https://github.com/pgsty/pigsty/issues/">GitHub Issues</a></li> <li><a href="https://discord.gg/j5pG8qfKxU">Discord Channel</a></li> </ul> <p><b>Support: No person-day support option</b></p> <p><b>Repository: Global Cloudflare hosted repository</b></p> *For experienced users who manage their own systems*


- **Pigsty Professional Edition \(PRO\)** (Starting Price\: ¥150\,000 \/ year) — **Default choice for regular users** <p><b>License: Commercial License</b></p> <p><b>PG Support: 14 - 18</b></p> <p><b>Architecture Support: x86_64, Arm64</b></p> <p><b>OS Support: Mainstream OS major/minor versions</b><p> <ul> <li>EL 8 / 9 / 10 compatible</li> <li>Debian 12 / 13</li> <li>Ubuntu 22 / 24 / 26</li> </ul> <p><b>Features: <a href="/docs/ref/module">All Modules</a></b> (except domestic innovation kernels)</p> <p><b>SLA: Response within business hours</b></p> <p><b>Expert consulting services:</b></p> <ul> <li>Software bug fixes</li> <li>Complex issue analysis</li> <li>Expert ticket support</li> </ul> <p><b>Support: 1 person-day included per year</b></p> <p><b>Delivery: Standard offline software package</b></p> <p><b>Repository: China mainland mirror sites</b></p> *Default choice for regular users*





- **Pigsty Enterprise Edition \(ENTERPRISE\)** (Starting Price\: ¥400\,000 \/ year) — **Critical scenarios with strict SLA** <p><b>License: Commercial License</b></p> <p><b>PG Support: 14 - 18+ (legacy versions on request)</b></p> <p><b>Architecture Support: x86_64, Arm64</b></p> <p><b>OS Support: Customized on demand</b><p> <ul> <li>EL, Debian, Ubuntu</li> <li>Cloud Linux operating systems</li> <li>Domestic OS and ARM</li> </ul> <p><b>Features: <a href="/docs/ref/module">All Modules</a></b></p> <p><b>SLA: 7 x 24 (< 1h)</b></p> <p><b>Enterprise-level expert consulting services:</b></p> <ul> <li>Software bug fixes</li> <li>Complex issue analysis</li> <li>Expert Q&A support</li> <li>Backup compliance advice</li> <li>Upgrade path support</li> <li>Performance bottleneck identification</li> <li>Annual architecture review</li> <li>Extension plugin integration</li> <li>DBaaS & OEM use cases</li> </ul> <p><b>Support: 2 person-days included per year</b></p> <p><b>Repository: China mainland mirror sites</b></p> <p><b>Delivery: Customized offline software package</b></p> <p><b>Domestic Innovation: <a href="/docs/pgsql/kernel/polardb-o">PolarDB-O</a> support</b></p> *Critical scenarios with strict SLA*





----------------

## Pigsty Open Source Edition (OSS)

Pigsty Open Source Edition uses the [**Apache-2.0**](/docs/about/license) license. It includes all core features at no cost and provides no warranty. To report a defect, submit an [Issue](https://github.com/pgsty/pigsty/issues/) on GitHub.

Pigsty Open Source supports seven validated OS baselines on both `x86_64` and `aarch64`. These are EL 9.8 / 10.2, Debian 12.15 / 13.6, and Ubuntu 22.04.5 / 24.04.4 / 26.04.0.
`v4.5.0` provides offline bundles for both architectures on each baseline. All fourteen artifacts are free to download. See the [offline installation guide](/docs/setup/offline/).

The open-source edition gives junior development and operations engineers **70%+** of professional DBA capabilities. They can build highly available, high-performance PostgreSQL clusters without database experts. These clusters are secure, reliable, and easy to maintain.

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

> [!NOTE] Professional Edition Subscription: Starting Price ¥150,000 / year

Pigsty Professional Edition includes all functional modules and a warranty for Pigsty. For PostgreSQL and extension defects, we make our best efforts to report issues and provide fixes through the global PostgreSQL developer community.

Professional Edition builds on the open-source edition and supports all its features. It adds modules and more database and OS options. We provide builds for **all minor versions** of eight Linux releases: EL8/9/10, Debian 12/13, and Ubuntu 22/24/26.

Professional Edition supports PostgreSQL **14 - 18** and continuously follows upstream minor updates. Active major versions typically receive updates on the release day or shortly after. This supports smooth rolling upgrades to newer major and minor versions.

Professional Edition includes China mainland software repository mirrors that work without a VPN or proxy. We also customize offline installation packages for your exact OS major and minor version. These packages support installation and delivery in air-gapped environments under your control.

Professional Edition includes standard expert consulting, such as complex issue analysis, DBA Q&A, and backup compliance advice. We respond during business hours (5x8). The subscription includes **1** person-day of support per year. You can buy additional person-days.

Professional Edition uses a commercial license. It includes additional modules, technical support, and warranty services.

Professional Edition starts at **¥150,000 / year**. This is equivalent to the annual fee for **9** vCPU AWS high-availability RDS PostgreSQL. It is also comparable to a junior operations engineer with a monthly salary of **10,000 yuan**.

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

> [!IMPORTANT] Enterprise Edition Subscription: Starting Price ¥400,000 / year

Enterprise Edition includes all Professional Edition services and the following additional services:

Enterprise Edition provides the widest range of database and OS version support. It extends support to EOL systems (EL7, D11), domestic operating systems, and cloud vendor operating systems. It also supports legacy PostgreSQL major versions (PG12+ on request) and fully supports Arm64 chips.

Enterprise Edition provides domestic innovation and localization solutions. You can replace native PostgreSQL with the [PolarDB v2.0](http://www.itsec.gov.cn/aqkkcp/cpgg/202312/t20231226_162074.html) kernel to meet local compliance requirements. You must purchase this kernel license separately.

Enterprise Edition provides consulting with a 7x24, (< 1h) response SLA. It also supports version upgrades, performance bottleneck analysis, annual architecture reviews, extension integration, and other tasks.

Enterprise Edition includes **2** person-days of support per year for complex tasks that need more time. You can buy additional person-days.

Enterprise Edition permits DBaaS use. You can build cloud database services for external sales.

Enterprise Edition starts at **¥400,000 / year**. This is equivalent to the annual fee for **24** vCPU AWS high-availability RDS. It is also comparable to an operations expert with a monthly salary of **30,000 yuan**.

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

Professional and Enterprise Editions add the following features to the open-source edition:

- **Command Line Management Tool**: Unlock the full functionality of the Pigsty command line tool (`pig`)
- **System Customization Capability**: Use offline installation packages built for exact major and minor versions of mainstream Linux distributions.
- **Offline Installation Capability**: Complete Pigsty installation in environments without Internet access (air-gapped environments)
- **Multi-version PG Kernel**: Choose and install a supported PostgreSQL major version (14 - 18).
- **Kernel Replacement Capability**: Replace native PostgreSQL with a compatible kernel. You can also install these kernels offline.
    - [**Babelfish**](/docs/pgsql/kernel/babelfish): Provides Microsoft SQL Server wire protocol-level compatibility
    - [**IvorySQL**](/docs/pgsql/kernel/ivorysql): Based on PG, provides Oracle syntax/type/stored procedure compatibility
    - [**PolarDB PG**](/docs/pgsql/kernel/polardb): Provides support for open-source PolarDB for PostgreSQL kernel
    - [**PolarDB O**](/docs/pgsql/kernel/polardb-o): Domestic innovation database with Oracle-compatible kernel for local compliance requirements (**Enterprise Edition subscription only**)
- **Extension Support Capability**: Install 600 available PG extensions for PG 14-18 on mainstream operating systems.
- **Complete Functional Modules**: Provides all functional modules:
    - [**Supabase**](/docs/pgsql/kernel/supabase): Reliably self-host production-grade open-source Firebase
    - [**Silo**](/docs/minio): Enterprise PB-level object storage planning and self-hosting
    - [**DuckDB**](/docs/pilot/duckdb): Provides comprehensive DuckDB support, and PostgreSQL + DuckDB OLAP extension plugin support
    - [**Kafka**](/docs/kafka): Provides high-availability Kafka cluster deployment and monitoring
    - Kubernetes, VictoriaMetrics & VictoriaLogs
- **Domestic Operating System Support**: Provides domestic innovation OS support options (**Enterprise Edition subscription only**)
- **Domestic ARM Architecture Support**: Provides domestic ARM64 architecture support options (**Enterprise Edition subscription only**)
- **China Mainland Mirror Repository**: Install without a VPN. Use domestic YUM/APT mirrors and a DockerHub access proxy.
- **Chinese Interface Support**: Monitoring system Chinese interface support (Beta)


**Payment Model**

Pigsty subscriptions use annual payments. The one-year term starts on the contract date. Payment before the contract expires counts as automatic renewal.

Consecutive subscriptions receive discounts. The first renewal (second year) receives a 95% discount. The second and subsequent renewals receive a 90% discount on subscription fees. A single subscription for three years or more receives an overall 85% discount.

You can choose not to renew when the annual contract ends. Software updates, technical support, and consulting services then stop. You can continue to use the installed Professional Edition software.
If you later subscribe again, **you do not need to** pay subscription fees for the interruption period. All discounts and benefits reset.

Pigsty subscriptions include expert database architecture plans, management practices, consulting, and support coverage. The price is competitive with full-time database experts and cloud databases. The following references show [enterprise database professional service pricing](https://mp.weixin.qq.com/s/E0MtNxPVMQ4PAkIFmispTw):

- [AWS RDS for PostgreSQL High Availability Edition](https://instances.vantage.sh/rds/): ¥1,160 ~ ¥1,582 / (vCPU·month), equivalent to **14K ~ 19K/year** (**per vCPU**)
- [Alibaba Cloud RDS for PostgreSQL High Availability Edition](/blog/cloud/rds): ¥270 ~ ¥432 / (vCPU·month), equivalent to **3K ~ 5K/year** (**per vCPU**)
- [EDB PostgreSQL Cloud Database Enterprise Edition](https://www.enterprisedb.com/products/plans-comparison#edbbiganimalcommunity360plan): $183.3 / (vCPU·month), equivalent to **16K/year** (**per vCPU**)
- [Fujitsu Enterprise PostgreSQL Kubernetes](https://www.enterprisedb.com/products/plans-comparison#edbbiganimalcommunity360plan): $3200 / (Core·year), equivalent to **12K/year** (**per vCPU**)
- [Oracle Annual Service Fee](https://www.oracle.com/a/ocom/docs/corporate/pricing/technology-price-list-070617.pdf): (Enterprise \$47,500 + Rac \$23,000) * 22% per year, equivalent to **28K/year** (**per vCPU**)

The reference price for professional database services is **10,000 ~ 20,000 yuan / year** per **vCPU**. A vCPU is one CPU thread (1 Intel core = 2 vCPU threads).
Pigsty provides PostgreSQL expert services in China with **per-node billing**. This model reduces costs and improves efficiency on servers with many cores.




--------

## Pigsty Expert Services

Pigsty also provides on-demand PostgreSQL and Pigsty expert services:


> [!IMPORTANT] Expert Advisor: ¥300,000 / three years
> <br>
> Includes 10 complex PostgreSQL and Pigsty case sessions over three years, plus unlimited Q&A.


> [!NOTE] Expert Support: ¥30,000 / person·day
> <br>
> Get on-site expert support for architecture, fault analysis, troubleshooting, database health checks, and monitoring interpretation. Support also covers migration assessment, training, cloud migration, cloud exit, and other tasks that need continuous expert time.

> [!TIP] Expert Consultation: ¥3,000 / case
> <br>
> Ask experts about Pigsty, PostgreSQL, databases, cloud computing, AI, and related topics. Get their analysis and advice.

> [!CAUTION] Quick Consultation: ¥300 / question
> <br>
> Get a diagnostic opinion or response about PostgreSQL, Pigsty, or databases. Each consultation lasts no more than 5 minutes.





--------

## Contact Information

Send an email to [**rh@vonng.com**](mailto:rh@vonng.com). Users in mainland China can add WeChat ID `RuohangFeng`.
