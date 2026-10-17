# PgBouncer 1.26.0 Documentation

> PgBouncer - Lightweight connection pooler for PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: <https://www.pgbouncer.org/>

This manual is based on [PgBouncer 1.26.0](https://github.com/pgbouncer/pgbouncer/releases/tag/pgbouncer_1_26_0), released on 2026-09-23. See the [release notes](/docs/pgbouncer/changelog/#pgbouncer-126x) for the changes from earlier versions.

**pgbouncer** is a PostgreSQL connection pooler. Applications connect to **pgbouncer** as they would to a PostgreSQL server. **pgbouncer** creates a server connection or reuses an existing connection.

**pgbouncer** reduces the performance cost of opening new PostgreSQL connections.

To preserve transaction semantics, **pgbouncer** supports these connection pooling modes:

- **Session pooling**: PgBouncer assigns a server connection to a client for its entire session. When the client disconnects, the connection returns to the pool. This is the default mode and changes connection assignment least often.
- **Transaction pooling**: PgBouncer assigns a server connection only during a transaction. When the transaction ends, the connection returns to the pool.
- **Statement pooling**: The connection returns to the pool immediately after each query. This mode changes connection assignment most often and does not allow multi-statement transactions.

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
