---
title: 为 PostgreSQL 集群启用 HugePage
linkTitle: 启用大页支持 
weight: 1708
description: 为 PostgreSQL 集群启用大页，减少大内存实例的页表开销并提高性能
icon: fa-solid fa-file-circle-plus
categories: [任务]
---


> Use `node_hugepage_count` and `node_hugepage_ratio` or `/pg/bin/pg-tune-hugepage`

If you plan to enable HugePages, consider using [`node_hugepage_count`](/docs/node/param#node_hugepage_count) and [`node_hugepage_ratio`](/docs/node/param#node_hugepage_ratio), and apply with `./node.yml -t node_tune`.

HugePages have pros and cons for databases. The advantage is that memory is managed exclusively, eliminating concerns about being reallocated and reducing database OOM risk. The disadvantage is that it may negatively impact performance in certain scenarios.

Before PostgreSQL starts, you need to allocate **enough** huge pages. The wasted portion can be reclaimed using the `pg-tune-hugepage` script, but this script is only available for PostgreSQL 15+.

If your PostgreSQL is already running, you can enable huge pages using the following method (PG15+ only):

```bash
sync; echo 3 > /proc/sys/vm/drop_caches   # Flush disk, release system cache (be prepared for database perf impact)
sudo /pg/bin/pg-tune-hugepage             # Write nr_hugepages to /etc/sysctl.d/hugepage.conf
pg restart <cls>                          # Restart postgres to use hugepage
```

