# History

> The origin and motivation of the Pigsty project, its development history, and future goals and vision.

---

LLMS index: [llms.txt](/llms.txt)

---

-------------------

## Historical Origins

Pigsty began in 2018-2019 at [**Tantan**](https://tantanapp.com/en). Tantan is a dating app similar to Tinder in China, later acquired by Momo. Its founding engineering team was Swedish, and its startup culture followed a Nordic model.

Tantan used PostgreSQL and Go as its core stack. Its architecture followed Instagram and centered on PostgreSQL. It served several million daily active users, millions of TPS, and hundreds of TB of data. The data layer [**used only PostgreSQL**](/blog/pg/just-use-pg). PG stored procedures implemented almost all business logic, including 100ms recommendation algorithms. This was arguably one of China's most complex large-scale PostgreSQL deployments at the time.

This extensive use of PostgreSQL features required strong engineering and DBA skills. Pigsty grew from operating these large database clusters with demanding requirements. It incorporates the team's PostgreSQL experience and operational practices.



-------------------

## Development Process

Pigsty started as an internal PostgreSQL monitoring system, with a smaller scope than today. We evaluated open-source, commercial, and cloud tools, including datadog and pgwatch. None met our observability requirements. I built a Grafana and Prometheus solution that became the Pigsty prototype. This monitoring system helped resolve many management problems.

Developers then requested the same monitoring on local machines. We wrote Ansible provisioning playbooks to make deployment repeatable. Later versions used Vagrant and Terraform for Infrastructure as Code. Users could create local DevBox machines or production servers with PostgreSQL and monitoring deployed automatically.
The new release lets users use Vagrant and OpenTofu (with Terraform compatibility) to provision local development VMs or production servers as infrastructure as code, automatically deploying PostgreSQL and monitoring.

We then redesigned production PostgreSQL architecture around Patroni and pgBackRest. They provided [**high availability**](/docs/concept/ha) and [**point-in-time recovery**](/docs/concept/pitr). We developed a zero-downtime [**migration**](/docs/pgsql/migration) method with logical replication and blue-green deployment. We used it to upgrade two hundred production database clusters to the latest major version. These capabilities became part of Pigsty.

We built Pigsty for our own use. As both developers and users, we understood the requirements and avoided shortcuts. We used automation without concern that it would replace our jobs.

We added each operational solution to Pigsty. It grew from a monitoring system into a ready-to-use PostgreSQL distribution. We released it as open source and shared technical material. Users from other industries adopted it and provided feedback.




-------------------

## Full-Time Entrepreneurship

In 2022, the Pigsty project received seed funding from Miracle Plus, initiated by Dr. Qi Lu, allowing me to work on this full-time.

Pigsty has grown steadily as an open-source project. During the years of full-time work, its GitHub star count grew from a few hundred to 5,925 as of 2026-11-10; reaching the Hacker News front page helped accelerate that growth.
In November 2025, Pigsty received the **Magneto Award** at the PostgreSQL Ecosystem Conference. In 2026, its PGEXT.CLOUD subproject was selected for a talk at PGCon.Dev 2026.
Pigsty became the first Chinese open-source project to present at this core PostgreSQL ecosystem conference.

Pigsty initially supported only CentOS 7. It now supports EL, Debian, and Ubuntu across 16 operating system platforms, with PostgreSQL major versions 14-18. We integrate 625 PostgreSQL extensions. I personally maintain more than half (360+), with ready-to-use RPM/DEB packages. These packages and Pigsty itself are our contributions back to the open-source PostgreSQL ecosystem.

Pigsty has evolved from a PostgreSQL distribution into an **open-source cloud database**. It aims to match the full database service offerings of cloud vendors.



-------------------

## Rebel Against Public Clouds

AWS, Azure, GCP, and Aliyun make infrastructure convenient for startups. However, their services are closed-source and require ongoing rental fees that we consider excessive.

We believe high-quality database services should be as accessible as database kernels. Users should not have to rent them at high prices.

Cloud computing provides agility and elasticity. We believe these benefits should also be free, open-source, inclusive, and local-first. An open-source alternative should return infrastructure control to users while retaining cloud benefits.

We support a [**movement to leave public clouds**](/blog/cloud/exit) and change how the industry values infrastructure ownership.




---------------

## Our Vision

I want everyone to have practical freedom to use high-quality services. Access should not depend on renting from a few large public cloud vendors.

Pigsty aims to provide **a better, free and open-source RDS alternative**. Its goal is one-click database deployment anywhere, including cloud servers, with capabilities beyond cloud RDS.

Pigsty complements PostgreSQL and challenges cloud database services. Its name means "pigsty" and abbreviates Postgres In Great STYle: "**PostgreSQL in its full glory**."

Pigsty is free and open-source software. Its aim is to provide a strong PostgreSQL service without requiring database experts. [**Premium consulting services**](/price) fund development and provide further improvements, warranty, answers, and expert support.

A well-built system can run for years without expert intervention. However, database failures can have serious consequences. Expert help can resolve difficult incidents. We believe paid consulting supports a fair and sustainable open-source model.



---------------

## About the Team

I am Feng Ruohang, the author of Pigsty. Almost all of Pigsty's code is [developed by me alone](https://github.com/pgsty/pigsty/pulse).

Individual developers can create distinctive software. I hope Pigsty becomes such a project.

If you're interested in me, here's my personal homepage: [https://vonng.com/](https://vonng.com/)

"[Modb Interview with Feng Ruohang](https://vonng.com/cn/blog/life/modb-interview-vonng/)" (Chinese)

"[Post-90s, Quit to Start Business, Says Will Crush Cloud Databases](https://vonng.com/cn/blog/life/entrepreneur-vs-rds/)" (Chinese)


<br>

--------

<br>
