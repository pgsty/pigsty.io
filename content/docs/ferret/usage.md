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
$ mongosh 'mongodb://postgres:DBUser.Postgres@10.10.10.10:27017'
Current Mongosh Log ID:	696b5bb93441875f86284d0b
Connecting to:		mongodb://<credentials>@10.10.10.10:27017/?directConnection=true&appName=mongosh+2.6.0
Using MongoDB:		7.0.77
Using Mongosh:		2.6.0

test>
```

### Using Connection Strings

FerretDB authentication is entirely based on PostgreSQL. You can directly use PostgreSQL usernames and passwords.

```bash
mongosh 'mongodb://postgres:DBUser.Postgres@10.10.10.10:27017'
```

Connection string format:

```bash
mongodb://<username>:<password>@<host>:<port>/<database>
```

### Using Different Users

You can connect to FerretDB using any user that has been created in PostgreSQL:

```bash
# Using dbuser_dba superuser
mongosh 'mongodb://dbuser_dba:DBUser.DBA@10.10.10.10:27017'

# Using dbuser_meta admin user
mongosh 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017'

# Using dbuser_view readonly user
mongosh 'mongodb://dbuser_view:DBUser.Viewer@10.10.10.10:27017'
```


----------------

## Basic Operations

After connecting to FerretDB, you can operate it just like MongoDB. Here are some basic operation examples:

### Database Operations

```js
// Show all databases
show dbs

// Show all collections
show collections

// Switch to / create database
use mydb

// Drop current database
db.dropDatabase();
```

### Collection Operations

```javascript
db.createCollection('users');     // Create collection
db.users.drop();                  // Drop collection
```

### Document Operations

```javascript
// Insert a single document
db.users.insertOne({
    name: 'Alice', age: 30, email: 'alice@example.com'
});

// Insert multiple documents
db.users.insertMany([
    { name: 'Bob', age: 25 },
    { name: 'Charlie', age: 35 }
]);

// Query documents
db.users.find();
db.users.find({ age: { $gt: 25 } });
db.users.findOne({ name: 'Alice' });

// Update documents
db.users.updateOne(
    { name: 'Alice' },
    { $set: { age: 31 } }
);

// Delete documents
db.users.deleteOne({ name: 'Bob' });
db.users.deleteMany({ age: { $lt: 30 } });
```

### Index Operations

```javascript
// Create index
db.users.createIndex({ age: -1 });

// View indexes
db.users.getIndexes();

// Drop index
db.users.dropIndex('name_1');
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

client = MongoClient('mongodb://dbuser_dba:DBUser.DBA@10.10.10.10:27017')
db = client.test
collection = db.users
collection.insert_one({'name': 'Alice', 'age': 30})
```

### Node.js

```javascript
const { MongoClient } = require('mongodb');

const uri = 'mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017';
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

uri := "mongodb://dbuser_meta:DBUser.Meta@10.10.10.10:27017"
client, err := mongo.Connect(context.TODO(), options.Client().ApplyURI(uri))
```
