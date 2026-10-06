# DocumentDB

> DocumentDB and FerretDB provide MongoDB wire-protocol compatibility

---

LLMS index: [llms.txt](/llms.txt)

---

[**DocumentDB**](/ext/e/documentdb) is an open-source PostgreSQL document database extension maintained by Microsoft. [**FerretDB**](https://github.com/FerretDB/FerretDB) is a stateless protocol translation proxy built on top of it.
Together, they expose a MongoDB wire-compatible endpoint from a standard PostgreSQL kernel: applications using MongoDB drivers can connect directly, while requests are translated into PostgreSQL operations.

Unlike other kernel variants, this is not a standalone PostgreSQL fork. The data layer runs native PostgreSQL 16–18 and is managed by the standard `PGSQL` module.
Persistence, transactions, high availability, backup, monitoring, and access control remain PostgreSQL responsibilities; FerretDB is deployed as a Pigsty Docker APP and handles only protocol translation.

Pigsty is a FerretDB community partner, provides binary packages for FerretDB and the DocumentDB extensions,
and delivers the complete stack out of the box through the [**`mongo`**](/docs/conf/mongo/) configuration template.


------

## Quick Start

Use Pigsty's [**standard installation flow**](/docs/setup/install) with the [`mongo`](/docs/conf/mongo/) configuration template:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c mongo    # Use the Mongo (DocumentDB + FerretDB) configuration template
./deploy.yml            # Install; change passwords in pigsty.yml first for production
./docker.yml -l pg-meta # Install Docker on the pg-meta node
./app.yml -l pg-meta    # Deploy the FerretDB Docker APP
```

FerretDB listens on the local loopback address at port `27017` by default. Connect with `mongosh` or any MongoDB-compatible client:

```bash
mongosh 'mongodb://mongod:DBUser.Mongo@127.0.0.1:27017/'
```


------

## Configuration

Source: [`pigsty/conf/mongo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mongo.yml). See the [**Mongo configuration template**](/docs/conf/mongo/) documentation for the complete template.

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

FerretDB is deployed as a Docker APP. Its settings are ordinary overrides under `apps.ferretdb.conf`,
and the container connects to the local primary service on port `5436` through `host.docker.internal`:

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

Because FerretDB is fully stateless, its HA topology follows the standard PostgreSQL cluster pattern. The template retains a commented three-node `pg-mongo` example.
Each node runs a FerretDB container bound to local port `27018`, and HAProxy aggregates them behind the floating endpoint `10.10.10.4:27017` (`mongo.pigsty`).

Patroni and etcd continue to manage PostgreSQL failover. The Mongo endpoint automatically recovers after the primary switches.


------

## Notes

- FerretDB enables authentication by default (`FERRETDB_AUTH: true`) but does not yet implement MongoDB authorization roles. PostgreSQL users and HBA rules remain the actual security boundary.
- Client-side MongoDB TLS is disabled by default, and the Mongo endpoint is not exposed to the network. Change `FERRETDB_BIND_ADDR` only when remote access is required.
- The backend cluster uses standard PostgreSQL parameters, playbooks, and dashboards; there is no independent FERRET module or `mongo_*` parameter group.
- Repeat an authenticated CRUD smoke test after upgrading FerretDB or DocumentDB.
