---
title: FAQ
linkTitle: FAQ
weight: 4080
description: Frequently asked questions about FerretDB and DocumentDB modules
icon: fa-solid fa-circle-question
categories: [Reference]
---

----------------

## Why Use FerretDB?

[MongoDB](https://www.mongodb.com/licensing/server-side-public-license/faq) **was** an amazing technology that allowed developers to escape the "schema constraints" of relational databases and rapidly build applications.
However, over time, MongoDB abandoned its open-source roots and changed its license to SSPL, making it unusable for many open-source projects and early-stage commercial ventures.
Most MongoDB users don't actually need the advanced features MongoDB offers, but they do need an easy-to-use open-source document database solution. To fill this gap, [FerretDB](https://ferretdb.io) was born.

PostgreSQL's JSON support is already quite comprehensive: binary JSONB storage, GIN indexes for arbitrary fields, various JSON processing functions, JSON PATH and JSON Schema—it has long been a fully-featured, high-performance document database.
But providing alternative functionality is not the same as **direct emulation**. FerretDB can provide a smooth migration path to PostgreSQL for applications using MongoDB drivers.


----------------

## Pigsty's FerretDB Support History

Pigsty has provided Docker-based FerretDB templates since 1.x and added native deployment support in v2.3.
As an optional component, it greatly enriches the PostgreSQL ecosystem. The Pigsty community has become a partner of the FerretDB community, and deeper collaboration and integration support will follow.

**FERRET** is an **optional** module in Pigsty. Since v2.0, it requires the [`documentdb`](https://pgext.cloud/e/documentdb) extension to work.
Pigsty has packaged this extension and provides a [`mongo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mongo.yml) template to help you easily deploy FerretDB clusters.


----------------

## Installing MongoSH

You can use [MongoSH](https://www.mongodb.com/docs/mongodb-shell/) as a client tool to access FerretDB clusters.

The recommended approach is to use the `pig` command to add the MongoDB repository and install:

```bash
pig repo add mongo -u   # Add the official MongoDB repository
yum install mongodb-mongosh   # RHEL/CentOS/Rocky/Alma
apt install mongodb-mongosh   # Debian/Ubuntu
```

You can also manually add the MongoDB repository:

```bash
# RHEL/CentOS family
cat > /etc/yum.repos.d/mongo.repo <<EOF
[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/\$releasever/mongodb-org/7.0/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-7.0.asc
EOF
yum install -y mongodb-mongosh
```


----------------

## Authentication Method

FerretDB authentication is entirely based on the underlying PostgreSQL. Since Pigsty-managed PostgreSQL clusters use `scram-sha-256` authentication by default, you must specify the `PLAIN` authentication mechanism in the connection string:

```bash
mongosh 'mongodb://user:password@host:27017?authMechanism=PLAIN'
```

If you forget to add the `authMechanism=PLAIN` parameter, the connection will fail with an authentication error.


----------------

## Compatibility with MongoDB

FerretDB implements MongoDB's wire protocol but uses PostgreSQL for underlying storage. This means:

- Most basic CRUD operations are compatible with MongoDB
- Some advanced features may not be supported or may differ
- Aggregation pipeline support is limited

For detailed compatibility information, see:
- [FerretDB Supported Commands](https://docs.ferretdb.io/reference/supported-commands/)
- [Differences from MongoDB](https://docs.ferretdb.io/diff/)


----------------

## Why Is a Superuser Required?

FerretDB 2.0+ uses the `documentdb` extension, which requires superuser privileges to create and manage internal structures. Therefore, the user specified in [`mongo_pgurl`](/docs/ferret/param#mongo_pgurl) must be a PostgreSQL superuser.

It's recommended to create a dedicated `mongod` superuser for FerretDB to use, rather than using the default `postgres` user.


----------------

## How to Achieve High Availability

FerretDB itself is stateless—all data is stored in the underlying PostgreSQL. To achieve high availability:

1. **PostgreSQL layer**: Use Pigsty's PGSQL module to deploy a highly available PostgreSQL cluster
2. **FerretDB layer**: Deploy multiple FerretDB instances with a VIP or load balancer

For detailed configuration, see [High Availability Configuration](/docs/ferret/config#high-availability).


----------------

## Performance Considerations

FerretDB's performance depends on the underlying PostgreSQL cluster. Since MongoDB commands need to be translated to SQL, there is some performance overhead. For most OLTP scenarios, the performance is acceptable.

If you need higher performance, you can:
- Use faster storage (NVMe SSD)
- Increase PostgreSQL resource allocation
- Optimize PostgreSQL parameters
- Use connection pooling to reduce connection overhead
