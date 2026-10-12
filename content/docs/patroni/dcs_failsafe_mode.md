---
title: "DCS Failsafe Mode"
weight: 110
icon: fa-solid fa-shield-halved
description: "DCS failsafe mode behavior, requirements, and operational caveats."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/dcs_failsafe_mode.html

<a id="dcs_failsafe_mode"></a>

--------

## The problem

Patroni uses the Distributed Configuration Store (DCS) for leader elections and network partition detection. A node can run Postgres as primary only if it can update the DCS leader lock. If the update fails, Patroni immediately demotes Postgres and starts it read-only. Failure frequency depends on the DCS. It is close to zero with Etcd dedicated to Patroni, but can be higher with the Etcd-backed K8s API.

--------

## Reasons for the current implementation

The leader lock update failure could be caused by two main reasons:

1.  Network partitioning
2.  DCS being down

A single node generally cannot distinguish these two causes. Patroni therefore assumes a network partition, the worst case. Other cluster nodes may acquire the leader lock and promote Postgres in a network partition. To prevent split-brain, Patroni demotes the old primary before the lock expires.

--------

## DCS Failsafe Mode

Enable `failsafe_mode` only through global [dynamic configuration](/docs/patroni/config/dynamic#dynamic) in the DCS `/config` key. In failsafe mode, a primary may continue after a leader lock update fails for reasons other than a version/value/index mismatch. It must be able to contact every known cluster member through the Patroni REST API.

--------

## Low-level implementation details

- The DCS has a permanent `/failsafe` key.
- This key contains all known members of the Patroni cluster at a given time.
- The current leader maintains the `/failsafe` key.
- A member can enter a leader race and become leader only if it is in the `/failsafe` key.
- For a single-node cluster, the `/failsafe` key contains one member.
- During a DCS outage, the primary contacts all members in `/failsafe` through the `POST /failsafe` REST API. It may remain primary if all replicas acknowledge it.
- If any member does not respond, Patroni demotes the primary.
- Replicas use incoming `POST /failsafe` requests to confirm that the primary is alive. They cache this information for `ttl` seconds.

--------

## F.A.Q.

- Why MUST the current primary see ALL other members? Can’t we rely on quorum here?

  The DCS and Patroni can have different quorum views. DCS nodes must be distributed evenly across availability zones. Patroni has no equivalent rule or mechanism to enforce one. Most Patroni nodes, including the primary, could occupy the losing network partition while a minority occupies the winning partition. The primary must then be demoted. Only a check of ALL other members detects this case.

- What if node/pod gets terminated while DCS is down?

  While the DCS is inaccessible, Patroni checks all other members every heartbeat cycle, or `loop_wait` seconds. If a node or pod terminates, the check fails. Patroni demotes Postgres to read-only. It cannot recover until DCS access returns.

- What if all members of the Patroni cluster are lost while DCS is down?

  You can configure Patroni to create replicas from backup without a cluster leader. However, a new member absent from `/failsafe` cannot acquire the leader lock or promote.

- What will happen if the primary lost access to DCS while replicas didn't?

  The primary runs the failsafe code and contacts all known replicas. The replicas use this contact to confirm that the primary is alive. They do not start a leader race, even if the DCS leader lock expires.

- How to enable the Failsafe Mode?

  Before you enable `failsafe_mode`, make sure all members have an up-to-date Patroni version. Then use the `PATCH /config` [REST API](/docs/patroni/rest_api#rest_api) or [patronictl edit-config -s failsafe_mode=true](/docs/patroni/patronictl#patronictl_edit_config_parameters).
