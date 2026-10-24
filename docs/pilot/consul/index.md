# Module: Consul

> Deploy Consul, the alternative to Etcd, with Pigsty.

---

LLMS index: [llms.txt](/llms.txt)

---

Consul is a distributed DCS, KV, DNS, and service registry/discovery component.

Pigsty 1.x used Consul as its high-availability DCS. The current open-source tree no longer includes the Consul role, playbook, or `consul_*` parameters. You cannot use the inventory from older versions to deploy Consul. Current Pigsty DCS integration is provided by the [ETCD](/docs/etcd/) module.
