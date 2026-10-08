---
title: "Metabase: BI Analytics Tool"
weight: 615
description: Use Metabase for rapid business intelligence analysis with a user-friendly interface for team self-service data exploration.
module: [SOFTWARE]
categories: [Reference]
---

[**Metabase**](https://metabase.com/) is a fast, easy-to-use open-source business intelligence tool that lets your team explore and visualize data without SQL knowledge.

Metabase provides a friendly user interface with rich chart types and supports connecting to various databases, making it an ideal choice for enterprise data analysis.

The template defaults to `metabase/metabase:v0.64.1.x`. Use the single `METABASE_IMAGE` setting to override the full image reference. On 2026-10-08, the tag resolved to `0.64.1.1`; validation on PostgreSQL 18.6 covered upgrading a restored metadata database, login, and querying an existing saved question.


## Quick Start

Pigsty provides a Docker Compose configuration file for Metabase in the software template directory:

```bash
cd ~/pigsty/app/metabase
```

Review and modify the `.env` configuration file:

```bash
vim .env    # Check configuration, recommend changing default credentials
```

Before starting, create a dedicated `metabase` database and `dbuser_metabase` role matching the `.env` connection settings. Do not share the Pigsty CMDB database.

Start the service:

```bash
make up     # Start Metabase with Docker Compose
```

Access Metabase:

- Default URL: http://mtbs.pigsty
- Alternate URL: http://10.10.10.10:9004
- First-time access requires initial setup


## Management Commands

Pigsty provides convenient Makefile commands to manage Metabase:

```bash
make up      # Start Metabase service
make run     # Alias for make up
make view    # Display Metabase access URL
make log     # View container logs
make info    # View service details
make stop    # Stop the service
make clean   # Stop and remove containers
make pull    # Pull the configured image
make rmi     # Remove Metabase image
make save    # Save image to file
make load    # Load image from file
```


## Connect to PostgreSQL

Metabase can connect to PostgreSQL databases managed by Pigsty.

During Metabase initialization or when adding a database, select "PostgreSQL" and enter the connection information:

```text
Database Type: PostgreSQL
Name: Custom name (e.g., "Production Database")
Host: 10.10.10.10
Port: 5432
Database Name: your_database
Username: dbuser_meta
Password: DBUser.Meta
```

After successful connection, Metabase will automatically scan the database schema, and you can start creating questions and dashboards.


## Features

- **No SQL Required**: Build queries through visual interface
- **Rich Chart Types**: Line, bar, pie, map charts, and more
- **Interactive Dashboards**: Create beautiful data dashboards
- **Auto Refresh**: Schedule data and dashboard updates
- **Permission Management**: Fine-grained user and data access control
- **SQL Mode**: Advanced users can write SQL directly
- **Embedding**: Embed charts into other applications
- **Alerting**: Automatic notifications on data changes


## Configuration

Metabase configuration is in the `.env` file:

```bash
# Image and host port
METABASE_IMAGE=metabase/metabase:v0.64.1.x
MB_PORT=9004

# Metabase metadata database
MB_DB_TYPE=postgres
MB_DB_DBNAME=metabase
MB_DB_PORT=5432
MB_DB_USER=dbuser_metabase
MB_DB_PASS=DBUser.Metabase
MB_DB_HOST=10.10.10.10

```

**Recommended**: Use a dedicated PostgreSQL database for storing Metabase metadata.


## Data Persistence

Metabase metadata (users, questions, dashboards, etc.) is stored in the configured database.

The template uses external PostgreSQL by default and does not configure a persistent `/data/metabase` directory for H2. Its `/api/health` check covers both the application and metadata database. Wait for healthy status during initial migrations.

Upgrading from Metabase 63 to 64 automatically migrates the metadata database. Back it up and record the old image digest first, then test on a restored copy. Rollback requires the matching database backup and old image; replacing the image alone does not undo database migrations. See the [upgrade guide](https://www.metabase.com/docs/latest/installation-and-operation/upgrading-metabase).


## Performance Optimization

- **Use PostgreSQL**: Allocate separate resources for the metadata database and monitor its workload
- **Increase Memory**: Pass `JAVA_OPTS` explicitly in Compose's `environment` to tune JVM memory; adding it to `.env` alone does not pass it into the container
- **Database Indexes**: Create indexes for frequently queried fields
- **Result Caching**: Enable Metabase query result caching
- **Scheduled Updates**: Set reasonable dashboard auto-refresh frequency


## Security Recommendations

1. **Change Default Credentials**: Modify metadata database username and password
2. **Enable HTTPS**: Configure SSL certificates for production
3. **Configure Authentication**: Enable SSO or LDAP authentication
4. **Restrict Access**: Limit access through firewall
5. **Regular Backups**: Back up the Metabase metadata database


## Related Links

- Metabase Website: https://metabase.com/
- Documentation: https://www.metabase.com/docs/
- GitHub Repository: https://github.com/metabase/metabase
- Pigsty Software Template: https://github.com/pgsty/pigsty/tree/main/app/metabase
