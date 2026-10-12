---
title: Single-Node Installation
linkTitle: Quick Start
weight: 255
description: Install, configure, and deploy Pigsty on one Linux node.
icon: fa-solid fa-cloud-arrow-down
module: [PIGSTY]
categories: [Tutorial]
---

This guide installs Pigsty on one Linux node. {{< badge text="Single Node" tone="info" >}}
For production deployments with multiple nodes, use the [Deployment Guide](/docs/deploy/).

The procedure has three stages: [Install](#install), [Configure](#configure), and [Deploy](#deploy).

## Summary

[Prepare a node](/docs/deploy/prepare#node) with a [supported operating system](/docs/ref/linux/).
Use an [administration account](/docs/deploy/admin) with passwordless [SSH](/docs/deploy/admin#ssh) and [sudo](/docs/deploy/admin#sudo) access.

Select a download source and run its command:

```bash {tab="pigsty.io (Global)" group="download-mirror" value="global" copy="all"}
curl -fsSL https://repo.pigsty.io/get | bash
```

```bash {tab="pigsty.cc (China)" value="china" copy="all"}
curl -fsSL https://repo.pigsty.cc/get | bash
```

The [installation script](#install) downloads and extracts Pigsty into your home directory.
It also installs the deployment dependencies.

Then do these steps:

{{% steps %}}

### Enter the Source Directory

Run this command:

```bash {title="Terminal" copy="all"}
cd ~/pigsty
```

### Generate the Inventory

Run this command to generate the configuration file and random passwords:

```bash {title="Terminal" copy="all"}
./configure -g
```

If you already have a prepared `pigsty.yml`, skip this step.

### Run the Deployment Playbook

Run this command:

```bash {title="Terminal" copy="all"}
./deploy.yml
```

{{% /steps %}}

After deployment, open the [Web UI](/docs/setup/webui/) through Nginx on port `80` or `443`.
Use the node IP address or domain name.
Connect to the default [PostgreSQL service](/docs/setup/pgsql/) on port `5432`.

The procedure usually takes 3–10 minutes.
The duration depends on the server resources and network speed.
[Offline installation](/docs/setup/offline/) can reduce the duration.
If you do not need monitoring, use [Slim Installation](/docs/setup/slim/) to install fewer components.

**Example: online installation on Debian 13, x86_64**

{{< asciinema file="demo/install-hero.cast" markers="4.5:Install,20.0:Configure,24:Deploy,170:Complete" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}

## Prepare

Review the [preparation requirements](/docs/deploy/).
For a single-node installation, first identify the node IP address.
If the node has no static IP address, you can use `127.0.0.1`.

|                 Item                  | Requirement                                    |                    Item                     | Requirement                                                   |
|:-------------------------------------:|:-----------------------------------------------|:-------------------------------------------:|:--------------------------------------------------------------|
| [**Node**](/docs/deploy/prepare#node) | **1-node**, at least `1C2G`, no upper limit    |    [**Disk**](/docs/deploy/prepare#disk)    | `/data` mount point, `xfs` recommended                        |
| [**OS**](/docs/deploy/prepare#linux)  | `Linux` `x86_64` / `aarch64`, EL/Debian/Ubuntu | [**Network**](/docs/deploy/prepare#network) | Static IPv4; single-node without fixed IP can use `127.0.0.1` |
|   [**SSH**](/docs/deploy/admin#ssh)   | `nopass` SSH login via public key              |     [**SUDO**](/docs/deploy/admin#sudo)     | sudo privilege, preferably with `nopass` option               |
{.full-width}

The `127.0.0.1` exception applies to single-node installations.

## Install

Use one of these commands to install Pigsty into `~/pigsty`.
The script also installs Ansible and other deployment dependencies.

```bash {tab="pigsty.io (Global)" group="download-mirror" value="global" copy="all"}
curl -fsSL https://repo.pigsty.io/get | bash            # Install current default version
curl -fsSL https://repo.pigsty.io/get | bash -s {{< param stable_version >}}  # Pin current public stable release
```

```bash {tab="pigsty.cc (China)" value="china" copy="all"}
curl -fsSL https://repo.pigsty.cc/get | bash            # Install current default version
curl -fsSL https://repo.pigsty.cc/get | bash -s {{< param stable_version >}}  # Pin current public stable release
```

You can also [download a release](https://github.com/pgsty/pigsty/releases) or clone the source repository.
If you use Git, select a released version before deployment:

```bash {title="Terminal" copy="all" label="Install Pigsty from Git"}
git clone https://github.com/pgsty/pigsty; cd pigsty;
git checkout {{< param stable_version >}};  # Always checkout a released tag when using git
```

If you download or clone the source manually, run [bootstrap](/docs/setup/offline#bootstrap) to install the dependencies:

```bash {title="Terminal" copy="all"}
./bootstrap           # Install ansible for subsequent deployment
```

You can also [install Ansible manually](/docs/setup/playbook#install-ansible).

## Configure

The [inventory](/docs/setup/config/) defines the deployment.
Pigsty uses [`pigsty.yml`](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) as the default inventory file.
Edit this file to change the deployment configuration.

The [`configure` script](https://github.com/pgsty/pigsty/blob/main/configure) is an optional [configuration wizard](/docs/concept/iac/configure).
It generates an [inventory](/docs/concept/iac/inventory/) from your environment and input.
Run it with `-g` to generate random passwords:

```bash {title="Terminal" copy="all" label="Run the Pigsty Configuration Wizard"}
./configure -g                # Use config wizard to generate config with random passwords
```

The default output file is `~/pigsty/pigsty.yml`.
Examine this file and make the necessary changes before deployment.

Use the [configuration templates](/docs/concept/iac/template/) as examples.
You can also edit `pigsty.yml` directly without the wizard.

```bash {title="Terminal" copy="all" collapse=6 label="Common configure Commands"}
./configure                  # Default template, install PG 18 with essential extensions
./configure -v 16            # Use PG 16 instead of default PG 18
./configure -c rich          # Create local repo, download all extensions, install major ones
./configure -c slim          # Minimal install template, use with ./slim.yml playbook
./configure -c app/supa      # Use app/supa self-hosted Supabase template
./configure -c ivory         # Use IvorySQL kernel instead of native PG
./configure -i 10.11.12.13   # Explicitly specify primary IP address
./configure -r china         # Use China mirrors instead of default repos
./configure -c ha/full -s    # Use 4-node sandbox template, skip IP replacement/detection
```

The output below is from {{< param version >}}.
If you install a different version, the first line shows that version.

{{< eg num="1" id="configure-output" caption="Configuration output from the current release" >}}

> [!DETAILS]- Configuration output
> ```console {title="configure output" copy="command" collapse=12 label="configure Example Output"}
> vagrant@meta:~/pigsty$ ./configure
>
> configure pigsty v4.5.0 begin
> [ OK ] region  = default
> [ OK ] kernel  = Linux
> [ OK ] machine = x86_64
> [ OK ] package = rpm,dnf
> [ OK ] vendor  = rocky (Rocky Linux)
> [ OK ] version = 9 (9.6)
> [ OK ] sudo = vagrant ok
> [ OK ] ssh = vagrant@127.0.0.1 ok
> [WARN] Multiple IP address candidates found:
>     (1) 192.168.121.24	inet 192.168.121.24/24 brd 192.168.121.255 scope global dynamic noprefixroute eth0
>     (2) 10.10.10.12	    inet 10.10.10.12/24 brd 10.10.10.255 scope global noprefixroute eth1
> [ IN ] INPUT primary_ip address (of current meta node, e.g 10.10.10.10):
> => 10.10.10.12    # <------- INPUT YOUR PRIMARY IPV4 ADDRESS HERE!
> [ OK ] primary_ip = 10.10.10.12 (from input)
> [ OK ] admin = vagrant@10.10.10.12 ok
> [ OK ] mode = meta (el9)
> [ OK ] locale  = C.UTF-8
> [ OK ] configure pigsty done
> proceed with ./deploy.yml
> ```

{{< /eg >}}

{{< fields label="Common configure Arguments" >}}
  {{< field name="-i | --ip" type="IPv4" >}}
  Set the primary private IPv4 address of the current node.
  The script replaces `10.10.10.10` in the inventory with this address.
  {{< /field >}}

  {{< field name="-c | --conf" type="string" >}}
  Select a [configuration template](/docs/conf/) relative to `conf/`.
  Omit the `.yml` suffix.
  {{< /field >}}

  {{< field name="-v | --version" type="integer" >}}
  Select a PostgreSQL major version from `14` through `19`.
  PostgreSQL 19 is Beta.
  Use the dedicated [`pg19` template](/docs/conf/pg19/) for that version.
  {{< /field >}}

  {{< field name="-r | --region" type="enum" default="default" >}}
  Select the upstream repository region: `default`, `china`, or `europe`.
  Use the region that gives faster downloads.
  {{< /field >}}

  {{< field name="-n | --non-interactive" type="boolean" default=false >}}
  Supply the primary IP address through command-line arguments.
  Skip the interactive wizard.
  {{< /field >}}

  {{< field name="-x | --proxy" type="boolean" default=false >}}
  Use the current environment variables to configure [`proxy_env`](/docs/infra/param#proxy_env).
  {{< /field >}}
{{< /fields >}}

If the node has multiple IP addresses, specify the primary address with `-i|--ip <ipaddr>`.
You can also enter the address at the interactive prompt.
Use a static private IPv4 address.
Do not use a public IP address.

> [!WARNING] Replace default credentials before deployment
> Default credentials are public.
> Replace them in `pigsty.yml` before deployment.
> See [Security Recommendations](/docs/setup/security/) for the credentials that `configure -g` does not replace.

## Deploy

The [`deploy.yml` playbook](/docs/setup/playbook/) applies the inventory to the target nodes.
Run it from the Pigsty source directory:

```bash {title="Terminal" copy="all" label="Run the Pigsty Deployment Playbook"}
./deploy.yml     # Deploy the defined modules in the core path at once
```

> [!DETAILS]- Deployment output
> ```console {title="deploy output" copy=false collapse=10 label="Pigsty Deployment Output"}
> ......
>
> TASK [pgsql : pgsql init done] *************************************************
> ok: [10.10.10.11] => {
>     "msg": "postgres://10.10.10.11/postgres | meta  | dbuser_meta dbuser_view "
> }
> ......
>
> TASK [pg_monitor : load grafana datasource meta] *******************************
> changed: [10.10.10.11]
>
> PLAY RECAP *********************************************************************
> 10.10.10.11                : ok=302  changed=232  unreachable=0    failed=0    skipped=65   rescued=0    ignored=1
> localhost                  : ok=6    changed=3    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0
> ```
>
> At the end, look for `pgsql init done` and `PLAY RECAP`.
> Make sure that the target nodes report `failed=0` and `unreachable=0`.

> [!WARNING] Upstream repository changes can stop installation
> Changes to Linux or PGDG repositories can break package dependencies.
> If installation fails for this reason, wait for the upstream correction.
> You can also use [offline packages](/docs/setup/offline#offline-packages).

> [!WARNING] Repeated deployment can change running services
> If Pigsty is already deployed, another run of [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml) can restart services.
> It can also overwrite configuration files.
> Examine the required changes before you run the playbook again.

## Interface

A default single-node installation puts four modules on the current node:
[PGSQL](/docs/pgsql/), [INFRA](/docs/infra/), [NODE](/docs/node/), and [ETCD](/docs/etcd/).

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
{.full-width}

[INFRA](/docs/infra/) supplies the [Web UI](/docs/setup/webui/) through Nginx on ports `80` and `443`.
[PGSQL](/docs/pgsql/) supplies the [PostgreSQL service](/docs/setup/pgsql/) on port `5432`.
You can also connect through [PgBouncer or HAProxy](/docs/pgsql/service/).

[![Pigsty demonstration homepage](/img/pigsty/home.png)](https://demo.pigsty.io/)

## More

Use the current node to deploy and monitor [additional clusters](/docs/conf/full/).
First add their definitions to the [inventory](/docs/setup/config/).
Then run the applicable commands:

```bash
bin/node-add   pg-test      # Add the 3 nodes of cluster pg-test to Pigsty management
bin/pgsql-add  pg-test      # Initialize a 3-node pg-test HA PG cluster
bin/redis-add  redis-ms     # Initialize Redis cluster: redis-ms
```

Install the [NODE module](/docs/node/) first when the target module requires it.
See the [module reference](/docs/ref/module/) for dependencies.
Available modules include [PGSQL](/docs/pgsql/), [INFRA](/docs/infra/), [ETCD](/docs/etcd/), [MINIO](/docs/minio/), [REDIS](/docs/redis/), and [DOCKER](/docs/docker/).
