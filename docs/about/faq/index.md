# FAQ

> Answers to frequently asked questions about the Pigsty project itself.

---

LLMS index: [llms.txt](/llms.txt)

---

----------------

## What is Pigsty, and what is it not?

Pigsty is a PostgreSQL distribution and a local-first, open-source RDS solution. It provides tools and operational practices for managing a DBMS. It is not itself a Database Management System (DBMS).

For comparison, a database is a car, a DBA is its driver, and RDS is a taxi service. Pigsty provides software to automate driving.

----------------

## What problem does Pigsty solve?

**Database operational expertise** is scarce. Users can hire experts, rent managed RDS, or use Pigsty to automate database management. Pigsty helps users build efficient, high-quality local database services without a DBA, at less than 1/10 the cost of RDS.


----------------

## Who are Pigsty's target users?

Pigsty serves two main groups. Medium and large companies use it to build large production PostgreSQL RDS / DBaaS services. Extensive customization supports demanding management requirements, with enterprise support and service guarantees.

Individual developers, smaller companies without DBAs, and open-source communities can use its ready-to-use PostgreSQL RDS solution.


----------------

## Why can Pigsty help you use databases well?

Pigsty packages expert experience from large, complex PostgreSQL deployments into repeatable software. It handles extension installation, high availability, connection pooling, monitoring, backups, recovery, parameter tuning, IaC management, and automated installation and operations. These established methods help prevent common mistakes.


----------------

## Why is Pigsty better than RDS?

Pigsty provides features and infrastructure beyond RDS, including 600 extensions and 12+ kernels. It includes a professional monitoring system and architecture developed in complex production environments.

Its design incorporates experience from Tantan, Apple, and Alibaba. This supports deeper customization than a uniform RDS offering.

----------------

## Why is Pigsty cheaper than RDS?

Pigsty can run services equivalent to 400¥-1400¥/core·month RDS on hardware costing 10 ¥/core·month, while avoiding a dedicated DBA salary. Large deployments can typically reduce total cost of ownership (TCO) by more than 90% compared with RDS.

Pigsty reduces software licensing, service, and labor costs. Self-hosting does not require additional staff.

----------------

## How does Pigsty help developers?

Pigsty integrates 600 PostgreSQL extensions for an All-in-PG architecture. PostgreSQL can replace separate Redis, Kafka, MySQL, ES, vector database, OLAP, and big data analysis components.

This reduces system complexity and improves development efficiency. Developers can manage databases and perform DevOps tasks themselves without a DBA.

----------------

## How does Pigsty help operations?

Self-healing high availability reduces the need for immediate hardware repair. Monitoring supports diagnosis and performance tuning. IaC automates management of large clusters.

Operations engineers can perform DBA tasks with Pigsty. DBAs can skip infrastructure construction and use that time for higher-value work, learning PostgreSQL, or rest.


----------------

## Who is the author of Pigsty?

Feng Ruohang is Pigsty's primary developer. He is an open-source contributor and database expert with 10 years of PostgreSQL experience, formerly at Alibaba, Tantan, and Apple. He now operates a one-person consulting company.

He writes the WeChat database account "非法加冯" (Illegally Add Feng) and has 60,000+ followers across platforms.

----------------

## What is Pigsty's ecosystem position and influence?

Pigsty is an influential Chinese project in the global PostgreSQL ecosystem, with about 100,000 users, half outside China. It is active in extension distribution and monitoring.

[**PGEXT.Cloud**](/ext/) is Pigsty's PostgreSQL extension repository. It distributes the largest collection of PostgreSQL extensions and supplies packages to several international PostgreSQL vendors.

Pigsty is a major PostgreSQL distribution and competes with cloud vendor RDS. It is widely used in defense, government, healthcare, internet, finance, manufacturing, and other industries.


----------------

## What scale of customers is Pigsty suitable for?

Pigsty began with automated management of large PostgreSQL deployments. It also provides a simplified workflow for individual developers and smaller companies without professional DBAs.

The largest deployment has 25K vCPU and 4.5 million QPS, with 6+ years of operation. Demo or Devbox deployments can run on a 1c1g VM.

----------------

## What capabilities does Pigsty provide?

Pigsty focuses on integrating the PostgreSQL ecosystem and providing PostgreSQL best practices, but also supports a series of open-source software that works well with PostgreSQL. For example:

- Etcd, Redis, Silo, DuckDB, Prometheus
- FerretDB, Babelfish, IvorySQL, PolarDB, OrioleDB
- OpenHalo, Supabase, Greenplum, Dify, Odoo, ...

----------------

## What scenarios is Pigsty suitable for?

- Running large-scale PostgreSQL clusters for business
- Self-building RDS, object storage, cache, data warehouse, Supabase, ...
- Self-building enterprise applications like Odoo, Dify, Wiki, GitLab
- Running monitoring infrastructure, monitoring existing databases and hosts
- Using multiple PG extensions in combination
- Dashboard development and interactive data application demos, data visualization, web building

----------------

## Is Pigsty open source and free?

Pigsty is 100% open-source and free software. You can use it, including for commercial purposes, under its license terms.

We value software freedom. Pigsty uses the Apache-2.0 license. Please see the [license](/docs/about/license) for details.

----------------

## Does Pigsty provide commercial support?

Pigsty is free and open-source. Commercial subscriptions provide quality assurance for Pigsty and PostgreSQL at different budgets. They extend OS, PostgreSQL, and chip architecture support and provide expert consulting. This support transfers management experience, saves time, and helps manage difficult incidents and risks.

----------------

## Does Pigsty support domestic innovation (信创)?

Pigsty is not itself a database and is not subject to domestic innovation catalog restrictions. It has several military use cases. The open-source edition provides no domestic innovation support. Commercial subscriptions provide solutions with Alibaba Cloud, using qualified PolarDB-O as the RDS kernel. PolarDB-O requires a separate purchase and can run on domestic innovation operating systems and chips.

----------------

## Can Pigsty run as a multi-tenant DBaaS?

Pigsty uses the Apache-2.0 license. You may use it for DBaaS purposes under the license terms.
For explicit commercial authorization, consider the Pigsty Enterprise subscription.



----------------

## Can Pigsty's Logo be rebranded as your own product?

When redistributing Pigsty, retain the original copyright, patent, trademark, and attribution notices. Preserve LICENSE content and add prominent change notices to modified files. Under these conditions, you can replace the PIGSTY logo and trademark, but cannot claim the original work as your own. The enterprise edition provides commercial licensing support for OEM and rebranding.


----------------

## Pigsty's Business Entity

Pigsty is a project invested by Miracle Plus S22. The original entity **Panji Cloud Data (Beijing) Technology Co., Ltd.** has been liquidated and divested of the Pigsty business.

Pigsty is currently independently operated and maintained by author Feng Ruohang. The business entities are:

- Hainan Zhuxia Cloud Data Co., Ltd. / 91460000MAE6L87B94
- Haikou Longhua Piji Data Center / 92460000MAG0XJ569B
- Haikou Longhua Yuehang Technology Center / 92460000MACCYGBQ1N

PIGSTY® and PGSTY® are registered trademarks of Haikou Longhua Yuehang Technology Center.
