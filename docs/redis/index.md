# Module: REDIS

> Deploy Redis or Valkey through one REDIS module, with standalone replication, native cluster, and Sentinel modes.

---

LLMS index: [llms.txt](/llms.txt)

---

REDIS is Pigsty's Redis-compatible cache module. Select **Redis** or **Valkey** with [`redis_type`](/docs/redis/param#redis_type). The default remains `redis`. Both engines support primary-replica replication, Sentinel, and native cluster mode. They share configuration paths, instance service names, monitoring, and log entry points.

```yaml
redis_type: redis   # default; valkey is also supported
```

The role installs the selected engine and `redis-exporter`. Instance processes use `redis-server` / `redis-cli` or `valkey-server` / `valkey-cli`, respectively. A change to `redis_type` changes packages and binaries. It does not automatically validate data formats, replication topology, or rollback. Rehearse any engine change on an existing cluster. Use the same engine throughout a logical cluster.

The default Redis package remains on the 7.2 BSD branch. Patch versions can differ between operating-system repositories. Use the target repository metadata as the authoritative source.

---

Section pages:

- [Configuration](/docs/redis/config/): Choose the appropriate Redis mode for your use case and express your requirements through the inventory
- [Parameters](/docs/redis/param/): The REDIS module provides 19 deployment and 3 removal parameters, with Redis or Valkey as the engine.
- [Playbook](/docs/redis/playbook/): Manage Redis clusters with Ansible playbooks and quick command reference.
- [Administration](/docs/redis/admin/): Redis cluster management SOPs for creating, destroying, scaling, and configuring high availability
- [Monitoring](/docs/redis/monitor/): How to monitor Redis? What alert rules are worth paying attention to?
- [Metrics](/docs/redis/metric/): Current REDIS recording rules, raw metric sources, and historical scrape samples. with explanations
- [FAQ](/docs/redis/faq/): Frequently asked questions about the Pigsty REDIS module
