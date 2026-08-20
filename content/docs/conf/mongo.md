---
title: PostgreSQL Mongo Mode
linkTitle: Mongo
weight: 500
description: Run PostgreSQL in Mongo-compatible mode with DocumentDB and the FerretDB Docker APP.
icon: fa-solid fa-database
module: [PGSQL]
categories: [Reference, Concept]
aliases:
  - /docs/ferret/admin/
  - /docs/ferret/config/
  - /docs/ferret/faq/
  - /docs/ferret/metric/
  - /docs/ferret/monitor/
  - /docs/ferret/param/
  - /docs/ferret/playbook/
  - /docs/ferret/usage/
---

The `mongo` configuration template is a **PostgreSQL deployment mode**, not an independent Pigsty module. It combines:

- PostgreSQL 18 managed by the standard `PGSQL` module
- The `documentdb` extension and its required preload libraries
- A stateless FerretDB proxy deployed with Pigsty's Docker APP workflow

All data, high availability, backup, monitoring, and lifecycle management remain PostgreSQL responsibilities. FerretDB only provides the MongoDB wire-compatible endpoint.


--------

## Quick Start

The default template is a single-node deployment on `10.10.10.10`. FerretDB listens on loopback by default.

Install `mongosh` separately if it is not already available, or use another MongoDB-compatible client.

```bash
./configure -c mongo
./deploy.yml
./docker.yml -l pg-meta
./app.yml -l pg-meta
mongosh 'mongodb://mongod:DBUser.Mongo@127.0.0.1:27017/'
```

The dedicated `mongod` PostgreSQL login is declared by the template. FerretDB authentication is enabled, but MongoDB authorization roles are not implemented; PostgreSQL remains the security boundary.


--------

## Architecture

| Layer | Implementation | Responsibility |
|:------|:---------------|:---------------|
| Data | PostgreSQL + DocumentDB | Durable storage, transactions, HA, PITR, ACL, monitoring |
| Protocol | FerretDB Docker APP | Stateless MongoDB wire compatibility |
| Access | `127.0.0.1:27017` by default | Local MongoDB client endpoint |

The container connects to Pigsty's local primary service on port `5436` through `host.docker.internal`. The default Mongo endpoint is not exposed to the network; change `FERRETDB_BIND_ADDR` only when remote access is required.


--------

## Configuration

Source: [`pigsty/conf/mongo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mongo.yml)

{{< include file="yaml/mongo.yml" code=true lang="yaml" >}}

FerretDB settings are ordinary APP overrides under `apps.ferretdb.conf`:

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

Use the standard PostgreSQL parameters, playbooks, dashboards, and administration procedures for the backend cluster. There are no `mongo_*` inventory parameters or standalone `mongo.yml` playbook.


--------

## Optional HA Topology

The template contains a commented `pg-mongo` example for three PostgreSQL/FerretDB nodes. Uncomment that block and the two additional etcd members when needed.

In HA mode, each FerretDB container binds `{{ inventory_hostname }}:27018`; HAProxy exposes all three backends through the floating endpoint `10.10.10.4:27017` (`mongo.pigsty`). PostgreSQL failover is still handled by Patroni, while FerretDB remains stateless.


--------

## Notes

- The template includes development-friendly HBA examples; tighten them for production.
- Client-side MongoDB TLS is not enabled by default.
- Monitor the backend with the standard PostgreSQL and Docker dashboards; there is no separate FERRET module or dedicated module dashboard.
- Repeat an authenticated CRUD smoke test after upgrading FerretDB or DocumentDB.
