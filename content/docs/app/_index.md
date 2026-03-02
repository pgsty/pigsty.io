---
title: Applications
weight: 550
description: >
  Application templates and data applets: run stateless apps with Docker Compose and host state in external PostgreSQL and MinIO.
icon: fa-solid fa-chart-line
module: [APP]
categories: [Reference]
---

In Pigsty , "applications" fall into two categories:

- **Software Templates**: Docker Compose templates under `~/pigsty/app/<name>` for stateless business components.
- **Data Applets**: PostgreSQL + Grafana analytics demos, mainly for learning and showcase use.


## Model

The recommended app install workflow is:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./configure -c <template>     # e.g. app/dify, app/odoo, app/registry, supabase
vi pigsty.yml                 # edit passwords, domains, IPs, and secrets
./deploy.yml                  # deploy infrastructure and databases
./docker.yml                  # install Docker
./app.yml                     # launch applications
```

`app.yml` copies `app/<name>` templates to `/opt/<name>`, overwrites `.env` with `apps.<name>.conf`, then runs `docker compose up -d`.

## Maintained Configuration Templates

The following app templates are actively provided in v4.2 (`conf/app/*.yml` and `conf/supabase.yml`):

- `app/dify`
- `app/odoo`
- `app/teable`
- `app/mattermost`
- `app/electric`
- `app/maybe`
- `app/registry`
- `supabase`

These templates work out of the box and align with the `./configure -c ...` + `./app.yml` workflow.

## Lightweight Compose Apps

For apps like `gitea`, `postgrest`, `pgweb`, `wiki`, `kong`, and `bytebase`, you can also use the per-app Compose templates directly:

```bash
cd ~/pigsty/app/<name>
make up
```

If you want to manage them uniformly via Pigsty IaC:

```bash
./app.yml -e app=<name>
```

## Legacy Applets

Data applets like `pglog`, `covid`, `db-engine`, `sf-survey`, `cloud`, and `isd` are kept as reference examples for data modeling and visualization ideas.

They are no longer the primary application delivery path in v4.2. Prefer the software template workflow above.
