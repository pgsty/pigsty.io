# Tutorials

> Step-by-step guides for common PostgreSQL tasks and scenarios.

---

LLMS index: [llms.txt](/llms.txt)

---

This section provides step-by-step tutorials for common PostgreSQL tasks and scenarios.

- [**Citus Cluster**](/docs/pgsql/tutorial/citus/): Deploy and manage Citus distributed clusters
- [**Disaster Drill**](/docs/pgsql/tutorial/drill/): Emergency recovery when 2 of 3 nodes fail
- [**PG VIP**](/docs/pgsql/tutorial/pg-vip/): Configure L2 VIP for PostgreSQL clusters

---

Section pages:

- [Troubleshooting](/docs/pgsql/tutorial/failure/): Common failures and analysis troubleshooting approaches
- [Manual PITR Drill](/docs/pgsql/tutorial/pitr/): Run, validate, and complete PostgreSQL point-in-time recovery in explicit stages inside an isolated sandbox.
- [Enabling HugePage for PostgreSQL](/docs/pgsql/tutorial/hugepage/): Enabling HugePage for PostgreSQL to reduce memory fragmentation and improve performance.
- [Clone and Side-Restore a PostgreSQL Instance](/docs/pgsql/tutorial/pg-fork/): Create a local physical copy with pg-fork and run low-level pgBackRest recovery against a stopped data directory with pg-pitr.
- [Accidental Deletion](/docs/pgsql/tutorial/drop/): Handling accidental data deletion, table deletion, and database deletion
- [HA Drill: Handling 2-of-3 Node Failure](/docs/pgsql/tutorial/drill/): HA scenario response plan: When two of three nodes fail and auto-failover doesn't work, how to recover from the emergency state?
- [Bind a L2 VIP to PostgreSQL Primary with VIP-Manager](/docs/pgsql/tutorial/pg-vip/)
- [Deploy HA Citus Cluster](/docs/pgsql/tutorial/citus/): How to deploy a Citus high-availability distributed cluster?
