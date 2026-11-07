# Configuration

> How to configure INFRA nodes? Customize Nginx, local repo, DNS, NTP, monitoring components.

---

LLMS index: [llms.txt](/llms.txt)

---

## Configuration Guide

INFRA primarily provides **monitoring** infrastructure. It is **optional** for PostgreSQL databases.

INFRA failures typically do not affect PostgreSQL cluster operation. Exceptions apply if you manually configure dependencies on INFRA DNS/NTP services.

One INFRA node is sufficient for most scenarios. For production HA, we recommend 2-3 INFRA nodes.

ETCD, which PostgreSQL HA requires, can share nodes with INFRA to use resources more efficiently.

More than 3 INFRA nodes provide little extra benefit. More ETCD nodes, such as 5, can improve DCS availability.


----------------

## Configuration Examples

Add node IP addresses to the `infra` inventory group. Assign an INFRA instance number with `infra_seq`.

Default single INFRA node config:

```yaml
all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } }}
```

During configuration, Pigsty replaces `10.10.10.10` with the current node's primary IP address by default.

Run `infra.yml` to initialize the INFRA module on these nodes.


### More Nodes

Two INFRA nodes config:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }
        10.10.10.11: { infra_seq: 2 }
```

Three INFRA nodes config (with params):

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }
        10.10.10.11: { infra_seq: 2, repo_enabled: false }
        10.10.10.12: { infra_seq: 3, repo_enabled: false }
      vars:
        grafana_clean: false
        vmetrics_clean: false
        vlogs_clean: false
        vtraces_clean: false
```


----------------

## INFRA High Availability

Most INFRA components have no state or share identical state. Thus, load balancing is the main HA requirement.

Use a Keepalived L2 VIP or HAProxy L4 load balancing for HA. We recommend an L2 VIP where nodes share an accessible L2 network.

Config example:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
    10.10.10.12: { infra_seq: 3 }
  vars:
    vip_enabled: true
    vip_vrid: 128
    vip_address: 10.10.10.8
    vip_interface: eth1

    infra_portal:
      home         : { domain: i.pigsty }
      grafana      : { domain: g.pigsty ,endpoint: "10.10.10.8:3000" , websocket: true }
      prometheus   : { domain: p.pigsty ,endpoint: "10.10.10.8:8428" }
      alertmanager : { domain: a.pigsty ,endpoint: "10.10.10.8:9059" }
      blackbox     : { endpoint: "10.10.10.8:9115" }
      vmalert      : { endpoint: "10.10.10.8:8880" }
```

Set VIP-related params and modify service endpoints in `infra_portal`.


----------------

## Nginx Configuration

See [Nginx Parameter Config](/docs/infra/param/#nginx) and [Tutorial: Nginx](/docs/infra/admin/portal).


----------------

## Local Repo Configuration

See [Repo Parameter Config](/docs/infra/param/#repo).


----------------

## DNS Configuration

See [DNS Parameter Config](/docs/infra/param/#dns) and [Tutorial: DNS](/docs/infra/admin/domain).


----------------

## NTP Configuration

See [NTP Parameter Config](/docs/node/param/#node_time).
