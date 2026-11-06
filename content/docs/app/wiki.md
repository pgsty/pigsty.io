---
title: 'Wiki.js: OSS Wiki Software'
date: 2022-05-25
weight: 600
description: Self-host Wiki.js with Pigsty-managed PostgreSQL as its backend database.

module: [SOFTWARE]
categories: [Reference]
---

Public Demo: [http://wiki.pigsty.cc](http://wiki.pigsty.cc)

![Wiki.js](/img/docs/app/wiki.jpg)

The current Compose follows the Wiki.js `2` major-version tag (`requarks/wiki:2`, resolving to 2.5.317 on 2026-11-06). Stable 2.x releases are maintained in [`requarks/wiki-v2`](https://github.com/requarks/wiki-v2/releases). Wiki.js 3.0 reached GA in November 2026 under the `3` tag; it is a major rewrite with its own [requirements](https://docs.js.wiki/setup/requirements) and [upgrade procedure](https://docs.js.wiki/setup/upgrade), so do not switch an existing 2.x deployment by changing the image tag. Record and verify the actual image version before production upgrades.


## TL; DR

```bash
cd ~/pigsty/app/wiki && docker compose up -d
```

## Postgres Preparation

```yaml
# postgres://dbuser_wiki:DBUser.Wiki@10.10.10.10:5432/wiki
- { name: wiki, owner: dbuser_wiki, revokeconn: true , comment: wiki the api gateway database }
- { name: dbuser_wiki, password: DBUser.Wiki , pgbouncer: true , roles: [ dbrole_admin ] }
```

```bash
bin/pgsql-user pg-meta dbuser_wiki
bin/pgsql-db   pg-meta wiki
```



## Configuration

```yaml
services:
  wiki:
    container_name: wiki
    image: requarks/wiki:2
    environment:
      DB_TYPE: postgres
      DB_HOST: 10.10.10.10
      DB_PORT: 5432
      DB_USER: dbuser_wiki
      DB_PASS: DBUser.Wiki
      DB_NAME: wiki
    restart: unless-stopped
    ports:
      - "9002:3000"
```

## Access

* Default Port for wiki: 9002

```yaml
infra_portal:
  wiki: { domain: wiki.pigsty.io, endpoint: "127.0.0.1:9002" }
```

```bash
./infra.yml -t nginx_config,nginx_reload -l infra
```
