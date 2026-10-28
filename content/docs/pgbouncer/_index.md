---
title: "PgBouncer 1.26.1 Documentation"
linkTitle: pgbouncer
weight: 8100
description: "PgBouncer - Lightweight connection pooler for PostgreSQL"
icon: fas fa-baseball
sidebar_root_for: self
module: [PGBOUNCER]
categories: [Concept]
upstream_link: "https://www.pgbouncer.org/"
upstream_source: "pgbouncer"
upstream_ref: "v1.26.1"
search_keywords: ["v1.26.1"]
cascade: {"upstream_source": "pgbouncer"}
---

This manual is based on [PgBouncer 1.26.1](https://github.com/pgbouncer/pgbouncer/releases/tag/pgbouncer_1_26_1), released on 2026-10-14. See the [release notes](/docs/pgbouncer/changelog/#pgbouncer-126x) for the changes from earlier versions.

**pgbouncer** is a PostgreSQL connection pooler. Any target application
can be connected to **pgbouncer** as if it were a PostgreSQL server,
and **pgbouncer** will create a connection to the actual server, or it
will reuse one of its existing connections.

The aim of **pgbouncer** is to lower the performance impact of opening
new connections to PostgreSQL.

In order not to compromise transaction semantics for connection
pooling, **pgbouncer** supports several types of pooling when
rotating connections:

- **Session pooling**: Most polite method. When a client connects, a server connection will be assigned to it for the whole duration the client stays connected. When the client disconnects, the server connection will be put back into the pool. This is the default method.
- **Transaction pooling**: A server connection is assigned to a client only during a transaction. When PgBouncer notices that transaction is over, the server connection will be put back into the pool.
- **Statement pooling**: Most aggressive method. The server connection will be put back into the pool immediately after a query completes. Multi-statement transactions are disallowed in this mode.

## Source and license {#upstream-attribution}

This manual covers PgBouncer 1.26.1. It was synchronized from the [PG.CENTER English edition](https://doc.pg.center/pgbouncer/) on 2026-10-28, with paths and navigation adapted for this site.

Copyright (c) 2007-2009 Marko Kreen, Skype Technologies OÜ. The original documentation is licensed under [ISC](https://opensource.org/license/isc-license-txt); the complete copyright and license notice is retained [upstream](https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_1/COPYRIGHT).
