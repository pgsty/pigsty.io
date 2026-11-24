# Conf Templates

> Use pre-made configuration templates to quickly generate configuration files adapted to your environment

---

LLMS index: [llms.txt](/llms.txt)

---

The [**inventory**](/docs/setup/config/) defines the deployment through declarative configuration. Customize its [**`pigsty.yml`**](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) file for your requirements.

New users can start with ready-to-use templates for common deployment scenarios.

Each template is a predefined `pigsty.yml` file with defaults for a specific scenario.

Select a template, then change it to meet your requirements.


------

## Using Templates

The optional [**`configure`**](https://github.com/pgsty/pigsty/blob/main/configure) wizard generates an [**inventory**](/docs/setup/config/) from your environment and input, with suitable defaults.

Use `./configure -c <conf>`, where `<conf>` is a path relative to `conf/` without `.yml`, or a bare name searched in order: `conf/` → `ha/` → `fork/` → `app/` → `demo/` → `build/`:

```bash
./configure                     # Default to meta.yml configuration template
./configure -c meta             # Explicitly specify meta.yml single-node template
./configure -c rich             # Use feature-rich template with all extensions and Silo
./configure -c slim             # Use minimal single-node template

# Select different database kernels and compatibility stacks
./configure -c pgsql            # Native PostgreSQL kernel, basic features (14~18)
./configure -c pg19             # PostgreSQL 19 Beta trial template
./configure -c mssql            # Babelfish kernel, SQL Server protocol compatible (17/18)
./configure -c polar            # PolarDB PG kernel, Aurora/RAC style (17)
./configure -c ivory            # IvorySQL kernel, Oracle syntax compatible (18)
./configure -c halo             # OpenHalo, MySQL protocol compatibility (14); equivalent to fork/halo
./configure -c pgtde            # Percona PostgreSQL Server transparent encryption (18)
./configure -c oriole           # OrioleDB kernel, OLTP enhanced (16~18)
./configure -c agens            # AgensGraph graph database (18); equivalent to fork/agens
./configure -c pgedge           # pgEdge distributed database kernel (15~18, default 18)
./configure -c mongo            # FerretDB / MongoDB protocol stack; equivalent to fork/mongo
./configure -c mysql            # native MySQL 8.4 deployment; equivalent to demo/mysql
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

| Template | Description |
|----------------------------------------------|---------------------------------------|
| [**`fork/pgsql.yml`**](/docs/conf/pgsql/) | Native PostgreSQL with core functionality (14–18) |
| [**`pg19.yml`**](/docs/conf/pg19/) | Dedicated PostgreSQL 19 Beta evaluation template |
| [**`fork/mssql.yml`**](/docs/conf/mssql/) | Babelfish, SQL Server protocol compatibility (17/18) |
| [**`fork/polar.yml`**](/docs/conf/polar/) | PolarDB PG, Aurora/RAC-style architecture (17) |
| [**`fork/ivory.yml`**](/docs/conf/ivory/) | IvorySQL, Oracle syntax compatibility (18) |
| [**`fork/halo.yml`**](/docs/conf/mysql/) | OpenHalo, MySQL protocol compatibility (14) |
| [**`fork/pgtde.yml`**](/docs/conf/pgtde/) | Percona PostgreSQL Server with transparent encryption (18) |
| [**`fork/oriole.yml`**](/docs/conf/oriole/) | OrioleDB, enhanced OLTP (16–18) |
| [**`fork/agens.yml`**](/docs/conf/agens/) | AgensGraph graph database (18) |
| [**`fork/pgedge.yml`**](/docs/conf/pgedge/) | pgEdge distributed database (15–18, default 18) |
| [**`fork/mongo.yml`**](/docs/conf/mongo/) | FerretDB / MongoDB compatibility example |
| [**`supabase.yml`**](/docs/conf/supabase/) | Self-hosted Supabase (15–18) |
{.wide .expand}

You can add more nodes later or use [HA templates](#ha-templates) to plan your cluster from the start.


------

### HA Templates

Use these templates for a deployment with multiple nodes and high availability:

| Template                           | Description                                              |
|------------------------------------|----------------------------------------------------------|
| [**`ha/dual.yml`**](/docs/conf/dual/) | Two-node semi-HA deployment |
| [**`ha/trio.yml`**](/docs/conf/trio/) | Three-node standard HA |
| [**`ha/full.yml`**](/docs/conf/full/) | Four-node standard deployment |
| [**`ha/safe.yml`**](/docs/conf/safe/) | Three-node security-focused deployment with an offline query replica |
| [**`ha/octo.yml`**](/docs/conf/octo/) | Eight-node compact HA simulation |
| [**`ha/simu.yml`**](/docs/conf/simu/) | Twenty-node production simulation |
| [**`ha/citus.yml`**](/docs/conf/citus/) | Citus distributed HA PostgreSQL (14~18)             |
{.full-width}

------

### Application Templates

Use these templates to run applications with Docker:

| Template | Description |
|----------------------------------------------------|---------------------|
| [**`supabase.yml`**](/docs/conf/supabase/) | Single-node Supabase |
| [**`app/supa.yml`**](/docs/conf/supabase/) | Minimal Supabase application stack |
| [**`app/odoo.yml`**](/docs/conf/odoo/) | Odoo ERP |
| [**`app/dify.yml`**](/docs/conf/dify/) | Dify AI workflows |
| [**`app/electric.yml`**](/docs/conf/electric/) | Electric synchronization engine |
| [**`app/insforge.yml`**](/docs/conf/insforge/) | Insforge backend platform |
| [**`app/hindsight.yml`**](/docs/conf/hindsight/) | Hindsight application |
| [**`app/mattermost.yml`**](/docs/conf/mattermost/) | Mattermost collaboration |
| [**`app/teable.yml`**](/docs/conf/teable/) | Teable spreadsheet database |
| [**`app/maybe.yml`**](/docs/conf/maybe/) | Maybe finance application |
| [**`app/registry.yml`**](/docs/conf/registry/) | Docker Registry |
| [**`app/immich.yml`**](/docs/conf/immich/) | Immich photo management |
| [**`app/jumpserver.yml`**](/docs/conf/jumpserver/) | JumpServer bastion host |
| [**`app/discourse.yml`**](/docs/conf/discourse/) | Discourse community forum |
| [**`app/silo.yml`**](/docs/conf/silo/) | Standalone Silo object storage |
{.wide .expand}

------

### Demo Templates

Pigsty also provides these demonstration templates:

| Template | Description |
|----------------------------------------------|---------------------------------------------------------|
| [**`demo/bare.yml`**](/docs/conf/bare/) | Minimal single-node starting configuration |
| [**`demo/el.yml`**](/docs/conf/el/) | Full-parameter configuration for EL9/10 |
| [**`demo/debian.yml`**](/docs/conf/debian/) | Full-parameter configuration for Debian/Ubuntu |
| [**`demo/remote.yml`**](/docs/conf/remote/) | Monitor remote PostgreSQL or RDS |
| [**`demo/redis.yml`**](/docs/conf/redis/) | Redis cluster example |
| [**`demo/minio.yml`**](/docs/conf/minio/) | Four-node Silo cluster with multiple drives |
| [**`demo/kafka.yml`**](/docs/conf/kafka/) | Kafka dynamic KRaft: single-node development and three-node secured clusters |
| [**`demo/mysql.yml`**](/docs/conf/mysql84/) | Native MySQL 8.4 single/three-node pilot, distinct from OpenHalo `fork/halo.yml` |
| [**`demo/kernel.yml`**](/docs/conf/kernel/) | Ten-node kernel matrix |
| [**`demo/saas.yml`**](/docs/conf/saas/) | Feature-rich single node with all extensions |
| [**`demo/wool.yml`**](/docs/conf/wool/) | Low-cost Alibaba Cloud ECS example |
| [**`demo/demo.yml`**](/docs/conf/demo/) | Pigsty [public demo](https://demo.pigsty.io) configuration |
| [**`fat.yml`**](/docs/conf/fat/) | Full-featured single node with a local repository |
| [**`infra.yml`**](/docs/conf/infra/) | Infrastructure only |
| [**`vibe.yml`**](/docs/conf/vibe/) | Vibe Coding / AI application development |
| [**`docker.yml`**](/docs/conf/docker/) | Docker application host |
{.wide .expand}

------

### Build Templates

These templates support package builds and cross-distribution testing:

| Template          | Description                                                            |
|-------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| [**`build/oss.yml`**](/docs/conf/oss/)   | Open source build config for EL 9/10, Debian 12/13, Ubuntu 22.04/24.04/26.04 |
| [**`build/dev.yml`**](/docs/conf/dev/) | Seven-node local cross-distribution development, test, and build environment |
{.full-width}
