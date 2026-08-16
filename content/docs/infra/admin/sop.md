---
title: Module Management
description: 'INFRA module management SOP: define, create, destroy, scale out, scale
  in'
weight: 3106
icon: fa-solid fa-building-columns
categories: [Task]
---


This document covers daily management operations for the INFRA module, including installation, uninstallation, scaling, and component maintenance.


----------------

## Install INFRA Module

Use the [`infra.yml`](/docs/infra/playbook/#infrayml) playbook to install the INFRA module on the `infra` group:

```bash
./infra.yml     # Install INFRA module on infra group
```


----------------

## Uninstall INFRA Module

Use the [`infra-rm.yml`](/docs/infra/playbook/#infra-rmyml) playbook to uninstall the INFRA module from the `infra` group:

```bash
./infra-rm.yml -l infra # Full removal: deregister, stop, remove config/environment/data, and uninstall packages
```

This playbook has no deletion safeguard. Full execution removes `infra_data`, `nginx_data`, `nginx_home` (default: `/www`), and `/var/lib/grafana`.
If you only need to stop services or deregister targets, use `-t service` or `-t deregister`. Read the [complete removal scope](/docs/infra/playbook/#infra-rmyml) and back up required data before running it.


----------------

## Scale Out INFRA Module

Assign [`infra_seq`](/docs/infra/param/#infra_seq) to new nodes and add them to the `infra` group in the inventory:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }  # Existing node
        10.10.10.11: { infra_seq: 2 }  # New node
```

Use the `-l` limit option to execute the playbook on the new node only:

```bash
./infra.yml -l 10.10.10.11    # Install INFRA module on new node
```


----------------

## Manage Local Repository

Local repository management tasks:

```bash
./infra.yml -t repo              # Create repo from internet or offline packages
./infra.yml -t repo_upstream     # Add upstream repositories
./infra.yml -t repo_pkg          # Download packages and dependencies
./infra.yml -t repo_create       # Create local yum/apt repository
```

Complete subtask list:

```bash
./infra.yml -t repo_dir          # Create local repository directory
./infra.yml -t repo_check        # Check if local repo exists
./infra.yml -t repo_prepare      # Use existing repo directly
./infra.yml -t repo_build        # Build repo from upstream
./infra.yml -t repo_upstream     # Add upstream repositories
./infra.yml -t repo_remove       # Delete existing repo files
./infra.yml -t repo_add          # Add repo to system directory
./infra.yml -t repo_url_pkg      # Download packages from internet
./infra.yml -t repo_cache        # Create metadata cache
./infra.yml -t repo_boot_pkg     # Install bootstrap packages
./infra.yml -t repo_pkg          # Download packages and dependencies
./infra.yml -t repo_create       # Create local repository
./infra.yml -t repo_use          # Add new repo to system
./infra.yml -t repo_nginx        # Start Nginx file server
```


----------------

## Manage Nginx

Nginx management tasks:

```bash
./infra.yml -t nginx                       # Reset Nginx component
./infra.yml -t nginx_index                 # Re-render homepage
./infra.yml -t nginx_config,nginx_reload   # Re-render config and reload
```

Request HTTPS certificate:

```bash
./infra.yml -t nginx_certbot,nginx_reload -e certbot_sign=true
```


----------------

## Manage Infrastructure Components

Management commands for various infrastructure components:

```bash
./infra.yml -t infra           # Configure infrastructure
./infra.yml -t infra_user      # Set up OS user
./infra.yml -t infra_dir       # Create infrastructure directories
./infra.yml -t infra_env       # Configure environment variables
./infra.yml -t infra_pkg       # Install packages
./infra.yml -t infra_cert      # Issue certificates
./infra.yml -t dns             # Configure DNSMasq
./infra.yml -t nginx           # Configure Nginx
./infra.yml -t victoria        # Configure VictoriaMetrics/Logs/Traces
./infra.yml -t alertmanager    # Configure AlertManager
./infra.yml -t blackbox        # Configure Blackbox Exporter
./infra.yml -t grafana         # Configure Grafana
./infra.yml -t infra_register  # Register to VictoriaMetrics/Grafana
```

Common maintenance commands:

```bash
./infra.yml -t nginx_index                        # Re-render homepage
./infra.yml -t nginx_config,nginx_reload          # Reconfigure and reload
./infra.yml -t vmetrics_config,vmetrics_launch    # Regenerate VictoriaMetrics config and restart
./infra.yml -t vlogs_config,vlogs_launch          # Update VictoriaLogs config
./infra.yml -t grafana_provision                  # Reload Grafana dashboards and data-source definitions
```


----------------

## Manage Grafana Passwords

Grafana uses two password parameters: [**`grafana_admin_password`**](/docs/infra/param/#grafana_admin_password), whose public default is `pigsty`, and [**`grafana_view_password`**](/docs/infra/param/#grafana_view_password), whose default is `DBUser.Viewer`.

| Parameter | Rendered configuration |
|:----------|:-----------------------|
| `grafana_admin_password` | `/etc/grafana/grafana.ini` and `/infra/env/pigsty` |
| `grafana_view_password` | `/etc/grafana/provisioning/datasources/pigsty.yml` |
{.full-width}

Change the public defaults before production. After Grafana initializes, changing `grafana_admin_password` in inventory does not by itself reset the live Grafana account password; change it through Grafana (or its supported administration interface), keep the inventory consistent, and rerender the environment when needed:

```bash
./infra.yml -t env_var            # Re-render environment variables
```

`grafana_view_password` is the password used by the default PostgreSQL metadb data source as `dbuser_view`. If that database role password changes, update both the declared value and the Grafana data source; changing only one side breaks the dashboard connection.
