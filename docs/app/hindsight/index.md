# Hindsight: AI Long-Term Memory

> Self-host Hindsight with Pigsty and store long-term memory in external PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

---

[**Hindsight**](https://github.com/vectorize-io/hindsight) is a PostgreSQL-native long-term memory service for AI agents.

Pigsty provides the `app/hindsight` configuration template (`conf/app/hindsight.yml`), using Pigsty-managed PostgreSQL by default instead of Hindsight's built-in development database.

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

The default `none` LLM provider only ensures the service can start. Fact extraction, reflection, and consolidation require configuring Ollama or an OpenAI-compatible API.

## Operations

```bash
cd /opt/hindsight
make up
make log
make info
make down
make pull
```

## References

- Hindsight project: https://github.com/vectorize-io/hindsight
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/hindsight.yml
