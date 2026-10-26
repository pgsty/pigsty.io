---
title: Applications
weight: 550
description: >
  Pigsty application templates and data applets: run stateless apps with Docker Compose and host state in external PostgreSQL and S3-compatible storage.
icon: fa-solid fa-chart-line
module: [APP]
categories: [Reference]
---

Pigsty applications have two categories:

- **Software Templates**: Deployment resources under `~/pigsty/app/<name>`, mainly using Docker Compose. [Hermes](/docs/app/hermes/) provides a separate source installation guide.
- **Data Applets**: PostgreSQL + Grafana analytics demos, mainly for learning and showcase use.


Use matching versions of `app.yml`, `app/<name>/`, and `conf/`. Replacing only a configuration file does not enable development features; unreleased behavior is noted on each application page.

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

`app.yml` copies `app/<name>` templates to `/opt/<name>`, prepares directories from `apps.<name>.file`, writes `.env` from `apps.<name>.conf`, and runs the application's default Make target. Use `apps.<name>.args` to select other Make targets. Each application's Makefile and Compose definition control initialization.

`apps.<name>.conf` writes `.env` with mode `0600` and lowercase `true` / `false` for booleans. Values still pass through Compose dotenv parsing: inspect the resulting configuration when values contain `$`, quotes, or spaces. `${OTHER_VARIABLE}` is not a literal string immune to expansion. Connection strings can be evaluated with Ansible/Jinja first, but special characters in passwords still need URL encoding.

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

These templates use the `./configure -c ...` and `./app.yml` workflow. Check database, directory, and image requirements on the application page before deploying.

## Lightweight Compose Apps

For apps like `bytebase`, `gitea`, `jupyter`, `kong`, `metabase`, `nocodb`, `pgadmin`, `pgweb`, `postgrest`, [`pg_exporter`](/docs/app/pg-exporter/), and `wiki`, you can also use the per-app Compose templates directly. For object storage, see the [MINIO module](/docs/minio/); the standalone `app/silo` template is still a development draft.

[FerretDB](/docs/app/ferretdb/) is provided as the Docker APP layer of [PostgreSQL Mongo mode](/docs/conf/mongo/). Deploy it from the `mongo` configuration template with `docker.yml` and `app.yml`.

```bash
cd ~/pigsty/app/<name>
make up
```

To manage these apps with Pigsty IaC, run:

```bash
./app.yml -e app=<name>
```

See each application page for database, directory, and initialization requirements. Hermes uses a Python virtual environment and has no Compose or `app.yml` deployment entry point.

## Legacy Applets

Data applets like `pglog`, `covid`, `db-engine`, `sf-survey`, `cloud`, and `isd` are kept as reference examples for data modeling and visualization ideas.

They are no longer the primary application delivery path. Prefer the software template workflow above.
