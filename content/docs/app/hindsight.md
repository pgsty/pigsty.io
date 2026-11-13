---
title: "Hindsight: AI Long-Term Memory"
weight: 567
description: Self-host Hindsight with Pigsty and store long-term memory in external PostgreSQL.
module: [SOFTWARE]
categories: [Reference]
---

[**Hindsight**](https://github.com/vectorize-io/hindsight) is a PostgreSQL-native long-term memory service for AI agents.

Pigsty provides the `app/hindsight` configuration template (`conf/app/hindsight.yml`). By default, it uses Pigsty-managed PostgreSQL instead of Hindsight's built-in development database.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/hindsight
vi pigsty.yml                 # edit domain, database password, and LLM settings
./deploy.yml
./docker.yml
./app.yml
```

Default access URLs:

- UI: `http://hs.pigsty` or `http://<IP>:9999`
- API: `http://hs-api.pigsty` or `http://<IP>:8888`

## Key Settings

`conf/app/hindsight.yml` overrides `/opt/hindsight/.env` through `apps.hindsight.conf`. Key parameters:

- `HINDSIGHT_API_PORT`: API port inside the container, default `8888`; the control plane's `HINDSIGHT_CP_DATAPLANE_API_URL` follows this port by default
- `HINDSIGHT_API_PUBLISH_PORT`: published API port on the host, default `8888`
- `HINDSIGHT_UI_PUBLISH_PORT`: published UI port on the host, default `9999`
- `HINDSIGHT_DB_HOST` / `HINDSIGHT_DB_PORT` / `HINDSIGHT_DB_NAME` / `HINDSIGHT_DB_USER` / `HINDSIGHT_DB_PASSWORD`
- `HINDSIGHT_API_VECTOR_EXTENSION`: default `pgvector`
- `HINDSIGHT_API_TEXT_SEARCH_EXTENSION`: default `native`
- `HINDSIGHT_API_LLM_PROVIDER`: default `none`
- `HF_HUB_OFFLINE`: defaults to `1` to use models bundled in the official image without contacting Hugging Face Hub at runtime; set it to `0` and allow outbound access to download uncached models

With the default LLM provider, `none`, Hindsight can retain text and recall it using local embedding/reranker models. Fact extraction, reflection, and consolidation require Ollama or an OpenAI-compatible API.

Compose mounts the named volume `hindsight-cache` at `/home/hindsight/.cache`. Docker's initial volume copy-up preserves the models bundled in the image, and the volume retains the cache across container recreation.

Enable `vector` and install `pg_trgm` in the `public` schema, which upstream trigram index migrations require. `conf/app/hindsight.yml` already declares `extensions: [ vector, { name: pg_trgm, schema: public } ]`. For an existing database, verify that `pg_trgm` is in `public`; `CREATE EXTENSION IF NOT EXISTS` does not move an extension installed in another schema.

## Operations

```bash
cd /opt/hindsight
make up
make health
make log
make info
make down
make pull
```

The container health check and `make health` probe both the API's `/health/ready` and the UI proxy's `/api/banks?limit=1`, verifying data plane readiness and control plane access to the API.

## References

- Hindsight project: https://github.com/vectorize-io/hindsight
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/hindsight.yml
