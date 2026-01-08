---
title: Administration
linkTitle: Administration
weight: 4040
description: Create, remove, expand, shrink, and upgrade FerretDB clusters
icon: fa-solid fa-building-columns
categories: [Task]
---

This document describes daily administration operations for FerretDB clusters.


----------------

## Create FerretDB Cluster

After [defining](/docs/ferret/config) a FerretDB cluster in the [configuration inventory](/docs/setup/config), you can install it with the following command:

```bash
./mongo.yml -l ferret   # Install FerretDB on the ferret group
```

Since FerretDB uses PostgreSQL as its underlying storage, running this playbook multiple times is generally safe (idempotent).

The FerretDB service is configured to automatically restart on failure (`Restart=on-failure`), providing basic resilience for this stateless proxy layer.


----------------

## Remove FerretDB Cluster

To remove a FerretDB cluster, run the `mongo_purge` subtask of the [`mongo.yml`](/docs/ferret/playbook#mongoyml) playbook with the `mongo_purge` parameter:

```bash
./mongo.yml -l ferret -e mongo_purge=true -t mongo_purge
```

**Important**: Always use the `-l <cluster>` parameter to limit the execution scope and avoid accidentally removing other clusters.

This command will:
- Stop the FerretDB service
- Remove the systemd service file
- Clean up configuration files and certificates
- Deregister from Prometheus monitoring


----------------

## Connect to FerretDB

You can access FerretDB using a MongoDB connection string with any language's MongoDB driver. Here's an example using the [`mongosh`](/docs/ferret/usage#installing-client-tools) command-line tool:

```bash
mongosh 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017?authMechanism=PLAIN'
mongosh 'mongodb://test:test@10.10.10.11:27017/test?authMechanism=PLAIN'
```

Pigsty-managed PostgreSQL clusters use `scram-sha-256` as the default authentication method, so you must use `PLAIN` authentication when connecting to FerretDB. See [FerretDB: Authentication](https://docs.ferretdb.io/security/authentication/) for details.

You can also use other PostgreSQL users to access FerretDB by specifying them in the connection string:

```bash
mongosh 'mongodb://dbuser_dba:DBUser.DBA@10.10.10.10:27017?authMechanism=PLAIN'
```


----------------

## Quick Start

After connecting to FerretDB, you can operate it just like MongoDB:

```bash
$ mongosh 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017?authMechanism=PLAIN'
```

MongoDB commands are translated to SQL commands and executed in the underlying PostgreSQL:

```javascript
use test                            // CREATE SCHEMA test;
db.dropDatabase()                   // DROP SCHEMA test;
db.createCollection('posts')        // CREATE TABLE posts(_data JSONB,...)
db.posts.insert({                   // INSERT INTO posts VALUES(...);
    title: 'Post One',
    body: 'Body of post one',
    category: 'News',
    tags: ['news', 'events'],
    user: {name: 'John Doe', status: 'author'},
    date: Date()
})
db.posts.find().limit(2).pretty()   // SELECT * FROM posts LIMIT 2;
db.posts.createIndex({ title: 1 })  // CREATE INDEX ON posts(_data->>'title');
```

If you're not familiar with MongoDB, here's a quick start tutorial that also applies to FerretDB: [Perform CRUD Operations with MongoDB Shell](https://www.mongodb.com/docs/mongodb-shell/crud/)


----------------

## Benchmark

If you want to generate some sample load, you can use `mongosh` to execute the following simple test script:

```bash
cat > benchmark.js <<'EOF'
const coll = "testColl";
const numDocs = 10000;

for (let i = 0; i < numDocs; i++) {  // insert
  db.getCollection(coll).insert({ num: i, name: "MongoDB Benchmark Test" });
}

for (let i = 0; i < numDocs; i++) {  // select
  db.getCollection(coll).find({ num: i });
}

for (let i = 0; i < numDocs; i++) {  // update
  db.getCollection(coll).update({ num: i }, { $set: { name: "Updated" } });
}

for (let i = 0; i < numDocs; i++) {  // delete
  db.getCollection(coll).deleteOne({ num: i });
}
EOF

mongosh 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017?authMechanism=PLAIN' benchmark.js
```

You can check the [MongoDB commands](https://docs.ferretdb.io/reference/supported-commands/) supported by FerretDB, as well as some [known differences](https://docs.ferretdb.io/diff/). For basic usage, these differences usually aren't a significant problem.
