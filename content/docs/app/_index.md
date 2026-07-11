---
title: Applications
weight: 550
description: >
  Pigsty application templates and data applets: run stateless apps with Docker Compose and host state in external PostgreSQL and MinIO.
icon: fa-solid fa-chart-line
module: [APP]
categories: [Reference]
---

Pigsty "applications" fall into two categories:

- **Software Templates**: Docker Compose templates under `~/pigsty/app/<name>` for stateless business components.
- **Data Applets**: PostgreSQL + Grafana analytics demos, mainly for learning and showcase use.


## Application Model

The recommended application deployment workflow is:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c <template>     # e.g. app/dify, app/immich, app/jumpserver, app/maybe, supabase
vi pigsty.yml                 # edit passwords, domains, IPs, and secrets
./deploy.yml                  # deploy infrastructure and databases
./docker.yml                  # install Docker
./app.yml                     # launch applications
```

`app.yml` copies `app/<name>` templates to `/opt/<name>`, overwrites `.env` with `apps.<name>.conf`, then runs `docker compose up -d`.

## Maintained Config Templates

The following app config templates are actively maintained (`conf/app/*.yml`, `conf/supabase.yml`, and the `conf/app/supa.yml` symlink):

- `app/dify`
- `app/odoo`
- `app/teable`
- `app/mattermost`
- `app/electric`
- `app/maybe`
- `app/immich`
- `app/jumpserver`
- `app/registry`
- `app/insforge`
- `app/hindsight`
- `supabase`

These templates work out of the box and align with the `./configure -c ...` + `./app.yml` workflow.

## Lightweight Compose Apps

For apps like `bytebase`, `gitea`, `jupyter`, `kong`, `metabase`, `minio`, `nocodb`, `pgadmin`, `pgweb`, `postgrest`, `pg_exporter`, and `wiki`, you can also use the per-app Compose templates directly.

The FerretDB Compose template has been removed. Deploy it with the [`FERRET` module](/docs/ferret/) and the [`mongo` configuration template](/docs/conf/mongo/):

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

They are no longer the primary application delivery path. Prefer the software template workflow above.
