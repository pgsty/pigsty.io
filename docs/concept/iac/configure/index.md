# Configure

> Use the configure script to automatically generate recommended configuration files based on your environment.

---

LLMS index: [llms.txt](/llms.txt)

---

The **`configure`** configuration wizard generates `pigsty.yml` for your current environment.

This script is **optional**. If you know how to configure Pigsty, edit `pigsty.yml` directly and skip the wizard.

-----------------

## Quick Start

Enter the Pigsty source directory and run `./configure` to start the wizard. Without arguments, it uses the [**`meta`**](/docs/conf/meta) single-node template:

```bash
cd ~/pigsty
./configure          # Interactive configuration wizard, auto-detect environment and generate config
```

The command starts with the selected template. It detects the current node IP address and region, then generates `pigsty.yml` for that environment.

[demo\/configure\.cast](/demo/configure.cast)


## Features

The **`configure`** script makes these adjustments from your environment and input. By default, it generates `pigsty.yml` in the Pigsty directory.

- Detect the current node IP address. If the node has multiple addresses, ask you to select a **primary IP address** as its identity.
- Replace **`10.10.10.10`** in the template with this address. Set [**`admin_ip`**](/docs/infra/param#admin_ip) to the same value.
- Detect the region. Set [**`region`**](/docs/infra/param#region) to **`default`** for global software repositories or **`china`** for Chinese mirrors.
- For instances with fewer than four vCPUs, use the **`tiny`** template for [**`node_tune`**](/docs/node/param#node_tune) and [**`pg_conf`**](/docs/pgsql/param#pg_conf). This reduces resource use.
- With **`-v`**, change [**`pg_version`**](/docs/pgsql/param#pg_version) and `pg18-*` package-group aliases to the specified major version. Exclude the fixed-kernel templates `mssql`, `polar`, and `pg19`.
- With **`-g`**, replace recognized default passwords with strong random passwords. This is **strongly recommended**. Review other values against the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist).
- For PG major versions ≥ 17, prefer the built-in **`C.UTF-8`** locale, or the OS-supported **`C.UTF-8`**.
- Check that the core deployment dependency **`ansible`** is available.
- Check that the deployment target accepts SSH connections and can run commands with sudo. Use **`-s`** to skip these checks.



-----------------

## Usage Examples

```bash
# Basic usage
./configure                       # Interactive configuration wizard
./configure -i 10.10.10.10        # Specify primary IP address

# Specify configuration template
./configure -c meta               # Use default single-node template (default)
./configure -c rich               # Use feature-rich single-node template
./configure -c slim               # Use minimal template (PGSQL + ETCD only)
./configure -c ha/full            # Use 4-node HA sandbox template
./configure -c ha/trio            # Use 3-node HA template
./configure -c supabase           # Use Supabase self-hosted template
./configure -c app/immich         # Use Immich photo-management template

# Specify PostgreSQL version
./configure -v 18                 # Use PostgreSQL 18
./configure -v 16                 # Use PostgreSQL 16
./configure -c rich -v 15         # rich template + PG 15
./configure -c pg19               # Use the dedicated PostgreSQL 19 Beta template

# Region and proxy
./configure -r china              # Use Chinese mirrors
./configure -r europe             # Use European mirrors
./configure -x                    # Import current proxy environment variables

# Skip and automation
./configure -s                    # Skip IP detection, keep placeholder
./configure -n -i 10.10.10.10     # Non-interactive mode with specified IP
./configure -c ha/full -s         # 4-node template, skip IP replacement

# Security enhancement
./configure -g                    # Generate random passwords
./configure -c meta -g -i 10.10.10.10  # Complete production configuration

# Specify output and SSH port
./configure -o prod.yml           # Output to prod.yml
./configure -p 2222               # Use SSH port 2222
```


-----------------

## Command Arguments

```bash
./configure
    [-c|--conf <template>]      # Configuration template name (meta|rich|slim|ha/full|...)
    [-i|--ip <ipaddr>]          # Specify primary IP address
    [-v|--version <pgver>]      # PostgreSQL major version (14|15|16|17|18|19)
    [-r|--region <region>]      # Upstream software repo region (default|china|europe)
    [-o|--output <file>]        # Output configuration file path (default: pigsty.yml)
    [-s|--skip]                 # Skip IP address detection and replacement
    [-x|--proxy]                # Import proxy settings from environment variables
    [-n|--non-interactive]      # Non-interactive mode (don't ask any questions)
    [-p|--port <port>]          # Specify SSH port
    [-g|--generate]             # Generate random passwords
    [-h|--help]                 # Display help information
```

### Argument Details

| Argument                | Description                                                                                                |
|:------------------------|:-----------------------------------------------------------------------------------------------------------|
| `-c, --conf`            | Generate config from `conf/<template>.yml`, supports subdirectories like `ha/full`                         |
| `-i, --ip`              | Replace placeholder `10.10.10.10` in config template with specified IP                                     |
| `-v, --version`         | Specify PostgreSQL major version (14-19); PG19 is Beta, so prefer the dedicated `pg19` template           |
| `-r, --region`          | Set software repo mirror region: `default`, `china` (Chinese mirrors), `europe` (European)                 |
| `-o, --output`          | Output path, default `pigsty.yml`; relative paths use Pigsty home, absolute paths are used as given        |
| `-s, --skip`            | Skip IP probing, target SSH/Sudo checks, and effective IP replacement; keep `10.10.10.10`                 |
| `-x, --proxy`           | Write current environment proxy variables (`HTTP_PROXY`, `HTTPS_PROXY`, `ALL_PROXY`, `NO_PROXY`) to config |
| `-n, --non-interactive` | Non-interactive mode; a single/demo IP is auto-selected, while ambiguous multi-IP hosts require `-i`      |
| `-p, --port`            | SSH port used by readiness checks only; it does not write `ansible_port` into the generated config        |
| `-g, --generate`        | **Generate random values for passwords in config file, improving security (strongly recommended)**         |



-----------------

## Execution Flow

The `configure` script detects and configures settings in this order:

```text
┌─────────────────────────────────────────────────────────────┐
│                  configure Execution Flow                   │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  1. check_region          Detect network region (GFW check) │
│         ↓                                                   │
│  2. check_version         Validate PostgreSQL version       │
│         ↓                                                   │
│  3. check_kernel          Detect OS kernel (Linux/Darwin)   │
│         ↓                                                   │
│  4. check_machine         Detect CPU arch (x86_64/aarch64)  │
│         ↓                                                   │
│  5. check_package_manager Detect package manager (dnf/yum/apt) │
│         ↓                                                   │
│  6. check_vendor_version  Detect OS distro and version      │
│         ↓                                                   │
│  7. check_sudo            Detect passwordless sudo          │
│         ↓                                                   │
│  8. check_ssh             Detect passwordless SSH to self   │
│         ↓                                                   │
│  9. check_proxy_env       Handle proxy environment vars     │
│         ↓                                                   │
│ 10. check_ipaddr          Detect/input primary IP address   │
│         ↓                                                   │
│ 11. check_admin           Validate admin SSH + Sudo access  │
│         ↓                                                   │
│ 12. check_conf            Select configuration template     │
│         ↓                                                   │
│ 13. check_config          Generate configuration file       │
│         ↓                                                   │
│ 14. check_utils           Check if Ansible etc. installed   │
│         ↓                                                   │
│     ✓ Configuration complete, output pigsty.yml             │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```


-----------------

## Automatic Behaviors

### Region Detection

The script tests network access to detect mainland China behind the GFW:

```bash
# The actual probe uses HTTPS with a two-second total timeout
curl -I -s --max-time 2 https://www.google.com
```

- If Google is reachable, use `region: default` repositories.
- If Google is unreachable but `https://pigsty.cc` is reachable, set `region: china`.
- If neither endpoint is reachable, use `region: default` and warn that internet access is unavailable.
- To set the region manually, use `-r`.


### IP Address Handling

The script selects the primary IP address in this order:

1. **Command line argument**: Use the address specified with `-i`.
2. **Single IP detection**: If the node has only one IP address, select it automatically.
3. **Demo IP detection**: If `10.10.10.10` exists, select it automatically for the sandbox environment.
4. **Interactive input**: If multiple addresses remain, ask you to select or enter one.

```bash
[WARN] Multiple IP address candidates found:
    (1) 192.168.1.100   inet 192.168.1.100/24 scope global eth0
    (2) 10.10.10.10     inet 10.10.10.10/24 scope global eth1
[ IN ] INPUT primary_ip address (of current meta node, e.g 10.10.10.10):
=> 10.10.10.10
```


### Low-End Hardware Optimization

If the script detects fewer than four CPU cores (1–3), it changes these settings:

```bash
[WARN] replace oltp template with tiny due to cpu < 4
```

- Changes [`pg_conf`](/docs/pgsql/param#pg_conf) from `oltp.yml` to `tiny.yml`
- Changes [`node_tune`](/docs/node/param#node_tune) from `oltp` to `tiny`

These settings support operation on virtual machines with limited resources.


### Locale Settings

The script enables `C.UTF-8` as the default locale if either condition applies:

- PostgreSQL version is ≥ 17, with built-in Locale Provider support.
- The operating system supports the `C.UTF-8` or `C.utf8` locale.

```yaml
pg_locale: C.UTF-8
pg_lc_collate: C.UTF-8
pg_lc_ctype: C.UTF-8
```


### China Region Special Handling

For region `china`, the script automatically enables:

- `docker_registry_mirrors` for faster Docker downloads through mirrors.
- `PIP_MIRROR_URL` for faster Python downloads through mirrors.


### Password Generation

With `-g`, the script generates a random 24-character string for each of these passwords:

|    Password Parameter     | Description                          |
|:-------------------------:|:-------------------------------------|
| `grafana_admin_password`  | Grafana admin password               |
|    `pg_admin_password`    | PostgreSQL admin password            |
|   `pg_monitor_password`   | PostgreSQL monitor user password     |
| `pg_replication_password` | PostgreSQL replication user password |
|    `patroni_password`     | Patroni API password                 |
| `haproxy_admin_password`  | HAProxy admin password               |
|    `minio_secret_key`     | Silo Root Secret                     |
|   `etcd_root_password`    | ETCD Root password                   |

It also replaces the following placeholder passwords:

- `DBUser.Meta` → random password
- `DBUser.Viewer` → random password
- `S3User.Backup` → random password
- `S3User.Meta` → random password
- `S3User.Data` → random password
- `DBUser.Supa` → random password
- `Vibe.Coding` → random password

```bash
$ ./configure -g
[INFO] generating random passwords...
    grafana_admin_password   : xK9mL2nP4qR7sT1vW3yZ5bD8
    pg_admin_password        : aB3cD5eF7gH9iJ1kL2mN4oP6
    ...
[INFO] random passwords generated, check and save them
```


-----------------

## Configuration Templates

The script reads templates from `conf/`. Set `-c` to a relative path without the `.yml` suffix, such as `ha/full` or `app/immich`.

### Core Templates

| Template | Description                                                                     |
|:--------:|:--------------------------------------------------------------------------------|
|  `meta`  | **Default template**: Single-node installation with INFRA + NODE + ETCD + PGSQL |
|  `rich`  | Feature-rich version: Includes almost all extensions, Silo, local repo          |
|  `slim`  | Minimal version: PostgreSQL + ETCD only, no monitoring infrastructure           |
|  `fat`   | Complete version: rich base with more extensions installed                      |
| `pgsql`  | Pure PostgreSQL template                                                        |
|  `pg19`  | Single-node PostgreSQL 19 Beta evaluation template                              |
| `infra`  | Pure infrastructure template                                                    |

### HA Templates (`ha/`)

|  Template  | Description                               |
|:----------:|:------------------------------------------|
| `ha/dual`  | 2-node HA cluster                         |
| `ha/trio`  | 3-node HA cluster                         |
| `ha/full`  | 4-node complete sandbox environment       |
| `ha/safe`  | Security-hardened HA configuration        |
| `ha/octo`  | Compact 8-node HA simulation              |
| `ha/simu`  | 20-node production simulation environment |
| `ha/citus` | 13-node Citus distributed cluster         |

### Application Templates

|     Template     | Description                                     |
|:----------------:|:------------------------------------------------|
|    `supabase`    | Supabase self-hosted configuration              |
|    `app/dify`    | Dify AI platform configuration                  |
|    `app/odoo`    | Odoo ERP configuration                          |
|  `app/electric`  | Electric sync engine configuration              |
|  `app/insforge`  | Insforge backend platform configuration         |
| `app/hindsight`  | Hindsight application configuration             |
|   `app/teable`   | Teable table database configuration             |
| `app/mattermost` | Mattermost collaboration platform configuration |
|   `app/maybe`    | Maybe finance application configuration         |
|  `app/registry`  | Docker Registry configuration                   |
|  `app/immich`    | Immich photo and video management               |
| `app/jumpserver` | JumpServer bastion host                          |

### Special Kernel Templates

|  Template  | Description                                               |
|:----------:|:----------------------------------------------------------|
|  `ivory`   | IvorySQL: Oracle-compatible PostgreSQL                    |
|  `mssql`   | Babelfish: SQL Server-compatible PostgreSQL               |
|  `polar`   | PolarDB: Alibaba Cloud open-source distributed PostgreSQL |
| `ha/citus` | Citus: Distributed PostgreSQL HA cluster                  |
|  `mysql`   | OpenHalo: MySQL protocol-compatible PostgreSQL            |
|  `pgtde`   | Percona PostgreSQL Server: transparent encryption         |
|  `oriole`  | OrioleDB: Next-generation storage engine                  |
|  `agens`   | AgensGraph: graph database kernel                         |
|  `pgedge`  | pgEdge: distributed PostgreSQL kernel                     |
|  `mongo`   | MongoDB-compatible stack template                         |

### Demo and Build Templates

|    Template    | Description                                      |
|:--------------:|:-------------------------------------------------|
|     `vibe`     | Vibe Coding development environment              |
|    `docker`    | Run Pigsty inside a Docker container              |
|  `demo/bare`   | Minimal readable single-node example              |
|   `demo/el`    | Full parameter example for EL distributions       |
| `demo/debian`  | Full parameter example for Debian/Ubuntu          |
|  `demo/demo`   | Multi-module demo environment                     |
| `demo/kernel`  | Ten-node database-kernel matrix                   |
| `demo/redis`   | Redis replica, Sentinel, and native Cluster demo  |
| `demo/minio`   | Multi-node, multi-drive Silo demo (source default) |
| `demo/kafka`   | Kafka KRaft development and secure-cluster demo    |
| `demo/mysql`   | Native MySQL 8.4 pilot demo                        |
| `demo/remote`  | Remote PostgreSQL/RDS monitoring example          |
|  `demo/saas`   | Legacy single-node SaaS component bundle          |
|  `demo/wool`   | Small cloud-instance example for China            |
|  `build/oss`   | Cross-distribution open-source package build env  |
|  `build/dev`   | Three-node development and build environment      |
{.full-width}


-----------------

## Output Example

```bash
$ ./configure
configure pigsty v4.5.0 begin
[ OK ] region = china
[ OK ] kernel  = Linux
[ OK ] machine = x86_64
[ OK ] package = rpm,dnf
[ OK ] vendor  = rocky (Rocky Linux)
[ OK ] version = 9 (9.5)
[ OK ] sudo = vagrant ok
[ OK ] ssh = vagrant@127.0.0.1 ok
[WARN] Multiple IP address candidates found:
    (1) 192.168.121.193	    inet 192.168.121.193/24 brd 192.168.121.255 scope global dynamic noprefixroute eth0
    (2) 10.10.10.10	    inet 10.10.10.10/24 brd 10.10.10.255 scope global noprefixroute eth1
[ OK ] primary_ip = 10.10.10.10 (from demo)
[ OK ] admin = vagrant@10.10.10.10 ok
[ OK ] mode = meta (el9)
[ OK ] locale  = C.UTF-8
[ OK ] ansible = ready
[ OK ] pigsty configured
[WARN] don't forget to check it and change passwords!
proceed with ./deploy.yml
```


-----------------

## Environment Variables

The script supports the following environment variables:

| Environment Variable | Description                   |     Default      |
|:--------------------:|:------------------------------|:----------------:|
|    `PIGSTY_HOME`     | Pigsty installation directory |    `~/pigsty`    |
|     `METADB_URL`     | Metabase connection URL       |  `service=meta`  |
|     `HTTP_PROXY`     | HTTP proxy                    |        -         |
|    `HTTPS_PROXY`     | HTTPS proxy                   |        -         |
|     `ALL_PROXY`      | Universal proxy               |        -         |
|      `NO_PROXY`      | Proxy whitelist               | Built-in default |


-----------------

## Notes

1. **Passwordless access**: Before you run `configure`, the current user must have passwordless sudo and passwordless SSH access to localhost. The `bootstrap` script can configure both.

2. **IP address selection**: Select an **internal IP** as the primary address. Do not select a public IP or `127.0.0.1`.

3. **Password security**: In production, **always** change default passwords. Use `-g` to randomize recognized credentials. Review the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for remaining values.

4. **Configuration review**: After the script completes, review the generated `pigsty.yml`. Check that it meets your requirements.

5. **Multiple executions**: You can run `configure` again to regenerate configuration. **Each run overwrites the existing `pigsty.yml`.**

6. **macOS limitations**: On macOS, the script skips some Linux checks and uses placeholder IP `10.10.10.10`. macOS can serve only as an administration node.


-----------------

## FAQ

### How to use a custom configuration template?

Place your configuration file in the `conf/` directory, then specify it with the `-c` argument:

```bash
cp my-config.yml ~/pigsty/conf/myconf.yml
./configure -c myconf
```

### How to generate different configurations for multiple clusters?

Use the `-o` argument to specify different output files:

```bash
./configure -c ha/full -o cluster-a.yml
./configure -c ha/trio -o cluster-b.yml
```

Then specify the configuration file when running playbooks:

```bash
./deploy.yml -i cluster-a.yml
```

### How to handle multiple IPs in non-interactive mode?

You must explicitly specify the IP address using the `-i` argument:

```bash
./configure -n -i 10.10.10.10
```

### How to keep the placeholder IP in the template?

Use the `-s` argument to skip IP replacement:

```bash
./configure -c ha/full -s   # Keep 10.10.10.10 placeholder
```


-----------------

## Related Documentation

- [**Inventory**](/docs/concept/iac/inventory/): Understand the Ansible inventory structure
- [**Parameters**](/docs/concept/iac/parameter/): Understand Pigsty parameter hierarchy and priority
- [**Templates**](/docs/conf/): View all available configuration templates
- [**Installation**](/docs/setup/install/): Understand the complete installation process
- [**Metabase**](/docs/concept/iac/cmdb/): Use PostgreSQL as a dynamic configuration source
