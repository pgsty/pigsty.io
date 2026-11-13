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

Use `app.yml`, `app/<name>/`, and `conf/` from the same release to keep templates and initialization scripts compatible.

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

`app.yml` copies the `app/<name>` template to `/opt/<name>` (or `apps.<name>.dest`), prepares directories from `apps.<name>.file`, writes a `.env` file with mode `0600` from `apps.<name>.conf`, then runs the application's default `make` target. Use `apps.<name>.args` to select other Make targets. Application startup inherits `proxy_env` proxy variables; `--check` mode skips the actual `make` execution.

Values in `apps.<name>.conf` are written deterministically to `.env` as **literals**: `null` becomes an empty value, booleans become lowercase `true` / `false`, and `$` is escaped as `$$`. Strings containing `$`, whitespace, quotes, `#`, `\`, or non-ASCII characters are enclosed in JSON double quotes. Passwords, hashes, and `${OTHER_VARIABLE}` in this configuration therefore **do not** undergo a second round of Docker Compose expansion. Evaluate dynamic connection strings through Ansible/Jinja first, with special characters in passwords still URL-encoded. Compose interpolation remains available only in unescaped lines edited directly in `.env`.

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
- `app/silo`
- `app/insforge`
- `app/hindsight`
- `app/discourse`
- `supabase`

These templates use the `./configure -c ...` and `./app.yml` workflow. Check database, directory, and image requirements on the application page before deploying.

## Lightweight Compose Apps

For `bytebase`, `gitea`, `jupyter`, `kong`, `metabase`, `nocodb`, `pgadmin`, `pgweb`, `postgrest`, [`pg_exporter`](/docs/app/pg-exporter/), and `wiki`, you can also use the Compose templates directly. See the [**MINIO module**](/docs/minio/) for HA object storage across multiple nodes, or [`app/silo`](/docs/app/silo/) for object storage in a container on one node.
[FerretDB](/docs/app/ferretdb/) supplies the Docker APP protocol layer for [PostgreSQL Mongo mode](/docs/conf/mongo/). Deploy it with the `mongo` (`fork/mongo`) template, `docker.yml`, and `app.yml`.

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
