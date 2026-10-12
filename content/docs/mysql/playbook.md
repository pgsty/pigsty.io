---
title: Playbook
weight: 5014
description: Deploy, converge, tune, and retire MySQL clusters with mysql.yml and mysql-rm.yml.
icon: fa-solid fa-scroll
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/playbook]
---

[`mysql.yml`](https://github.com/pgsty/pigsty/blob/main/mysql.yml) deploys and adjusts clusters to declared state. Separate [`mysql-rm.yml`](https://github.com/pgsty/pigsty/blob/main/mysql-rm.yml) retires members or clusters with safeguards. Before every removal, recheck the target, backups, and exact confirmation value.


--------

## `mysql.yml`

Selected clusters follow check → install → bootstrap → access → provision → backup → monitor:

```bash
./mysql.yml -l my-test --check     # preflight: validate declarations against the live state
./mysql.yml -l my-test             # converge one cluster (must select all members)
./mysql.yml                        # converge every MySQL cluster in the inventory
```

Usage rules:

- **Complete HA clusters:** Partial `-l` selection fails preflight to prevent topology divergence. Multiple complete clusters or no `-l` are permitted.
- **Idempotent:** Converged clusters return `changed=0` within seconds. After AdminAPI rejoin/clone, one expected `changed` can restore declared replication seeds.
- **Check mode:** Fresh nodes preview through package installation only; later stages need installed components. Deployed clusters support full previews.
- Initial three-node deployment takes approximately two minutes: certificates, configuration/init, AdminAPI creation, two clones, Router bootstrap, business objects, backup, and monitoring.


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

Run the full playbook for parameter and configuration changes. They require the rolling-restart workflow below.


--------

## Config Changes and Rolling Restarts

`mysql_launch` orchestrates restarts after configuration, certificate, or Systemd unit changes:

1. **Health:** All three HA members must be `ONLINE`. Degraded clusters reject restarts; repair first.
2. **Secondaries:** Use live roles, not `mysql_seq`. Restart one secondary at a time and wait for `ONLINE`.
3. **Primary:** Restart last. One automatic failover pauses writes for a few seconds.

Standalone restarts in place. Render-time `mysqld --validate-config` rejects invalid options before service changes.


--------

## Guardrails

`mysql.yml` **rejects** these conditions and reports the cause and next steps:

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

These checks reduce risk but cannot guarantee against data loss. Before bypassing checks, verify backups and exact scope. Marker deletion and datadir erasure must be deliberate decisions.


--------

## `mysql-rm.yml`

Retirement accepts three scopes. Each requires `mysql_safeguard=false` and `mysql_rm_confirm` exactly matching its target:

```bash
# Retire one member of an HA cluster (target must be reachable: an ONLINE SECONDARY or an already-detached member)
./mysql-rm.yml -l 10.10.10.13 --check -e mysql_safeguard=false -e mysql_rm_confirm=my-test-3
./mysql-rm.yml -l 10.10.10.13         -e mysql_safeguard=false -e mysql_rm_confirm=my-test-3

# Retire a whole HA cluster
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test

# Retire a standalone instance
./mysql-rm.yml -l my-meta -e mysql_safeguard=false -e mysql_rm_confirm=my-meta
```

Retirement behavior:

- Single-member retirement uses AdminAPI `force: false` for an `ONLINE SECONDARY`, or verifies an already detached member, then stops local services. The script runs on the target, which **must be reachable**. For dead hardware, use [manual force removal](/docs/mysql/admin#replace-a-failed-member). **Primary retirement is rejected**; first switch with [`setPrimaryInstance`](/docs/mysql/admin#switchover). Removing two of three members together is also rejected.
- Full-cluster retirement stops Router and backup timers, then secondaries before the primary. It deregisters exporters and monitoring targets.
- Each datadir receives `.pigsty-mysql-retired`, blocking ordinary `mysql.yml` reruns.
- **All data remains:** datadirs, backups, configuration, certificates, packages, metadata, and Router identities. Destruction requires a separate manual decision after backup verification.

`--check` previews the full plan without changes.


--------

## Playbook Boundaries

These operations remain **outside playbook scope**. Follow manual [Administration](/docs/mysql/admin) procedures:

- Planned switchover (`setPrimaryInstance`);
- Force removal of dead, unreachable members (`removeInstance` with `force: true`);
- Quorum rebuild after a complete outage (`rebootClusterFromCompleteOutage`);
- Physical restore (XtraBackup copy-back runbook);
- Destruction: removing datadirs, backups, or retirement markers;
- Topology changes (1→3, 3→5) and member re-addressing.
