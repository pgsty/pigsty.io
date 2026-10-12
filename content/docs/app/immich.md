---
title: "Immich: Self-Hosted Photo and Video Library"
weight: 602
description: Self-host Immich, the open-source Google Photos alternative, with Pigsty managing its metadata, vector search, backups, and ingress.
module: [SOFTWARE]
categories: [Reference]
---

[**Immich**](https://github.com/immich-app/immich) is a high-performance, self-hosted photo and video management application. It is a popular open-source alternative to Google Photos, licensed under AGPL-3.0. Features include web and mobile uploads, album sharing, timelines, maps, EXIF and RAW support, and LivePhoto. It also provides semantic search, facial recognition, and automatic backups.

Pigsty's `app/immich` template runs the Immich application layer with Docker Compose and stores metadata in Pigsty-managed PostgreSQL.
The template follows Immich `v3` and uses VectorChord by default for similar-image search, smart search, and face-search vectors. On 2026-10-08, both Server and ML images resolved to `3.3.0`. Validation used a new media library on Linux amd64 with PostgreSQL 18.6 and covered uploads, thumbnails, and real machine-learning inference.

Immich's official single-node Compose template runs PostgreSQL in an application container. Pigsty manages PostgreSQL separately, with monitoring, backups, PITR, extension management, and high-availability access.

------

## Quick Start

Immich recommends at least 2 CPU cores and 6 GB RAM. For smooth operation, it recommends 4 CPU cores and 8 GB RAM. The v3 amd64 machine-learning image requires x86-64-v2 instructions. Linux with local SSD storage is recommended for production.

On a fresh x86 or ARM Linux server running a [compatible operating system](/docs/deploy/prepare/):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/immich
vi pigsty.yml              # Required: change passwords, domains, and media paths

./deploy.yml               # Install Pigsty and PostgreSQL
./docker.yml               # Install Docker and Compose
./app.yml                  # Install Immich
```

Default endpoints:

```text
http://photo.pigsty
http://10.10.10.10:2283
```

If you use `photo.pigsty`, add a hosts entry on the browser host or replace the template domain with a real domain.

------

## Template Structure

[`conf/app/immich.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/immich.yml) defines a single-node self-hosted Immich template. The default topology includes:

- `immich`: the node running Immich Server, Machine Learning, and local Valkey/Redis containers.
- `pg-immich`: the Pigsty-managed PostgreSQL cluster.
- `infra`: Nginx ingress, Grafana, VictoriaMetrics, and other infrastructure.
- `etcd`: the distributed configuration store required by Patroni.

Application containers include:

- `immich-server`: API, Web UI, and background jobs, exposed on host port `2283` by default.
- `immich-machine-learning`: CLIP and facial-recognition model inference.
- `redis`: local Valkey queues and cache.

The template does not start the PostgreSQL container from Immich's upstream Compose file. Pigsty provides the database through `DB_URL`.

------

## Data Storage Strategy

Immich state is divided into three layers that must be managed separately:

- **Media files**: original photos and videos, thumbnails, transcoded videos, avatars, and the upload queue, stored in the host directory specified by `UPLOAD_LOCATION`.
- **PostgreSQL**: metadata for users, albums, assets, EXIF, file paths, job state, people, faces, and smart-search vectors.
- **Valkey/Redis**: queues, cache, and runtime state; it must not be treated as an authoritative data source.

Photo and video files are not stored in PostgreSQL. Rescanning the media directory cannot reconstruct complete application state. Database paths and metadata are also required.

A recoverable Immich backup requires both PostgreSQL and the media directory. A database-only backup omits photos. A file-only backup cannot reliably restore albums, users, shares, faces, and search state.

------

## PostgreSQL

Default database connection and vector extension:

```text
DB_URL=postgresql://dbuser_immich:DBUser.Immich@10.10.10.10:5432/immich
DB_VECTOR_EXTENSION=vectorchord
```

The template installs the extension packages on the `pg-immich` cluster and creates the database extensions:

```sql
CREATE EXTENSION vchord CASCADE;
CREATE EXTENSION earthdistance CASCADE;
CREATE EXTENSION pg_trgm WITH SCHEMA public;
```

`vchord` must be added to `shared_preload_libraries` through `pg_libs`; the template already configures it:

```yaml
pg_extensions: [ pgvector, vchord ]
pg_libs: 'vchord.so, pg_stat_statements, auto_explain'
```

`pg_trgm` must be in `public` because Immich migrations reference `gin_trgm_ops` without a schema qualifier. Check its location when reusing a database from another template; `CREATE EXTENSION IF NOT EXISTS` does not move an installed extension.

The default connection goes directly to PostgreSQL on port `5432`. Do not point Immich at PgBouncer transaction pooling. Direct PostgreSQL connections or session pooling are more reliable for migrations, indexes, and prepared statements.

Immich treats pre-existing PostgreSQL as an advanced deployment option. It notes that this enables WAL backup tools such as pgBackRest and Barman. Pigsty creates the database, user, and extensions in advance. The Immich application user therefore does not need PostgreSQL superuser privileges.

------

## Media Files

Uploaded photos, videos, thumbnails, transcoded files, and avatars are stored in the host directory specified by `UPLOAD_LOCATION`:

```text
/data/immich/library
```

PostgreSQL stores only metadata and file paths. Media files are not stored in PostgreSQL and are not automatically protected by pgBackRest.

A production deployment must back up at least two data layers:

- PostgreSQL: use Pigsty pgBackRest / PITR.
- Media files: perform a complete file-level backup of `/data/immich/library`, including originals, the upload queue, thumbnails, transcoded files, avatars, and other generated assets.

For a more consistent combined backup, stop `immich-server` before backing up the database and media directory together. If the service cannot be stopped, back up the database first, followed by the filesystem.

------

## Images and Networking

The default images come from GHCR and Docker Hub:

```bash
docker pull ghcr.io/immich-app/immich-server:v3
docker pull ghcr.io/immich-app/immich-machine-learning:v3
docker pull docker.io/valkey/valkey:9@sha256:c123e3715db63d06d4ad6964884037aa0d5d4d703939b9929954112889708e1d
```

The Valkey digest matches the [Immich 3.3.0 release Compose](https://github.com/immich-app/immich/releases/download/v3.3.0/docker-compose.yml). Both `make pull` and `make save` resolve the same image reference from Compose.

If pulls are slow or restricted, configure the Docker daemon proxy; shell `proxy_env` alone does not configure Docker image pulls. Docker Hub mirrors do not cover GHCR. Use `docker compose config --images` to check the resolved image set.

------

## Operations

After installation, enter `/opt/immich`:

```bash
cd /opt/immich

make up       # Start Immich
make logs     # Follow logs
make info     # Show container status
make pull     # Pull images
make restart  # Restart containers
make down     # Stop and remove containers
```

To pin a specific Immich version, set the following in `pigsty.yml`:

```yaml
IMMICH_VERSION: v3.3.0  # optional exact pin; the template defaults to v3
```

Read the upstream release notes before upgrading Immich or VectorChord. After a VectorChord package upgrade, you will usually need to update the extension and rebuild related indexes in `immich`:

```sql
ALTER EXTENSION vchord UPDATE;
REINDEX INDEX face_index;
REINDEX INDEX clip_index;
```

Rebuilding indexes for a large library can take a long time. Confirm that you have a backup and a maintenance window before proceeding.

------

## References

- Immich project: https://github.com/immich-app/immich
- Immich pre-existing PostgreSQL: https://docs.immich.app/administration/postgres-standalone/
- Immich backup and restore: https://docs.immich.app/administration/backup-and-restore/
- Pigsty Immich template: https://github.com/pgsty/pigsty/blob/main/conf/app/immich.yml
- [Pigsty Docker module](/docs/docker/)
- [Pigsty Nginx ingress](/docs/infra/admin/portal/)
