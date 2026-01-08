---
title: 'Wiki.js: OSS Wiki Software'
date: 2022-05-25
weight: 600
description: How to self-hosting your own wikipedia with Wiki.js and use Pigsty managed
  PostgreSQL as the backend database
module: [SOFTWARE]
categories: [Reference]
---

Public Demo: [http://wiki.pigsty.cc](http://wiki.pigsty.cc)

![](/img/docs/app/wiki.jpg)


## TL; DR

```bash
cd app/wiki ; docker-compose up -d
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
version: "3"
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
# add to nginx_upstream
- { name: wiki  , domain: wiki.pigsty.cc , endpoint: "127.0.0.1:9002"   }
```

```bash
./infra.yml -t nginx_config
ansible all -b -a 'nginx -s reload'
```
