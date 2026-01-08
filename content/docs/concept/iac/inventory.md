---
title: Inventory
weight: 211
description: Describe your infrastructure and clusters using declarative configuration files
icon: fa-solid fa-code
module: [PIGSTY]
categories: [Tutorial]
---


Every Pigsty deployment corresponds to an **Inventory** that describes key properties of the infrastructure and database clusters.

--------

## Configuration File

Pigsty uses [**Ansible YAML configuration format**](https://docs.ansible.com/projects/ansible/latest/inventory_guide/intro_inventory.html) by default,
with a single YAML configuration file [**`pigsty.yml`**](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) as the inventory.

```bash
~/pigsty
  ^---- pigsty.yml   # <---- Default configuration file
```

You can directly edit this configuration file to customize your deployment, or use the [**`configure`**](/docs/concept/iac/configure) wizard script provided by Pigsty to automatically generate an appropriate configuration file.






------

## Configuration Structure

The inventory uses standard [**Ansible YAML configuration format**](https://docs.ansible.com/projects/ansible/latest/inventory_guide/intro_inventory.html), consisting of two parts: **global parameters** (`all.vars`) and multiple **groups** (`all.children`).

You can define new clusters in `all.children` and describe the infrastructure using global variables: `all.vars`, which looks like this:

```yaml
all:                  # Top-level object: all
  vars: {...}         # Global parameters
  children:           # Group definitions
    infra:            # Group definition: 'infra'
      hosts: {...}        # Group members: 'infra'
      vars:  {...}        # Group parameters: 'infra'
    etcd:    {...}    # Group definition: 'etcd'
    pg-meta: {...}    # Group definition: 'pg-meta'
    pg-test: {...}    # Group definition: 'pg-test'
    redis-test: {...} # Group definition: 'redis-test'
    # ...
```




------

## Cluster Definition

Each Ansible group may represent a cluster, which can be a node cluster, PostgreSQL cluster, Redis cluster, Etcd cluster, MinIO cluster, etc.

A cluster definition consists of two parts: **cluster members** (**`hosts`**) and **cluster parameters** (**`vars`**).
You can define cluster members in `<cls>.hosts` and describe the cluster using [**configuration parameters**](/docs/concept/iac/parameter) in `<cls>.vars`.
Here's an example of a 3-node high-availability PostgreSQL cluster definition:

```yaml
all:
  children:    # Ansible group list
    pg-test:   # Ansible group name
      hosts:   # Ansible group instances (cluster members)
        10.10.10.11: { pg_seq: 1, pg_role: primary } # Host 1
        10.10.10.12: { pg_seq: 2, pg_role: replica } # Host 2
        10.10.10.13: { pg_seq: 3, pg_role: offline } # Host 3
      vars:    # Ansible group variables (cluster parameters)
        pg_cluster: pg-test
```

Cluster-level `vars` (cluster parameters) override global parameters, and instance-level `vars` override both cluster parameters and global parameters.



------

## Splitting Configuration

If your deployment is large or you want to better organize configuration files,
you can [**split the inventory into multiple files**](https://docs.ansible.com/projects/ansible/latest/inventory_guide/intro_inventory.html#id18) for easier management and maintenance.

```yaml
inventory/
├── hosts.yml              # Host and cluster definitions
├── group_vars/
│   ├── all.yml            # Global default variables (corresponds to all.vars)
│   ├── infra.yml          # infra group variables
│   ├── etcd.yml           # etcd group variables
│   └── pg-meta.yml        # pg-meta cluster variables
└── host_vars/
    ├── 10.10.10.10.yml    # Specific host variables
    └── 10.10.10.11.yml
```

You can place cluster member definitions in the `hosts.yml` file and put cluster-level [**configuration parameters**](/docs/concept/iac/parameter#parameter-priority) in corresponding files under the `group_vars` directory.



------

## Switching Configuration

You can temporarily specify a different inventory file when running playbooks using the `-i` parameter.

```bash
./pgsql.yml -i another_config.yml
./infra.yml -i nginx_config.yml
```

Additionally, Ansible supports multiple configuration methods. You can use local `yaml|ini` configuration files, or use CMDB and any dynamic configuration scripts as configuration sources.

In Pigsty, we specify **`pigsty.yml`** in the same directory as the default **inventory** through [**`ansible.cfg`**](https://github.com/pgsty/pigsty/blob/main/ansible.cfg#L6) in the Pigsty home directory. You can modify it as needed.

```ini
[defaults]
inventory = pigsty.yml
```

Additionally, Pigsty supports using a [**CMDB metabase**](/docs/concept/iac/cmdb) to store the inventory, facilitating integration with existing systems.


