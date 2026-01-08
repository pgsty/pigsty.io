---
title: Administration
weight: 3430
description: 'etcd cluster management SOP: create, destroy, scale, config, and RBAC.'
icon: fa-solid fa-building-columns
module: [ETCD]
categories: [Task]
---


Common etcd admin SOPs:

- [Create Cluster](#create-cluster): Initialize an etcd cluster
- [Destroy Cluster](#destroy-cluster): Destroy an etcd cluster
- [CLI Environment](#cli-environment): Configure etcd client to access server cluster
- [RBAC Authentication](#rbac-authentication): Use etcd RBAC auth
- [Reload Config](#reload-config): Update etcd server member list for clients
- [Add Member](#add-member): Add new member to existing etcd cluster
- [Remove Member](#remove-member): Remove member from etcd cluster
- [Utility Scripts](#utility-scripts): Simplify ops with `bin/etcd-add` and `bin/etcd-rm`

For more, refer to [FAQ: ETCD](faq).

----

## Create Cluster

Define `etcd` cluster in [**config inventory**](/docs/setup/config#config-inventory):

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars: { etcd_cluster: etcd }
```

Run [`etcd.yml`](playbook#etcdyml) playbook:

```bash
./etcd.yml  # initialize etcd cluster
```

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Since v3.6, `etcd.yml` focuses on cluster install and member addition—no longer includes removal. Use dedicated `etcd-rm.yml` for all removals.
{{% /alert %}}

For prod etcd clusters, enable safeguard [`etcd_safeguard`](param#etcd_safeguard) to prevent accidental deletion.



----

## Destroy Cluster

Use dedicated [`etcd-rm.yml`](playbook#etcd-rmyml) playbook to destroy etcd cluster. Use caution!

```bash
./etcd-rm.yml                         # remove entire etcd cluster
./etcd-rm.yml -e etcd_safeguard=false # override safeguard
```

Or use utility script:

```bash
bin/etcd-rm                           # remove entire etcd cluster
```

Removal playbook respects [`etcd_safeguard`](param#etcd_safeguard). If `true`, playbook aborts to prevent accidental deletion.

{{% alert title="Warning" color="warning" %}}
Before removing etcd cluster, ensure no PG clusters use it as DCS. PG HA will break otherwise.
{{% /alert %}}




----

## CLI Environment

Uses etcd v3 API by default (v2 removed in v3.6+). Pigsty auto-configures env script `/etc/profile.d/etcdctl.sh` on etcd nodes, loaded on login.

Example client env config:

```bash
alias e="etcdctl"
alias em="etcdctl member"
export ETCDCTL_ENDPOINTS=https://10.10.10.10:2379
export ETCDCTL_CACERT=/etc/etcd/ca.crt
export ETCDCTL_CERT=/etc/etcd/server.crt
export ETCDCTL_KEY=/etc/etcd/server.key
```

v4.0 enables RBAC auth by default—user auth required:

```bash
export ETCDCTL_USER="root:$(cat /etc/etcd/etcd.pass)"
```

After configuring client env, run etcd CRUD ops:

```bash
e put a 10 ; e get a; e del a   # basic KV ops
e member list                    # list cluster members
e endpoint health                # check endpoint health
e endpoint status                # view endpoint status
```



----

## RBAC Authentication

v4.0 enables etcd RBAC auth by default. During cluster init, `etcd_auth` task auto-creates root user and enables auth.

**Root user password** set by [`etcd_root_password`](param#etcd_root_password), default: `Etcd.Root`. Stored in `/etc/etcd/etcd.pass` with `0640` perms (root-owned, etcd-group readable).

**Strongly recommended to change default password in prod:**

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars:
    etcd_cluster: etcd
    etcd_root_password: 'YourSecurePassword'  # change default
```

**Client auth methods:**

```bash
# Method 1: env vars (recommended, auto-configured in /etc/profile.d/etcdctl.sh)
export ETCDCTL_USER="root:$(cat /etc/etcd/etcd.pass)"

# Method 2: command line
etcdctl --user root:YourSecurePassword member list
```

**Patroni and etcd auth:**

Patroni uses [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password) to configure etcd connection password. If empty, Patroni uses cluster name as password (not recommended). Configure separate etcd password per PG cluster in prod.



----

## Reload Config

If etcd cluster membership changes (add/remove members), refresh etcd service endpoint references. These etcd refs in Pigsty need updates:

| Config Location | Config File | Update Method |
|:--------|:--------|:--------|
| etcd member config | `/etc/etcd/etcd.conf` | `./etcd.yml -t etcd_conf` |
| etcdctl env vars | `/etc/profile.d/etcdctl.sh` | `./etcd.yml -t etcd_config` |
| Patroni DCS config | `/pg/bin/patroni.yml` | `./pgsql.yml -t pg_conf` |
| VIP-Manager config | `/etc/default/vip-manager` | `./pgsql.yml -t pg_vip_config` |

**Refresh etcd member config:**

```bash
./etcd.yml -t etcd_conf                           # refresh /etc/etcd/etcd.conf
ansible etcd -f 1 -b -a 'systemctl restart etcd'  # optional: restart etcd instances
```

**Refresh etcdctl client env:**

```bash
./etcd.yml -t etcd_config                         # refresh /etc/profile.d/etcdctl.sh
```

**Update Patroni DCS endpoint config:**

```bash
./pgsql.yml -t pg_conf                            # regenerate patroni config
ansible all -f 1 -b -a 'systemctl reload patroni' # reload patroni config
```

**Update VIP-Manager endpoint config** (only for PGSQL L2 VIP):

```bash
./pgsql.yml -t pg_vip_config                           # regenerate vip-manager config
ansible all -f 1 -b -a 'systemctl restart vip-manager' # restart vip-manager
```

{{% alert title="Tip" color="info" %}}
Using `bin/etcd-add` / `bin/etcd-rm` utility scripts? Scripts prompt config refresh commands after completion.
{{% /alert %}}



----

## Add Member

ETCD Reference: [Add a member](https://etcd.io/docs/v3.6/op-guide/runtime-configuration/#add-a-new-member)

### Recommended: Utility Script

Use `bin/etcd-add` script to add new members to existing etcd cluster:

```bash
# First add new member definition to config inventory, then:
bin/etcd-add <ip>              # add single new member
bin/etcd-add <ip1> <ip2> ...   # add multiple new members
```

Script auto-performs:
- Validates IP address validity
- Executes `etcd.yml` playbook (auto-sets `etcd_init=existing`)
- Provides safety warnings and countdown
- Prompts config refresh commands after completion

### Manual: Step-by-Step

Add new member to existing etcd cluster:

1. **Update config inventory**: Add new instance to `etcd` group
2. **Notify cluster**: Run `etcdctl member add` (optional, playbook auto-does this)
3. **Initialize new member**: Run playbook with `etcd_init=existing` parameter
4. **Promote member**: Promote learner to full member (optional, required when using `etcd_learner=true`)
5. **Reload config**: Update etcd endpoint references for all clients

```bash
# After config inventory update, initialize new member
./etcd.yml -l <new_ins_ip> -e etcd_init=existing

# If using learner mode, manually promote
etcdctl member promote <new_ins_server_id>
```

{{% alert title="Important" color="warning" %}}
When adding new members, must use `etcd_init=existing` parameter. New instance will create new cluster instead of joining existing one otherwise.
{{% /alert %}}

<details><summary>Detailed: Add member to etcd cluster</summary>

Detailed steps. Start from single-instance etcd cluster:

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 } # <--- only existing instance in cluster
    10.10.10.11: { etcd_seq: 2 } # <--- add this new member to inventory
  vars: { etcd_cluster: etcd }
```

Add new member using utility script (recommended):

```bash
$ bin/etcd-add 10.10.10.11
```

Or manual. First use `etcdctl member add` to announce new learner instance `etcd-2` to existing etcd cluster:

```bash
$ etcdctl member add etcd-2 --learner=true --peer-urls=https://10.10.10.11:2380
Member 33631ba6ced84cf8 added to cluster 6646fbcf5debc68f

ETCD_NAME="etcd-2"
ETCD_INITIAL_CLUSTER="etcd-2=https://10.10.10.11:2380,etcd-1=https://10.10.10.10:2380"
ETCD_INITIAL_ADVERTISE_PEER_URLS="https://10.10.10.11:2380"
ETCD_INITIAL_CLUSTER_STATE="existing"
```

Check member list with `etcdctl member list` (or `em list`), see `unstarted` new member:

```bash
33631ba6ced84cf8, unstarted, , https://10.10.10.11:2380, , true       # unstarted new member here
429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
```

Next, use `etcd.yml` playbook to initialize new etcd instance `etcd-2`. After completion, new member has started:

```bash
$ ./etcd.yml -l 10.10.10.11 -e etcd_init=existing    # must add existing parameter
...
33631ba6ced84cf8, started, etcd-2, https://10.10.10.11:2380, https://10.10.10.11:2379, true
429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
```

After new member initialized and running stably, promote from learner to follower:

```bash
$ etcdctl member promote 33631ba6ced84cf8   # promote learner to follower
Member 33631ba6ced84cf8 promoted in cluster 6646fbcf5debc68f

$ em list                # check again, new member promoted to full member
33631ba6ced84cf8, started, etcd-2, https://10.10.10.11:2380, https://10.10.10.11:2379, false
429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
```

New member added. Don't forget to [reload config](#reload-config) so all clients know new member.

Repeat steps to add more members. Prod environments need at least 3 members.
</details>



----------------

## Remove Member

### Recommended: Utility Script

Use `bin/etcd-rm` script to remove members from etcd cluster:

```bash
bin/etcd-rm <ip>              # remove specified member
bin/etcd-rm <ip1> <ip2> ...   # remove multiple members
bin/etcd-rm                   # remove entire etcd cluster
```

Script auto-performs:
- Gracefully removes members from cluster
- Stops and disables etcd service
- Cleans up data and config files
- Deregisters from monitoring system

### Manual: Step-by-Step

Remove member instance from etcd cluster:

1. **Remove from config inventory**: Comment out or delete instance, and [reload config](#reload-config)
2. **Kick from cluster**: Use `etcdctl member remove` command
3. **Clean up instance**: Use `etcd-rm.yml` playbook to clean up

```bash
# Use dedicated removal playbook (recommended)
./etcd-rm.yml -l <ip>

# Or manual
etcdctl member remove <server_id>      # kick from cluster
./etcd-rm.yml -l <ip>                  # clean up instance
```

<details><summary>Detailed: Remove member from etcd cluster</summary>

Example: 3-node etcd cluster, remove instance 3.

**Method 1: Utility script (recommended)**

```bash
$ bin/etcd-rm 10.10.10.12
```

Script auto-completes all operations: remove from cluster, stop service, clean up data.

**Method 2: Manual**

First, refresh config by **commenting out** member to delete, then [reload config](#reload-config) so all clients stop using this instance.

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    # 10.10.10.12: { etcd_seq: 3 }   # <---- comment out this member
  vars: { etcd_cluster: etcd }
```

Then use removal playbook:

```bash
$ ./etcd-rm.yml -l 10.10.10.12
```

Playbook auto-executes:
1. Get member list, find corresponding member ID
2. Execute `etcdctl member remove` to kick from cluster
3. Stop etcd service
4. Clean up data and config files

If manual:

```bash
$ etcdctl member list
429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
33631ba6ced84cf8, started, etcd-2, https://10.10.10.11:2380, https://10.10.10.11:2379, false
93fcf23b220473fb, started, etcd-3, https://10.10.10.12:2380, https://10.10.10.12:2379, false  # <--- remove this

$ etcdctl member remove 93fcf23b220473fb # kick from cluster
Member 93fcf23b220473fb removed from cluster 6646fbcf5debc68f
```

After execution, permanently remove from config inventory. Member removal complete.

Repeat to remove more members. Combined with [Add Member](#add-member), perform rolling upgrades and migrations of etcd cluster.
</details>



----

## Utility Scripts

v3.6+ provides utility scripts to simplify etcd cluster scaling:

### `bin/etcd-add`

Add new members to existing etcd cluster:

```bash
bin/etcd-add <ip>              # add single new member
bin/etcd-add <ip1> <ip2> ...   # add multiple new members
```

Script features:
- Validates IP addresses in config inventory
- Auto-sets `etcd_init=existing` parameter
- Executes `etcd.yml` playbook to complete member addition
- Prompts config refresh commands after completion

### `bin/etcd-rm`

Remove members or entire cluster from etcd:

```bash
bin/etcd-rm <ip>              # remove specified member
bin/etcd-rm <ip1> <ip2> ...   # remove multiple members
bin/etcd-rm                   # remove entire etcd cluster
```

Script features:
- Provides safety warnings and confirmation countdown
- Auto-executes `etcd-rm.yml` playbook
- Gracefully removes members from cluster
- Cleans up data and config files

