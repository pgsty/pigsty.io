---
title: "CMD: pig sty"
linkTitle: "CMD: pig sty"
description: "Manage Pigsty installation with pig sty subcommand"
weight: 5290
icon: fas fa-server
module: [PIG]
categories: [Admin]
---

The **pig** can also be used as a CLI tool for Pigsty — the battery-included free PostgreSQL RDS.
Which brings HA, PITR, Monitoring, IaC, and all the extensions to your PostgreSQL cluster.

| Command | Description | Notes |
|:---|:---|:---|
| `sty init` | Install Pigsty | |
| `sty boot` | Install Ansible prerequisites | Requires sudo or root |
| `sty conf` | Generate configuration | |
| `sty deploy` | Run deployment playbook | |


## Quick Start

```bash
pig sty init                     # Install Pigsty to ~/pigsty
pig sty boot                     # Install Ansible prerequisites
pig sty conf                     # Generate configuration
pig sty deploy                   # Run deployment playbook
```


## sty init

Download and install Pigsty distribution to `~/pigsty` directory.

```bash
pig sty init                     # Install latest Pigsty
pig sty init -v 3.5.0            # Install specific version
pig sty init -d /opt/pigsty      # Install to specific directory
```

**Options:**
- `-v|--version`: Specify Pigsty version
- `-d|--dir`: Specify installation directory
- `-f|--force`: Overwrite existing pigsty directory


## sty boot

Install Ansible and its dependencies.

```bash
pig sty boot                     # Install Ansible
pig sty boot -y                  # Auto-confirm
pig sty boot -r china            # Use China region mirrors
```

**Options:**
- `-r|--region`: Upstream repo region (default, china, europe)
- `-k|--keep`: Keep existing upstream repo during bootstrap


## sty conf

Generate Pigsty configuration file.

```bash
pig sty conf                     # Generate default configuration
pig sty conf -c rich             # Use conf/rich.yml template (more extensions)
pig sty conf -c slim             # Use conf/slim.yml template (minimal install)
pig sty conf -c supabase         # Use conf/supabase.yml template (self-hosting)
pig sty conf -g                  # Generate with random passwords (recommended!)
pig sty conf -v 17               # Use PostgreSQL 17
pig sty conf -r china            # Use China region mirrors
pig sty conf --ip 10.10.10.10    # Specify IP address
```

**Options:**
- `-c|--conf`: Config template name
- `-v|--version`: PostgreSQL major version
- `-r|--region`: Upstream repo region
- `--ip`: Primary IP address
- `-g|--generate`: Generate random passwords
- `-s|--skip`: Skip IP address probing
- `-o|--output`: Output config file path


## sty deploy

Run Pigsty deployment playbook.

```bash
pig sty deploy                   # Run full deployment
```

This command runs the `deploy.yml` playbook from your Pigsty installation.

**Warning**: This operation makes changes to your system. Use with caution!


--------

## Complete Workflow

Here's the complete workflow to set up Pigsty:

```bash
# 1. Download and install Pigsty
pig sty init

# 2. Install Ansible and dependencies
cd ~/pigsty
pig sty boot

# 3. Generate configuration
pig sty conf -g                  # Generate with random passwords

# 4. Deploy Pigsty
pig sty deploy
```

For detailed setup instructions, check [Get Started](https://pigsty.io/docs/setup/install/).


--------

## Configuration Templates

Available configuration templates (`-c` option):

| Template | Description |
|:---|:---|
| `meta` | Default single-node meta configuration |
| `rich` | Configuration with more extensions enabled |
| `slim` | Minimal installation |
| `full` | Full 4-node HA template |
| `supabase` | Self-hosting Supabase template |

Example:

```bash
pig sty conf -c rich -g -v 17 -r china
```

This generates a configuration using the `rich` template with PostgreSQL 17, random passwords, and China region mirrors.

