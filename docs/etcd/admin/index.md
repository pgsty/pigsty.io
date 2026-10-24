# Administration

> etcd cluster management SOP: create, destroy, scale, config, and RBAC.

---

LLMS index: [llms.txt](/llms.txt)

---

Use these standard procedures to administer etcd:

- [Create Cluster](#create-cluster): Initialize an etcd cluster
- [Destroy Cluster](#destroy-cluster): Destroy an etcd cluster
- [CLI Environment](#cli-environment): Configure etcd client to access server cluster
- [RBAC Authentication](#rbac-authentication): Use etcd RBAC auth
- [Reload Config](#reload-config): Update etcd server member list for clients
- [Add Member](#add-member): Add new member to existing etcd cluster
- [Remove Member](#remove-member): Remove member from etcd cluster
- [Utility Scripts](#utility-scripts): Simplify ops with `bin/etcd-add` and `bin/etcd-rm`

For more, refer to [FAQ: ETCD](/docs/etcd/faq/).

----

## Create Cluster

Define `etcd` cluster in [**config inventory**](/docs/setup/config/):

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars: { etcd_cluster: etcd }
```

Run [`etcd.yml`](/docs/etcd/playbook#etcdyml) playbook:

```bash
./etcd.yml  # initialize etcd cluster
```

> [!NOTE] Architecture Change: Pigsty v3.6+
> Since v3.6, `etcd.yml` installs clusters and adds members. It does not remove them. Use the dedicated `etcd-rm.yml` for all removals.

For production etcd clusters, enable the safeguard [`etcd_safeguard`](/docs/etcd/param#etcd_safeguard) to prevent accidental deletion.



----

## Destroy Cluster

Use the dedicated [`etcd-rm.yml`](/docs/etcd/playbook#etcd-rmyml) playbook to destroy an Etcd cluster. The default `etcd_rm_data: true` deletes local data and configuration. First, confirm that no PostgreSQL cluster still uses it as DCS. Verify a recent backup and check the exact target name.

```bash
./etcd-rm.yml -l etcd                            # Destroy the entire Etcd cluster after confirmation
./etcd-rm.yml -l etcd -e etcd_safeguard=false   # Override only when the inventory enables the safeguard
```

Or use utility script:

```bash
bin/etcd-rm                           # remove entire etcd cluster
```

The removal playbook respects [`etcd_safeguard`](/docs/etcd/param#etcd_safeguard). If this parameter is `true`, the playbook aborts before any cluster-leave, deregistration, service-stop, or file-deletion operation. The default is `false`. The absence of an explicit override does not confirm removal.

> [!WARNING] Warning
> Before you remove the etcd cluster, make sure no PostgreSQL cluster uses it as DCS. Otherwise, PostgreSQL HA will fail.




----

## CLI Environment

Pigsty uses the etcd v3 API by default. Etcd v3.6+ removed the v2 API. Pigsty automatically configures `/etc/profile.d/etcdctl.sh` on etcd nodes. The shell loads this environment script at login.

Example client env config:

```bash
alias e="etcdctl"
alias em="etcdctl member"
export ETCDCTL_ENDPOINTS=https://10.10.10.10:2379
export ETCDCTL_CACERT=/etc/etcd/ca.crt
export ETCDCTL_CERT=/etc/etcd/server.crt
export ETCDCTL_KEY=/etc/etcd/server.key
```

Since v4.0, Pigsty enables RBAC authentication for etcd by default. User authentication is still required:

```bash
export ETCDCTL_USER="root:$(cat /etc/etcd/etcd.pass)"
```

After you configure the client environment, run etcd CRUD operations:

```bash
e put a 10 ; e get a; e del a   # basic KV ops
e member list                    # list cluster members
e endpoint health                # check endpoint health
e endpoint status                # view endpoint status
```



----

## RBAC Authentication

Since v4.0, Pigsty enables etcd RBAC authentication by default. During cluster initialization, the `etcd_auth` task creates the root user and enables authentication.

Set the **root user password** with [`etcd_root_password`](/docs/etcd/param#etcd_root_password). The default is `Etcd.Root`. Pigsty stores it in `/etc/etcd/etcd.pass` with `0640` permissions. Root owns the file, and the etcd group can read it.

**We strongly recommend that you change the default password in production:**

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

Patroni uses [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password) as the etcd connection password. If it is empty, Patroni uses the cluster name as the password. We do not recommend this default. In production, set a separate etcd password for each PostgreSQL cluster.



----

## Reload Config

After you add or remove etcd members, update the service endpoint references. Update these etcd references in Pigsty:

| Config Location | Config File | Update Method |
|:--------|:--------|:--------|
| etcd member config | `/etc/etcd/etcd.conf` | `./etcd.yml -t etcd_conf` |
| etcdctl env vars | `/etc/profile.d/etcdctl.sh` | `./etcd.yml -t etcd_config` |
| Patroni DCS config | `/etc/patroni/patroni.yml` | `./pgsql.yml -t pg_conf` |
| VIP-Manager config | `/etc/default/vip-manager.yml` | `./pgsql.yml -t pg_vip_config` |

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

> [!NOTE] Tip
> After `bin/etcd-add` or `bin/etcd-rm` completes, the script shows commands to refresh the configuration.



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

The script attempts these operations in order:
- Validates the IP address
- Sets `etcd_init=existing` automatically and runs the `etcd.yml` playbook
- Provides safety warnings and countdown
- Shows configuration refresh commands after completion

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

> [!WARNING] Important
> When you add members, you must set `etcd_init=existing`. Otherwise, the new instance creates a new cluster instead of joining the existing cluster.

> [!DETAILS]- Detailed: Add member to etcd cluster
> This example starts with a single-instance etcd cluster:
>
> ```yaml
> etcd:
>   hosts:
>     10.10.10.10: { etcd_seq: 1 } # <--- only existing instance in cluster
>     10.10.10.11: { etcd_seq: 2 } # <--- add this new member to inventory
>   vars: { etcd_cluster: etcd }
> ```
>
> Add new member using utility script (recommended):
>
> ```bash
> $ bin/etcd-add 10.10.10.11
> ```
>
> For manual addition, first run `etcdctl member add`. This announces the new learner instance `etcd-2` to the existing etcd cluster:
>
> ```bash
> $ etcdctl member add etcd-2 --learner=true --peer-urls=https://10.10.10.11:2380
> Member 33631ba6ced84cf8 added to cluster 6646fbcf5debc68f
>
> ETCD_NAME="etcd-2"
> ETCD_INITIAL_CLUSTER="etcd-2=https://10.10.10.11:2380,etcd-1=https://10.10.10.10:2380"
> ETCD_INITIAL_ADVERTISE_PEER_URLS="https://10.10.10.11:2380"
> ETCD_INITIAL_CLUSTER_STATE="existing"
> ```
>
> Run `etcdctl member list` or `em list`. The new member appears with the `unstarted` state:
>
> ```bash
> 33631ba6ced84cf8, unstarted, , https://10.10.10.11:2380, , true       # unstarted new member here
> 429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
> ```
>
> Run the `etcd.yml` playbook to initialize the new instance, `etcd-2`. When the playbook completes, the new member is running:
>
> ```bash
> $ ./etcd.yml -l 10.10.10.11 -e etcd_init=existing    # must add existing parameter
> ...
> 33631ba6ced84cf8, started, etcd-2, https://10.10.10.11:2380, https://10.10.10.11:2379, true
> 429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
> ```
>
> After the new member initializes and runs stably, promote it from learner to follower:
>
> ```bash
> $ etcdctl member promote 33631ba6ced84cf8   # promote learner to follower
> Member 33631ba6ced84cf8 promoted in cluster 6646fbcf5debc68f
>
> $ em list                # check again, new member promoted to full member
> 33631ba6ced84cf8, started, etcd-2, https://10.10.10.11:2380, https://10.10.10.11:2379, false
> 429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
> ```
>
> The new member is now part of the cluster. [Reload the configuration](#reload-config) so all clients can find it.
>
> Repeat these steps to add more members. Production environments need at least 3 members.



----------------

## Remove Member

### Recommended: Utility Script

Use `bin/etcd-rm` script to remove members from etcd cluster:

```bash
bin/etcd-rm <ip>              # remove specified member
bin/etcd-rm <ip1> <ip2> ...   # remove multiple members
bin/etcd-rm                   # remove entire etcd cluster
```

The script automatically performs these operations:
- Gracefully removes members from cluster
- Stops and disables etcd service
- Cleans up data and config files
- Deregisters from monitoring system

The underlying removal role tolerates some leave and cleanup errors. After the script finishes, inspect `etcdctl member list`, endpoint health, and remaining quorum. Also inspect the actual service and data-directory state on the target.

### Manual: Step-by-Step

Remove member instance from etcd cluster:

1. **Keep the member in the inventory**: The removal playbook needs its `etcd_seq`, cluster members, and connection endpoints
2. **Clean up the instance**: Run `etcd-rm.yml` against the target. It attempts `member remove` and stops the service. It then cleans up according to the removal flags.
3. **Update the inventory**: Comment out or delete the member only after the playbook succeeds
4. **Reload references**: Follow [Reload Config](#reload-config) for the remaining etcd members and the Patroni/VIP-Manager endpoints

```bash
# <ip> must still be in the etcd inventory group
./etcd-rm.yml -l <ip>                  # Leave the cluster and clean up automatically
# After success, remove the member from pigsty.yml and refresh the remaining members and clients
```

Do not delete the target from the inventory before you run the removal playbook. Without the target, the `hosts: etcd` scope in `etcd-rm.yml` cannot select it. The playbook also cannot get the instance identity or cluster endpoints from the inventory.

You do not need to repeat `etcdctl member remove` before or after the playbook.

> [!DETAILS]- Detailed: Remove member from etcd cluster
> Example: 3-node etcd cluster, remove instance 3.
>
> **Method 1: Utility script (recommended)**
>
> ```bash
> $ bin/etcd-rm 10.10.10.12
> ```
>
> The script attempts to remove the member, stop the service, and clean up data. Afterwards, still inspect the member list, quorum, and target files as described above.
>
> **Method 2: Manual**
>
> First keep the member to be removed in the inventory, then run the removal playbook:
>
> ```bash
> $ ./etcd-rm.yml -l 10.10.10.12
> ```
>
> The playbook attempts these operations in order:
> 1. Get member list, find corresponding member ID
> 2. Execute `etcdctl member remove` to kick from cluster
> 3. Stop etcd service
> 4. Clean up data and config files
>
> The playbook queries the member ID and runs `member remove` automatically. Do this manually only when troubleshooting:
>
> ```bash
> $ etcdctl member list
> 429ee12c7fbab5c1, started, etcd-1, https://10.10.10.10:2380, https://10.10.10.10:2379, false
> 33631ba6ced84cf8, started, etcd-2, https://10.10.10.11:2380, https://10.10.10.11:2379, false
> 93fcf23b220473fb, started, etcd-3, https://10.10.10.12:2380, https://10.10.10.12:2379, false  # <--- remove this
>
> $ etcdctl member remove 93fcf23b220473fb # kick from cluster
> Member 93fcf23b220473fb removed from cluster 6646fbcf5debc68f
> ```
>
> After manual member removal, keep the target in the inventory. Run `./etcd-rm.yml -l 10.10.10.12` to stop, deregister, and clean it up. The leave step skips a member that is already removed.
>
> Confirm that the member has left the live cluster and the remaining members retain quorum. Also confirm that the target service and files have the expected state. Only then delete `10.10.10.12` from the inventory. Follow [Reload Config](#reload-config) to update the remaining etcd members and all client references.
>
> Repeat these steps to remove more members. Combine this procedure with [Add Member](#add-member) for rolling upgrades and migrations of the etcd cluster.



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
- Shows configuration refresh commands after completion

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




----

## Manage Etcd Password

The [`etcd_root_password`](/docs/etcd/param#etcd_root_password) parameter defines the password of the etcd `root` user.

To change it, use an [INFRA node](/docs/concept/arch/node#infra-node) or [ETCD node](/docs/concept/arch/node#etcd-node) that can reach an etcd endpoint. Run this command as the [admin user](/docs/deploy/admin):

```bash
e user passwd root  # change the etcd root user password
```

Update every reference to the etcd root password. Include the Patroni client configuration on INFRA nodes and the etcdctl client environment:

```bash
./infra.yml -t env_patroni    # refresh the etcd root password in /infra/conf/patronictl.yml
./etcd.yml  -t etcd_conf      # refresh /etc/etcd/etcd.pass and /etc/profile.d/etcdctl.sh
```
