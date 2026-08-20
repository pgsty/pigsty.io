# pgBouncer 1.25 Documentation

> PgBouncer - Lightweight connection pooler for PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: <https://www.pgbouncer.org/>

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

---

Section pages:

- [Features](/docs/pgbouncer/features/): PgBouncer features — pooling modes and SQL compatibility
- [Configuration: pgbouncer.ini](/docs/pgbouncer/config/): PgBouncer configuration file (pgbouncer.ini) reference
- [Usage: pgbouncer command](/docs/pgbouncer/usage/): PgBouncer command-line usage and administration console
- [PgBouncer compilation and installation](/docs/pgbouncer/install/): PgBouncer compilation and installation instructions
- [Source Releases Download](/docs/pgbouncer/download/): PgBouncer source releases and binary packages
- [Changelog](/docs/pgbouncer/changelog/): PgBouncer version history and release notes
- [Community](/docs/pgbouncer/community/): PgBouncer community resources, tutorials, and support
- [Frequently Asked Questions](/docs/pgbouncer/faq/): PgBouncer frequently asked questions
