---
title: Software Repository
weight: 3104
description: Create and maintain Pigsty local RPM/APT repositories with SOW, including completion markers, ModuleMD, and forced rebuild semantics.
icon: fa-solid fa-box-archive
categories: [Task]
---


Pigsty's REPO role downloads required packages and creates a local YUM/APT repository under `/www/pigsty` that Nginx can serve. The current package candidate is **SOW 0.3.0**; the source uses SOW to generate metadata for both repository types instead of calling `createrepo_c`, `modifyrepo_c`, or `dpkg-scanpackages` separately.


----------------

## Quick Start

Add packages to [`repo_packages`](/docs/infra/param#repo_packages) or [`repo_extra_packages`](/docs/infra/param#repo_extra_packages), then run:

```bash
./infra.yml -t repo_build   # Download and build only when the repository is absent
./node.yml -t node_repo     # Refresh repository definitions and caches on each node
```

If `/www/pigsty/repo_complete` already exists, the default `repo_build` skips the build. To force a rebuild, override it explicitly:

```bash
./infra.yml -t repo_build -e repo_build=true
```

To rebuild metadata for packages already present without downloading new ones:

```bash
./infra.yml -t repo_create
```


----------------

## SOW Prerequisites

Both `repo_create` and `cache_create` require `sow` on the target node. A fresh online build automatically adds `infra` to the effective [`repo_modules`](/docs/infra/param#repo_modules) list and installs SOW from the Pigsty INFRA upstream repository.

Offline bundles and local repositories created before this change may not contain SOW. Before rebuilding from old media, refresh the bundle/local repository or install the current SOW 0.3.0 candidate from the Pigsty INFRA repository. Do not assume that older environments can still fall back to `createrepo_c`.

On a fresh installation, if `/www` does not exist, the role creates `/data/nginx` and makes `/www` point to it. Existing directories and symlinks are preserved rather than forcibly replaced.


----------------

## Build Flow

| Task | Purpose |
|:---|:---|
| `repo_check` | Check `repo_complete` to determine whether the local repository is complete |
| `repo_prepare` | Configure and use an existing repository |
| `repo_dir` | Create `/www/pigsty` and ACME directories |
| `repo_upstream` | Back up and add upstream YUM or APT definitions |
| `repo_url_pkg` | Download packages from direct URLs |
| `repo_cache` | Run `yum makecache` or `apt update` |
| `repo_boot_pkg` | Install `sow` and the RPM platform's `dnf-utils` / `yum-utils` |
| `repo_pkg` | Download packages and dependencies |
| `repo_create` | Run SOW to clean and atomically publish repository metadata |
| `repo_use` | Write the local Pigsty repository definition on the current host |
| `repo_nginx` | Start a temporary Nginx when no service is already running |
{.full-width}

The command executed by `repo_create` is:

```bash
sow create --pigsty --timeout 10m -- /www/pigsty
```

`--pigsty` removes unneeded or conflict-prone packages and atomically publishes the result only after all metadata has been generated. A typical layout is:

```text
/www/pigsty/
├── *.rpm / *.deb
├── repodata/            # RPM repository
├── Packages             # APT repository
├── Packages.gz
└── repo_complete        # SHA-256 manifest and completion marker
```

Do not treat `repo_complete` as an empty sentinel; it contains SHA-256 checksums. Its presence means SOW completed publication of local repository metadata. It does not prove that remote mirrors, signed repositories, or offline bundles have been synchronized.


----------------

## DNF Module Streams

Pigsty no longer fabricates `modules.yaml` / ModuleMD metadata for the aggregated local repository. System upstream repositories retain native DNF module filtering. Only an upstream repository that truly needs to replace an EL module stream should set `meta` explicitly:

```yaml
- name: example
  module: pgsql
  # ... releases, arch, baseurl ...
  meta: { module_hotfixes: 1 }
```

The aggregated Pigsty local repository itself is configured with `module_hotfixes=1` so local PostgreSQL packages are not hidden by system module streams. This is distinct from generating fake ModuleMD metadata.


----------------

## Package Aliases

The default [`repo_packages`](/docs/infra/param#repo_packages) uses these alias groups:

```yaml
[node-bootstrap, infra-package, infra-addons, node-package1,
 node-package2, node-package3, pgsql-utility, extra-modules]
```

`node-bootstrap` includes Ansible, Python dependencies, SOW, and SSH tools. `infra-package` includes Nginx, etcd, HAProxy, Victoria exporters, Redis/Valkey, Silo, `mcli`, SOW, and Pig. Exact names vary by OS mapping; always use `roles/node_id/vars/<os>.<arch>.yml` as the authority.


----------------

## Common Commands

```bash
./infra.yml -t repo                           # Check, prepare, or build, then start repository service
./infra.yml -t repo_check,repo_prepare        # Only check and use an existing repository
./infra.yml -t repo_upstream                  # Refresh upstream repository definitions
./infra.yml -t repo_pkg                       # Download configured packages and dependencies
./infra.yml -t repo_create                    # Rebuild metadata in the existing directory with SOW
./infra.yml -t repo_build -e repo_build=true  # Force the complete build stage
./infra.yml -t repo_nginx                     # Configure/start repository Nginx
./node.yml -t node_repo                       # Refresh managed-node repository caches
./cache.yml                                   # Rebuild metadata with SOW, then create an offline bundle
```
