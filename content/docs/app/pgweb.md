---
title: 'PGWeb: Browser-based PG Client'
date: 2022-03-18
weight: 645
description: Launch pgweb to access PostgreSQL via web browser
module: [SOFTWARE]
categories: [Reference]
---

PGWEB: https://github.com/sosedoff/pgweb

Simple web-based and cross-platform PostgreSQL database explorer.

Public Demo: [http://cli.pigsty.cc](http://cli.pigsty.cc)

![](/img/docs/app/pgweb.jpeg)


## TL; DR

```bash
cd ~/pigsty/app/pgweb ; make up
```

Visit [http://cli.pigsty](http://cli.pigsty) or http://10.10.10.10:8886

Try connecting with example URLs:

```bash
postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta?sslmode=disable
postgres://test:test@10.10.10.11:5432/test?sslmode=disable
```

```bash
make up         # pull up pgweb with docker compose
make run        # launch pgweb with docker
make view       # print pgweb access point
make log        # tail -f pgweb logs
make info       # introspect pgweb with jq
make stop       # stop pgweb container
make clean      # remove pgweb container
make pull       # pull latest pgweb image
make rmi        # remove pgweb image
make save       # save pgweb image to /tmp/docker/pgweb.tgz
make load       # load pgweb image from /tmp/docker/pgweb.tgz
```
