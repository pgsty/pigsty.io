---
title: "NocoDB: Open-Source Airtable"
weight: 585
description: Use NocoDB to transform PostgreSQL databases into smart spreadsheets, a no-code database application platform.
module: [SOFTWARE]
categories: [Reference]
---

[**NocoDB**](https://nocodb.com/) is an open-source Airtable alternative that turns any database into a smart spreadsheet.

It provides a rich user interface that allows you to create powerful database applications without writing code. NocoDB supports PostgreSQL, MySQL, SQL Server, and more, making it ideal for building internal tools and data management systems.


## Quick Start

Pigsty provides a Docker Compose configuration file for NocoDB in the software template directory:

```bash
cd ~/pigsty/app/nocodb
```

Review and modify the `.env` configuration file (adjust database connections as needed).

Start the service:

```bash
make up     # Start NocoDB with Docker Compose
```

Access NocoDB:

- Default URL: http://nocodb.pigsty
- Alternate URL: http://10.10.10.10:8080
- First-time access requires creating an administrator account


## Management Commands

Pigsty provides convenient Makefile commands to manage NocoDB:

```bash
make up      # Start NocoDB service
make run     # Start with Docker (connect to external PostgreSQL)
make view    # Display NocoDB access URL
make log     # View container logs
make info    # View service details
make stop    # Stop the service
make clean   # Stop and remove containers
make pull    # Pull the latest image
make rmi     # Remove NocoDB image
make save    # Save image to /tmp/nocodb.tgz
make load    # Load image from /tmp/nocodb.tgz
```


## Connect to PostgreSQL

NocoDB can connect to PostgreSQL databases managed by Pigsty.

When adding a new project in the NocoDB interface, select "External Database" and enter the PostgreSQL connection information:

```
Host: 10.10.10.10
Port: 5432
Database Name: your_database
Username: your_username
Password: your_password
SSL: Disabled (or enable as needed)
```

After successful connection, NocoDB will automatically read the database table structure, and you can manage data through the visual interface.


## Features

- **Smart Spreadsheet Interface**: Excel/Airtable-like user experience
- **Multiple Views**: Grid, form, kanban, calendar, gallery views
- **Collaboration Features**: Team collaboration, permission management, comments
- **API Support**: Auto-generated REST API
- **Integration Capabilities**: Webhooks, Zapier integrations
- **Import/Export**: CSV, Excel format support
- **Formulas and Validation**: Complex data calculations and validation rules


## Configuration

NocoDB configuration is in the `.env` file:

```bash
# Database connection (NocoDB metadata storage)
NC_DB=pg://postgres:DBUser.Postgres@10.10.10.10:5432/nocodb

# JWT secret (recommended to change)
NC_AUTH_JWT_SECRET=your-secret-key

# Other settings
NC_PUBLIC_URL=http://nocodb.pigsty
NC_DISABLE_TELE=true
```


## Data Persistence

NocoDB metadata is stored by default in an external PostgreSQL database, and application data can also be stored in PostgreSQL.

If using local storage, data is saved in the `/data/nocodb` directory.


## Security Recommendations

1. **Change Default Secret**: Modify `NC_AUTH_JWT_SECRET` in the `.env` file
2. **Use Strong Passwords**: Set strong passwords for administrator accounts
3. **Configure HTTPS**: Enable HTTPS for production environments
4. **Restrict Access**: Limit access through firewall or Nginx
5. **Regular Backups**: Regularly back up the NocoDB metadata database


## Related Links

- NocoDB Website: https://nocodb.com/
- Documentation: https://docs.nocodb.com/
- GitHub Repository: https://github.com/nocodb/nocodb
- Pigsty Software Template: https://github.com/pgsty/pigsty/tree/main/app/nocodb
