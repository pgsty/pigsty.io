---
title: Single-Node Installation
linkTitle: Quick Start
weight: 255
description: Get started with Pigsty—complete single-node install on a fresh Linux host!
icon: fa-solid fa-cloud-arrow-down
module: [PIGSTY]
categories: [Tutorial]
---


This is the Pigsty single-node install guide. For multi-node HA prod deployment, refer to the [**Deployment**](/docs/deploy/) docs.

Pigsty single-node installation consists of three steps: [**Install**](#install), [**Configure**](#configure), and [**Deploy**](#deploy).


----------------

## Summary

[**Prepare**](/docs/deploy/prepare) a [**node**](/docs/deploy/prepare#node) with [**compatible OS**](/docs/ref/linux/), and run as an [**admin user**](/docs/deploy/admin) with nopass [**`ssh`**](/docs/deploy/admin#ssh) and [**`sudo`**](/docs/deploy/admin#sudo):

{{< tabpane text=true persist=header >}}
{{% tab header="pigsty.io (Global)" %}}
```bash
curl -fsSL https://repo.pigsty.io/get | bash;
```
{{% /tab %}}
{{% tab header="pigsty.cc (Mirror)" %}}
```bash
curl -fsSL https://repo.pigsty.cc/get | bash;
```
{{% /tab %}}
{{< /tabpane >}}

This command runs the [**install**](#install) script, downloads and extracts Pigsty source to your home directory and installs dependencies. Then complete [**Configure**](#configure) and [**Deploy**](#deploy):

```bash
cd ~/pigsty      # Enter Pigsty directory
./configure -g   # Generate config file (optional, skip if you know how to configure)
./deploy.yml     # Execute deployment playbook based on generated config
```

After installation, access the [**Web UI**](/docs/setup/webui/) via IP/domain + port `80/443` through Nginx,
and access the default [**PostgreSQL service**](/docs/setup/pgsql/) via port `5432`.

The complete process takes 3–10 minutes depending on server specs/network. [**Offline installation**](/docs/setup/offline/) speeds this up significantly; for monitoring-free setups, use [**Slim Install**](/docs/setup/slim/) for even faster deployment.

**Video Example: Online Single-Node Installation (Debian 13, x86_64)**

{{< asciinema file="demo/install-hero.cast" markers="4.5:Install,20.0:Configure,24:Deploy,170:Complete" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}


----------------

## Prepare

Installing Pigsty involves some [**preparation work**](/docs/deploy/). Here's a checklist.

For single-node installations, many constraints can be relaxed—typically you only need to know your **IP address**. If you don't have a static IP, use `127.0.0.1`.

|                 Item                  | Requirement                                    |                    Item                     | Requirement                                                   |
|:-------------------------------------:|:-----------------------------------------------|:-------------------------------------------:|:--------------------------------------------------------------|
| [**Node**](/docs/deploy/prepare#node) | **1-node**, at least `1C2G`, no upper limit    |    [**Disk**](/docs/deploy/prepare#disk)    | `/data` mount point, `xfs` recommended                        |
| [**OS**](/docs/deploy/prepare#linux)  | `Linux` `x86_64` / `aarch64`, EL/Debian/Ubuntu | [**Network**](/docs/deploy/prepare#network) | Static IPv4; single-node without fixed IP can use `127.0.0.1` |
|   [**SSH**](/docs/deploy/admin#ssh)   | `nopass` SSH login via public key              |     [**SUDO**](/docs/deploy/admin#sudo)     | sudo privilege, preferably with `nopass` option               |
{.full-width}


Typically, you only need to focus on your **local IP address**—as an exception, for single-node deployment, use `127.0.0.1` if no static IP available.



----------------

## Install

Use the following commands to auto-install Pigsty source to `~/pigsty` (recommended). Deployment dependencies (Ansible) are installed automatically.

{{< tabpane text=true persist=header >}}
{{% tab header="pigsty.io (Global)" %}}
```bash
curl -fsSL https://repo.pigsty.io/get | bash            # Install latest stable version
curl -fsSL https://repo.pigsty.io/get | bash -s v4.0.0  # Install specific version
```
{{% /tab %}}
{{% tab header="pigsty.cc (Mirror)" %}}
```bash
curl -fsSL https://repo.pigsty.cc/get | bash            # Install latest stable version
curl -fsSL https://repo.pigsty.cc/get | bash -s v4.0.0  # Install specific version
```
{{% /tab %}}
{{< /tabpane >}}

If you prefer not to run a remote script, you can manually [**download**](https://github.com/pgsty/pigsty/releases) or clone the source. When using `git`, always checkout a specific version before use.

```bash
git clone https://github.com/pgsty/pigsty; cd pigsty;
git checkout v4.0.0-b4;  # Always checkout a specific version when using git
```

For manual download/clone installations, run the [**`bootstrap`**](/docs/setup/offline#bootstrap) script to install Ansible and other dependencies. You can also [**install them yourself**](/docs/setup/playbook#install-ansible).

```bash
./bootstrap           # Install ansible for subsequent deployment
```



----------------

## Configure

In Pigsty, deployment blueprints are defined by the [**inventory**](/docs/setup/config/), the [**`pigsty.yml`**](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) configuration file. You can customize through declarative configuration.

Pigsty provides the [**`configure`**](https://github.com/pgsty/pigsty/blob/main/configure) script as an optional [**configuration wizard**](/docs/concept/iac/configure),
which generates an [**inventory**](/docs/concept/iac/inventory/) with good defaults based on your environment and input:

```bash
./configure -g                # Use config wizard to generate config with random passwords
```

The generated config file is at `~/pigsty/pigsty.yml` by default. Review and customize as needed before installation.



Many [**configuration templates**](/docs/concept/iac/template/) are available for reference. You can skip the wizard and directly edit `pigsty.yml`:

```bash
./configure                  # Default template, install PG 18 with essential extensions
./configure -v 17            # Use PG 17 instead of default PG 18
./configure -c rich          # Create local repo, download all extensions, install major ones
./configure -c slim          # Minimal install template, use with ./slim.yml playbook
./configure -c app/supa      # Use app/supa self-hosted Supabase template
./configure -c ivory         # Use IvorySQL kernel instead of native PG
./configure -i 10.11.12.13   # Explicitly specify primary IP address
./configure -r china         # Use China mirrors instead of default repos
./configure -c ha/full -s    # Use 4-node sandbox template, skip IP replacement/detection
```

<details><summary>Example configure output</summary>

```bash
$ ./configure

configure pigsty v4.0.0 begin
[ OK ] region  = default
[ OK ] kernel  = Linux
[ OK ] machine = x86_64
[ OK ] package = rpm,dnf
[ OK ] vendor  = rocky (Rocky Linux)
[ OK ] version = 9 (9.6)
[ OK ] sudo = vagrant ok
[ OK ] ssh = vagrant@127.0.0.1 ok
[WARN] Multiple IP address candidates found:
    (1) 192.168.121.24	inet 192.168.121.24/24 brd 192.168.121.255 scope global dynamic noprefixroute eth0
    (2) 10.10.10.12	    inet 10.10.10.12/24 brd 10.10.10.255 scope global noprefixroute eth1
[ IN ] INPUT primary_ip address (of current meta node, e.g 10.10.10.10):
=> 10.10.10.12    # <------- INPUT YOUR PRIMARY IPV4 ADDRESS HERE!
[ OK ] primary_ip = 10.10.10.12 (from input)
[ OK ] admin = vagrant@10.10.10.12 ok
[ OK ] mode = meta (el9)
[ OK ] locale  = C.UTF-8
[ OK ] configure pigsty done
proceed with ./deploy.yml
```

</details><br>

**Common configure arguments:**

| Argument                | Description                                                                        |
|:------------------------|:-----------------------------------------------------------------------------------|
| `-i\|--ip`              | Primary internal IP of current host, replaces placeholder `10.10.10.10`            |
| `-c\|--conf`            | [**Config template**](/docs/conf/) name relative to `conf/`, without `.yml` suffix |
| `-v\|--version`         | PostgreSQL major version: `13`, `14`, `15`, `16`, `17`, `18`                       |
| `-r\|--region`          | Upstream repo region for faster downloads: (`default\|china\|europe`)              |
| `-n\|--non-interactive` | Use command-line args for primary IP, skip interactive wizard                      |
| `-x\|--proxy`           | Use current env vars to configure [`proxy_env`](/docs/infra/param#proxy_env)       |
{.full-width}

If your machine has multiple IPs bound, use `-i|--ip <ipaddr>` to explicitly specify the primary IP, or provide it in the interactive prompt.
The script replaces the placeholder `10.10.10.10` with your node's primary IPv4 address. Choose a static IP; do not use public IPs.


{{% alert title="Change default passwords!" color="warning" %}}
We strongly recommend modifying default passwords and credentials in the config file before installation. See [**Security Recommendations**](/docs/setup/security/) for details.
{{% /alert %}}




--------

## Deploy

Pigsty's [**`deploy.yml`**](/docs/setup/playbook/) [**playbook**](/docs/setup/playbook/) applies the blueprint from [**Configure**](#configure) to target nodes.

```bash
./deploy.yml     # Deploy all defined modules on current node at once
```


<details><summary>Example deployment output</summary>

```bash
......

TASK [pgsql : pgsql init done] *************************************************
ok: [10.10.10.11] => {
    "msg": "postgres://10.10.10.11/postgres | meta  | dbuser_meta dbuser_view "
}
......

TASK [pg_monitor : load grafana datasource meta] *******************************
changed: [10.10.10.11]

PLAY RECAP *********************************************************************
10.10.10.11                : ok=302  changed=232  unreachable=0    failed=0    skipped=65   rescued=0    ignored=1
localhost                  : ok=6    changed=3    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0
```

When you see `pgsql init done`, `PLAY RECAP` and similar output at the end, installation is complete!

</details><br>

{{% alert title="Upstream repo changes may cause online installation failures!" color="warning" %}}
Upstream repos used by Pigsty (like Linux/PGDG repos) can sometimes enter a broken state due to improper updates, causing deployment failures (this has happened multiple times)!
You can wait for upstream fixes or use pre-made [**offline packages**](/docs/setup/offline#offline-packages) to solve this.
{{% /alert %}}

{{% alert title="Avoid re-running the deployment playbook!" color="warning" %}}
Warning: Running [**`deploy.yml`**](https://github.com/pgsty/pigsty/blob/main/deploy.yml) again on an existing deployment may restart services and overwrite configurations!
{{% /alert %}}


--------

## Interface

After single-node installation, you typically have four modules installed on the current node:
[**`PGSQL`**](/docs/pgsql/), [**`INFRA`**](/docs/infra/), [**`NODE`**](/docs/node/), and [**`ETCD`**](/docs/etcd/).

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
{.full-width}

The [**`INFRA`**](/docs/infra) module provides a [**graphical management interface**](/docs/setup/webui), accessible via Nginx on ports **80/443**.

The [**`PGSQL`**](/docs/pgsql/) module provides a [**PostgreSQL database server**](/docs/setup/pgsql), listening on **5432**, also accessible via Pgbouncer/HAProxy [**proxies**](/docs/pgsql/service).

[![](/img/pigsty/home.png)](https://demo.pigsty.io/)


----------------

## More

Use the current node as a base to deploy and monitor [**more clusters**](/docs/conf/full): add cluster definitions to the [**inventory**](/docs/setup/config/) and run:

```bash
bin/node-add   pg-test      # Add the 3 nodes of cluster pg-test to Pigsty management
bin/pgsql-add  pg-test      # Initialize a 3-node pg-test HA PG cluster
bin/redis-add  redis-ms     # Initialize Redis cluster: redis-ms
```

Most modules require the [**`NODE`**](/docs/node/) module installed first. See available [**modules**](/docs/ref/module/) for details:

[**`PGSQL`**](/docs/pgsql/), [**`INFRA`**](/docs/infra/), [**`NODE`**](/docs/node/), [**`ETCD`**](/docs/etcd/),
[**`MINIO`**](/docs/minio/), [**`REDIS`**](/docs/redis/), [**`FERRET`**](/docs/ferret/), [**`DOCKER`**](/docs/docker/)……


