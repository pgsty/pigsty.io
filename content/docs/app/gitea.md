---
title: 'Gitea: Simple Self-Hosting Git Service'
date: 2022-05-25
weight: 595
description: Launch the self-hosting Git service with Gitea and Pigsty managed PostgreSQL
module: [SOFTWARE]
categories: [Reference]
---

Public Demo: [http://git.pigsty.cc](http://git.pigsty.cc)

![](/img/docs/app/gitea.jpeg)


## TL;DR

```bash
cd ~/pigsty/app/gitea; make up
```

Pigsty use `8889` port for gitea by default

[http://git.pigsty](http://git.pigsty) or http://10.10.10.10:8889

```bash
make up      # pull up gitea with docker-compose in minimal mode
make run     # launch gitea with docker , local data dir and external PostgreSQL
make view    # print gitea access point
make log     # tail -f gitea logs
make info    # introspect gitea with jq
make stop    # stop gitea container
make clean   # remove gitea container
make pull    # pull latest gitea image
make rmi     # remove gitea image
make save    # save gitea image to /tmp/gitea.tgz
make load    # load gitea image from /tmp
```

## PostgreSQL Preparation

Gitea use built-in SQLite as default metadata storage, you can let Gitea use external PostgreSQL by setting connection string environment variable

```yaml
# postgres://dbuser_gitea:DBUser.gitea@10.10.10.10:5432/gitea
db:   { name: gitea, owner: dbuser_gitea, comment: gitea primary database }
user: { name: dbuser_gitea , password: DBUser.gitea, roles: [ dbrole_admin ] }
```
