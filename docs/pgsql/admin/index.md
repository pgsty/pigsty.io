# Administration

> Standard Operating Procedures (SOP) for database administration tasks

---

LLMS index: [llms.txt](/llms.txt)

---

Section pages:

- [Managing PostgreSQL Clusters](/docs/pgsql/admin/cluster/): Create/destroy PostgreSQL clusters, scale existing clusters, and clone clusters.
- [Managing PostgreSQL Users](/docs/pgsql/admin/user/): User management - create, modify, delete users, manage role membership, connection pool config
- [Managing PostgreSQL Databases](/docs/pgsql/admin/db/): Database management - create, modify, delete, rebuild, and clone databases using templates
- [Patroni HA Management](/docs/pgsql/admin/patroni/): Manage PostgreSQL cluster HA with Patroni, including config changes, status check, switchover, restart, and reinit replica.
- [Managing PostgreSQL HBA Rules](/docs/pgsql/admin/hba/): HBA management - refresh rules, verify config, troubleshoot, Pgbouncer HBA
- [Pgbouncer Connection Pooling](/docs/pgsql/admin/pgbouncer/): Manage Pgbouncer connection pool, including pause, resume, disable, enable, reconnect, kill, and reload operations.
- [Managing PostgreSQL Component Services](/docs/pgsql/admin/component/): Use systemctl to manage PostgreSQL cluster component services - start, stop, restart, reload, and status check.
- [Manage PostgreSQL Cron Jobs](/docs/pgsql/admin/crontab/): Configure crontab to schedule PostgreSQL backups, vacuum freeze, and bloat maintenance tasks
- [Managing PostgreSQL Extensions](/docs/pgsql/admin/ext/): Extension management - download, install, configure, enable, update, and remove extensions
- [Upgrading PostgreSQL Major/Minor Versions](/docs/pgsql/admin/upgrade/): Version upgrade - minor version rolling upgrade, major version migration, extension upgrade
