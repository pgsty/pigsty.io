---
title: Administration
weight: 3100
description: 'Infrastructure components and INFRA cluster administration SOP: create,
  destroy, scale out, scale in, certificates, repositories...'
icon: fa-solid fa-building-columns
categories: [Task, Reference]
---


This section covers daily administration and operations for Pigsty deployments.



---

## Create INFRA Module

Use [`infra.yml`](/docs/infra/playbook#infrayml) playbook to install INFRA module on `infra` group:

```bash
./infra.yml     # Install INFRA module on infra group
```



---

## Uninstall INFRA Module

Use dedicated [`infra-rm.yml`](/docs/infra/playbook#infra-rmyml) playbook to remove INFRA module from `infra` group:

```bash
./infra-rm.yml  # Remove INFRA module from infra group
```



---

## Manage Local Repository

Pigsty includes local yum/apt repo for software packages. Manage repo configuration:

### Repo Variables

| Variable     | Description                      |
|:-------------|----------------------------------|
| `repo_enabled` | Enable local repo on node     |
| `repo_upstream` | Upstream repos to include           |
| `repo_remove` | Remove upstream repos if true    |
| `repo_url_pkg`  | Extra packages to download           |
| `repo_clean` | Clean repo cache (makecache)   |
| `repo_pkg`     | Packages to include                  |

### Repo Tasks

```bash
./infra.yml -t repo              # Create or update repo
```

Repo location: `/www/pigsty` served by Nginx.

More: [Configuration: INFRA - REPO](/docs/infra/param#repo)
