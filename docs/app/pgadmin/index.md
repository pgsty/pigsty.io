# pgAdmin: PostgreSQL GUI

> Deploy pgAdmin4 with Pigsty's Docker Compose template and safely load the PostgreSQL server inventory.

---

LLMS index: [llms.txt](/llms.txt)

---

[pgAdmin](https://www.pgadmin.org/) is an open-source PostgreSQL administration and development GUI. Pigsty v4.5.0 provides the `app/pgadmin` Docker Compose template and can generate a server list and password file from the current inventory.

> [!WARNING] Change the defaults first
> The template login is `admin@pigsty.cc` with password `pigsty`. It is suitable only for a local demo. Before deployment on a shared network or the Internet, change the credentials, restrict port access, and configure HTTPS.

--------

## Quick Start

`conf/meta.yml` declares pgAdmin on the `app` group by default. Deploy it against an explicitly limited target:

```bash
./docker.yml -l app
./app.yml -l app -e app=pgadmin
```

The default port is `8885`; use `http://<app_ip>:8885`. `http://adm.pigsty` works only after `infra_portal`, Nginx, and DNS are configured.

The first container start can take tens of seconds. Check it on the application node:

```bash
cd /opt/pgadmin
make info
make log
```

--------

## Application Configuration

Override `.env` through `apps.pgadmin.conf` on the `app` group in `pigsty.yml`:

```yaml
all:
  children:
    app:
      hosts: { 10.10.10.10: {} }
      vars:
        docker_enabled: true
        app: pgadmin
        apps:
          pgadmin:
            conf:
              PGADMIN_DEFAULT_EMAIL: dba@example.com
              PGADMIN_DEFAULT_PASSWORD: <strong-random-password>
              PGADMIN_LISTEN_ADDRESS: 0.0.0.0
              PGADMIN_PORT: 8885
              PGADMIN_SERVER_JSON_FILE: /pgadmin4/servers.json
              PGADMIN_REPLACE_SERVERS_ON_STARTUP: true
```

`app.yml` copies the template to `/opt/pgadmin` and writes overrides to `/opt/pgadmin/.env`. This file contains the login password and should remain mode `0600`.

The current template uses the unpinned `dpage/pgadmin4` image. For production, pin a tested version or digest in `docker-compose.yml` and validate image upgrades as separate changes.

--------

## Load the Server List

`env_pgadmin` generates:

- `/infra/pgadmin/servers.json`: PostgreSQL instance list
- `/infra/pgadmin/pgpass`: database administrator password file

In the default `conf/meta.yml`, the `infra` and `app` groups point to the same host, so pgAdmin can bind-mount both files read-only. If pgAdmin and Infra run on different hosts, the application node does not automatically have `/infra/pgadmin/`; securely distribute equivalent files or customize the mounts instead of assuming that a local path is shared across hosts.

For the default colocated topology, regenerate the files and then ask the running container to import the list and password:

```bash
./infra.yml -l infra -t env_pgadmin

./app.yml -l app -e app=pgadmin -t app_launch -e app_args=reload
```

`pgpass` contains credentials for `pg_admin_username`. Restrict access to the files, backups, and application host. If pgAdmin should not hold DBA credentials, generate connection definitions for a dedicated least-privilege role instead.

--------

## Domain and HTTPS

Add an entry to [`infra_portal`](/docs/infra/param/#infra_portal):

```yaml
all:
  vars:
    infra_portal:
      pgadmin:
        domain: adm.pigsty
        endpoint: "10.10.10.10:8885"
```

Update Nginx on the explicitly limited Infra group:

```bash
./infra.yml -l infra -t nginx
```

For a real public domain, point DNS at the server and set `certbot` on the portal entry:

```yaml
infra_portal:
  pgadmin:
    domain: adm.example.com
    endpoint: "10.10.10.10:8885"
    certbot: adm.example.com
```

```bash
./infra.yml -l infra -t nginx_certbot,nginx_reload -e certbot_sign=true
```

See [CA and Certificates](/docs/infra/admin/cert/) for prerequisites and renewal. The directly exposed port `8885` is not an HTTPS endpoint.

--------

## State and Management

From `/opt/pgadmin`:

```bash
make up       # docker compose up -d
make view     # show access endpoints
make log      # follow container logs
make info     # docker inspect
make conf     # re-import server list and pgpass
make stop     # stop the container
make restart  # restart the container
```

The Compose template does not persist `/var/lib/pgadmin`. Pigsty can re-import its generated server list, but preferences, users, and other state created in the pgAdmin UI may be lost when the container is recreated. If that state matters, add a protected persistent volume for the directory and include it in backups after validating the template change.

![pgAdmin](/img/docs/app/pgadmin.jpeg)

--------

## Security Checklist

- Change the default pgAdmin login and never distribute real credentials in scripts, screenshots, or tickets.
- The default port mapping listens on the host network; restrict sources with a firewall and use Nginx with valid HTTPS for Internet access.
- Protect `/infra/pgadmin/pgpass` and `/opt/pgadmin/.env`; prefer a least-privilege database role.
- Pin and validate the container image, and back up any pgAdmin state you choose to persist.
- pgAdmin can execute privileged SQL. Dropping a database, table, or data still requires separate target confirmation and a recent backup.
