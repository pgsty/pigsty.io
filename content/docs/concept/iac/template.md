---
title: Conf Templates
linkTitle: Templates
weight: 215
description: Use pre-made configuration templates to quickly generate configuration files adapted to your environment
icon: fa-solid fa-code
module: [PIGSTY]
categories: [Concept]
---

The [**inventory**](/docs/setup/config/) defines the deployment through declarative configuration. Customize its [**`pigsty.yml`**](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) file for your requirements.

New users can start with ready-to-use templates for common deployment scenarios.

Each template is a predefined `pigsty.yml` file with defaults for a specific scenario.

Select a template, then change it to meet your requirements.


------

## Using Templates

The optional [**`configure`**](https://github.com/pgsty/pigsty/blob/main/configure) wizard generates an [**inventory**](/docs/setup/config/) from your environment and input, with suitable defaults.

Use `./configure -c <conf>` to select a template. `<conf>` is relative to `conf`; the `.yml` suffix is optional. Development sources move kernel templates to `conf/fork/`, selected with `-c fork/<name>`. Use the actual path in your source tree.

```bash
./configure                     # Default to meta.yml configuration template
./configure -c meta             # Explicitly specify meta.yml single-node template
./configure -c rich             # Use feature-rich template with all extensions and Silo
./configure -c slim             # Use minimal single-node template

# Use different database kernels
./configure -c pgsql            # Native PostgreSQL kernel, basic features (14~18)
./configure -c pg19             # PostgreSQL 19 Beta trial template
./configure -c mssql            # Babelfish kernel, SQL Server protocol compatible (17/18)
./configure -c polar            # PolarDB PG kernel, Aurora/RAC style (17)
./configure -c ivory            # IvorySQL kernel, Oracle syntax compatible (18)
./configure -c mysql            # OpenHalo kernel, MySQL compatible (14)
./configure -c pgtde            # Percona PostgreSQL Server transparent encryption (18)
./configure -c oriole           # OrioleDB kernel, OLTP enhanced (16~18)
./configure -c agens            # AgensGraph graph database kernel (17)
./configure -c pgedge           # pgEdge distributed database kernel (15~18, default 18)
./configure -c ha/citus         # Citus distributed HA PostgreSQL (14~18)
./configure -c supabase         # Supabase self-hosted configuration (15~18)

# Use multi-node HA templates
./configure -c ha/dual          # Use 2-node HA template
./configure -c ha/trio          # Use 3-node HA template
./configure -c ha/full          # Use 4-node HA template
```

If no template is specified, Pigsty defaults to the `meta.yml` single-node configuration template.


------

## Template List

### Main Templates

Use these templates to install Pigsty on one server:

| Template                           | Description                                                             |
|------------------------------------|-------------------------------------------------------------------------|
| [**`meta.yml`**](/docs/conf/meta/) | **Default template**, single-node PostgreSQL online installation        |
| [**`rich.yml`**](/docs/conf/rich/) | Feature-rich template with local repo, Silo, and more examples          |
| [**`slim.yml`**](/docs/conf/slim/) | Minimal template, PostgreSQL only without monitoring and infrastructure |

### Database Kernel Templates

Templates for various database management systems and kernels:

| Template                                   | Description                                             |
|--------------------------------------------|---------------------------------------------------------|
| [**`pgsql.yml`**](/docs/conf/pgsql/)       | Native PostgreSQL kernel, basic features (14~18)        |
| [**`pg19.yml`**](/docs/conf/pg19/)         | PostgreSQL 19 Beta trial template                       |
| [**`mssql.yml`**](/docs/conf/mssql/)       | Babelfish kernel, SQL Server protocol compatible (17/18) |
| [**`polar.yml`**](/docs/conf/polar/)       | PolarDB PG kernel, Aurora/RAC style (17)                |
| [**`ivory.yml`**](/docs/conf/ivory/)       | IvorySQL kernel, Oracle syntax compatible (18)          |
| [**`mysql.yml`**](/docs/conf/mysql/)       | OpenHalo kernel, MySQL compatible (14)                  |
| [**`pgtde.yml`**](/docs/conf/pgtde/)       | Percona PostgreSQL Server transparent encryption (18)   |
| [**`oriole.yml`**](/docs/conf/oriole/)     | OrioleDB kernel, OLTP enhanced (16~18)                  |
| [**`agens.yml`**](/docs/conf/agens/)       | AgensGraph graph database kernel (17)                   |
| [**`pgedge.yml`**](/docs/conf/pgedge/)     | pgEdge distributed database kernel (15~18, default 18)  |
| [**`supabase.yml`**](/docs/conf/supabase/) | Supabase self-hosted configuration (15~18)              |

You can add more nodes later or use [HA templates](#ha-templates) to plan your cluster from the start.


------

### HA Templates

Use these templates for a deployment with multiple nodes and high availability:

| Template                           | Description                                              |
|------------------------------------|----------------------------------------------------------|
| [**`dual.yml`**](/docs/conf/dual/) | 2-node semi-HA deployment                                |
| [**`trio.yml`**](/docs/conf/trio/) | 3-node standard HA deployment                            |
| [**`full.yml`**](/docs/conf/full/) | 4-node standard deployment                               |
| [**`safe.yml`**](/docs/conf/safe/) | 4-node security-enhanced deployment with delayed replica |
| [**`octo.yml`**](/docs/conf/octo/) | Compact 8-node HA simulation                             |
| [**`simu.yml`**](/docs/conf/simu/) | 20-node production environment simulation                |
| [**`ha/citus.yml`**](/docs/conf/citus/) | Citus distributed HA PostgreSQL (14~18)             |


------

### Application Templates

Use these templates to run applications with Docker:

| Template                                       | Description                   |
|------------------------------------------------|-------------------------------|
| [**`supabase.yml`**](/docs/conf/supabase/)     | Start single-node Supabase    |
| [**`odoo.yml`**](/docs/conf/odoo/)             | Start Odoo ERP system         |
| [**`dify.yml`**](/docs/conf/dify/)             | Start Dify AI workflow system |
| [**`electric.yml`**](/docs/conf/electric/)     | Start Electric sync engine    |
| [**`insforge.yml`**](/docs/conf/insforge/)     | Start Insforge backend platform |
| [**`hindsight.yml`**](/docs/conf/hindsight/)   | Start Hindsight application   |
| [**`mattermost.yml`**](/docs/conf/mattermost/) | Start Mattermost collaboration platform |
| [**`teable.yml`**](/docs/conf/teable/)         | Start Teable spreadsheet database |
| [**`maybe.yml`**](/docs/conf/maybe/)           | Start Maybe finance app       |
| [**`registry.yml`**](/docs/conf/registry/)     | Start Docker Registry         |


------

### Demo Templates

Pigsty also provides these demonstration templates:

| Template                               | Description                                                              |
|----------------------------------------|--------------------------------------------------------------------------|
| [**`el.yml`**](/docs/conf/el/)         | Full-parameter config file for EL 8/9 systems                            |
| [**`debian.yml`**](/docs/conf/debian/) | Full-parameter config file for Debian/Ubuntu systems                     |
| **`remote.yml`**                       | Example config for monitoring remote PostgreSQL clusters or RDS          |
| **`redis.yml`**                        | Redis cluster example configuration                                      |
| [**`minio.yml`**](/docs/conf/minio/)   | 4-node multi-drive Silo cluster example (source default)                  |
| [**`kafka.yml`**](/docs/conf/kafka/)   | Kafka dynamic KRaft example with a single-node dev cluster and a three-node secure cluster |
| [**`mysql.yml`**](/docs/conf/mysql84/) | Native MySQL 8.4 single-node/three-node pilot example; distinct from OpenHalo `conf/mysql.yml` |
| [**`demo.yml`**](/docs/conf/demo/)     | Configuration file for Pigsty [public demo site](https://demo.pigsty.io) |
| [**`fat.yml`**](/docs/conf/fat/)       | Single-node config with local repo and full feature set                   |
| [**`infra.yml`**](/docs/conf/infra/)   | Deploy only the infrastructure modules                                    |
| [**`vibe.yml`**](/docs/conf/vibe/)     | Vibe Coding / AI application development template                         |
| [**`mongo.yml`**](/docs/conf/mongo/)   | FerretDB / MongoDB-compatible example                                     |
| [**`docker.yml`**](/docs/conf/docker/) | Docker application host template                                          |


------

### Build Templates

Use these templates for development and testing:

| Template          | Description                                                            |
|-------------------|------------------------------------------------------------------------|
| **`build/oss.yml`** | Open source build config for EL 9/10, Debian 12/13, Ubuntu 22.04/24.04/26.04 |
| **`build/dev.yml`** | Development and testing build config                                  |
