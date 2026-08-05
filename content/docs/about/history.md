---
title: History
weight: 20
description: The origin and motivation of the Pigsty project, its development history,
  and future goals and vision.
icon: fa-solid fa-clock-rotate-left
module: [PIGSTY]
categories: [Reference]
---


-------------------

## Historical Origins

The Pigsty project began in 2018-2019, originating from [**Tantan**](https://tantanapp.com/en).
Tantan is an internet dating app — China's Tinder, now acquired by Momo.
Tantan was a Nordic-style startup with a Swedish engineering founding team.

Tantan had excellent technical taste, using PostgreSQL and Go as its core technology stack.
The entire Tantan system architecture was modeled after Instagram, designed entirely around the PostgreSQL database.
Up to several million daily active users, millions of TPS, and hundreds of TB of data, the data component [**used only PostgreSQL**](/blog/pg/just-use-pg).
Almost all business logic was implemented using PG stored procedures — even including 100ms recommendation algorithms!
It was arguably the most complex PostgreSQL-at-scale use case in China at the time.

This atypical development model of deeply using PostgreSQL features placed extremely high demands on the capabilities of engineers and DBAs.
And Pigsty is the open-source project we forged in this real-world large-scale, high-standard database cluster scenario —
embodying our experience and best practices as top PostgreSQL experts.



-------------------

## Development Process

In the beginning, Pigsty did not have the vision, goals, and scope it has today. It started as a PostgreSQL monitoring system for our own use.
We surveyed all available solutions — open-source, commercial, cloud-based, datadog, pgwatch, etc. — and none could meet our observability needs.
So I decided to build one myself based on Grafana and Prometheus. This became Pigsty's predecessor and prototype.
Pigsty as a monitoring system was quite impressive, helping us solve countless management problems.

Subsequently, developers wanted such a monitoring system on their local development machines, so we used Ansible to write provisioning playbooks, transforming this system from a one-time construction task into reusable, replicable software.
New versions allowed users to use Vagrant and Terraform, using Infrastructure as Code to quickly spin up local DevBox development machines or production environment servers, automatically completing PostgreSQL and monitoring system deployment.

Next, we redesigned the production environment PostgreSQL architecture, introducing Patroni and pgBackRest to solve database [**high availability**](/docs/concept/ha) and [**point-in-time recovery**](/docs/concept/pitr) issues.
We developed a zero-downtime [**migration**](/docs/pgsql/migration) solution based on logical replication, rolling upgrading two hundred production database clusters to the latest major version through blue-green deployment. And we incorporated these capabilities into Pigsty.

Pigsty is software we built for ourselves.
The biggest benefit of "eating our own dog food" is that we are both developers and users —
as client users, we know exactly what we need, do not cut corners, and never worry about automating ourselves out of jobs.

We solved problem after problem, depositing the solutions into Pigsty. Pigsty's positioning also gradually evolved from a monitoring system into an out-of-the-box PostgreSQL database distribution.
We then decided to open-source Pigsty and began a series of technical sharing and publicity, and external users from various industries began using Pigsty and providing feedback.




-------------------

## Full-Time Entrepreneurship

In 2022, the Pigsty project received seed funding from Miracle Plus, initiated by Dr. Qi Lu, allowing me to work on this full-time.

As an open-source project, Pigsty has developed quite well. In these years of full-time work, Pigsty's GitHub stars grew from a few hundred to 5,213 as of 2026-07-11; it made the HN front page, and growth began snowballing.
In November 2025, Pigsty won the **Magneto Award** at the PostgreSQL Ecosystem Conference. In 2026, Pigsty's subproject PGEXT.CLOUD was selected for a PGCon.Dev 2026 talk.
Pigsty became the first Chinese open-source project to appear on the stage of this core PostgreSQL ecosystem conference.

Previously, Pigsty could only run on CentOS 7, but now it covers all mainstream Linux distributions (EL, Debian, Ubuntu) across 16 operating system platforms. Supported PG major versions cover 14-18, and we maintain and integrate {{< param pgext_count >}} extension plugins in the PG ecosystem.
Among these, I personally maintain over half (360+) of the extension plugins, providing out-of-the-box RPM/DEB packages. Including Pigsty itself, "based on open source, giving back to open source," this is our way of contributing to the PG ecosystem.

Pigsty's positioning has also continuously evolved from a PostgreSQL database distribution to an **open-source cloud database**. It truly benchmarks against cloud vendors' entire cloud database brands.



-------------------

## Rebel Against Public Clouds

Public cloud vendors like AWS, Azure, GCP, and Aliyun have provided many conveniences for startups, but they are closed-source and force users to rent infrastructure at exorbitant fees.

We believe that excellent database services, like excellent database kernels, should be accessible to every user, rather than requiring expensive rental from cyber lords.

Cloud computing's agility and elasticity value proposition is strong, but it should be free, open-source, inclusive, and local-first —
We believe the cloud computing universe needs a solution representing open-source values that returns infrastructure control to users without sacrificing the benefits of the cloud.

Therefore, we are also leading a [**movement and battle to exit the cloud**](/blog/cloud/exit), as rebels against public clouds, to reshape the industry's values.




---------------

## Our Vision

I hope that in the future world, everyone will have the de facto right to freely use excellent services, rather than being confined to a few cyber lord public cloud giants' territories as cyber tenants or even cyber serfs.

This is exactly what Pigsty aims to do — **a better, free and open-source RDS alternative**. Allowing users to spin up database services better than cloud RDS anywhere (including cloud servers) with one click.

Pigsty is a complete complement to PostgreSQL, **and a spicy mockery of cloud databases**.
It literally means "pigsty," but it's also an acronym for Postgres In Great STYle, meaning "**PostgreSQL in its full glory**."

Pigsty itself is completely open-source and free software, so you can build a PostgreSQL service that scores 90 without database experts.
We sustain operations by providing [**premium consulting services**](/price) to take you from 90 to 100, with warranty, Q&A, and a safety net.

A well-built system may run for years without needing a "safety net," but database problems, once they occur, are never small.
Often, expert experience can turn decay into magic, and we provide such premium consulting —
we believe this is a more just, reasonable, and sustainable model.



---------------

## About the Team

I am Feng Ruohang, the author of Pigsty. Almost all of Pigsty's code is [developed by me alone](https://github.com/pgsty/pigsty/pulse).

Individual heroism still exists in the software field. Only unique individuals can create unique works — I hope Pigsty becomes such a work.

If you're interested in me, here's my personal homepage: [https://vonng.com/](https://vonng.com/)

"[Modb Interview with Feng Ruohang](https://vonng.com/cn/blog/life/modb-interview-vonng/)" (Chinese)

"[Post-90s, Quit to Start Business, Says Will Crush Cloud Databases](https://vonng.com/cn/blog/life/entrepreneur-vs-rds/)" (Chinese)


<br>

--------

<br>
