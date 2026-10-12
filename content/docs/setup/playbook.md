---
title: Run Playbooks with Ansible
linkTitle: Playbook
weight: 275
description: Use Ansible playbooks to deploy and manage Pigsty clusters.
icon: fa-solid fa-scroll
module: [PIGSTY]
categories: [Tutorial]
aliases: [/docs/infra/admin/ansible/]
---

Pigsty uses [Ansible](https://docs.ansible.com/) to deploy and manage clusters.
Ansible applies declarative configuration through [playbooks](/docs/ref/playbook/).
Pigsty module playbooks use idempotent tasks to reach the specified configuration.

For a single-node installation, use [`deploy.yml`](#deploy-playbook).
Other [built-in playbooks](/docs/ref/playbook/) perform specific module operations.
Ansible knowledge helps you manage Pigsty, but the single-node procedure does not require it.

## Deploy Playbook

The `deploy.yml` playbook applies the core deployment configuration.
It includes the CA, software repository, NODE, INFRA, ETCD, PGSQL, and MINIO when the inventory enables them.
Optional modules such as Redis, Kafka, and native MySQL require their own playbooks.
Defining these optional modules in the inventory does not add them to `deploy.yml`.

The table shows the module deployment targets:

| Playbook    | Command       | Group      | `infra` | `[nodes]` | `etcd` | `minio` | `[pgsql]` |
|-------------|---------------|------------|:-------:|:---------:|:------:|:-------:|:---------:|
| `infra.yml` | `./infra.yml` | `-l infra` |    ✓    |     ✓     |        |         |           |
| `node.yml`  | `./node.yml`  |            |         |     ✓     |   ✓    |    ✓    |     ✓     |
| `etcd.yml`  | `./etcd.yml`  | `-l etcd`  |         |           |   ✓    |         |           |
| `minio.yml` | `./minio.yml` | `-l minio` |         |           |        |    ✓    |           |
| `pgsql.yml` | `./pgsql.yml` |            |         |           |        |         |     ✓     |
{.full-width}

You can apply the core configuration in one run with `deploy.yml`.
For deployment in stages, follow the [Customization Guide](/docs/setup/config/).

## Install Ansible

The [Pigsty installation script](/docs/setup/install#install) installs Ansible and its dependencies.
The offline [bootstrap procedure](/docs/setup/offline#bootstrap) can also install them.

To install Ansible manually, use the command for your operating system.
The minimum supported Ansible version is `2.9`.

```bash {tab="Debian / Ubuntu"}
sudo apt install -y ansible python3-jmespath
```

```bash {tab="EL"}
sudo dnf install -y ansible python3.12-jmespath python3-cryptography  # EL 8
sudo dnf install -y ansible python3-jmespath                           # EL 9
sudo dnf install -y ansible                                            # EL 10
```

```bash {tab="MacOS"}
brew install ansible
pip3 install jmespath
```

> [!NOTE] Ansible packages on EL 10
> The EL 10 EPEL repository does not yet supply all required Ansible packages.
> The [Pigsty PGSQL repository](/docs/repo/pgsql/) supplies the additional packages.

On macOS, install Ansible with [Homebrew](https://brew.sh/).
You can use the Mac as an administration node for remote cloud servers.
This method is suitable for personal single-node deployments.
For production, use a Linux administration node.

## Execute Playbook

Ansible playbooks are executable YAML files with task definitions.
Make sure that `ansible-playbook` is available through your `PATH` environment variable.
The command `./node.yml` runs `ansible-playbook node.yml`.

Use these four arguments to control execution:

|       Purpose       | Parameter                        | Description                     |
|:----------------:|:-------------------------------|:-------------------------------|
| [**Target**](#limit-hosts) | `-l\|--limit <pattern>`   | Limit execution to specific groups/hosts/patterns |
| [**Tasks**](#limit-tasks)  | `-t\|--tags <tags>`       | Only run tasks with specific tags                 |
| [**Params**](#extra-vars)  | `-e\|--extra-vars <vars>` | Extra command-line parameters               |
| [**Config**](#specify-inventory) | `-i\|--inventory <path>`  | Use a specific inventory file              |
{.full-width}

```bash
./node.yml                         # Run node playbook on all hosts
./pgsql.yml -l pg-test             # Run pgsql playbook on pg-test cluster
./infra.yml -t repo_build          # Run infra.yml subtask repo_build
./pgsql-rm.yml -l pg-test -e pg_rm_pkg=false --check # Preflight removal while keeping packages
./infra.yml -i conf/mynginx.yml    # Use another location's config file
```

## Limit Hosts

Use `-l|--limit <selector>` to select the target hosts or groups.
The selector can contain an IP address, group name, or pattern.

```bash
./pgsql.yml                              # Run on all hosts (dangerous!)
./pgsql.yml -l pg-test                   # Run on pg-test cluster
./pgsql.yml -l 10.10.10.10               # Run on single host 10.10.10.10
./pgsql.yml -l pg-*                      # Run on hosts/groups matching glob `pg-*`
./pgsql.yml -l '10.10.10.11,&pg-test'    # Run on 10.10.10.11 in pg-test group
./pgsql-rm.yml -l 'pg-test,!10.10.10.11' --check # Preflight removal; verify target and backups before execution
```

See the [Ansible host and group patterns](https://docs.ansible.com/ansible/latest/inventory_guide/intro_patterns.html) for the selection rules.

> [!WARNING] Select the target hosts
> Most playbooks target all applicable inventory hosts if you omit `--limit`.
> Specify the target before you run a playbook that changes an existing deployment.

## Limit Tasks

Use `-t|--tags <tags>` to select tasks by tag.
This limits execution to the selected tasks instead of the complete playbook:

```bash
./infra.yml -t repo          # Create repo
./node.yml  -t node_pkg      # Install node packages
./pgsql.yml -t pg_install    # Install PG packages and extensions
./etcd.yml  -t etcd_config   # Render ETCD configuration again
./minio.yml -t minio_alias   # Write the mcli client alias
```

To select multiple tags, separate them with commas:

```bash
./node.yml  -t node_repo,node_pkg   # Add repos, then install packages
./pgsql.yml -t pg_hba,pg_reload     # Configure, then reload pg hba rules
```

## Extra Vars

Use `-e|--extra-vars KEY=VALUE` to override configuration parameters for one run.
These variables have the [highest variable precedence](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#understanding-variable-precedence).
You can supply `-e` more than once:

```bash
# Create admin using another admin user
./node.yml -e ansible_user=admin -k -K -t node_admin

# Initialize a specific Redis instance: 10.10.10.11:6379
./redis.yml -l 10.10.10.10 -e redis_port=6379 -t redis

# Remove PostgreSQL but keep packages and data
./pgsql-rm.yml -l pg-test -e pg_rm_pkg=false -e pg_rm_data=false --check
```

For lists, objects, or multiple variables, supply a JSON string:

```bash
# Add repo and install packages
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["duckdb"]}'
```

## Specify Inventory

The default inventory is `pigsty.yml` in the Pigsty source directory.
Use `-i <path>` to select a different [inventory file](/docs/concept/iac/inventory/):

```bash
./pgsql.yml -i conf/rich.yml            # Initialize single node with all extensions per rich config
./pgsql.yml -i conf/ha/full.yml         # Initialize 4-node cluster per full config
./pgsql.yml -i conf/app/supa.yml        # Initialize 1-node Supabase deployment per supa.yml
```

> [!NOTE] Change the default inventory
> To change the default permanently, edit `inventory` in [`ansible.cfg`](https://github.com/pgsty/pigsty/blob/main/ansible.cfg#L6).

## Convenience Scripts

The `bin/` directory contains scripts for common operations.
Each script calls an Ansible playbook with the necessary arguments:

```bash
bin/node-add   <cls>            # Add nodes to Pigsty management: ./node.yml -l <cls>
bin/node-rm    <cls>            # Remove nodes from Pigsty: ./node-rm.yml -l <cls>
bin/pgsql-add  <cls>            # Initialize PG cluster: ./pgsql.yml -l <cls>
bin/pgsql-rm   <cls>            # Remove PG cluster: ./pgsql-rm.yml -l <cls>
bin/pgsql-user <cls> <username> # Add business user: ./pgsql-user.yml -l <cls> -e username=<user>
bin/pgsql-db   <cls> <dbname>   # Add business database: ./pgsql-db.yml -l <cls> -e dbname=<db>
bin/redis-add  <cls>            # Initialize Redis cluster: ./redis.yml -l <cls>
bin/redis-rm   <cls>            # Remove Redis cluster: ./redis-rm.yml -l <cls>
```

Use these scripts when their operation matches your task.

## Playbook List

The table lists the [built-in playbooks](/docs/ref/playbook/).
You can add your own playbooks or change their tasks for your deployment requirements.

|                  Module                  | Playbook                                                                                   | Function                            |
|:------------------------------------:|--------------------------------------------------------------------------------------------|:-----------------------------------|
|  [**INFRA**](/docs/infra/playbook/)  | [**`deploy.yml`**](https://github.com/pgsty/pigsty/blob/main/deploy.yml)                   | One-click deploy Pigsty on current node             |
|  [**INFRA**](/docs/infra/playbook/)  | [**`infra.yml`**](https://github.com/pgsty/pigsty/blob/main/infra.yml)                     | Initialize Pigsty infrastructure on infra nodes       |
|  [**INFRA**](/docs/infra/playbook/)  | [**`infra-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/infra-rm.yml)               | Remove infrastructure components from infra nodes   |
|  [**INFRA**](/docs/infra/playbook/)  | [**`cache.yml`**](https://github.com/pgsty/pigsty/blob/main/cache.yml)                     | Create offline packages from target node            |
|  [**INFRA**](/docs/infra/playbook/)  | [**`cert.yml`**](https://github.com/pgsty/pigsty/blob/main/cert.yml)                       | Issue certificates using Pigsty self-signed CA      |
|   [**NODE**](/docs/node/playbook/)   | [**`node.yml`**](https://github.com/pgsty/pigsty/blob/main/node.yml)                       | Initialize node, adjust to desired state            |
|   [**NODE**](/docs/node/playbook/)   | [**`node-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/node-rm.yml)                 | Remove node from Pigsty                             |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql.yml)                     | Initialize HA PostgreSQL cluster or add replica     |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql-rm.yml)               | Remove PostgreSQL cluster or replica                |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql-db.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql-db.yml)               | Add new business database to existing cluster       |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql-user.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql-user.yml)           | Add new business user to existing cluster           |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql-pitr.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql-pitr.yml)           | Perform point-in-time recovery on cluster           |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql-monitor.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql-monitor.yml)     | Monitor remote PostgreSQL with local exporter       |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`pgsql-migration.yml`**](https://github.com/pgsty/pigsty/blob/main/pgsql-migration.yml) | Generate migration manual and scripts               |
|  [**PGSQL**](/docs/pgsql/playbook/)  | [**`slim.yml`**](https://github.com/pgsty/pigsty/blob/main/slim.yml)                       | Install Pigsty with minimal components              |
|  [**REDIS**](/docs/redis/playbook/)  | [**`redis.yml`**](https://github.com/pgsty/pigsty/blob/main/redis.yml)                     | Initialize Redis cluster/node/instance              |
|  [**REDIS**](/docs/redis/playbook/)  | [**`redis-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/redis-rm.yml)               | Remove Redis cluster/node/instance                  |
|   [**ETCD**](/docs/etcd/playbook/)   | [**`etcd.yml`**](https://github.com/pgsty/pigsty/blob/main/etcd.yml)                       | Initialize ETCD cluster or add new member           |
|   [**ETCD**](/docs/etcd/playbook/)   | [**`etcd-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/etcd-rm.yml)                 | Remove ETCD cluster/data or shrink member           |
|  [**MINIO**](/docs/minio/playbook/)  | [**`minio.yml`**](https://github.com/pgsty/pigsty/blob/main/minio.yml)                     | Initialize a Silo object-storage cluster |
|  [**MINIO**](/docs/minio/playbook/)  | [**`minio-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/minio-rm.yml)               | Remove Silo, its configuration, and optional data |
| [**DOCKER**](/docs/docker/playbook/) | [**`docker.yml`**](https://github.com/pgsty/pigsty/blob/main/docker.yml)                   | Install Docker on nodes                             |
| [**DOCKER**](/docs/docker/playbook/) | [**`app.yml`**](https://github.com/pgsty/pigsty/blob/main/app.yml)                         | Install applications using Docker Compose           |
|  [**JUICE**](/docs/juice/playbook/)  | [**`juice.yml`**](https://github.com/pgsty/pigsty/blob/main/juice.yml)                     | Install and configure JuiceFS                       |
|   [**VIBE**](/docs/vibe/playbook/)   | [**`vibe.yml`**](https://github.com/pgsty/pigsty/blob/main/vibe.yml)                       | Install the Vibe coding environment                 |
|  [**KAFKA**](/docs/kafka/playbook/)  | [**`kafka.yml`**](https://github.com/pgsty/pigsty/blob/main/kafka.yml)                     | Create or converge a Kafka dynamic KRaft cluster    |
|  [**KAFKA**](/docs/kafka/playbook/)  | [**`kafka-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml)               | Remove a Kafka cluster or member                    |
| **MYSQL (Pilot)** | [**`mysql.yml`**](https://github.com/pgsty/pigsty/blob/main/mysql.yml)                | Deploy native MySQL 8.4 standalone or three-node clusters |
| **MYSQL (Pilot)** | [**`mysql-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/mysql-rm.yml)          | Stop and retire native MySQL while retaining local state |
{.full-width}
