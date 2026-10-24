# Frequently Asked Questions

> PgBouncer frequently asked questions

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: <https://www.pgbouncer.org/faq.html>

--------

## How to connect to PgBouncer?

PgBouncer acts as a Postgres server. Configure your client to use the PgBouncer port.

--------

## How to load-balance queries between several servers?

PgBouncer supports comma-separated hosts in a database connection string. With [`load_balance_hosts=round-robin`](/docs/pgbouncer/config/#load_balance_hosts), new server connections use each host in turn. For example:

```ini
[databases]
app = host=pg1,pg2 port=5432 dbname=app load_balance_hosts=round-robin
```

You can also use external tools:

1.  DNS round-robin: Assign several IP addresses to one DNS name. PgBouncer caches all addresses and uses them in turn. It does not run a DNS lookup for every new connection. For more than 8 addresses per name, the DNS backend must support EDNS0. See [DNS lookup support](/docs/pgbouncer/install/#dns-lookup-support).

2.  Use a TCP load balancer, such as [LVS](http://www.linuxvirtualserver.org/) or [HAProxy](https://www.haproxy.org/). Consider reducing `server_lifetime` and enabling `server_round_robin` in PgBouncer. By default, idle connection reuse follows a LIFO algorithm, which may be unsuitable for load balancing.

--------

## How to failover

With comma-separated hosts and [`load_balance_hosts=disable`](/docs/pgbouncer/config/#load_balance_hosts), PgBouncer uses one host until a connection attempt fails. It then tries the next host. This does not detect primary or replica roles. Use external tools for failover that follows database topology changes:

1. DNS reconfiguration: When the IP address for a DNS name changes, PgBouncer reconnects to the new server. Set `dns_max_ttl` to control the cache lifetime for each host name. Set `dns_zone_check_period` to control how often PgBouncer checks a zone SOA for changes. If the SOA record changes, PgBouncer looks up all host names in that zone again.

2. Change the host in the configuration. To reload it, send SIGHUP or run `RELOAD` on the console. PgBouncer detects the changed host and reconnects to the new server.

3. Use `RECONNECT` if neither preceding method applies. For example, HAProxy may route downstream connections from PgBouncer. After HAProxy changes its routing information, run `RECONNECT` to reopen all server connections.

--------

## How to use prepared statements with session pooling?

In session pooling, the reset query must remove old prepared statements. Use `server_reset_query = DISCARD ALL;` or at least `DEALLOCATE ALL;`.

--------

## How to use prepared statements with transaction pooling?

Since 1.21.0, PgBouncer can track prepared statements in transaction pooling. It prepares them as needed on the linked server connection. To enable support, set `max_prepared_statements` to a non-zero value. The default is 200. See the [`max_prepared_statements` documentation](/docs/pgbouncer/config/#max_prepared_statements).

PHP/PDO compatibility with PgBouncer prepared statements depends on its version ([#991]). Compatibility requires [PHP 8.4+ **and** libpq 17][php-fix]. For older versions, we recommend an upgrade or disabling prepared statements on the client.

[php-fix]: https://github.com/php/php-src/commit/f35ad560b468e3e0a6c289949ba9b19af4fa3e7b

[#991]: https://github.com/pgbouncer/pgbouncer/issues/991

### Disabling prepared statements in JDBC

For JDBC, add `prepareThreshold=0` to the connection string.

### Disabling prepared statements in PHP/PDO

To disable server-side prepared statements, set `PDO::ATTR_EMULATE_PREPARES` to `true`. You can set it when you connect:

    $db = new PDO("dsn", "user", "pass", array(PDO::ATTR_EMULATE_PREPARES => true));

or later:

    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, true);

--------

## How to upgrade PgBouncer without dropping connections?

Use a rolling restart. Follow the [`SHUTDOWN WAIT_FOR_CLIENTS` procedure](/docs/pgbouncer/usage/#shutdown-wait_for_clients).

--------

## How to know which client is on which server connection?

Use the `SHOW CLIENTS` and `SHOW SERVERS` commands on the console.

1.  Use `ptr` and `link` to map local client connection to server
    connection.

2.  Use `addr` and `port` of client connection to identify TCP
    connection from client.

3.  Use `local_addr` and `local_port` to identify TCP connection to
    server.

--------

## Should PgBouncer be installed on the web server or database server?

It depends.

For short-lived connections, install PgBouncer on the web server to minimize connection setup latency. TCP needs several packet round trips before a connection is usable. If many hosts, such as web servers, connect to one database server, install PgBouncer on that database server. This lets PgBouncer optimize their connections together.

You can install PgBouncer on both web and database servers. Each PgBouncer hop adds a small delay to each query.

Test each arrangement against your performance requirements. Consider how its placement affects application failover when a web server or database server fails.
