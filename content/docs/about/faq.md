---
title: FAQ
weight: 155
description: Answers to frequently asked questions about the Pigsty project itself.
icon: fa-solid fa-circle-question
module: [PIGSTY]
categories: [Reference]
tags: [FAQ, Introduction, Positioning, Business]
---


----------------

### What is Pigsty, and what is it not?

Pigsty is a PostgreSQL database distribution, a local-first open-source RDS cloud database solution.
Pigsty is not a Database Management System (DBMS), but rather a tool, distribution, solution, and best practice for managing DBMS.

Analogy: The database is the car, then the DBA is the driver, RDS is the taxi service, and Pigsty is the autonomous driving software.

----------------

### What problem does Pigsty solve?

**The ability to use databases well** is extremely scarce: either hire database experts at high cost to self-build (hire drivers), or rent RDS from cloud vendors at sky-high prices (hail a taxi), but now you have a new option: Pigsty (autonomous driving).
Pigsty helps users use databases well: allowing users to self-build higher-quality and more efficient local cloud database services at less than 1/10 the cost of RDS, without a DBA!


----------------

### Who are Pigsty's target users?

Pigsty has two typical target user groups. The foundation is **medium to large companies** building ultra-large-scale enterprise/production-grade PostgreSQL RDS / DBaaS services.
Through extreme customizability, Pigsty can meet the most demanding database management needs and provide enterprise-level support and service guarantees.

At the same time, Pigsty also provides "out-of-the-box" PG RDS self-building solutions for individual developers, small and medium enterprises lacking DBA capabilities, and the open-source community.


----------------

### Why can Pigsty help you use databases well?

Pigsty embodies the experience and best practices of top experts refined in the most complex and largest-scale client PostgreSQL scenarios, productized into replicable software:
Solving extension installation, high availability, connection pooling, monitoring, backup and recovery, parameter optimization, IaC batch management, one-click installation, automated operations, and many other issues at once. Avoiding many pitfalls in advance and preventing repeated mistakes.


----------------

### Why is Pigsty better than RDS?

Pigsty provides a feature set and infrastructure support far beyond RDS, including 440 extension plugins and 8+ kernel support.
Pigsty provides a unique professional-grade monitoring system in the PG ecosystem, along with architectural best practices battle-tested in complex scenarios, simple and easy to use.

Moreover, forged in top-tier client scenarios like Tantan, Apple, and Alibaba, continuously nurtured with passion and love, its depth and maturity are incomparable to RDS's one-size-fits-all approach.

----------------

### Why is Pigsty cheaper than RDS?

Pigsty allows you to use 10 ¥/core·month pure hardware resources to run 400¥-1400¥/core·month RDS cloud databases, and save the DBA's salary. Typically, the total cost of ownership (TCO) of a large-scale Pigsty deployment can be over 90% lower than RDS.

Pigsty can simultaneously reduce software licensing/services/labor costs. Self-building requires no additional staff, allowing you to spend costs where it matters most.

----------------

### How does Pigsty help developers?

Pigsty integrates the most comprehensive extensions in the PG ecosystem (440), providing an All-in-PG solution: a single component replacing specialized components like Redis, Kafka, MySQL, ES, vector databases, OLAP / big data analytics.

Greatly improving R&D efficiency and agility while reducing complexity costs, and developers can achieve self-service management and autonomous DevOps with Pigsty's support, without needing a DBA.

----------------

### How does Pigsty help operations?

Pigsty's self-healing high-availability architecture ensures hardware failures don't need immediate handling, letting ops and DBAs sleep well; monitoring aids problem analysis and performance optimization; IaC enables automated management of ultra-large-scale clusters.

Operations can moonlight as DBAs with Pigsty's support, while DBAs can skip the system building phase, saving significant work hours and focusing on high-value work, or relaxing, learning PG.


----------------

### Who is the author of Pigsty?

Pigsty is primarily developed by Feng Ruohang alone, an open-source contributor, database expert, and evangelist who has focused on PostgreSQL for 10 years,
formerly at Alibaba, Tantan, and Apple, a full-stack expert. Now the founder of a one-person company, providing professional consulting services.

He is also a tech KOL, the founder of the top WeChat database personal account "非法加冯" (Illegally Add Feng), with 60,000+ followers across all platforms.

----------------

### What is Pigsty's ecosystem position and influence?

Pigsty is the most influential Chinese open-source project in the global PostgreSQL ecosystem, with about 100,000 users, half from overseas.
Pigsty is also one of the most active open-source projects in the PostgreSQL ecosystem, currently dominating in extension distribution and monitoring systems.

[**PGEXT.Cloud**](https://pgext.cloud) is a PostgreSQL extension repository maintained by Pigsty, with the world's largest PostgreSQL extension distribution volume.
It has become an upstream software supply chain for multiple international PostgreSQL vendors.

Pigsty is currently one of the major distributions in the PostgreSQL ecosystem and a challenger to cloud vendor RDS, now widely used in defense, government, healthcare, internet, finance, manufacturing, and other industries.


----------------

### What scale of customers is Pigsty suitable for?

Pigsty originated from the need for ultra-large-scale PostgreSQL automated management but has been deeply optimized for ease of use. Individual developers and small-medium enterprises lacking professional DBA capabilities can also easily get started.

The largest deployment is 25K vCPU, 4.5 million QPS, 6+ years; the smallest deployment can run completely on a 1c1g VM for Demo / Devbox use.

----------------

### What capabilities does Pigsty provide?

Pigsty focuses on integrating the PostgreSQL ecosystem and providing PostgreSQL best practices, but also supports a series of open-source software that works well with PostgreSQL. For example:

- Etcd, Redis, MinIO, DuckDB, Prometheus
- FerretDB, Babelfish, IvorySQL, PolarDB, OrioleDB
- OpenHalo, Supabase, Greenplum, Dify, Odoo, ...

----------------

### What scenarios is Pigsty suitable for?

- Running large-scale PostgreSQL clusters for business
- Self-building RDS, object storage, cache, data warehouse, Supabase, ...
- Self-building enterprise applications like Odoo, Dify, Wiki, GitLab
- Running monitoring infrastructure, monitoring existing databases and hosts
- Using multiple PG extensions in combination
- Dashboard development and interactive data application demos, data visualization, web building

----------------

### Is Pigsty open source and free?

Pigsty is 100% open-source software + free software. Under the premise of complying with the open-source license, you can use it freely and for various commercial purposes.

We value software freedom. For non-DBaaS / OEM use cases, we enforce a more relaxed equivalent Apache 2.0 license. Please see the license for more details.

----------------

### Does Pigsty provide commercial support?

Pigsty software itself is open-source and free, and provides commercial subscriptions for all budgets, providing quality assurance for Pigsty & PostgreSQL.
Subscriptions provide broader OS/PG/chip architecture support ranges, as well as expert consulting and support.
Pigsty commercial subscriptions deliver industry-leading management/technical experience/solutions,
helping you save valuable time, shouldering risks for you, and providing a safety net for difficult problems.

----------------

### Does Pigsty support domestic innovation (信创)?

Pigsty software itself is not a database and is not subject to domestic innovation catalog restrictions, and already has multiple military use cases. However, the Pigsty open-source edition does not provide any form of domestic innovation support.
Commercial subscription provides domestic innovation solutions in cooperation with Alibaba Cloud, supporting the use of PolarDB-O with domestic innovation qualifications (requires separate purchase) as the RDS kernel, capable of running on domestic innovation OS/chip environments.

----------------

### Can Pigsty run as a multi-tenant DBaaS?

If you use the Pigsty Infra module and distribute or operate it as part of a public cloud database service (DBaaS),
you may use it for this purpose under the premise of complying with the AGPLv3 license — open-sourcing derivative works under the same license.

We reserve the right to hold **public cloud/database vendors** accountable for violating the AGPLv3 license.
If you do not wish to open-source derivative works, we recommend purchasing the Pigsty Enterprise Edition subscription plan, which provides clear authorization for this use case and exemption from Pigsty's AGPLv3 open-source obligations.



----------------

### Can Pigsty's Logo be rebranded as your own product?

When redistributing Pigsty, you must retain copyright notices, patent notices, trademark notices, and attribution notices from the original work,
and attach prominent change descriptions in modified files while preserving the content of the LICENSE file.
Under these premises, you can replace PIGSTY's Logo and trademark, but you must not promote it as "your own original work."
We provide commercial licensing support for OEM and rebranding in the enterprise edition.


----------------

### Pigsty's Business Entity

Pigsty is a project invested by Miracle Plus S22. The original entity **Panji Cloud Data (Beijing) Technology Co., Ltd.** has been liquidated and divested of the Pigsty business.

Pigsty is currently independently operated and maintained by author Feng Ruohang. The business entities are:

- Hainan Zhuxia Cloud Data Co., Ltd. / 91460000MAE6L87B94
- Haikou Longhua Piji Data Center / 92460000MAG0XJ569B
- Haikou Longhua Yuehang Technology Center / 92460000MACCYGBQ1N

PIGSTY® and PGSTY® are registered trademarks of Haikou Longhua Yuehang Technology Center.
