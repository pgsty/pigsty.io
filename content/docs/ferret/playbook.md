---
title: Playbook
linkTitle: Playbook
weight: 4050
description: Ansible playbooks available for the FERRET module
icon: fa-solid fa-scroll
categories: [Task]
---

Pigsty provides a built-in playbook [`mongo.yml`](https://github.com/pgsty/pigsty/blob/main/mongo.yml) for installing FerretDB on nodes.

**Important**: This playbook only executes on hosts where [`mongo_seq`](/docs/ferret/param#mongo_seq) is defined.
Running the playbook against hosts without `mongo_seq` will skip all tasks safely, making it safe to run against mixed host groups.


----------------

## `mongo.yml`

Playbook location: [`mongo.yml`](https://github.com/pgsty/pigsty/blob/main/mongo.yml)

Function: Install MongoDB/FerretDB on target hosts where `mongo_seq` is defined.

This playbook contains the following subtasks:

| Subtask          | Description                           |
|------------------|:--------------------------------------|
| `mongo_check`    | Check mongo identity parameters       |
| `mongo_dbsu`     | Create OS user mongod                 |
| `mongo_install`  | Install ferretdb RPM/DEB packages     |
| `mongo_purge`    | Purge existing FerretDB (not by default) |
| `mongo_config`   | Configure FerretDB service            |
| `mongo_cert`     | Issue FerretDB SSL certificates       |
| `mongo_launch`   | Launch FerretDB service               |
| `mongo_register` | Register FerretDB to Prometheus       |


----------------

## Task Details

### `mongo_check`

Check that required identity parameters are defined:
- `mongo_cluster`: Cluster name
- `mongo_seq`: Instance sequence number
- `mongo_pgurl`: PostgreSQL connection string

If any parameter is missing, the playbook will exit with an error.

### `mongo_dbsu`

Create OS user and group required for FerretDB:
- Create `mongod` user group
- Create `mongod` user with home directory `/var/lib/mongod`

### `mongo_install`

Install FerretDB packages:
- Install `ferretdb2` package on RPM-based distributions
- Install corresponding deb package on DEB-based distributions

### `mongo_purge`

Purge existing FerretDB cluster. This task does not run by default and requires explicit specification:

```bash
./mongo.yml -l <cluster> -e mongo_purge=true -t mongo_purge
```

**Important**: Always use the `-l <cluster>` parameter to limit the execution scope.

Purge operations include:
- Stop and disable ferretdb service
- Remove systemd service file
- Remove configuration files and SSL certificates
- Deregister from Prometheus monitoring targets

### `mongo_config`

Configure FerretDB service:
- Render environment variable config file `/etc/default/ferretdb`
- Create systemd service file

### `mongo_cert`

When [`mongo_ssl_enabled`](/docs/ferret/param#mongo_ssl_enabled) is set to `true`, this task will:
- Generate FerretDB SSL private key
- Create Certificate Signing Request (CSR)
- Issue SSL certificate using CA
- Deploy certificate files to `/var/lib/mongod/`

### `mongo_launch`

Launch FerretDB service:
- Reload systemd configuration
- Start and enable ferretdb service
- Wait for service to be available on specified port (default 27017)

The FerretDB service is configured with `Restart=on-failure`, so it will automatically restart if the process crashes unexpectedly. This provides basic resilience for this stateless proxy service.

### `mongo_register`

Register FerretDB instance to Prometheus monitoring system:
- Create monitoring target file on all `infra` nodes
- Target file path: `/infra/targets/mongo/<cluster>-<seq>.yml`
- Contains instance IP, labels, and metrics port information


----------------

## Usage Examples

```bash
# Deploy FerretDB on ferret group
./mongo.yml -l ferret

# Run config task only
./mongo.yml -l ferret -t mongo_config

# Reissue SSL certificates
./mongo.yml -l ferret -t mongo_cert

# Restart FerretDB service
./mongo.yml -l ferret -t mongo_launch

# Purge FerretDB cluster
./mongo.yml -l ferret -e mongo_purge=true -t mongo_purge
```

