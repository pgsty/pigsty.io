# PGWeb: Browser-based PostgreSQL Client

> Run the bundled pgweb Docker application for small, interactive PostgreSQL queries from a browser.

---

LLMS index: [llms.txt](/llms.txt)

---

## PGWeb Client

[PGWeb](https://github.com/sosedoff/pgweb) is a browser-based PostgreSQL client. Pigsty includes a small Docker Compose template under `app/pgweb`; it publishes container port `8081` on host port `8886`.

```bash
cd ~/pigsty/app/pgweb
make up                    # docker compose up -d
```

Open [http://cli.pigsty](http://cli.pigsty) when that portal entry resolves to the Infra node, or browse directly to `http://10.10.10.10:8886`. The public demo is [http://cli.pigsty.cc](http://cli.pigsty.cc).

PGWeb asks for a PostgreSQL connection URL. For example:

```text
postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta?sslmode=disable
postgres://test:test@10.10.10.11:5432/test?sslmode=disable
```

These strings contain public demonstration defaults and disable TLS. Use a least-privilege account, a non-default secret, and an appropriate `sslmode` for real deployments; do not expose an unauthenticated PGWeb container or database credentials to untrusted networks.

![PGWeb](/img/docs/app/pgweb.jpeg)


## Shortcuts

The bundled `Makefile` provides:

```bash
make up         # launch with docker compose
make run        # launch with docker run
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
