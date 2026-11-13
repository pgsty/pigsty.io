---
title: app/discourse
weight: 905
description: Deploy Discourse with Pigsty-managed PostgreSQL and Redis embedded in the application container
icon: fa-solid fa-comment-dots
categories: [Reference]
---

The `app/discourse` template provides a single-node Discourse forum configuration: Pigsty manages PostgreSQL, Redis runs inside the application container, and Pigsty Nginx serves the application through a Unix socket. Use the matching `app/discourse/` and `files/discourse.sql` from the same release.

See the **[Discourse application README](https://github.com/pgsty/pigsty/tree/main/app/discourse#readme)** for more details.

--------

## Overview

- Config Name: `app/discourse`
- Node Count: Single node
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64` (upstream Launcher describes ARM64 support as experimental)
- Related: [`app/odoo`](/docs/conf/odoo/), [`app/mattermost`](/docs/conf/mattermost/)

For a fresh host:

```bash
./configure -c app/discourse [-i <primary_ip>]
vi pigsty.yml              # change passwords, domain, and SMTP settings
./deploy.yml
./docker.yml
./app.yml -l discourse
```

--------

## Content

Source: [`pigsty/conf/app/discourse.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/discourse.yml)

{{< include file="yaml/app/discourse.yml" code=true lang="yaml" >}}

--------

## Explanation

The template builds the Discourse image locally with the official classic Launcher and runs it with Docker Compose, using PostgreSQL managed by Pigsty.

- `apps.discourse.dest` is `/data/app/discourse`; management files and persistent data under `shared/` share this directory
- `DISCOURSE_DOCKER_REF` (`0ba1841d589e77df3bc923774abca2720a320ec2`) and `DISCOURSE_VERSION` (`f00f07d62728d646642cd2185cc077ad84a60fa8`) both pin verified commit SHAs for reproducible builds
- The dedicated `pg-discourse` cluster uses PostgreSQL 18 and installs `pgvector`; the `discourse` database enables `hstore`, `pg_trgm`, `unaccent`, and `vector`, and applies the `discourse.sql` baseline
- The `discourse` user has no `dbrole_admin` membership; neither the user nor the database uses PgBouncer
- HBA permits the `discourse` user to access only the `discourse` database from the `172.16.0.0/12` Docker subnet
- The `ask.pigsty` Nginx portal forwards to `unix:/data/app/discourse/shared/nginx.http.sock`, enables WebSocket, and sets `client_max_body_size 10m`
- Embedded Redis has a memory limit of `REDIS_MAX_MEMORY: 512mb`
- Run a full backup daily at 01:00

Access the forum at `http://ask.pigsty`. The template adds this name to the local hosts file through `node_etc_hosts`; other clients need DNS or hosts entries pointing to the Nginx host.

## Notes

- Change `PG_PASSWORD` and the password in `pg_users` together. Configure the administrator email and SMTP settings; the sample SMTP hostname will cause the image build to fail.
- For public access, use a real domain and trusted certificate, and set `DISCOURSE_FORCE_HTTPS: true`.
- Discourse uses advisory locks and requires a direct PostgreSQL connection. Do not use PgBouncer transaction pooling. For HA, choose a direct service that routes only to the primary.
- In an existing Pigsty environment, merge the application, user, database, and portal definitions. Do not rerun `configure` or reinitialize an existing cluster.
- Redis persistence needs `vm.overcommit_memory=1`. The Tuned profile selected by `node_tune: oltp` uses `0`; configure a persistent override before enabling Redis persistence.
