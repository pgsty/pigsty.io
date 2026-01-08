---
title: "Module: FERRET"
linkTitle: "Module: FERRET"
weight: 4000
description: Add MongoDB-compatible protocol support to PostgreSQL using FerretDB
icon: fas fa-leaf
categories: [Reference]
---

**FERRET** is an **optional** module in Pigsty for deploying [**FerretDB**](https://github.com/FerretDB/FerretDB) —
a protocol translation middleware built on the PostgreSQL kernel and the [DocumentDB](https://pgext.cloud/e/documentdb) extension.
It enables applications using MongoDB drivers to connect and translates those requests into PostgreSQL operations.

Pigsty is a community partner of FerretDB. We have built binary packages for [**FerretDB**](https://github.com/FerretDB/FerretDB) and [**DocumentDB**](https://github.com/FerretDB/documentdb) (FerretDB-specific fork),
and provide a ready-to-use configuration template [`mongo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mongo.yml) to help you easily deploy enterprise-grade FerretDB clusters.
