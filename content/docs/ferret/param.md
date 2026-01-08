---
title: Parameters
linkTitle: Parameters
weight: 4030
description: Customize FerretDB with 9 parameters
icon: fa-solid fa-sliders
categories: [Reference]
---

## Parameter Overview

The [`FERRET`](#ferret) parameter group is used for FerretDB deployment and configuration, including identity, underlying PostgreSQL connection, listen ports, and SSL settings.

| Parameter                                       |   Type   | Level | Description                                      |
|:------------------------------------------------|:--------:|:-----:|:-------------------------------------------------|
| [`mongo_seq`](#mongo_seq)                       |  `int`   |  `I`  | mongo instance number, required identity param   |
| [`mongo_cluster`](#mongo_cluster)               | `string` |  `C`  | mongo cluster name, required identity param      |
| [`mongo_pgurl`](#mongo_pgurl)                   | `pgurl`  | `C/I` | PostgreSQL URL for FerretDB backend              |
| [`mongo_ssl_enabled`](#mongo_ssl_enabled)       |  `bool`  |  `C`  | Enable SSL? default is `false`                   |
| [`mongo_listen`](#mongo_listen)                 |   `ip`   |  `C`  | Listen address, empty listens on all addresses   |
| [`mongo_port`](#mongo_port)                     |  `port`  |  `C`  | Service port, default `27017`                    |
| [`mongo_ssl_port`](#mongo_ssl_port)             |  `port`  |  `C`  | TLS listen port, default `27018`                 |
| [`mongo_exporter_port`](#mongo_exporter_port)   |  `port`  |  `C`  | Exporter port, default `9216`                    |
| [`mongo_extra_vars`](#mongo_extra_vars)         | `string` |  `C`  | Extra environment variables, empty by default    |


----------------

## Defaults

Default parameters are defined in [`roles/ferret/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/ferret/defaults/main.yml):

```yaml
# mongo_cluster:        #CLUSTER  # mongo cluster name, required identity param
# mongo_seq: 0          #INSTANCE # mongo instance sequence, required identity param
# mongo_pgurl: 'postgres:///'     # mongo/ferretdb underlying postgresql url, required
mongo_ssl_enabled: false          # mongo/ferretdb ssl enabled, default false
mongo_listen: ''                  # mongo/ferretdb listen address, '' for all
mongo_port: 27017                 # mongo/ferretdb listen port, default 27017
mongo_ssl_port: 27018             # mongo/ferretdb tls listen port, default 27018
mongo_exporter_port: 9216         # mongo/ferretdb exporter port, default 9216
mongo_extra_vars: ''              # mongo/ferretdb extra environment variables
```


----------------

## `mongo_cluster`

Parameter: `mongo_cluster`, Type: `string`, Level: `C`

mongo cluster name, a required identity parameter.

No default value—you must explicitly define it for production environments.

The cluster name must comply with the regex `[a-z][a-z0-9-]*`. Using descriptive names is recommended.


----------------

## `mongo_seq`

Parameter: `mongo_seq`, Type: `int`, Level: `I`

mongo instance sequence number, a unique integer identifier within the cluster.

You must explicitly define the sequence number for each mongo instance. Integers start from 0 or 1.


----------------

## `mongo_pgurl`

Parameter: `mongo_pgurl`, Type: `pgurl`, Level: `C/I`

PostgreSQL URL for FerretDB backend connection, a required parameter.

No default value—you must explicitly define it. This is the PostgreSQL database connection string that FerretDB will use as its backend storage.

Format: `postgres://username:password@host:port/database`

Notes:
- The user needs to be a PostgreSQL superuser
- The target database needs the `documentdb` extension installed
- Using a dedicated `mongod` user is recommended


----------------

## `mongo_ssl_enabled`

Parameter: `mongo_ssl_enabled`, Type: `bool`, Level: `C`

Enable SSL/TLS encryption for FerretDB.

Default is `false`. Set to `true` to enable SSL/TLS encryption for mongo connections.

When enabled, FerretDB will:
- Generate and issue SSL certificates
- Listen for encrypted connections on [`mongo_ssl_port`](#mongo_ssl_port)


----------------

## `mongo_listen`

Parameter: `mongo_listen`, Type: `ip`, Level: `C`

Listen address for mongo binding.

Default is empty string `''`, meaning listen on all available addresses (`0.0.0.0`). You can specify a specific IP address to bind to.


----------------

## `mongo_port`

Parameter: `mongo_port`, Type: `port`, Level: `C`

Service port for mongo client connections.

Default is `27017`, which is the standard MongoDB port. Change this port if you need to avoid port conflicts or have security considerations.


----------------

## `mongo_ssl_port`

Parameter: `mongo_ssl_port`, Type: `port`, Level: `C`

TLS listen port for mongo encrypted connections.

Default is `27018`. When SSL/TLS is enabled via [`mongo_ssl_enabled`](#mongo_ssl_enabled), FerretDB will accept encrypted connections on this port.


----------------

## `mongo_exporter_port`

Parameter: `mongo_exporter_port`, Type: `port`, Level: `C`

Exporter port for mongo metrics collection.

Default is `9216`. This port is used by FerretDB's built-in metrics exporter to expose monitoring metrics to Prometheus.


----------------

## `mongo_extra_vars`

Parameter: `mongo_extra_vars`, Type: `string`, Level: `C`

Extra environment variables for FerretDB server.

Default is empty string `''`. You can specify additional environment variables to pass to the FerretDB process in `KEY=VALUE` format, with multiple variables separated by spaces.

Example:

```yaml
mongo_extra_vars: 'FERRETDB_LOG_LEVEL=debug FERRETDB_TELEMETRY=disable'
```

