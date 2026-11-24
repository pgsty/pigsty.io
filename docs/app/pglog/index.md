# PGLOG: PostgreSQL Log Analysis Application

> A sample Applet included with Pigsty for analyzing PostgreSQL CSV log samples

---

LLMS index: [llms.txt](/llms.txt)

---

PGLOG is a sample Pigsty application that uses `pglog.sample` in MetaDB as its data source. Load logs into this table, then open the related dashboard.

Pigsty provides commands to retrieve CSV logs and load them into the sample table. These shortcuts are available on the meta node by default:

```bash
catlog  [node=localhost]  [date=today]   # Print CSV log to stdout
pglog                                    # Load CSVLOG from stdin
pglog12                                  # Load PG12 format CSVLOG
pglog13                                  # Load PG13 format CSVLOG
pglog14                                  # Load PG14 format CSVLOG (=pglog)

catlog | pglog                       # Analyze current node's log for today
catlog node-1 '2021-07-15' | pglog   # Analyze node-1's csvlog for 2021-07-15
```

Use these links to view the sample log analysis:

* [PGLOG Overview](https://demo.pigsty.io/d/pglog-overview):  Present the entire CSV log sample details, aggregated by multiple dimensions.

[![PGLOG overview dashboard](/img/dashboard/pglog-overview.jpg)](https://demo.pigsty.io/d/pglog-overview)

* [PGLOG Session](https://demo.pigsty.io/d/pglog-session):  Present detailed information about a specific connection in the log sample.

[![PGLOG session dashboard](/img/dashboard/pglog-session.jpg)](https://demo.pigsty.io/d/pglog-session)

The `catlog` command retrieves CSV database logs for a node and date, then writes them to `stdout`.

By default, `catlog` pulls logs from the current node for today. You can specify the node and date through parameters.

Use `pglog` with `catlog` to retrieve and analyze database CSV logs:

```bash
catlog | pglog                       # Analyze current node's log for today
catlog node-1 '2021-07-15' | pglog   # Analyze node-1's csvlog for 2021-07-15
```
