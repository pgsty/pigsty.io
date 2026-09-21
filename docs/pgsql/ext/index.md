# Extensions

> Harness the synergistic power of PostgreSQL extensions

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty provides [**576 packaged extensions**](/ext/list), covering 16 major categories including time-series, geospatial, vector, full-text search, analytics, and feature enhancements, ready to use out-of-the-box.

Using extensions in Pigsty involves four core steps: [**Download**](/docs/pgsql/ext/download), [**Install**](/docs/pgsql/ext/install), [**Config/Load**](/docs/pgsql/ext/config), and [**Create**](/docs/pgsql/ext/create).

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases:
      - name: meta
        extensions: [ postgis, timescaledb, vector ]   # Create: Create extensions in database
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain' # Config: Preload extension libraries
    pg_extensions: [ postgis, timescaledb, pgvector ]  # Install: Install extension packages
```

![Pigsty PostgreSQL extension ecosystem](/img/pigsty/ecosystem.png)

---

Section pages:

- [Quick Start](/docs/pgsql/ext/start/): Four-step process overview for using extensions
- [Introduction](/docs/pgsql/ext/intro/): Core concepts of PostgreSQL extensions and the Pigsty extension ecosystem
- [Packages](/docs/pgsql/ext/pkg/): Extension package aliases and category naming conventions
- [Download](/docs/pgsql/ext/download/): Download extension packages from software repositories to local
- [Install](/docs/pgsql/ext/install/): Install extension packages on cluster nodes
- [Config](/docs/pgsql/ext/config/): Preload extension libraries and configure extension parameters
- [Create](/docs/pgsql/ext/create/): Create and enable extensions in databases
- [Update](/docs/pgsql/ext/update/): Upgrade PostgreSQL extension versions
- [Remove](/docs/pgsql/ext/remove/): Uninstall PostgreSQL extensions
- [Default Extensions](/docs/pgsql/ext/extension/): PostgreSQL extensions installed by default in Pigsty
- [Repository](/docs/pgsql/ext/repo/): Pigsty extension software repository configuration
