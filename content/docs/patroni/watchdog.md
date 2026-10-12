---
title: "Watchdog support"
weight: 90
icon: fa-solid fa-dog
description: "Watchdog integration and fencing considerations for Patroni clusters."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/watchdog.html

<a id="watchdog"></a>

Multiple PostgreSQL primaries can lose transactions because their timelines diverge. This is called split-brain. Patroni must prevent PostgreSQL from accepting transaction commits after the leader key expires in the DCS. Normally, Patroni stops PostgreSQL if the leader lock update fails for any reason. This protection can fail for these reasons:

- Patroni crashes because of a bug, insufficient memory, or an accidental kill by a system administrator.
- PostgreSQL shutdown takes too long.
- System load, a VM pause by the hypervisor, or other infrastructure problems prevent Patroni from running.

Patroni supports watchdog devices to guarantee correct behavior under these conditions. A software or hardware watchdog resets the whole system if it receives no keepalive heartbeat within a specified time. This adds protection if the usual Patroni split-brain controls fail.

Patroni tries to activate the watchdog before it promotes PostgreSQL to primary. If activation fails and watchdog mode is `required`, the node refuses to become leader. Before it enters a leader election, Patroni checks whether the watchdog configuration permits it to become leader. After it demotes PostgreSQL, for example during manual failover, Patroni disables the watchdog. Patroni also disables the watchdog while paused.

By default, the watchdog expires 5 seconds before the TTL. With `loop_wait=10` and `ttl=30`, the HA loop has at least 15 seconds before a forced reset. This interval is `ttl` - `safety_margin` - `loop_wait`. DCS access times out after 10 seconds by default. If the DCS is unavailable, for example because of network problems, Patroni and PostgreSQL have at least 5 seconds to terminate all client connections. This interval is `ttl` - `safety_margin` - `loop_wait` - `retry_timeout`.

The safety margin reserves time between a leader key update and a watchdog keepalive. Patroni tries to send the keepalive immediately after the DCS confirms the update. A long process suspension at this point can delay the keepalive beyond the safety margin without triggering the watchdog. The watchdog can then expire after the leader key, which invalidates the guarantee.

To guarantee watchdog expiration under all conditions, set `safety_margin` to -1. This sets the watchdog timeout to half the TTL: `ttl // 2`. If you need this guarantee, you probably should increase `ttl` and/or reduce `loop_wait` and `retry_timeout`.

Currently, Patroni supports only the Linux watchdog device interface.

--------

## Setting up software watchdog on Linux

On Linux, the default configuration tries to use `/dev/watchdog` if Patroni can access it. The Linux kernel software watchdog is sufficiently secure for most use cases.

Before you start Patroni, run these commands as root to enable the software watchdog:

``` bash
modprobe softdog
# Replace postgres with the user you will be running patroni under
chown postgres /dev/watchdog
```

For tests, add `soft_noboot=1` to the modprobe command to disable reboots. The watchdog then only writes to the kernel ring buffer. Use `dmesg` to read the message.

Patroni logs watchdog information after it enables the watchdog successfully.
