# Install Pigsty for Production

> How to install Pigsty on Linux hosts for production?

---

LLMS index: [llms.txt](/llms.txt)

---

This guide describes production deployment on multiple nodes.
For single-node demonstrations or development, use [Getting Started](/docs/setup/).

## Summary

1. [Prepare](/docs/deploy/prepare) the [nodes](/docs/deploy/prepare#node) according to your [architecture plan](/docs/deploy/planning).
2. Install a [supported Linux operating system](/docs/ref/linux/).
3. Configure [SSH access](/docs/deploy/admin#ssh).
4. Use an [administration account](/docs/deploy/admin) with passwordless [`ssh`](/docs/deploy/admin#ssh) and [`sudo`](/docs/deploy/admin#sudo) access.
5. Run the installation command:

```bash
curl -fsSL https://repo.pigsty.io/get | bash;         # International
curl -fsSL https://repo.pigsty.cc/get | bash;         # Backup Mirror
```

The [installation script](#install) downloads and extracts Pigsty into your home directory.
It also installs the dependencies.
Then complete [configuration](#configure) and [deployment](#deploy).

Before you run [`deploy.yml`](/docs/setup/playbook), examine and edit `pigsty.yml`.
This file is the [configuration inventory](/docs/concept/iac/inventory).

```bash
cd ~/pigsty      # Enter Pigsty directory
./configure -g   # Generate config file (optional, skip if you know how to configure)
./deploy.yml     # Execute deployment playbook based on generated config
```

After deployment, open the [Web UI](/docs/setup/webui/) through the IP address or domain on ports `80/443`.
Connect to [PostgreSQL](/docs/setup/pgsql/) on port `5432`.

Installation usually takes 3-10 minutes, depending on server resources and network speed.
[Offline installation](/docs/setup/offline/) can reduce this time.
If you do not need monitoring, [Slim Installation](/docs/setup/slim/) installs fewer components and takes less time.

**Example: 20-node production simulation on Ubuntu 24.04, x86_64**

[demo\/install\-simu\.cast](/demo/install-simu.cast)

## Prepare

Use this checklist to complete the [deployment preparations](/docs/deploy/prepare):

|                   Item                    | Requirement                              |                           Item                           | Requirement                                             |
|:-----------------------------------------:|:-----------------------------------------|:--------------------------------------------------------:|:--------------------------------------------------------|
|   [**Node**](/docs/deploy/prepare#node)   | At least `1C2G`, no upper limit          |            [**Plan**](/docs/deploy/planning)             | Multiple homogeneous nodes: 2/3/4 or more               |
|   [**Disk**](/docs/deploy/prepare#disk)   | `/data` as default mount point           |        [**FS**](/docs/deploy/prepare#filesystem)         | `xfs` recommended; `ext4`/`zfs` as needed               |
|    [**VIP**](/docs/deploy/prepare#vip)    | L2 VIP, optional (unavailable in cloud)  |       [**Network**](/docs/deploy/prepare#network)        | Static IPv4, single-node can use `127.0.0.1`            |
|     [**CA**](/docs/deploy/prepare#ca)     | Self-signed CA or specify existing certs |        [**Domain**](/docs/deploy/prepare#domain)         | Local/public domain, optional, default `i.pigsty`       |
| [**Kernel**](/docs/deploy/prepare#linux)  | `Linux` `x86_64` / `aarch64`             |         [**Linux**](/docs/deploy/prepare#linux)          | `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26` |
| [**Locale**](/docs/deploy/prepare#locale) | `C.UTF-8` or `C`                         |       [**Firewall**](/docs/deploy/admin#firewall)        | Ports: `80`/`443`/`22`/`5432` (optional)                |
|    [**User**](/docs/deploy/admin#user)    | Avoid `root` and `postgres`              |           [**Sudo**](/docs/deploy/admin#sudo)            | sudo privilege, preferably with `nopass`                |
|     [**SSH**](/docs/deploy/admin#ssh)     | Passwordless SSH via public key          | [**Accessible**](/docs/deploy/admin#check-accessibility) | `ssh <ip\|alias> sudo ls` no error                      |
{.full-width}

## Install

Use one of these commands to install the [Pigsty source package](/docs/deploy/prepare#pigsty) into `~/pigsty`.
This method is recommended and also installs Ansible and other deployment dependencies.

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/get | bash            # Install current default version
curl -fsSL https://repo.pigsty.io/get | bash -s v4.5.0  # Explicitly install the current public stable release
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/get | bash            # Install current default version
curl -fsSL https://repo.pigsty.cc/get | bash -s v4.5.0  # Explicitly install the current public stable release
```

You can instead [download a release](https://github.com/pgsty/pigsty/releases) or clone the source repository.
If you use `git`, select a released version before deployment:

```bash
git clone https://github.com/pgsty/pigsty; cd pigsty;
git checkout v4.5.0;  # Always checkout a released tag when using git
```

After a manual download or clone, run [`bootstrap`](/docs/setup/offline#bootstrap) to install Ansible and the other dependencies.
You can also [install them yourself](/docs/setup/playbook#install-ansible).

```bash
./bootstrap           # Install ansible for subsequent deployment
```

## Configure

The [inventory](/docs/setup/config/) defines the deployment configuration.
Pigsty uses [`pigsty.yml`](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) as the default configuration file.
Edit it to define the required deployment.

The [`configure` script](https://github.com/pgsty/pigsty/blob/main/configure) is an optional [configuration wizard](/docs/concept/iac/configure).
It generates an [inventory](/docs/concept/iac/inventory/) with defaults for your environment:

```bash
./configure -g                # Use wizard to generate config with random passwords
```

The default output file is `~/pigsty/pigsty.yml`.
Examine this file and make the necessary changes before deployment.

Use the [configuration templates](/docs/concept/iac/template/) as examples.
You can also edit `pigsty.yml` directly without the wizard:

```bash
./configure -c ha/full -g       # Use 4-node sandbox template
./configure -c ha/trio -g       # Use 3-node minimal HA template
./configure -c ha/dual -g -v 18 # Use 2-node semi-HA template with PG 18
./configure -c ha/simu -s       # Use 20-node production simulation, skip IP check, no random passwords
```

> [!DETAILS]- Example configure output
> ```bash
> vagrant@meta:~/pigsty$ ./configure
> configure pigsty v4.5.0 begin
> [ OK ] region = china
> [ OK ] kernel  = Linux
> [ OK ] machine = x86_64
> [ OK ] package = deb,apt
> [ OK ] vendor  = ubuntu (Ubuntu)
> [ OK ] version = 22 (22.04)
> [ OK ] sudo = vagrant ok
> [ OK ] ssh = vagrant@127.0.0.1 ok
> [WARN] Multiple IP address candidates found:
>     (1) 192.168.121.38	    inet 192.168.121.38/24 metric 100 brd 192.168.121.255 scope global dynamic eth0
>     (2) 10.10.10.10	    inet 10.10.10.10/24 brd 10.10.10.255 scope global eth1
> [ OK ] primary_ip = 10.10.10.10 (from demo)
> [ OK ] admin = vagrant@10.10.10.10 ok
> [ OK ] mode = meta (ubuntu22.04)
> [ OK ] locale  = C.UTF-8
> [ OK ] ansible = ready
> [ OK ] pigsty configured
> [WARN] don't forget to check it and change passwords!
> proceed with ./deploy.yml
> ```

The wizard replaces only the current node IP address.
Use `-s` to skip this replacement.
For multiple nodes, replace the other IP addresses manually.
Change default passwords, add nodes, and adjust other configuration values for your environment.

**Common configure parameters**:

| Parameter               | Description                                                                             |
|:------------------------|:----------------------------------------------------------------------------------------|
| `-c\|--conf`            | Specify [**config template**](/docs/conf/) relative to `conf/`, without `.yml` suffix   |
| `-v\|--version`         | PostgreSQL major version `14` through `19`; PG19 is currently Beta                       |
| `-r\|--region`          | Upstream repo region for faster downloads: `default\|china\|europe`                     |
| `-n\|--non-interactive` | Use CLI params for primary IP, skip interactive wizard                                  |
| `-x\|--proxy`           | Configure [`proxy_env`](/docs/infra/param#proxy_env) from current environment variables |
{.full-width}

If the node has multiple IP addresses, select its primary address with `-i|--ip <ipaddr>` or enter it interactively.
The script replaces `10.10.10.10` with the current node's primary IPv4 address.
Use a static private address.
Do not use a public IP address.

Review the generated `~/pigsty/pigsty.yml` before deployment.

> [!CAUTION] Replace default credentials
> Change default passwords and credentials before deployment.
> See [Security Recommendations](/docs/setup/security#passwords).

## Deploy

The [`deploy.yml`](/docs/setup/playbook/) [playbook](/docs/setup/playbook/) applies the [configuration](#configure) to all target nodes:

```bash
./deploy.yml     # Deploy core modules on all target nodes at once
```

> [!DETAILS]- Example deployment output
> ```bash
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
> Verify `failed=0` and `unreachable=0` for every target in `PLAY RECAP`, then check service status as needed. Seeing `pgsql init done` or `PLAY RECAP` alone does not prove the entire deployment succeeded.

> [!WARNING] Upstream changes can stop installation
> Incorrect updates to Linux or PGDG repositories can break dependencies and cause deployment failures.
> These failures are common.
> For production, we strongly recommend verified [offline packages](/docs/setup/offline/#offline-packages) for [offline installation](/docs/setup/offline).

> [!WARNING] Repeated deployment can change services
> Another run of [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml) on an existing deployment can restart services and overwrite configuration files.
> Examine the required changes before you run it again.

## Interface

The [4-node template](/docs/conf/full) creates this deployment structure:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
| 2  |    `10.10.10.11`    |      `pg-test-1`      |           -           |            -            |
| 3  |    `10.10.10.12`    |      `pg-test-2`      |           -           |            -            |
| 4  |    `10.10.10.13`    |      `pg-test-3`      |           -           |            -            |
{.full-width}

The [`INFRA` module](/docs/infra) supplies the [Web UI](/docs/setup/webui) through Nginx on ports **80/443**.
The [`PGSQL` module](/docs/pgsql/) supplies a [PostgreSQL server](/docs/setup/pgsql) on port **5432**.
You can also connect through [PgBouncer or HAProxy](/docs/pgsql/service).

For production HA clusters, use [service access](/docs/pgsql/misc/svc) to route traffic automatically.

[![Pigsty online demo homepage](/img/pigsty/home.png)](https://demo.pigsty.io)

## More

After installation, open the [Web UI](/docs/setup/webui/) and connect to [PostgreSQL](/docs/setup/pgsql/) on port 5432.
To deploy and monitor [additional clusters](/docs/conf/full), add their definitions to the [inventory](/docs/setup/config/).
Then run the applicable commands:

```bash
bin/node-add   pg-test      # Add pg-test cluster's 3 nodes to Pigsty management
bin/pgsql-add  pg-test      # Initialize a 3-node pg-test HA PG cluster
bin/redis-add  redis-ms     # Initialize Redis cluster: redis-ms
```

Most modules require the [`NODE` module](/docs/node/) first.
See the [module reference](/docs/ref/module/).
Available modules include [`PGSQL`](/docs/pgsql/), [`INFRA`](/docs/infra/), [`NODE`](/docs/node/), [`ETCD`](/docs/etcd/), [`MINIO`](/docs/minio/), [`REDIS`](/docs/redis/), and [`DOCKER`](/docs/docker/).
