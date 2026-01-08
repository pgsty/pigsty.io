---
title: 'PGAdmin4: PG Admin GUI Tool'
date: 2022-04-25
weight: 640
description: Launch pgAdmin4 with docker, and load Pigsty server list into it
module: [SOFTWARE]
categories: [Task]
---


pgAdmin4 is a useful PostgreSQL management tool. Execute the following command to launch the pgadmin service on the admin node:

```bash
cd ~/pigsty/app/pgadmin ; docker-compose up -d
```

The default port for pgadmin is `8885`, and you can access it through the following address:

http://adm.pigsty


-------------

## Demo

Public Demo: http://adm.pigsty.cc

Credentials: `admin@pigsty.cc` / `pigsty`

![](/img/docs/app/pgadmin.jpeg)



## TL; DR

```bash
cd ~/pigsty/app/pgadmin   # enter docker compose dir
make up                   # launch pgadmin container
make conf view            # load pigsty server list
```

Shortcuts:

```bash
make up         # pull up pgadmin with docker-compose
make run        # launch pgadmin with docker
make view       # print pgadmin access point
make log        # tail -f pgadmin logs
make info       # introspect pgadmin with jq
make stop       # stop pgadmin container
make clean      # remove pgadmin container
make conf       # provision pgadmin with pigsty pg servers list
make dump       # dump servers.json from pgadmin container
make pull       # pull latest pgadmin image
make rmi        # remove pgadmin image
make save       # save pgadmin image to /tmp/pgadmin.tgz
make load       # load pgadmin image from /tmp
```
