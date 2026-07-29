---
title: Playbook
weight: 5034
description: Deploy, converge, tune, and retire MySQL clusters with mysql.yml and mysql-rm.yml.
icon: fa-solid fa-scroll
module: [MYSQL]
categories: [Reference]
---

The MYSQL module ships two playbooks: [`mysql.yml`](https://github.com/pgsty/pigsty/blob/main/mysql.yml) deploys and converges; [`mysql-rm.yml`](https://github.com/pgsty/pigsty/blob/main/mysql-rm.yml) retires members and clusters. Both are convergent: they describe the desired state and are safe to run repeatedly.


--------

## `mysql.yml`

Runs the full check → install → bootstrap → access → provision → backup → monitor convergence on the selected clusters:

```bash
./mysql.yml -l my-test --check     # preflight: validate declarations against the live state
./mysql.yml -l my-test             # converge one cluster (must select all members)
./mysql.yml                        # converge every MySQL cluster in the inventory
```

Usage rules:

- **HA clusters must be selected whole**: a `-l` that covers only some members is rejected at preflight (guarding against topology divergence). Multiple complete clusters, or no `-l` at all, are fine;
- **Idempotent**: a converged cluster reruns as `changed=0` in seconds. The run immediately after an AdminAPI membership operation (rejoin/clone) may report one convergence `changed` — the replication seed list being pinned back to the declaration — which is expected;
- **Check mode**: on fresh nodes it can only preview up to package installation (later steps need the installed platform); on deployed clusters it previews fully;
- Initial three-node deployment takes ~2 minutes: certificates → config and initialization → AdminAPI cluster creation → cloning two members → Router bootstrap on each → business objects → backup and monitoring.


--------

## Stages and Tags

```text
mysql
├── mysql_check       # identity, platform, credentials, parameters, datadir ownership (always)
├── mysql_install     # install the fixed MySQL 8.4 package set
├── mysql_bootstrap
│   ├── mysql_cert    # issue and install node TLS leaf certificates
│   ├── mysql_config  # render config (incl. mysql_parameters); initialize empty datadirs only
│   ├── mysql_launch  # start / rolling-restart mysqld; converge root and AdminAPI identities
│   └── mysql_cluster # create or reconcile the InnoDB Cluster (rejoin / clone)
├── mysql_access
│   └── mysql_router  # bootstrap and verify Router on HA members
├── mysql_provision   # converge platform identities and declared databases/users
├── mysql_backup      # install the backup script and daily timer
├── mysql_monitor     # configure the exporter and register monitoring targets
└── mysql_done        # print the instance summary
```

Common tag-scoped runs:

```bash
./mysql.yml -l my-test -t mysql_provision    # business databases and users only
./mysql.yml -l my-test -t mysql_backup       # backup config and timer only
./mysql.yml -l my-test -t mysql_monitor      # exporter and target registration only
```

For parameter and configuration changes, run the full playbook — they involve the rolling-restart orchestration described below.


--------

## Config Changes and Rolling Restarts

The `mysql_launch` stage orchestrates restarts whenever the config file, certificates, or systemd units change:

1. **Health precondition**: an HA cluster must have all 3 members `ONLINE` before a rolling restart; degraded clusters are refused (repair first, then change);
2. **Secondaries first**: ordered by live runtime role (not `mysql_seq`), each secondary restarts and must return `ONLINE` before the next;
3. **Primary last**: the final restart triggers one automatic failover with a seconds-long write pause.

Standalone instances restart in place. `mysqld --validate-config` at render time guarantees invalid options fail before any service is touched.


--------

## Guardrails

`mysql.yml` **refuses to act** in the following situations, with errors that state the reason and the way forward:

| Refused scenario | Rationale |
|:---|:---|
| Partial member selection | HA operations must cover the whole cluster |
| Invalid topology | Member count must be 1 or 3, with consecutive `mysql_seq` |
| Unsupported platform | Arch/OS outside the support matrix (e.g. Ubuntu ARM64) |
| Placeholder passwords | `CHANGE_ME` credentials left in place |
| Foreign datadir | Datadir lacks the Pigsty marker, or the marker names another cluster/instance/topology |
| Retirement marker present | Instance was retired by `mysql-rm.yml`; resurrection must be explicit |
| Implicit password changes | `mysql_cluster_password` or live root password differs from the declaration |
| Illegal parameter overrides | Reserved keys, malformed names, or multi-line values in `mysql_parameters` |
| Degraded-cluster restart | Config-driven restarts require all members ONLINE |
| Non-fresh clone target | Replacement members must be brand-new machines with empty datadirs |
| Complete outage | Quorum is never rebuilt automatically; the error prints the manual recovery steps |
{.full-width}

The net effect: **no single mistaken command should be able to destroy data.** Every bypass (deleting markers, wiping datadirs) is an explicit human decision.


--------

## `mysql-rm.yml`

The retirement playbook accepts three scopes, each requiring double confirmation (`mysql_safeguard=false` plus `mysql_rm_confirm` exactly matching the target):

```bash
# Retire one member of an HA cluster (target must be reachable: an ONLINE SECONDARY or an already-detached member)
./mysql-rm.yml -l 10.10.10.13 --check -e mysql_safeguard=false -e mysql_rm_confirm=my-test-3
./mysql-rm.yml -l 10.10.10.13         -e mysql_safeguard=false -e mysql_rm_confirm=my-test-3

# Retire a whole HA cluster
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test

# Retire a standalone instance
./mysql-rm.yml -l my-meta -e mysql_safeguard=false -e mysql_rm_confirm=my-meta
```

What it does — and does not do:

- Single-member retirement removes an `ONLINE SECONDARY` via AdminAPI (`force: false`), or verifies an already-detached member, then stops local services. The removal script runs on the target itself, so **the target must be reachable** — for a dead machine, use manual force removal instead ([Replace a Failed Member](/docs/pilot/mysql/admin#replace-a-failed-member)). **Retiring the primary directly is refused** (switch it away first with [`setPrimaryInstance`](/docs/pilot/mysql/admin#switchover)); so is retiring 2 of 3 members at once;
- Whole-cluster retirement stops the Router and backup timer, stops secondaries before the primary, and deregisters exporters and monitoring targets;
- Every datadir gets the retirement marker `.pigsty-mysql-retired`, blocking ordinary `mysql.yml` reruns;
- **All data is preserved**: datadirs, backups, config, certificates, packages, metadata, and Router identities stay untouched. Actual destruction is a separate, manual, backup-verified decision.

`--check` previews the complete plan without touching anything.


--------

## Playbook Boundaries

The following are **out of playbook scope** by design; manual procedures live in [Administration](/docs/pilot/mysql/admin):

- Planned switchover (`setPrimaryInstance`);
- Force removal of dead, unreachable members (`removeInstance` with `force: true`);
- Quorum rebuild after a complete outage (`rebootClusterFromCompleteOutage`);
- Physical restore (XtraBackup copy-back runbook);
- Destruction: removing datadirs, backups, or retirement markers;
- Topology changes (1→3, 3→5) and member re-addressing.
