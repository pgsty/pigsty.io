# Module: REDIS

> Deploy Redis or Valkey through one REDIS module, with standalone replication, native cluster, and Sentinel modes.

---

LLMS index: [llms.txt](/llms.txt)

---

REDIS is Pigsty's Redis-compatible cache module. Choose **Redis** or **Valkey** with [`redis_type`](/docs/redis/param#redis_type); the default remains `redis`. Both engines support primary-replica replication, Sentinel, and native cluster mode while sharing configuration paths, instance service names, monitoring, and log entry points.

```yaml
redis_type: redis   # default; valkey is also supported
```

The role installs the selected engine and `redis-exporter`. Instance processes use `redis-server` / `redis-cli` or `valkey-server` / `valkey-cli`, respectively. Changing `redis_type` changes packages and binaries; it does not automatically validate data formats, replication topology, or rollback. Rehearse any existing-cluster switch, and use one engine consistently across a logical cluster.

The default Redis package remains on the 7.2 BSD branch. Patch versions can differ by operating-system repository; treat the target repository metadata as authoritative.

---

Section pages:

- [Configuration](/docs/redis/config/): Choose the appropriate Redis mode for your use case and express your requirements through the inventory
- [Parameters](/docs/redis/param/): The REDIS module provides 19 deployment and 3 removal parameters, with Redis or Valkey as the engine.
- [Playbook](/docs/redis/playbook/): Manage Redis clusters with Ansible playbooks and quick command reference.
- [Administration](/docs/redis/admin/): Redis cluster management SOPs for creating, destroying, scaling, and configuring high availability
- [Monitoring](/docs/redis/monitor/): How to monitor Redis? What alert rules are worth paying attention to?
- [Metrics](/docs/redis/metric/): Complete list of monitoring metrics provided by the Pigsty REDIS module with explanations
- [FAQ](/docs/redis/faq/): Frequently asked questions about the Pigsty REDIS module
