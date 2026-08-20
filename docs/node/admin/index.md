# Administration

> Node cluster management SOP - create, destroy, expand, shrink, and handle node/disk failures

---

LLMS index: [llms.txt](/llms.txt)

---

Here are common administration operations for the NODE module:

- [Add Node](#add-node)
- [Remove Node](#remove-node)
- [Create Admin](#create-admin)
- [Bind VIP](#bind-vip)
- [Add Node Monitoring](#add-node-monitoring)
- [Other Tasks](#other-tasks)

For more questions, see [FAQ: NODE](/docs/node/faq/)


----------------

## Add Node

To add a node to Pigsty, you need passwordless ssh/sudo access to that node.

You can also add an entire cluster at once, or use wildcards to match nodes in the inventory to add to Pigsty.

```bash
# ./node.yml -l <cls|ip|group>        # actual playbook to add nodes to Pigsty
# bin/node-add <selector|ip...>       # add node to Pigsty
bin/node-add node-test                # init node cluster 'node-test'
bin/node-add 10.10.10.10              # init node '10.10.10.10'
```

**Example: Add three nodes of PG cluster `pg-test` to Pigsty management**

<div id="td-asciinema-e4aa4a7dca9ccd59af4e39b61527a43e-0" class="td-asciinema td-max-width-on-larger-screens" data-td-asciinema
  data-td-timer-label="Playback time">
  <div class="td-asciinema__chrome">
    <span class="td-asciinema__lights" aria-hidden="true"><i></i><i></i><i></i></span>
    <span class="td-asciinema__title" dir="auto">demo/node-add.cast</span>
  </div>
  <div data-td-asciinema-player></div>
  <script type="application/json" data-td-asciinema-config>{"options":{"autoPlay":true,"fit":"width","loop":true,"markers":[4,"Execute"],"preload":false,"speed":1.2,"startAt":0},"src":"/demo/node-add.cast","theme":"auto"}</script>
</div>



----------------

## Remove Node

To remove a node from Pigsty, you can use the following commands:

First confirm that every business module on the node has been removed through its own workflow and check whether any `vector_data` buffer must be retained.
After confirming the exact target, call the wrapper:

```bash
# ./node-rm.yml -l <cls|ip|group>    # actual playbook that removes a node from Pigsty
# bin/node-rm <cls|ip|selector> ...  # remove node from Pigsty
bin/node-rm node-test                # remove node cluster 'node-test'
bin/node-rm 10.10.10.10              # remove node '10.10.10.10'
```

You can also remove an entire cluster at once, or use wildcards to match nodes in the inventory to remove from Pigsty.

Here, “remove node” means removing NODE management. The playbook deregisters monitoring, logging, and the HAProxy portal; stops Node Exporter, Vector, HAProxy, and optional VIP services; and deletes `vector_data` (default: `/data/vector`).
It does not uninstall packages, remove the admin user or `node_data`, stop Docker, or delete Docker data. See [`node-rm.yml`](/docs/node/playbook#node-rmyml) for the exact boundary.

<div id="td-asciinema-e4aa4a7dca9ccd59af4e39b61527a43e-1" class="td-asciinema td-max-width-on-larger-screens" data-td-asciinema
  data-td-timer-label="Playback time">
  <div class="td-asciinema__chrome">
    <span class="td-asciinema__lights" aria-hidden="true"><i></i><i></i><i></i></span>
    <span class="td-asciinema__title" dir="auto">demo/node-rm.cast</span>
  </div>
  <div data-td-asciinema-player></div>
  <script type="application/json" data-td-asciinema-config>{"options":{"autoPlay":true,"fit":"width","loop":true,"preload":false,"speed":1.2,"startAt":0},"src":"/demo/node-rm.cast","theme":"auto"}</script>
</div>



----------------

## Create Admin

If the current user doesn't have passwordless ssh/sudo access to the node, you can use another admin user to bootstrap it:

```bash
node.yml -t node_admin -k -K -e ansible_user=<another admin>   # enter ssh/sudo password for another admin to complete this task
```


----------------

## Bind VIP

You can bind an optional L2 VIP on a node cluster using the [`vip_enabled`](/docs/node/param#vip_enabled) parameter.

```yaml
proxy:
  hosts:
    10.10.10.29: { nodename: proxy-1 }   # you can explicitly specify initial VIP role: MASTER / BACKUP
    10.10.10.30: { nodename: proxy-2 }   # , vip_role: master }
  vars:
    node_cluster: proxy
    vip_enabled: true
    vip_vrid: 128
    vip_address: 10.10.10.99
    vip_interface: eth1
```

```bash
./node.yml -l proxy -t node_vip     # enable VIP for the first time
./node.yml -l proxy -t vip_refresh  # refresh VIP config (e.g., designate master)
```


----------------

## Add Node Monitoring

If you want to add or reconfigure monitoring on existing nodes, use the following commands:

```bash
./node.yml -t node_exporter,node_register  # configure monitoring and register
./node.yml -t vector                        # configure log collection
```


----------------

## Other Tasks

```bash
# Play
./node.yml -t node                            # complete node initialization (excludes haproxy, monitoring)
./node.yml -t haproxy                         # setup haproxy on node
./node.yml -t monitor                         # configure node monitoring: node_exporter & vector
./node.yml -t node_vip                        # install, configure, enable L2 VIP for clusters without VIP
./node.yml -t vip_config,vip_reload           # refresh node L2 VIP configuration
./node.yml -t haproxy_config,haproxy_reload   # refresh service definitions on node
./node.yml -t node_register             # re-register node with VictoriaMetrics
./node.yml -t register_nginx                  # re-register node haproxy admin page with Nginx

# Task
./node.yml -t node-id        # generate node identity
./node.yml -t node_name      # setup hostname
./node.yml -t node_hosts     # configure node /etc/hosts records
./node.yml -t node_resolv    # configure node DNS resolver /etc/resolv.conf
./node.yml -t node_firewall  # configure firewall & selinux
./node.yml -t node_ca        # configure node CA certificate
./node.yml -t node_repo      # configure node upstream software repository
./node.yml -t node_pkg       # install yum packages on node
./node.yml -t node_feature   # configure numa, grub, static network, etc.
./node.yml -t node_kernel    # configure OS kernel modules
./node.yml -t node_tune      # configure tuned profile
./node.yml -t node_sysctl    # set additional sysctl parameters
./node.yml -t node_profile   # configure node environment variables: /etc/profile.d/node.sh
./node.yml -t node_alias     # configure command aliases: /etc/profile.d/node.alias.sh
./node.yml -t node_ulimit    # configure node resource limits
./node.yml -t node_data      # configure node primary data directory
./node.yml -t node_admin     # configure admin user and ssh keys
./node.yml -t node_timezone  # configure node timezone
./node.yml -t node_ntp       # configure node NTP server/client
./node.yml -t node_crontab   # add/overwrite crontab entries
./node.yml -t node_vip       # setup optional L2 VIP for node cluster
```


----------------

## HAProxy Password

[`haproxy_admin_password`](/docs/node/param#haproxy_admin_password) (default `pigsty`) is used for HAProxy admin UI authentication, rendered to `/etc/haproxy/haproxy.cfg`.

After changing the password, use the following to reload config (hot reload, no connection interruption):

```bash
./node.yml -l <target> -t haproxy_config,haproxy_reload
```


----------------

## Firewall Management

Pigsty uses [`node_firewall_mode`](/docs/node/param#node_firewall_mode) to control firewall behavior.
Uses **firewalld** on RHEL/Rocky and **ufw** on Debian/Ubuntu.

Since v4.1, this defaults to `zone`: Pigsty enables the system firewall consistently across distros with an "intranet trusted, public minimized" policy.
In zone mode, intranet traffic is unrestricted, but external access is limited to specific ports.
Set `node_firewall_mode: none` only when you want to fully self-manage firewall state and rules.
This is especially important when deploying on cloud servers exposed to the internet.

We recommend opening only necessary ports: 22 (SSH), 80/443 (HTTP/HTTPS) are essential. Be cautious about exposing port 5432 (PostgreSQL).


### Apply Firewall Rules

`zone` is already the default. If you previously set `none/off`, set it back to `zone` and apply:

```yaml
node_firewall_mode: zone              # enable firewall with zone rules
node_firewall_intranet:               # trust these CIDRs (full access)
  - 10.0.0.0/8
  - 192.168.0.0/16
  - 172.16.0.0/12
node_firewall_public_port:            # open these ports to public
  - 22                                # SSH
  - 80                                # HTTP
  - 443                               # HTTPS
```

Then execute: `./node.yml -l <target> -t node_firewall`


### Open More Ports

To open additional ports, add them to `node_firewall_public_port` and re-run:

```yaml
node_firewall_public_port: [22, 80, 443, 5432, 6379]  # add PostgreSQL and Redis ports
```

```bash
./node.yml -l <target> -t node_firewall
```


### Configure Intranet CIDRs

CIDRs in `node_firewall_intranet` are added to the **trusted zone** with full access:

```yaml
node_firewall_intranet:
  - 10.0.0.0/8           # Class A private
  - 192.168.0.0/16       # Class C private
  - 172.16.0.0/12        # Class B private
  - 100.64.0.0/10        # Carrier-grade NAT (if needed)
```


### Remove Rules (Manual)

> **Important**: Pigsty's firewall management is **add-only**. Removing entries from config and re-running
> **will NOT** delete existing rules. You must remove them manually.

```bash {tab="EL (firewalld)" group="el-firewalld-debian-ufw" value="el-firewalld"}
# Remove port from public zone
sudo firewall-cmd --zone=public --remove-port=5432/tcp
sudo firewall-cmd --runtime-to-permanent

# Remove CIDR from trusted zone
sudo firewall-cmd --zone=trusted --remove-source=10.0.0.0/8
sudo firewall-cmd --runtime-to-permanent

# View current rules
sudo firewall-cmd --zone=public --list-ports
sudo firewall-cmd --zone=trusted --list-sources

# Reset to initial state (remove all custom rules)
sudo firewall-cmd --complete-reload
```

```bash {tab="Debian (ufw)" value="debian-ufw"}
# Delete port rule
sudo ufw delete allow 5432/tcp

# Delete CIDR rule
sudo ufw delete allow from 10.0.0.0/8

# View current rules (numbered)
sudo ufw status numbered

# Delete by rule number
sudo ufw delete <rule_number>

# Reset to initial state (remove all rules, keep ufw enabled)
sudo ufw reset
```


### Disable Firewall

To completely disable the firewall, set `node_firewall_mode` to `off`:

```yaml
node_firewall_mode: off    # completely disable firewall
```

```bash
./node.yml -l <target> -t node_firewall
```

Or disable manually:

```bash {tab="EL (firewalld)" group="el-firewalld-debian-ufw" value="el-firewalld"}
sudo systemctl disable --now firewalld
```

```bash {tab="Debian (ufw)" value="debian-ufw"}
sudo ufw disable
```
