# Inventory

> Describe your infrastructure and clusters using declarative configuration files

---

LLMS index: [llms.txt](/llms.txt)

---

Each Pigsty deployment has an **inventory** that describes the infrastructure and database clusters.

--------

## Configuration File

By default, Pigsty uses [**Ansible YAML configuration format**](https://docs.ansible.com/projects/ansible/latest/inventory_guide/intro_inventory.html). The inventory is a single file, [**`pigsty.yml`**](https://github.com/pgsty/pigsty/blob/main/pigsty.yml).

```bash
~/pigsty
  ^---- pigsty.yml   # <---- Default configuration file
```

Edit this file to customize the deployment. Alternatively, use the [**`configure`**](/docs/concept/iac/configure) wizard to generate it automatically.






------

## Configuration Structure

The inventory uses [**Ansible YAML configuration format**](https://docs.ansible.com/projects/ansible/latest/inventory_guide/intro_inventory.html). It contains **global parameters** in `all.vars` and **groups** in `all.children`.

Define clusters in `all.children`. Define infrastructure settings in `all.vars`, as this example shows:

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

Each Ansible group can represent a cluster. Examples include node, PostgreSQL, Redis, Etcd, and Silo clusters.

A cluster definition contains **members** (**`hosts`**) and **parameters** (**`vars`**). Define members in `<cls>.hosts`. Set [**configuration parameters**](/docs/concept/iac/parameter) in `<cls>.vars`. This example defines a three-node HA PostgreSQL cluster:

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

Cluster `vars` override global parameters. Instance `vars` override both cluster and global parameters.



------

## Splitting Configuration

For a large deployment, you can [**split the inventory into multiple files**](https://docs.ansible.com/projects/ansible/latest/inventory_guide/intro_inventory.html#id18). This can also help organize and maintain configuration.

```text
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

Put cluster members in `hosts.yml`. Put cluster [**configuration parameters**](/docs/concept/iac/parameter#parameter-priority) in the corresponding files under `group_vars`.



------

## Switching Configuration

When you run a playbook, use `-i` to temporarily select a different inventory.

```bash
./pgsql.yml -i another_config.yml
./infra.yml -i nginx_config.yml
```

Ansible also accepts local `yaml|ini` configuration files, a CMDB, or other dynamic configuration scripts.

The [**`ansible.cfg`**](https://github.com/pgsty/pigsty/blob/main/ansible.cfg#L6) file in the Pigsty home directory sets the default inventory to **`pigsty.yml`** in that directory. You can change this setting.

```ini
[defaults]
inventory = pigsty.yml
```

You can store the inventory in a [**CMDB metabase**](/docs/concept/iac/cmdb) to integrate it with existing systems.
