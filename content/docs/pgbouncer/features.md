---
title: "Features"
weight: 10
description: "PgBouncer features — pooling modes and SQL compatibility"
icon: fa-solid fa-wand-magic-sparkles
module: [PGBOUNCER]
categories: [Concept]
---

> Source: <https://www.pgbouncer.org/features.html>

- Connection pooling modes with different connection reuse intervals:

  **Session pooling**
  : PgBouncer assigns a server connection to a client for its entire session. The connection returns to the pool when the client disconnects. This mode changes connection assignment least often and supports all PostgreSQL features.

  **Transaction pooling**
  : PgBouncer assigns a server connection only during a transaction. The connection returns to the pool when the transaction ends. Some PostgreSQL session features cannot work in this mode. The application must avoid these features. See the table below.

  **Statement pooling**
  : This mode changes connection assignment most often. It uses transaction pooling but disallows multi-statement transactions. It enforces client autocommit mode and mainly targets PL/Proxy.

- Low memory use: 2 kB per connection by default. PgBouncer does not need to hold a complete packet at once.

- Destination databases can be on different hosts. PgBouncer is not limited to one backend server.

- Supports online reconfiguration for most settings.

- Supports [rolling restarts and upgrades](/docs/pgbouncer/usage/#shutdown-wait_for_clients) using multiple processes with [`so_reuseport`](/docs/pgbouncer/config/#so_reuseport). The legacy online restart (`-R`) was removed in 1.26.0.

--------

## SQL feature map for pooling modes

This table shows PostgreSQL feature compatibility with each pooling mode. Transaction pooling changes client expectations of the server by design. Applications must avoid incompatible features.

| Feature                          | Session pooling  |  Transaction pooling  |
|----------------------------------|:----------------:|:---------------------:|
| Startup parameters [^0]          | Yes              |          Yes          |
| SET/RESET                        | Yes              | For tracked parameters [^0] |
| LISTEN                           | Yes              |         Never         |
| NOTIFY                           | Yes              |          Yes          |
| WITHOUT HOLD CURSOR              | Yes              |          Yes          |
| WITH HOLD CURSOR                 |       Yes        |         Never         |
| Protocol-level prepared plans    | Yes              |       Yes [^1]        |
| PREPARE / DEALLOCATE             | Yes              |         Never         |
| ON COMMIT DROP temp tables       | Yes              |          Yes          |
| PRESERVE/DELETE ROWS temp tables | Yes              |         Never         |
| Cached plan reset                | Yes              |          Yes          |
| LOAD statement                   | Yes              |         Never         |
| Session-level advisory locks     | Yes              |         Never         |

[^0]: Since 1.26.0, PgBouncer tracks all server-reported parameters that clients can change. These are `application_name`, `client_encoding`, `DateStyle`, `default_transaction_read_only` (PostgreSQL 14+), `IntervalStyle`, `scram_iterations` (PostgreSQL 16+), `search_path` (PostgreSQL 18+), `session_authorization`, `standard_conforming_strings`, and `TimeZone`. For parameters that the server does not report, PgBouncer tracks only startup values. It does not track later `SET` changes. See [`track_extra_parameters`](/docs/pgbouncer/config/#track_extra_parameters) and [`ignore_startup_parameters`](/docs/pgbouncer/config/#ignore_startup_parameters) for details and parameters supplied by extensions.

[^1]: Protocol-level prepared statement support requires a non-zero [`max_prepared_statements`](/docs/pgbouncer/config/#max_prepared_statements). The default is 200. Set it to 0 to disable support. SQL-level `PREPARE` / `DEALLOCATE` is incompatible with transaction pooling. The exceptions are `DEALLOCATE ALL` and `DISCARD ALL` when tracking is enabled.
