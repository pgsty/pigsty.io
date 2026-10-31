# DocumentDB

> DocumentDB and FerretDB provide MongoDB wire-protocol compatibility

---

LLMS index: [llms.txt](/llms.txt)

---

Microsoft maintains [**DocumentDB**](/ext/e/documentdb), an open-source PostgreSQL document database extension.
[**FerretDB**](https://github.com/FerretDB/FerretDB) is a stateless protocol translation proxy built on DocumentDB.
Together, they provide a MongoDB wire-compatible endpoint for a standard PostgreSQL kernel.
Applications can connect directly with MongoDB drivers.
FerretDB translates their requests into PostgreSQL operations.

This stack is not a standalone PostgreSQL fork.
The data layer uses native PostgreSQL 16–18, which the standard `PGSQL` module manages.
PostgreSQL provides persistence, transactions, high availability, backup, monitoring, and access control.
FerretDB runs as a Pigsty Docker APP and handles only protocol translation.

Pigsty is a FerretDB community partner.
It provides binary packages for FerretDB and the DocumentDB extensions.
Use the [**`mongo`**](/docs/conf/mongo/) configuration template to deploy the complete stack.


------

## Quick Start

Use Pigsty's [**standard installation flow**](/docs/setup/install) with the [`mongo`](/docs/conf/mongo/) configuration template:

The commands below use the [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/mongo.yml). Development sources moved it to `conf/fork/mongo.yml`; use `-c fork/mongo` with those sources.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c mongo    # Use the Mongo (DocumentDB + FerretDB) configuration template
./deploy.yml            # Install; change passwords in pigsty.yml first for production
./docker.yml -l pg-meta # Install Docker on the pg-meta node
./app.yml -l pg-meta    # Deploy the FerretDB Docker APP
```

By default, FerretDB listens on the local loopback address at port `27017`.
Connect with `mongosh` or any MongoDB-compatible client:

```bash
mongosh 'mongodb://mongod:DBUser.Mongo@127.0.0.1:27017/'
```


------

## Configuration

Source: [`pigsty/conf/mongo.yml`](/docs/conf/mongo/). See the [**Mongo configuration template**](/docs/conf/mongo/) documentation for the complete template.

The key PostgreSQL settings are the `documentdb` extension and its preload libraries, plus the backend superuser used by FerretDB:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - { name: mongod ,password: DBUser.Mongo ,superuser: true ,comment: FerretDB backend user }
    pg_databases:
      - { name: postgres, extensions: [ documentdb, postgis, vector, pg_cron, rum ]}
    pg_extensions: [ documentdb, postgis, pgvector, pg_cron, rum ]
    pg_libs: 'pg_documentdb, pg_documentdb_core, pg_documentdb_extended_rum, pg_cron, pg_stat_statements, auto_explain'
```

FerretDB runs as a Docker APP.
Set its configuration overrides under `apps.ferretdb.conf`.
The container connects to the local primary service on port `5436` through `host.docker.internal`:

```yaml
docker_enabled: true
app: ferretdb
apps:
  ferretdb:
    conf:
      FERRETDB_IMAGE: ghcr.io/ferretdb/ferretdb:2.7.0
      FERRETDB_POSTGRESQL_URL: 'postgres://mongod:DBUser.Mongo@host.docker.internal:5436/postgres?pool_min_conns=1&pool_max_conns=20'
      FERRETDB_BIND_ADDR: 127.0.0.1
      FERRETDB_PORT: 27017
      FERRETDB_AUTH: true
      FERRETDB_TELEMETRY: disabled
```


------

## High Availability

FerretDB is fully stateless, so its HA topology follows the standard PostgreSQL cluster pattern.
The template includes a commented three-node `pg-mongo` example.
Each node runs a FerretDB container on local port `27018`.
HAProxy routes access to these containers through the floating endpoint `10.10.10.4:27017` (`mongo.pigsty`).

Patroni and etcd manage PostgreSQL failover.
The Mongo endpoint automatically recovers after the primary switches.


------

## Notes

- FerretDB enables authentication by default (`FERRETDB_AUTH: true`). It does not yet implement MongoDB authorization roles. PostgreSQL users and HBA rules control access.
- Client-side MongoDB TLS is disabled by default. The Mongo endpoint is not exposed to the network. Change `FERRETDB_BIND_ADDR` only when remote access is required.
- The backend cluster uses standard PostgreSQL parameters, playbooks, and dashboards. There is no independent FERRET module or `mongo_*` parameter group.
- Repeat an authenticated CRUD smoke test after upgrading FerretDB or DocumentDB.
