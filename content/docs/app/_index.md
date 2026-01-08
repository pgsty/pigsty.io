---
title: Applications
weight: 550
description: Software and tools that use PostgreSQL can be managed by the docker daemon
icon: fa-brands fa-app-store-ios
module: [APP]
categories: [Reference]
---

PostgreSQL is the most popular database in the world, and countless software is built on PostgreSQL, around PostgreSQL, or serves PostgreSQL itself, such as

- "**Application software**" that uses PostgreSQL as the preferred database
- "**Tooling software**" that serves PostgreSQL software development and management
- "**Database software**" that derives, wraps, forks, modifies, or extends PostgreSQL

And Pigsty just have a series of Docker Compose templates for these software, application and databases:

|                    Name                     |                            Website                            | Type | State  | Port  | Domain      | Description                                          |
|:-------------------------------------------:|:-------------------------------------------------------------:|:----:|:------:|:-----:|-------------|:-----------------------------------------------------|
| [**Supabase**](/docs/pgsql/kernel/supabase) |               [Supabase](https://supabase.com/)               |  DB  | **GA** | 8000  | supa.pigsty | OSS Firebase Alternative, Backend as Platform        |
|                   PolarDB                   | [PolarDB](https://github.com/ApsaraDB/PolarDB-for-PostgreSQL) |  DB  | **GA** | 5532  |             | OSS RAC for PostgreSQL                               |
|                  FerretDB                   |             [FerretDB](https://www.ferretdb.com/)             |  DB  | **GA** | 27017 |             | OSS Mongo Alternative base on PostgreSQL             |
|             [**MinIO**](minio)              |                   [MinIO](https://min.io/)                    |  DB  | **GA** | 9000  | sss.pigsty  | OSS AWS S3 Alternative, Simple Storage Service       |
|                   EdgeDB                    |               [EdgeDB](https://www.edgedb.com/)               |  DB  | *TBD*  |       |             | OSS Graph Database base on PostgreSQL                |
|                   NocoDB                    |                 [NocoDB](https://nocodb.com/)                 | APP  | **GA** | 8080  | noco.pigsty | OSS Airtable Alternative over PostgreSQL             |
|              [**Odoo**](odoo)               |                 [Odoo](https://www.odoo.com/)                 | APP  | **GA** | 8069  | odoo.pigsty | OSS ERP Software base on PostgreSQL                  |
|              [**Dify**](dify)               |                  [Dify](https://dify.ai/zh)                   | APP  | **GA** | 8001  | dify.pigsty | OSS AI Workflow Orachestration & LLMOps Platform     |
|           [**Jupyter**](jupyter)            |                [Jupyter](https://jupyter.org/)                | APP  | **GA** |       | lab.pigsty  | OSS AI Python Notebook & Data Analysis IDE           |
|             [**Gitea**](gitea)              |                  [Gitea](https://gitea.com/)                  | APP  | **GA** | 8889  | git.pigsty  | OSS DevOps Git Service                               |
|              [**Wiki**](wiki)               |                  [Wiki.js](https://js.wiki/)                  | APP  | **GA** | 9002  | wiki.pigsty | OSS Wiki Software                                    |
|                   GitLab                    |                 [GitLab](https://gitlab.com/)                 | APP  | *TBD*  |       |             | OSS GitHub Alternative, Code Management Platform     |
|                  Mastodon                   |             [Mastodon](https://joinmastodon.org/)             | APP  | *TBD*  |       |             | OSS Decentralized Social Network                     |
|                  Keycloak                   |             [Keycloak](https://www.keycloak.org/)             | APP  | *TBD*  |       |             | OSS Identity & Access Management Component           |
|                   Harbour                   |                [Harbour](https://goharbor.io/)                | APP  | *TBD*  |       |             | OSS Docker/K8S Image Repository                      |
|                 Confluence                  |  [Confluence](https://www.atlassian.com/software/confluence)  | APP  | *TBD*  |       |             | Enterprise Knowledge Management System               |
|                    Jira                     |        [Jira](https://www.atlassian.com/software/jira)        | APP  | *TBD*  |       |             | Enterprise Project Management Tools                  |
|                   Zabbix                    |              [Zabbix 7](https://www.zabbix.com/)              | APP  | *TBD*  |       |             | OSS Monitoring Platform for Enterprise               |
|                   Grafana                   |                [Grafana](https://grafana.com/)                | APP  | *TBD*  |       |             | Dashboard, Data Visualization & Monitoring Platform  |
|                  Metabase                   |             [Metabase](https://www.metabase.com/)             | APP  | **GA** | 9004  | mtbs.pigsty | Fast analysis of data from multiple data sources     |
|                  ByteBase                   |             [ByteBase](https://www.bytebase.com/)             | APP  | **GA** | 8887  | ddl.pigsty  | Database Migration Tool for PostgreSQL               |
|              [**Kong**](kong)               |                  [Kong](https://konghq.com/)                  | TOOL | **GA** | 8000  | api.pigsty  | OSS API Gateway based on Nginx/OpenResty             |
|         [**PostgREST**](postgrest)          |              [PostgREST](https://postgrest.org/)              | TOOL | **GA** | 8884  | api.pigsty  | Generate RESTAPI from PostgreSQL Schemas             |
|           [**pgAdmin4**](pgadmin)           |             [pgAdmin4](https://www.pgadmin.org/)              | TOOL | **GA** | 8885  | adm.pigsty  | PostgreSQL GUI Admin Tools                           |
|             [**pgWeb**](pgweb)              | [pgWeb](https://github.com/sosedoff/pgweb?tab=readme-ov-file) | TOOL | **GA** | 8886  | cli.pigsty  | PostgreSQL Web GUI Client                            |
|                  SchemaSpy                  |              [SchemaSpy](https://schemaspy.org/)              | TOOL | *TBD*  |       |             | Dump & Visualize PostgreSQL Schema                   |
|                  pgBadger                   |        [pgBadger](https://github.com/darold/pgbadger)         | TOOL | *TBD*  |       |             | PostgreSQL Log Analysis                              |
|                 pg_exporter                 |      [pg_exporter](https://github.com/Vonng/pg_exporter)      | TOOL | **GA** | 9630  |             | Expose PostgreSQL & Pgbouncer Metrics for Prometheus |


{{% alert title="How to prepare Docker?" color="success" %}}

To run docker compose templates, you need to install the [**`DOCKER`**](/docs/docker) module on the [**node**](/docs/node#common-node),
If you don't have the Internet access or having firewall issues, you may need to configure a DockerHub proxy, check the [**tutorial**](/docs/docker/).

{{% /alert %}}
