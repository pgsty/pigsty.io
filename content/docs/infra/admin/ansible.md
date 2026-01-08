---
title: Ansible
description: Using Ansible to run administration commands
weight: 3101
icon: fa-solid fa-terminal
categories: [Task]
---

Ansible is installed by default on all INFRA nodes and can be used to manage the entire deployment.

Pigsty implements automation based on **Ansible**, following the **Infrastructure-as-Code** philosophy.

Ansible knowledge is useful for managing databases and infrastructure, but **not required**. You only need to know how to execute **Playbooks** - YAML files that define a series of automated tasks.


----------------

## Installation

Pigsty automatically installs `ansible` and its dependencies during the [bootstrap process](/docs/setup/install#bootstrap).
For manual installation, use the following commands:

```bash
# Debian / Ubuntu
sudo apt install -y ansible python3-jmespath

# EL 10
sudo dnf install -y ansible python-jmespath

# EL 8/9
sudo dnf install -y ansible python3.12-jmespath

# EL 7
sudo yum install -y ansible python-jmespath
```

### macOS

macOS users can install using [Homebrew](https://brew.sh/):

```bash
brew install ansible
pip3 install jmespath
```


----------------

## Basic Usage

To run a playbook, simply execute `./path/to/playbook.yml`. Here are the most commonly used Ansible command-line parameters:

| Purpose | Parameter | Description |
|------|------|------|
| **Where** | `-l` / `--limit <pattern>` | Limit target hosts/groups/patterns |
| **What** | `-t` / `--tags <tags>` | Only run tasks with specified tags |
| **How** | `-e` / `--extra-vars <vars>` | Pass extra command-line variables |
| **Config** | `-i` / `--inventory <path>` | Specify inventory file path |


----------------

## Limiting Hosts

Use `-l|--limit <pattern>` to limit execution to specific groups, hosts, or patterns:

```bash
./node.yml                      # Execute on all nodes
./pgsql.yml -l pg-test          # Only execute on pg-test cluster
./pgsql.yml -l pg-*             # Execute on all clusters starting with pg-
./pgsql.yml -l 10.10.10.10      # Only execute on specific IP host
```


> Running playbooks without host limits **can be very dangerous**! By default, most playbooks execute on **all** hosts. **Use with caution!**


----------------

## Limiting Tasks

Use `-t|--tags <tags>` to only execute task subsets with specified tags:

```bash
./infra.yml -t repo           # Only execute tasks to create local repo
./infra.yml -t repo_upstream  # Only execute tasks to add upstream repos
./node.yml -t node_pkg        # Only execute tasks to install node packages
./pgsql.yml -t pg_hba         # Only execute tasks to render pg_hba.conf
```


----------------

## Passing Variables

Use `-e|--extra-vars <key=value>` to override variables at runtime:

```bash
./pgsql.yml -e pg_clean=true         # Force clean existing PG instances
./pgsql-rm.yml -e pg_rm_pkg=false    # Keep packages when uninstalling
./node.yml -e '{"node_tune":"tiny"}' # Pass variables in JSON format
./pgsql.yml -e @/path/to/config.yml  # Load variables from YAML file
```


----------------

## Specifying Inventory

By default, Ansible uses `pigsty.yml` in the current directory as the inventory.
Use `-i|--inventory <path>` to specify a different config file:

```bash
./pgsql.yml -i files/pigsty/full.yml -l pg-test
```

> [!NOTE]
>
> To permanently change the default config file path, modify the `inventory` parameter in `ansible.cfg`.

