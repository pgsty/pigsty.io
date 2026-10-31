# Hindsight: AI Long-Term Memory

> Self-host Hindsight with Pigsty and store long-term memory in external PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

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

- `HINDSIGHT_API_PUBLISH_PORT`: public API port, default `8888`
- `HINDSIGHT_UI_PUBLISH_PORT`: public UI port, default `9999`
- `HINDSIGHT_DB_HOST` / `HINDSIGHT_DB_PORT` / `HINDSIGHT_DB_NAME` / `HINDSIGHT_DB_USER` / `HINDSIGHT_DB_PASSWORD`
- `HINDSIGHT_API_VECTOR_EXTENSION`: default `pgvector`
- `HINDSIGHT_API_TEXT_SEARCH_EXTENSION`: default `native`
- `HINDSIGHT_API_LLM_PROVIDER`: default `none`
- `HINDSIGHT_MODEL_CACHE`: host model-cache directory, default `/data/hindsight`

With the default LLM provider, `none`, Hindsight can retain text and recall it using local embedding/reranker models. Fact extraction, reflection, and consolidation require Ollama or an OpenAI-compatible API.

The template mounts the host model-cache directory at `/home/hindsight/.cache`; it has no `hindsight-cache` named volume. An empty directory may hide models bundled in the image. Check model availability on first startup and allow downloads as needed.

The database needs `vector`, plus `pg_trgm` in `public`. The template explicitly declares only `vector`; add `pg_trgm` and check its schema before deploying. `CREATE EXTENSION IF NOT EXISTS` does not move an existing extension.

The development template uses a named volume to preserve bundled models, sets `HF_HUB_OFFLINE=1`, and adds combined API/UI health checks and `make health`. These features require matching application files. After changing the API port inside the container, also check the control-plane connection URL.

## Operations

```bash
cd /opt/hindsight
make up
make log
make info
make down
make pull
```

Request the API's `/health/ready` and the UI proxy's `/api/banks?limit=1` separately to confirm that the application is ready and the control plane can reach the API.

## References

- Hindsight project: https://github.com/vectorize-io/hindsight
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/hindsight.yml
