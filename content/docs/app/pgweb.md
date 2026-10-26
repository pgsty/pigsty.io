---
title: 'PGWeb: Browser-based PostgreSQL Client'
date: 2022-03-18
weight: 635
description: Run the bundled pgweb Docker application for small, interactive PostgreSQL queries from a browser.
module: [SOFTWARE]
categories: [Reference]
---

## PGWeb Client

[PGWeb](https://github.com/sosedoff/pgweb) is a browser-based PostgreSQL client. Pigsty includes a small Docker Compose template in `app/pgweb`. It publishes container port `8081` on host port `8886`.

```bash
cd ~/pigsty/app/pgweb
vi docker-compose.yml      # port mappings are defined in Compose
make up                    # docker compose up -d
```

If the portal entry resolves to the Infra node, open [http://cli.pigsty](http://cli.pigsty). Alternatively, open `http://10.10.10.10:8886` directly. The public demo is [http://cli.pigsty.io](http://cli.pigsty.io).

PGWeb asks for a PostgreSQL connection URL. For example:

```text
postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta?sslmode=disable
postgres://test:test@10.10.10.11:5432/test?sslmode=disable
```

These strings use public demo defaults and disable TLS. For real deployments, use a least-privilege account, a non-default secret, and an appropriate `sslmode`. Do not expose an unauthenticated PGWeb container or database credentials to untrusted networks.

![PGWeb](/img/docs/app/pgweb.jpeg)


## Shortcuts

The bundled `Makefile` provides:

```bash
make up         # launch with docker compose
make view       # print the local access point and example URL
make log        # follow container logs
make info       # inspect the container with jq
make stop       # stop the container
make clean      # stop and remove the container
make pull       # pull the current unpinned sosedoff/pgweb image
make rmi        # remove the local image
make save       # save the image to /tmp/docker/pgweb.tgz
make load       # load it from /tmp/docker/pgweb.tgz
```

The template currently uses the unpinned `sosedoff/pgweb` image. Pin an image digest or version in `app/pgweb/docker-compose.yml` when reproducible production deployment matters.

`make run` is a separate `docker run` command with fixed ports and does not use Compose changes. The development template adds `PGWEB_PORT` and routes `make run` through Compose; use the matching files for that behavior.
