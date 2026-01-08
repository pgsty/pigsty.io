---
title: Conf Templates
linkTitle: Templates
weight: 215
description: Use pre-made configuration templates to quickly generate configuration files adapted to your environment
icon: fa-solid fa-code
module: [PIGSTY]
categories: [Concept]
---

In Pigsty, deployment blueprint details are defined by the [**inventory**](/docs/setup/config/), which is the [**`pigsty.yml`**](https://github.com/pgsty/pigsty/blob/main/pigsty.yml) configuration file. You can customize it through declarative configuration.

However, writing configuration files directly can be daunting for new users. To address this, we provide some ready-to-use configuration templates covering common usage scenarios.

Each template is a predefined `pigsty.yml` configuration file containing reasonable defaults suitable for specific scenarios.

You can choose a template as your customization starting point, then modify it as needed to meet your specific requirements.


------

## Using Templates

Pigsty provides the [**`configure`**](https://github.com/pgsty/pigsty/blob/main/configure) script as an optional configuration wizard that generates an [**inventory**](/docs/setup/config/) with good defaults based on your environment and input.

Use `./configure -c <conf>` to specify a configuration template, where `<conf>` is the path relative to the `conf` directory (the `.yml` suffix can be omitted).

```bash
./configure                     # Default to meta.yml configuration template
./configure -c meta             # Explicitly specify meta.yml single-node template
./configure -c rich             # Use feature-rich template with all extensions and MinIO
./configure -c slim             # Use minimal single-node template

# Use different database kernels
./configure -c pgsql            # Native PostgreSQL kernel, basic features (13~18)
./configure -c citus            # Citus distributed HA PostgreSQL (14~17)
./configure -c mssql            # Babelfish kernel, SQL Server protocol compatible (15)
./configure -c polar            # PolarDB PG kernel, Aurora/RAC style (15)
./configure -c ivory            # IvorySQL kernel, Oracle syntax compatible (18)
./configure -c mysql            # OpenHalo kernel, MySQL compatible (14)
./configure -c pgtde            # Percona PostgreSQL Server transparent encryption (18)
./configure -c oriole           # OrioleDB kernel, OLTP enhanced (17)
./configure -c supabase         # Supabase self-hosted configuration (15~18)

# Use multi-node HA templates
./configure -c ha/dual          # Use 2-node HA template
./configure -c ha/trio          # Use 3-node HA template
./configure -c ha/full          # Use 4-node HA template
```

If no template is specified, Pigsty defaults to the `meta.yml` single-node configuration template.


------

## Template List

### Main Templates

The following are single-node configuration templates for installing Pigsty on a single server:

| Template                           | Description                                     |
|------------------------------------|-------------------------------------------------|
| [**`meta.yml`**](/docs/conf/meta/) | **Default template**, single-node PostgreSQL online installation |
| [**`rich.yml`**](/docs/conf/rich/) | Feature-rich template with local repo, MinIO, and more examples |
| [**`slim.yml`**](/docs/conf/slim/) | Minimal template, PostgreSQL only without monitoring and infrastructure |

### Database Kernel Templates

Templates for various database management systems and kernels:

| Template                                   | Description                                           |
|--------------------------------------------|-------------------------------------------------------|
| [**`pgsql.yml`**](/docs/conf/pgsql/)       | Native PostgreSQL kernel, basic features (13~18)      |
| [**`citus.yml`**](/docs/conf/citus/)       | Citus distributed HA PostgreSQL (14~17)               |
| [**`mssql.yml`**](/docs/conf/mssql/)       | Babelfish kernel, SQL Server protocol compatible (15) |
| [**`polar.yml`**](/docs/conf/polar/)       | PolarDB PG kernel, Aurora/RAC style (15)              |
| [**`ivory.yml`**](/docs/conf/ivory/)       | IvorySQL kernel, Oracle syntax compatible (17)        |
| [**`mysql.yml`**](/docs/conf/mysql/)       | OpenHalo kernel, MySQL compatible (14)                |
| [**`pgtde.yml`**](/docs/conf/pgtde/)       | Percona PostgreSQL Server transparent encryption (17) |
| [**`oriole.yml`**](/docs/conf/oriole/)     | OrioleDB kernel, OLTP enhanced (17, Debian pkg pending) |
| [**`supabase.yml`**](/docs/conf/supabase/) | Supabase self-hosted configuration (15~17)            |

You can add more nodes later or use [HA templates](#ha-templates) to plan your cluster from the start.


------

### HA Templates

You can configure Pigsty to run on multiple nodes, forming a high-availability (HA) cluster:

| Template                           | Description                           |
|------------------------------------|---------------------------------------|
| [**`dual.yml`**](/docs/conf/dual/) | 2-node semi-HA deployment             |
| [**`trio.yml`**](/docs/conf/trio/) | 3-node standard HA deployment         |
| [**`full.yml`**](/docs/conf/full/) | 4-node standard deployment            |
| [**`safe.yml`**](/docs/conf/safe/) | 4-node security-enhanced deployment with delayed replica |
| [**`simu.yml`**](/docs/conf/simu/) | 20-node production environment simulation |


------

### Application Templates

You can use the following templates to run Docker applications/software:

| Template | Description |
|----------|-------------|
| [**`supa.yml`**](/docs/conf/supabase) | Start single-node Supabase |
| [**`odoo.yml`**](/docs/conf/odoo/) | Start Odoo ERP system |
| [**`dify.yml`**](/docs/conf/dify/) | Start Dify AI workflow system |
| [**`electric.yml`**](/docs/conf/electric/) | Start Electric sync engine |


------

### Demo Templates

Besides main templates, Pigsty provides a set of demo templates for different scenarios:

| Template | Description |
|----------|-------------|
| [**`el.yml`**](/docs/conf/el/) | Full-parameter config file for EL 8/9 systems |
| [**`debian.yml`**](/docs/conf/debian/) | Full-parameter config file for Debian/Ubuntu systems |
| **`remote.yml`** | Example config for monitoring remote PostgreSQL clusters or RDS |
| **`redis.yml`** | Redis cluster example configuration |
| [**`minio.yml`**](/docs/conf/minio/) | 3-node MinIO cluster example configuration |
| [**`demo.yml`**](/docs/conf/demo/) | Configuration file for Pigsty [public demo site](https://demo.pigsty.io) |


------

### Build Templates

The following configuration templates are for development and testing purposes:

| Template | Description |
|----------|-------------|
| **`build.yml`** | Open source build config for EL 9/10, Debian 12/13, Ubuntu 22.04/24.04 |

