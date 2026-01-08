---
title: Run Playbooks with Ansible
linkTitle: Playbook
weight: 275
description: Use Ansible playbooks to deploy and manage Pigsty clusters
icon: fa-solid fa-scroll
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty uses [**Ansible**](https://docs.ansible.com/) to manage clusters, a very popular large-scale/batch/automation ops tool in the SRE community.

Ansible can use **declarative** approach for server configuration management. All module deployments are implemented through a series of idempotent [**Ansible playbooks**](/docs/ref/playbook).

For example, in single-node deployment, you'll use the [**`deploy.yml`**](#deploy-playbook) playbook. Pigsty has more [**built-in playbooks**](/docs/ref/playbook), you can choose to use as needed.

Understanding Ansible basics helps with better use of Pigsty, but this is **not required**, especially for single-node deployment.

-------

## Deploy Playbook

Pigsty provides a "one-stop" deploy playbook **`deploy.yml`**, installing all modules on the current env in one go (if defined in config):

| Playbook    | Command       | Group      | `infra` | `[nodes]` | `etcd` | `minio` | `[pgsql]` |
|-------------|---------------|------------|:-------:|:---------:|:------:|:-------:|:---------:|
| `infra.yml` | `./infra.yml` | `-l infra` |    ✓    |     ✓     |        |         |           |
| `node.yml`  | `./node.yml`  |            |         |     ✓     |   ✓    |    ✓    |     ✓     |
| `etcd.yml`  | `./etcd.yml`  | `-l etcd`  |         |           |   ✓    |         |           |
| `minio.yml` | `./minio.yml` | `-l minio` |         |           |        |    ✓    |           |
| `pgsql.yml` | `./pgsql.yml` |            |         |           |        |         |     ✓     |
{.full-width}

This is the simplest deployment method. You can also follow instructions in [**Customization Guide**](/docs/setup/config/) to incrementally complete deployment of all modules and nodes step by step.

------

## Install Ansible

When using the [**Pigsty installation script**](/docs/setup/install#install), or the [**`bootstrap`**](/docs/setup/offline#bootstrap) phase of offline installation, Pigsty will automatically install `ansible` and its dependencies for you.

If you want to manually install Ansible, refer to the following instructions. The minimum supported Ansible version is 2.9.

{{< tabpane text=true persist=disabled >}}
{{% tab header="Debian / Ubuntu" %}}
```bash
sudo apt install -y ansible python3-jmespath
```
{{% /tab %}}
{{% tab header="EL" %}}
```bash
sudo dnf install -y ansible python-jmespath         # EL 10
sudo dnf install -y ansible python3.12-jmespath     # EL 9/8
```
{{% /tab %}}
{{% tab header="MacOS" %}}
```bash
brew install ansible
pip3 install jmespath
```
{{% /tab %}}
{{< /tabpane >}}


{{% alert title="Change default passwords!" color="warning" %}}
Please note that EL10 EPEL repo doesn't yet provide a complete Ansible package. [**Pigsty PGSQL**](/docs/repo/pgsql) EL10 repo supplements this.
{{% /alert %}}


Ansible is also available on macOS. You can use [**Homebrew**](https://brew.sh/) to install Ansible on Mac,
and use it as an admin node to manage remote cloud servers. This is convenient for single-node Pigsty deployment on cloud VPS, but not recommended in prod envs.

--------

## Execute Playbook

Ansible playbooks are executable YAML files containing a series of task definitions to execute.
Running playbooks requires the `ansible-playbook` executable in your environment variable `PATH`.
Running `./node.yml` playbook is essentially executing the `ansible-playbook node.yml` command.

You can use some parameters to fine-tune playbook execution. The following **4 parameters** are essential for effective Ansible use:

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
./pgsql-rm.yml -e pg_rm_pkg=false  # Remove pgsql, but keep packages (don't uninstall software)
./infra.yml -i conf/mynginx.yml    # Use another location's config file
```


----------------

## Limit Hosts

Playbook **execution targets** can be limited with `-l|--limit <selector>`.
This is convenient when running playbooks on specific hosts/nodes or groups/clusters.
Here are some host limit examples:

```bash
./pgsql.yml                              # Run on all hosts (dangerous!)
./pgsql.yml -l pg-test                   # Run on pg-test cluster
./pgsql.yml -l 10.10.10.10               # Run on single host 10.10.10.10
./pgsql.yml -l pg-*                      # Run on hosts/groups matching glob `pg-*`
./pgsql.yml -l '10.10.10.11,&pg-test'    # Run on 10.10.10.11 in pg-test group
./pgsql-rm.yml -l 'pg-test,!10.10.10.11' # Run on pg-test, except 10.10.10.11
```

See all details in Ansible documentation: [Patterns: targeting hosts and groups](https://docs.ansible.com/ansible/latest/inventory_guide/intro_patterns.html)

{{% alert title="Use caution when running playbooks without host limits!" color="warning" %}}
Missing this value can be dangerous—most playbooks execute on `all` hosts. **Use with caution**.
{{% /alert %}}



----------------

## Limit Tasks

**Execution tasks** can be controlled with `-t|--tags <tags>`.
If specified, only tasks with the given tags will execute instead of the entire playbook.

```bash
./infra.yml -t repo          # Create repo
./node.yml  -t node_pkg      # Install node packages
./pgsql.yml -t pg_install    # Install PG packages and extensions
./etcd.yml  -t etcd_purge    # Destroy ETCD cluster
./minio.yml -t minio_alias   # Write MinIO CLI config
```

To run multiple tasks, specify multiple tags separated by commas `-t tag1,tag2`:

```bash
./node.yml  -t node_repo,node_pkg   # Add repos, then install packages
./pgsql.yml -t pg_hba,pg_reload     # Configure, then reload pg hba rules
```



----------------

## Extra Vars

You can override config parameters at runtime using CLI arguments, which have [**highest priority**](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#understanding-variable-precedence).

Extra command-line parameters are passed via `-e|--extra-vars KEY=VALUE`, usable multiple times:

```bash
# Create admin using another admin user
./node.yml -e ansible_user=admin -k -K -t node_admin

# Initialize a specific Redis instance: 10.10.10.11:6379
./redis.yml -l 10.10.10.10 -e redis_port=6379 -t redis

# Remove PostgreSQL but keep packages and data
./pgsql-rm.yml -e pg_rm_pkg=false -e pg_rm_data=false
```

For complex parameters, use JSON strings to pass multiple complex parameters at once:

```bash
# Add repo and install packages
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["duckdb"]}'
```



----------------

## Specify Inventory

The default config file is `pigsty.yml` in the Pigsty home directory.

You can use `-i <path>` to specify a different [**inventory**](/docs/concept/iac/inventory) file path.

```bash
./pgsql.yml -i conf/rich.yml            # Initialize single node with all extensions per rich config
./pgsql.yml -i conf/ha/full.yml         # Initialize 4-node cluster per full config
./pgsql.yml -i conf/app/supa.yml        # Initialize 1-node Supabase deployment per supa.yml
```

{{% alert title="Changing the default inventory file" color="info" %}}
To permanently change the **default** config file, modify the `inventory` parameter in [`ansible.cfg`](https://github.com/pgsty/pigsty/blob/main/ansible.cfg#L6).
{{% /alert %}}



----------------

## Convenience Scripts

Pigsty provides a series of convenience scripts to simplify common operations. These scripts are in the `bin/` directory:

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

These scripts are simple wrappers around Ansible playbooks, making common operations more convenient.



----------------

## Playbook List

Below are the [**built-in playbooks**](/docs/ref/playbook) in Pigsty. You can also easily add your own playbooks, or customize and modify playbook implementation logic as needed.

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
|  [**MINIO**](/docs/minio/playbook/)  | [**`minio.yml`**](https://github.com/pgsty/pigsty/blob/main/minio.yml)                     | Initialize MinIO cluster (optional pgBackRest repo) |
|  [**MINIO**](/docs/minio/playbook/)  | [**`minio-rm.yml`**](https://github.com/pgsty/pigsty/blob/main/minio-rm.yml)               | Remove MinIO cluster and data                       |
| [**DOCKER**](/docs/docker/playbook/) | [**`docker.yml`**](https://github.com/pgsty/pigsty/blob/main/docker.yml)                   | Install Docker on nodes                             |
| [**DOCKER**](/docs/docker/playbook/) | [**`app.yml`**](https://github.com/pgsty/pigsty/blob/main/app.yml)                         | Install applications using Docker Compose           |
| [**FERRET**](/docs/ferret/playbook)  | [**`mongo.yml`**](https://github.com/pgsty/pigsty/blob/main/mongo.yml)                     | Install Mongo/FerretDB on nodes                     |
{.full-width}


