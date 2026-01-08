---
title: Usage
linkTitle: Usage
weight: 4010
description: Install client tools, connect to and use FerretDB
icon: fa-solid fa-rocket
categories: [Reference]
---

This document describes how to install MongoDB client tools and connect to FerretDB.


----------------

## Installing Client Tools

You can use MongoDB's command-line tool [MongoSH](https://www.mongodb.com/docs/mongodb-shell/) to access FerretDB.

Use the `pig` command to add the MongoDB repository, then install `mongosh` using `yum` or `apt`:

```bash
pig repo add mongo -u   # Add the official MongoDB repository
yum install mongodb-mongosh   # RHEL/CentOS/Rocky/Alma
apt install mongodb-mongosh   # Debian/Ubuntu
```

After installation, you can use the `mongosh` command to connect to FerretDB.


----------------

## Connecting to FerretDB

You can access FerretDB using any language's MongoDB driver via a MongoDB connection string. Here's an example using the `mongosh` CLI tool:

```bash
$ mongosh
Current Mongosh Log ID:	67ba8c1fe551f042bf51e943
Connecting to:		mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+2.4.0
Using MongoDB:		7.0.77
Using Mongosh:		2.4.0

For mongosh info see: https://www.mongodb.com/docs/mongodb-shell/

test>
```

### Using Connection Strings

FerretDB authentication is entirely based on PostgreSQL. Since Pigsty-managed PostgreSQL clusters use `scram-sha-256` authentication by default, you must specify the `PLAIN` authentication mechanism in the connection string:

```bash
mongosh 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017?authMechanism=PLAIN'
```

Connection string format:

```
mongodb://<username>:<password>@<host>:<port>/<database>?authMechanism=PLAIN
```

### Using Different Users

You can connect to FerretDB using any user that has been created in PostgreSQL:

```bash
# Using dbuser_dba user
mongosh 'mongodb://dbuser_dba:DBUser.DBA@10.10.10.10:27017?authMechanism=PLAIN'

# Using mongod superuser
mongosh 'mongodb://mongod:DBUser.Mongo@10.10.10.10:27017?authMechanism=PLAIN'

# Connecting to a specific database
mongosh 'mongodb://test:test@10.10.10.11:27017/test?authMechanism=PLAIN'
```


----------------

## Basic Operations

After connecting to FerretDB, you can operate it just like MongoDB. Here are some basic operation examples:

### Database Operations

```javascript
// Switch to / create database
use mydb

// Show all databases
show dbs

// Drop current database
db.dropDatabase()
```

### Collection Operations

```javascript
// Create collection
db.createCollection('users')

// Show all collections
show collections

// Drop collection
db.users.drop()
```

### Document Operations

```javascript
// Insert a single document
db.users.insertOne({
    name: 'Alice',
    age: 30,
    email: 'alice@example.com'
})

// Insert multiple documents
db.users.insertMany([
    { name: 'Bob', age: 25 },
    { name: 'Charlie', age: 35 }
])

// Query documents
db.users.find()
db.users.find({ age: { $gt: 25 } })
db.users.findOne({ name: 'Alice' })

// Update documents
db.users.updateOne(
    { name: 'Alice' },
    { $set: { age: 31 } }
)

// Delete documents
db.users.deleteOne({ name: 'Bob' })
db.users.deleteMany({ age: { $lt: 30 } })
```

### Index Operations

```javascript
// Create indexes
db.users.createIndex({ name: 1 })
db.users.createIndex({ age: -1 })

// View indexes
db.users.getIndexes()

// Drop index
db.users.dropIndex('name_1')
```


----------------

## Differences from MongoDB

FerretDB implements MongoDB's wire protocol but uses PostgreSQL for underlying storage. This means:

- MongoDB commands are translated to SQL statements for execution
- Most basic operations are compatible with MongoDB
- Some advanced features may differ or not be supported

You can consult the following resources for detailed information:

- [FerretDB Supported Commands](https://docs.ferretdb.io/reference/supported-commands/)
- [Differences from MongoDB](https://docs.ferretdb.io/diff/)
- [FerretDB Authentication](https://docs.ferretdb.io/security/authentication/)


----------------

## Programming Language Drivers

In addition to the `mongosh` command-line tool, you can also connect to FerretDB using MongoDB drivers for various programming languages:

### Python

```python
from pymongo import MongoClient

client = MongoClient('mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017/?authMechanism=PLAIN')
db = client.test
collection = db.users
collection.insert_one({'name': 'Alice', 'age': 30})
```

### Node.js

```javascript
const { MongoClient } = require('mongodb');

const uri = 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017/?authMechanism=PLAIN';
const client = new MongoClient(uri);

async function run() {
    await client.connect();
    const db = client.db('test');
    const collection = db.collection('users');
    await collection.insertOne({ name: 'Alice', age: 30 });
}
```

### Go

```go
import (
    "go.mongodb.org/mongo-driver/mongo"
    "go.mongodb.org/mongo-driver/mongo/options"
)

uri := "mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017/?authMechanism=PLAIN"
client, err := mongo.Connect(context.TODO(), options.Client().ApplyURI(uri))
```

Key point: All drivers require the `authMechanism=PLAIN` parameter in the connection string.
