# Enabling HugePage for PostgreSQL

> Enabling HugePage for PostgreSQL to reduce memory fragmentation and improve performance.

---

LLMS index: [llms.txt](/llms.txt)

---

> Use `node_hugepage_count` and `node_hugepage_ratio` or `/pg/bin/pg-tune-hugepage`

To enable HugePages, consider [`node_hugepage_count`](/docs/node/param#node_hugepage_count) and [`node_hugepage_ratio`](/docs/node/param#node_hugepage_ratio).
Apply these settings with `./node.yml -t node_tune`.

HugePages have advantages and disadvantages for databases.
Exclusive memory management prevents reallocation and reduces database OOM risk.
However, HugePages can reduce performance in some conditions.

Before PostgreSQL starts, allocate **enough** huge pages.
The `pg-tune-hugepage` script can reclaim the unused portion.
This script is available only for PostgreSQL 15+.

If PostgreSQL is already running, use this method to enable huge pages.
It requires PG15+:

```bash
sync; echo 3 > /proc/sys/vm/drop_caches   # Flush disk, release system cache (be prepared for database perf impact)
sudo /pg/bin/pg-tune-hugepage             # Write nr_hugepages to /etc/sysctl.d/hugepage.conf
pg restart <cls>                          # Restart postgres to use hugepage
```
