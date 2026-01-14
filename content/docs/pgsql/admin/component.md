---
title: Managing PostgreSQL Component Services
linkTitle: Component Admin
weight: 70
description: Use systemctl to manage PostgreSQL cluster component services - start, stop, restart, reload, and status check.
icon: fa-solid fa-gears
module: [PGSQL]
categories: [Task]
---

## Overview

Pigsty's PGSQL module consists of multiple components, each running as a systemd service on nodes. ([**pgbackrest**](/docs/concept/arch/pgsql#pgbackrest) is an exception)

Understanding these components and their management is essential for maintaining production PostgreSQL clusters.

| Component          | Port       | Service Name           | Description                                    |
|:-------------------|:-----------|:-----------------------|:-----------------------------------------------|
| Patroni            | **`8008`** | `patroni`              | HA manager, manages PostgreSQL lifecycle       |
| PostgreSQL         | **`5432`** | `postgres`             | Placeholder service, not used, for emergency   |
| Pgbouncer          | **`6432`** | `pgbouncer`            | Connection pooling middleware, traffic entry   |
| PgBackRest         | -          | -                      | pgBackRest has no daemon service               |
| HAProxy            | **`543x`** | `haproxy`              | Load balancer, exposes database services       |
| pg_exporter        | **`9630`** | `pg_exporter`          | PostgreSQL metrics exporter                    |
| pgbouncer_exporter | **`9631`** | `pgbouncer_exporter`   | Pgbouncer metrics exporter                     |
| vip-manager        | -          | `vip-manager`          | Optional, manages L2 VIP address floating      |
{.full-width}

{{% alert title="Important" color="warning" %}}
**Do NOT use systemctl directly to manage PostgreSQL service**. PostgreSQL is managed by Patroni - use [**`patronictl`**](/docs/pgsql/admin/patroni) commands instead.
Direct PostgreSQL operations may cause Patroni state inconsistency and trigger unexpected failover. The `postgres` service is an emergency escape hatch when Patroni fails.
{{% /alert %}}


----------------

## Quick Reference

| Operation    | Command                         |
|:-------------|:--------------------------------|
| Start        | `systemctl start <service>`     |
| Stop         | `systemctl stop <service>`      |
| Restart      | `systemctl restart <service>`   |
| Reload       | `systemctl reload <service>`    |
| Status       | `systemctl status <service>`    |
| Logs         | `journalctl -u <service> -f`    |
| Enable       | `systemctl enable <service>`    |
| Disable      | `systemctl disable <service>`   |

Common service names: `patroni`, `pgbouncer`, `haproxy`, `pg_exporter`, `pgbouncer_exporter`, `vip-manager`


----------------

## Patroni

[**Patroni**](https://patroni.readthedocs.io/) is PostgreSQL's HA manager, handling startup, shutdown, failure detection, and automatic failover.
It's the core PGSQL module component. PostgreSQL process is managed by Patroni - don't use systemctl to manage postgres service directly.

**Start Patroni**

```bash
systemctl start patroni     # Start Patroni (also starts PostgreSQL)
```

After starting, Patroni auto-launches PostgreSQL. On first start, behavior depends on role:
- Primary: Initialize or recover data directory
- Replica: Clone data from primary and establish replication

**Stop Patroni**

```bash
systemctl stop patroni      # Stop Patroni (also stops PostgreSQL)
```

Stopping Patroni gracefully shuts down PostgreSQL. Note: If this is primary and auto-failover isn't paused, may trigger failover.

**Restart Patroni**

```bash
systemctl restart patroni   # Restart Patroni (also restarts PostgreSQL)
```

Restart causes brief service interruption. For production, use `pg restart` for rolling restart.

**Reload Patroni**

```bash
systemctl reload patroni    # Reload Patroni config
```

Reload re-reads config file and applies hot-reloadable params to PostgreSQL.

**View Status & Logs**

```bash
systemctl status patroni    # View Patroni service status
journalctl -u patroni -f    # Real-time Patroni logs
journalctl -u patroni -n 100 --no-pager  # Last 100 lines
```

**Config file**: `/etc/patroni/patroni.yml`

> **Best Practice**: Use [**`patronictl`**](/docs/pgsql/admin/patroni) instead of systemctl to manage PostgreSQL clusters.


----------------

## Pgbouncer

[**Pgbouncer**](https://www.pgbouncer.org/) is a lightweight PostgreSQL connection pooling middleware.
Business traffic typically goes through Pgbouncer (6432) rather than directly to PostgreSQL (5432) for connection reuse and database protection.

**Start Pgbouncer**

```bash
systemctl start pgbouncer
```

**Stop Pgbouncer**

```bash
systemctl stop pgbouncer
```

Note: Stopping Pgbouncer disconnects all pooled business connections.

**Restart Pgbouncer**

```bash
systemctl restart pgbouncer
```

Restart disconnects all existing connections. For config changes only, use `reload`.

**Reload Pgbouncer**

```bash
systemctl reload pgbouncer
```

Reload re-reads config files (user list, pool params, etc.) without disconnecting existing connections.

**View Status & Logs**

```bash
systemctl status pgbouncer
journalctl -u pgbouncer -f
```

**Config files**:
- Main config: `/etc/pgbouncer/pgbouncer.ini`
- HBA rules: `/etc/pgbouncer/pgb_hba.conf`
- User list: `/etc/pgbouncer/userlist.txt`
- Database list: `/etc/pgbouncer/database.txt`

**Admin Console**

```bash
psql -p 6432 -U postgres -d pgbouncer  # Connect to Pgbouncer admin console
```

Common admin commands:

```sql
SHOW POOLS;      -- View pool status
SHOW CLIENTS;    -- View client connections
SHOW SERVERS;    -- View backend server connections
SHOW STATS;      -- View statistics
RELOAD;          -- Reload config
PAUSE;           -- Pause all pools
RESUME;          -- Resume all pools
```


----------------

## HAProxy

[**HAProxy**](https://www.haproxy.org/) is a high-performance load balancer that routes traffic to correct PostgreSQL instances.
Pigsty uses HAProxy to expose [**services**](/docs/pgsql/service/), routing traffic based on role (primary/replica) and health status.

**Start HAProxy**

```bash
systemctl start haproxy
```

**Stop HAProxy**

```bash
systemctl stop haproxy
```

Note: Stopping HAProxy disconnects all load-balanced connections.

**Restart HAProxy**

```bash
systemctl restart haproxy
```

**Reload HAProxy**

```bash
systemctl reload haproxy
```

HAProxy supports graceful reload without disconnecting existing connections. Use `reload` for config changes.

**View Status & Logs**

```bash
systemctl status haproxy
journalctl -u haproxy -f
```

**Config file**: `/etc/haproxy/haproxy.cfg`

**Admin Interface**

HAProxy provides a web admin interface, default port 9101:

```
http://<node_ip>:9101/haproxy
```

Default auth: username `admin`, password configured by [**`haproxy_admin_password`**](/docs/node/param#haproxy_admin_password).


----------------

## pg_exporter

[**pg_exporter**](https://github.com/pgsty/pg_exporter) is PostgreSQL's Prometheus metrics exporter for collecting database performance metrics.

**Start pg_exporter**

```bash
systemctl start pg_exporter
```

**Stop pg_exporter**

```bash
systemctl stop pg_exporter
```

After stopping, Prometheus can't collect PostgreSQL metrics from this instance.

**Restart pg_exporter**

```bash
systemctl restart pg_exporter
```

**View Status & Logs**

```bash
systemctl status pg_exporter
journalctl -u pg_exporter -f
```

**Config file**: `/etc/pg_exporter.yml`

**Verify Metrics**

```bash
curl -s localhost:9630/metrics | head -20
```


----------------

## pgbouncer_exporter

**pgbouncer_exporter** is Pgbouncer's Prometheus metrics exporter.

**Start/Stop/Restart**

```bash
systemctl start pgbouncer_exporter
systemctl stop pgbouncer_exporter
systemctl restart pgbouncer_exporter
```

**View Status & Logs**

```bash
systemctl status pgbouncer_exporter
journalctl -u pgbouncer_exporter -f
```

**Verify Metrics**

```bash
curl -s localhost:9631/metrics | head -20
```


----------------

## vip-manager

[**vip-manager**](https://github.com/cybertec-postgresql/vip-manager) is an optional component for managing L2 VIP address floating.
When [**`pg_vip_enabled`**](/docs/pgsql/param#pg_vip_enabled) is enabled, vip-manager binds VIP to current primary node.

**Start vip-manager**

```bash
systemctl start vip-manager
```

**Stop vip-manager**

```bash
systemctl stop vip-manager
```

After stopping, VIP address is released from current node.

**Restart vip-manager**

```bash
systemctl restart vip-manager
```

**View Status & Logs**

```bash
systemctl status vip-manager
journalctl -u vip-manager -f
```

**Config file**: `/etc/default/vip-manager`

**Verify VIP Binding**

```bash
ip addr show           # Check network interfaces, verify VIP binding
pg list <cls>          # Confirm primary location
```


----------------

## Startup Order & Dependencies

Recommended PGSQL module component startup order:

```
1. patroni          # Start Patroni first (auto-starts PostgreSQL)
2. pgbouncer        # Then start connection pool
3. haproxy          # Start load balancer
4. pg_exporter      # Start metrics exporters
5. pgbouncer_exporter
6. vip-manager      # Finally start VIP manager (if enabled)
```

Stop order should be reversed. Pigsty playbooks handle these dependencies automatically.

**Batch Start All Services**

```bash
systemctl start patroni pgbouncer haproxy pg_exporter pgbouncer_exporter
```

**Batch Stop All Services**

```bash
systemctl stop pgbouncer_exporter pg_exporter haproxy pgbouncer patroni
```


----------------

## Common Troubleshooting

**Service Startup Failure**

```bash
systemctl status <service>        # View service status
journalctl -u <service> -n 50     # View recent logs
journalctl -u <service> --since "5 min ago"  # Last 5 minutes logs
```

**Patroni Won't Start**

| Symptom | Possible Cause | Solution |
|:--------|:---------------|:---------|
| Can't connect to etcd | etcd cluster unavailable | Check etcd service status |
| Data dir permission error | File ownership not postgres | `chown -R postgres:postgres /pg/data` |
| Port in use | Leftover PostgreSQL process | `pg_ctl stop -D /pg/data` or `kill` |

**Pgbouncer Won't Start**

| Symptom | Possible Cause | Solution |
|:--------|:---------------|:---------|
| Config syntax error | INI format error | Check `/etc/pgbouncer/pgbouncer.ini` |
| Port in use | Port 6432 already used | `lsof -i :6432` |
| userlist.txt permissions | Incorrect file permissions | `chmod 600 /etc/pgbouncer/userlist.txt` |

**HAProxy Won't Start**

| Symptom | Possible Cause | Solution |
|:--------|:---------------|:---------|
| Config syntax error | haproxy.cfg format error | `haproxy -c -f /etc/haproxy/haproxy.cfg` |
| Port in use | Service port conflict | `lsof -i :5433` |


----------------

## Related Documentation

- [**Patroni Management**](/docs/pgsql/admin/patroni/): Manage PostgreSQL HA with patronictl
- [**Cluster Management**](/docs/pgsql/admin/cluster/): Create, scale, destroy clusters
- [**Service Configuration**](/docs/pgsql/service/): HAProxy service definition and config
- [**Monitoring System**](/docs/pgsql/monitor/): PostgreSQL monitoring and alerting
