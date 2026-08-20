# FerretDB: MongoDB Protocol

> Deploy a stateless FerretDB proxy on PostgreSQL and DocumentDB managed by Pigsty.

---

LLMS index: [llms.txt](/llms.txt)

---

[**FerretDB**](https://www.ferretdb.com/) provides a MongoDB-compatible protocol over PostgreSQL and the DocumentDB extension. Pigsty's `app/ferretdb` runs only the stateless protocol proxy; PostgreSQL, the `postgres` database, the DocumentDB extensions, and the backend PostgreSQL login role must already exist. The [`mongo` configuration template](/docs/conf/mongo/) prepares these dependencies together.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c mongo
./deploy.yml
./docker.yml -l pg-meta
./app.yml -l pg-meta
```

After installing `mongosh` or another MongoDB-compatible client separately, connect with the dedicated login declared by the template:

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

Port `5436` is Pigsty's direct-to-current-primary PostgreSQL service. Linux `host-gateway` mapping lets the container connect through the local host while preserving Pigsty's primary routing. The MongoDB port listens on loopback by default; change `FERRETDB_BIND_ADDR` explicitly only when remote clients require access.

FerretDB authenticates users through PostgreSQL, but it does not currently implement MongoDB authorization semantics, so MongoDB roles cannot provide access isolation. The template also does not enable MongoDB client TLS. Before exposing the service to an untrusted network, configure certificates and the `FERRETDB_LISTEN_TLS*` variables.

FerretDB releases specify a preferred DocumentDB version, while Pigsty may ship a newer compatible package. After upgrading either component, rerun an authenticated CRUD smoke test.

## Optional Three-Node Topology

The [`mongo` template](/docs/conf/mongo/) includes a commented three-node PostgreSQL / DocumentDB cluster. Each node runs a FerretDB container, and HAProxy exposes standard port `27017` at the floating endpoint `10.10.10.4:27017` (`mongo.pigsty`). After enabling the complete `pg-mongo` cluster and the additional etcd members, run:

```bash
./configure -c mongo
./deploy.yml
./docker.yml -l pg-mongo
./app.yml -l pg-mongo
mongosh 'mongodb://mongod:DBUser.Mongo@10.10.10.4:27017/'
```

HAProxy uses TCP health checks to exclude stopped or unreachable FerretDB processes; the image's built-in health check continues to verify the backend connection. Production deployments should also use a shared Silo or external S3-compatible pgBackRest repository so the same backup history remains available after a PostgreSQL primary failover.

## References

- [PostgreSQL Mongo configuration template](/docs/conf/mongo/)
- [Pigsty FerretDB template source](https://github.com/pgsty/pigsty/tree/main/app/ferretdb)
- [FerretDB documentation](https://docs.ferretdb.io/)
