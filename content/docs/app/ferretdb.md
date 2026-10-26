---
title: "FerretDB: MongoDB Protocol"
weight: 568
description: Deploy a stateless FerretDB proxy on PostgreSQL and DocumentDB managed by Pigsty.
module: [SOFTWARE]
categories: [Reference]
---

[**FerretDB**](https://www.ferretdb.com/) provides a MongoDB-compatible protocol over PostgreSQL and the DocumentDB extension. Pigsty's `app/ferretdb` runs the stateless protocol proxy. PostgreSQL, the `postgres` database, DocumentDB extensions, and a backend PostgreSQL login role must already exist. The [`mongo` configuration template](/docs/conf/mongo/) prepares these dependencies together.

## Quick Start

These commands use the `mongo` template from v4.5.0. Development sources moved it to `conf/fork/mongo.yml`; use `-c fork/mongo` with those sources.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c mongo          # released package; development sources use fork/mongo
./deploy.yml
./docker.yml -l pg-meta
./app.yml -l pg-meta
```

Install `mongosh` or another MongoDB-compatible client separately. Then connect with the dedicated login from the template:

```bash
mongosh 'mongodb://mongod:DBUser.Mongo@127.0.0.1:27017/'
```

## Key Configuration

Override template variables through `apps.ferretdb.conf` in the inventory. Do not edit the deployed `/opt/ferretdb/.env` directly:

```yaml
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

Port `5436` is Pigsty's PostgreSQL service that connects directly to the current primary. Linux `host-gateway` mapping connects the container through the local host and retains this primary routing. The MongoDB port listens on loopback by default. Change `FERRETDB_BIND_ADDR` explicitly only when remote clients need access.

FerretDB authenticates users through PostgreSQL. It does not currently implement MongoDB authorization, so MongoDB roles cannot isolate access. The template also does not enable MongoDB client TLS. Before exposing the service to an untrusted network, configure certificates and the `FERRETDB_LISTEN_TLS*` variables.

FerretDB releases specify a preferred DocumentDB version, while Pigsty may ship a newer compatible package. After upgrading either component, rerun an authenticated CRUD smoke test.

## Optional Three-Node Topology

The [`mongo` template](/docs/conf/mongo/) includes a commented three-node PostgreSQL / DocumentDB cluster. Each node runs a FerretDB container. HAProxy exposes port `27017` at the floating endpoint `10.10.10.4:27017` (`mongo.pigsty`). Enable the complete `pg-mongo` cluster and the additional etcd members, then run:

```bash
./configure -c fork/mongo
./deploy.yml
./docker.yml -l pg-mongo
./app.yml -l pg-mongo
mongosh 'mongodb://mongod:DBUser.Mongo@10.10.10.4:27017/'
```

HAProxy uses TCP health checks to exclude stopped or unreachable FerretDB processes. The image's built-in health check verifies the backend connection. Production deployments should use a shared Silo or external S3-compatible pgBackRest repository. This keeps the same backup history available after a PostgreSQL primary failover.

## References

- [PostgreSQL Mongo configuration template](/docs/conf/mongo/)
- [Pigsty FerretDB template source](https://github.com/pgsty/pigsty/tree/main/app/ferretdb)
- [FerretDB documentation](https://docs.ferretdb.io/)
