# Applications

> Pigsty application templates and data applets: run stateless apps with Docker Compose and host state in external PostgreSQL and S3-compatible storage.

---

LLMS index: [llms.txt](/llms.txt)

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

[FerretDB](/docs/app/ferretdb/) is provided as the Docker APP layer of [PostgreSQL Mongo mode](/docs/conf/mongo/). Deploy it from the `mongo` configuration template with `docker.yml` and `app.yml`.

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

---

Section pages:

- [Enterprise Self-Hosted Supabase](/docs/app/supabase/): Self-host enterprise-grade Supabase with Pigsty, featuring monitoring, high availability, PITR, IaC, and 575 PostgreSQL extensions.
- [Odoo: Self-Hosted Open Source ERP](/docs/app/odoo/): How to spin up an out-of-the-box enterprise application suite Odoo and use Pigsty to manage its backend PostgreSQL database.
- [Dify: AI Workflow Platform](/docs/app/dify/): How to self-host the AI Workflow LLMOps platform — Dify, using external PostgreSQL, PGVector, and Redis for storage with Pigsty?
- [InsForge: AI Backend-as-a-Service](/docs/app/insforge/): Self-host InsForge OSS with Pigsty and let Pigsty manage PostgreSQL, backups, monitoring, and ingress.
- [Hindsight: AI Long-Term Memory](/docs/app/hindsight/): Self-host Hindsight with Pigsty and store long-term memory in external PostgreSQL.
- [FerretDB: MongoDB Protocol](/docs/app/ferretdb/): Deploy a stateless FerretDB proxy on PostgreSQL and DocumentDB managed by Pigsty.
- [Enterprise Software](/docs/app/_div_enterprise/)
- [Teable: AI No-Code Database](/docs/app/teable/): Self-host Teable with Pigsty, external PostgreSQL, and Silo.
- [Gitea: Self-Hosted Git Service](/docs/app/gitea/): Deploy Gitea with Pigsty's Compose template and connect it to external PostgreSQL.
- [NocoDB: Open-Source Airtable](/docs/app/nocodb/): Use NocoDB to transform PostgreSQL databases into smart spreadsheets, a no-code database application platform.
- [Mattermost: Open-Source Team Collaboration](/docs/app/mattermost/): Deploy Mattermost with Pigsty and store state in external PostgreSQL.
- [Wiki.js: OSS Wiki Software](/docs/app/wiki/): How to self-hosting your own wikipedia with Wiki.js and use Pigsty managed PostgreSQL as the backend database
- [Maybe: Self-Hosted Personal Finance](/docs/app/maybe/): Self-host the Maybe personal finance application with Pigsty and let Pigsty manage PostgreSQL, backups, monitoring, and ingress.
- [Immich: Self-Hosted Photo and Video Library](/docs/app/immich/): Self-host Immich, the open-source Google Photos alternative, with Pigsty managing its metadata, vector search, backups, and ingress.
- [Kong: API Gateway](/docs/app/kong/): Deploy Kong with Pigsty Compose templates and PostgreSQL backend storage.
- [Metabase: BI Analytics Tool](/docs/app/metabase/): Use Metabase for rapid business intelligence analysis with a user-friendly interface for team self-service data exploration.
- [Registry: Container Image Cache](/docs/app/registry/): Deploy a Docker Registry pull-through cache and optional web UI with Pigsty.
- [JumpServer: Open-Source Bastion Host](/docs/app/jumpserver/): Self-host JumpServer Community Edition with Pigsty managing its PostgreSQL backend, backups, ingress, and operations.
- [ByteBase: Schema Migration](/docs/app/bytebase/): Deploy Bytebase with Pigsty's Docker Compose template and connect it to external PostgreSQL.
- [pgAdmin: PostgreSQL GUI](/docs/app/pgadmin/): Deploy pgAdmin4 with Pigsty's Docker Compose template and safely load the PostgreSQL server inventory.
- [Database Tools](/docs/app/_div_tools/)
- [PGWeb: Browser-based PostgreSQL Client](/docs/app/pgweb/): Run the bundled pgweb Docker application for small, interactive PostgreSQL queries from a browser.
- [PostgREST: Auto-Generated API](/docs/app/postgrest/): Deploy PostgREST with Pigsty Compose templates and auto-generate REST APIs from PostgreSQL schema.
- [Electric: PostgreSQL Sync Engine](/docs/app/electric/): Self-host Electric with Pigsty to sync PostgreSQL data to frontend apps with partial replication and real-time delivery.
- [Jupyter: Notebooks and Data Analysis](/docs/app/jupyter/): Run JupyterLab with Pigsty's standalone Docker Compose template and access PostgreSQL safely.
- [Data Applications](/docs/app/_div_applet/)
- [PGLOG: PostgreSQL Log Analysis Application](/docs/app/pglog/): A sample Applet included with Pigsty for analyzing PostgreSQL CSV log samples
- [NOAA ISD Global Weather Station Historical Data Query](/docs/app/isd/): Demonstrate how to import data into a database using the ISD dataset as an example
- [WHO COVID-19 Pandemic Dashboard](/docs/app/covid/): A sample Applet included with Pigsty for visualizing World Health Organization official pandemic data
- [StackOverflow Global Developer Survey](/docs/app/sf-survey/): Analyze database-related data from StackOverflow's global developer survey over the past seven years
- [DB-Engines Database Popularity Trend Analysis](/docs/app/db-engine/): Analyze database management systems on DB-Engines and browse their popularity evolution
- [AWS & Aliyun Server Pricing](/docs/app/cloud/): Analyze compute and storage pricing on Aliyun / AWS (ECS/ESSD)
