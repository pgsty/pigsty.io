---
title: Configure
weight: 212
description: Use the configure script to automatically generate recommended configuration files based on your environment.
icon: fa-solid fa-wand-magic-sparkles
module: [PIGSTY]
categories: [Concept]
tags: [Configuration, Wizard, Installation]
---


Pigsty provides a **`configure`** script as a **configuration wizard** that automatically generates an appropriate `pigsty.yml` configuration file based on your current environment.

This is an **optional** script: if you already understand how to configure Pigsty, you can directly edit the `pigsty.yml` configuration file and skip the wizard.

-----------------

## Quick Start

Enter the pigsty source home directory and run `./configure` to automatically start the configuration wizard. Without any arguments, it defaults to the [**`meta`**](/docs/conf/meta) single-node configuration template:

```bash
cd ~/pigsty
./configure          # Interactive configuration wizard, auto-detect environment and generate config
```

This command will use the selected template as a base, detect the current node's IP address and region, and generate a `pigsty.yml` configuration file suitable for the current environment.

{{< asciinema file="demo/configure.cast" markers="3:Default config,7:Specify IP,14:Random password,17:rich template,20:app/odoo template,26:china region,33:ha/full template" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}


## Features

The **`configure`** script performs the following adjustments based on environment and input, generating a `pigsty.yml` configuration file in the current directory.

- Detects the current node IP address; if multiple IPs exist, prompts the user to input a **primary IP address** as the node's identity
- Uses the IP address to replace the placeholder **`10.10.10.10`** in the configuration template and sets it as the [**`admin_ip`**](/docs/infra/param#admin_ip) parameter value
- Detects the current region, setting [**`region`**](/docs/infra/param#region) to **`default`** (global default repos) or **`china`** (using Chinese mirror repos)
- For micro instances (vCPU < 4), uses the **`tiny`** parameter template for [**`node_tune`**](/docs/node/param#node_tune) and [**`pg_conf`**](/docs/pgsql/param#pg_conf) to optimize resource usage
- If **`-v`** PG major version is specified, sets [**`pg_version`**](/docs/pgsql/param#pg_version) and all PG alias parameters to the corresponding major version
- If **`-g`** is specified, replaces all default passwords with randomly generated strong passwords for enhanced security (**strongly recommended**)
- When PG major version ≥ 17, prioritizes the built-in **`C.UTF-8`** locale, or the OS-supported **`C.UTF-8`**
- Checks if the core dependency **`ansible`** for deployment is available in the current environment
- Also checks if the deployment target node is SSH-reachable and can execute commands with sudo (**`-s`** to skip)



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
./configure -c app/supa           # Use Supabase self-hosted template

# Specify PostgreSQL version
./configure -v 17                 # Use PostgreSQL 17
./configure -v 16                 # Use PostgreSQL 16
./configure -c rich -v 16         # rich template + PG 16

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
    [-v|--version <pgver>]      # PostgreSQL major version (13|14|15|16|17|18)
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

| Argument                | Description                                                                                  |
|:------------------------|:---------------------------------------------------------------------------------------------|
| `-c, --conf`            | Generate config from `conf/<template>.yml`, supports subdirectories like `ha/full`          |
| `-i, --ip`              | Replace placeholder `10.10.10.10` in config template with specified IP                      |
| `-v, --version`         | Specify PostgreSQL major version (13-18), keeps template default if not specified           |
| `-r, --region`          | Set software repo mirror region: `default`, `china` (Chinese mirrors), `europe` (European)  |
| `-o, --output`          | Specify output file path, defaults to `pigsty.yml`                                          |
| `-s, --skip`            | Skip IP address detection and replacement, keep `10.10.10.10` placeholder in template       |
| `-x, --proxy`           | Write current environment proxy variables (`HTTP_PROXY`, `HTTPS_PROXY`, `ALL_PROXY`, `NO_PROXY`) to config |
| `-n, --non-interactive` | Non-interactive mode, don't ask any questions (requires `-i` to specify IP)                 |
| `-p, --port`            | Specify SSH port (when using non-default port 22)                                           |
| `-g, --generate`        | **Generate random values for passwords in config file, improving security (strongly recommended)** |



-----------------

## Execution Flow

The `configure` script executes detection and configuration in the following order:

```
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
│  9. check_proxy           Handle proxy environment vars     │
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

The script automatically detects the network environment to determine if you're in mainland China (behind GFW):

```bash
# Check network environment by accessing Google
curl -I -s --connect-timeout 1 www.google.com
```

- If Google is inaccessible, automatically sets `region: china` to use domestic mirrors
- If accessible, uses `region: default` default mirrors
- Can manually specify region via `-r` argument


### IP Address Handling

The script determines the primary IP address in the following priority:

1. **Command line argument**: If IP is specified via `-i`, use it directly
2. **Single IP detection**: If the current node has only one IP, use it automatically
3. **Demo IP detection**: If `10.10.10.10` is detected, select it automatically (for sandbox environments)
4. **Interactive input**: When multiple IPs exist, prompt user to choose or input

```bash
[WARN] Multiple IP address candidates found:
    (1) 192.168.1.100   inet 192.168.1.100/24 scope global eth0
    (2) 10.10.10.10     inet 10.10.10.10/24 scope global eth1
[ IN ] INPUT primary_ip address (of current meta node, e.g 10.10.10.10):
=> 10.10.10.10
```


### Low-End Hardware Optimization

When CPU core count ≤ 4 is detected, the script automatically adjusts configuration:

```bash
[WARN] replace oltp template with tiny due to cpu < 4
```

- Changes [`pg_conf`](/docs/pgsql/param#pg_conf) from `oltp.yml` to `tiny.yml`
- Changes [`node_tune`](/docs/node/param#node_tune) from `oltp` to `tiny`

This ensures smooth operation on low-spec virtual machines.


### Locale Settings

The script automatically enables `C.UTF-8` as the default locale when:

- PostgreSQL version ≥ 17 (built-in Locale Provider support)
- **Or** the current system supports `C.UTF-8` / `C.utf8` locale

```yaml
pg_locale: C.UTF-8
pg_lc_collate: C.UTF-8
pg_lc_ctype: C.UTF-8
```


### China Region Special Handling

When region is set to `china`, the script automatically:

- Enables `docker_registry_mirrors` Docker mirror acceleration
- Enables `PIP_MIRROR_URL` Python mirror acceleration


### Password Generation

When using the `-g` argument, the script generates 24-character random strings for the following passwords:

| Password Parameter | Description |
|:---:|:---|
| `grafana_admin_password` | Grafana admin password |
| `pg_admin_password` | PostgreSQL admin password |
| `pg_monitor_password` | PostgreSQL monitor user password |
| `pg_replication_password` | PostgreSQL replication user password |
| `patroni_password` | Patroni API password |
| `haproxy_admin_password` | HAProxy admin password |
| `minio_secret_key` | MinIO Secret Key |
| `etcd_root_password` | ETCD Root password |

It also replaces the following placeholder passwords:

- `DBUser.Meta` → random password
- `DBUser.Viewer` → random password
- `S3User.Backup` → random password
- `S3User.Meta` → random password
- `S3User.Data` → random password

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

The script reads configuration templates from the `conf/` directory, supporting the following templates:

### Core Templates

| Template | Description |
|:---:|:---|
| `meta` | **Default template**: Single-node installation with INFRA + NODE + ETCD + PGSQL |
| `rich` | Feature-rich version: Includes almost all extensions, MinIO, local repo |
| `slim` | Minimal version: PostgreSQL + ETCD only, no monitoring infrastructure |
| `fat` | Complete version: rich base with more extensions installed |
| `pgsql` | Pure PostgreSQL template |
| `infra` | Pure infrastructure template |

### HA Templates (`ha/`)

| Template | Description |
|:---:|:---|
| `ha/dual` | 2-node HA cluster |
| `ha/trio` | 3-node HA cluster |
| `ha/full` | 4-node complete sandbox environment |
| `ha/safe` | Security-hardened HA configuration |
| `ha/simu` | 42-node large-scale simulation environment |

### Application Templates (`app/`)

| Template | Description |
|:---:|:---|
| `supabase` | Supabase self-hosted configuration |
| `app/dify` | Dify AI platform configuration |
| `app/odoo` | Odoo ERP configuration |
| `app/teable` | Teable table database configuration |
| `app/registry` | Docker Registry configuration |

### Special Kernel Templates

| Template | Description |
|:---:|:---|
| `ivory` | IvorySQL: Oracle-compatible PostgreSQL |
| `mssql` | Babelfish: SQL Server-compatible PostgreSQL |
| `polar` | PolarDB: Alibaba Cloud open-source distributed PostgreSQL |
| `citus` | Citus: Distributed PostgreSQL |
| `oriole` | OrioleDB: Next-generation storage engine |

### Demo Templates (`demo/`)

| Template | Description |
|:---:|:---|
| `demo/demo` | Demo environment configuration |
| `demo/redis` | Redis cluster demo |
| `demo/minio` | MinIO cluster demo |


-----------------

## Output Example

```bash
$ ./configure
configure pigsty v4.0.0 begin
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

| Environment Variable | Description | Default |
|:---:|:---|:---:|
| `PIGSTY_HOME` | Pigsty installation directory | `~/pigsty` |
| `METADB_URL` | Metabase connection URL | `service=meta` |
| `HTTP_PROXY` | HTTP proxy | - |
| `HTTPS_PROXY` | HTTPS proxy | - |
| `ALL_PROXY` | Universal proxy | - |
| `NO_PROXY` | Proxy whitelist | Built-in default |


-----------------

## Notes

1. **Passwordless access**: Before running `configure`, ensure the current user has passwordless sudo privileges and passwordless SSH to localhost. This can be automatically configured via the `bootstrap` script.

2. **IP address selection**: Choose an **internal IP** as the primary IP address, not a public IP or `127.0.0.1`.

3. **Password security**: In production environments, **always** modify default passwords in the configuration file, or use the `-g` argument to generate random passwords.

4. **Configuration review**: After the script completes, it's recommended to review the generated `pigsty.yml` file to confirm the configuration meets expectations.

5. **Multiple executions**: You can run `configure` multiple times to regenerate configuration; each run will overwrite the existing `pigsty.yml`.

6. **macOS limitations**: When running on macOS, the script skips some Linux-specific checks and uses placeholder IP `10.10.10.10`. macOS can only serve as an admin node.


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
