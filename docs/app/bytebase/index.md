# ByteBase: Schema Migration

> Deploy Bytebase with Pigsty's Docker Compose template and connect it to external PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

---

[Bytebase](https://bytebase.com/) is a database schema change and version management tool.

Pigsty provides a ready-to-use Compose template in `app/bytebase`. It listens on `8887` by default and connects to external PostgreSQL via `BB_PGURL`.

## Quick Start

```bash
cd ~/pigsty/app/bytebase
vi .env         # check BB_PORT / BB_DOMAIN / BB_PGURL
make up
```

Access:

- `http://ddl.pigsty`
- `http://<IP>:8887`

After first startup, initialize the admin account using the Bytebase setup wizard.

## External PostgreSQL

Default connection string example:

```bash
postgresql://dbuser_bytebase:DBUser.Bytebase@10.10.10.10:5432/bytebase?sslmode=prefer
```

You can create the database user and database in Pigsty first:

```bash
bin/pgsql-user pg-meta dbuser_bytebase
bin/pgsql-db   pg-meta bytebase
```

## Common Commands

```bash
make up
make log
make info
make stop
make clean
```

## References

- Bytebase docs: https://www.bytebase.com/docs/
- Pigsty template: https://github.com/pgsty/pigsty/tree/main/app/bytebase
