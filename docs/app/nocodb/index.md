# NocoDB: Open-Source Airtable

> Use NocoDB to transform PostgreSQL databases into smart spreadsheets, a no-code database application platform.

---

LLMS index: [llms.txt](/llms.txt)

---

[**NocoDB**](https://nocodb.com/) is an open-source Airtable alternative that turns any database into a smart spreadsheet.

Use its visual interface to create database applications without code. NocoDB supports PostgreSQL, MySQL, SQL Server, and other databases. You can use it for internal tools and data management systems.


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

- URL after configuring the portal: http://noco.pigsty
- Default direct URL: http://10.10.10.10:9003
- First-time access requires creating an administrator account


## Management Commands

Use these Makefile commands to manage NocoDB:

```bash
make up      # Start NocoDB service
make view    # Display NocoDB access URL
make log     # View container logs
make info    # View service details
make stop    # Stop the service
make clean   # Stop and remove containers
make pull    # Pull the latest image
make rmi     # Remove NocoDB image
make save    # Save image to /tmp/docker/nocodb.tgz
make load    # Load image from /tmp/docker/nocodb.tgz
```


`make run` uses a separate `docker run` command with a connection string and secret hardcoded in the Makefile. Use `make up` above to read the Compose configuration.

## Connect to PostgreSQL

NocoDB can connect to PostgreSQL databases managed by Pigsty.

When adding a new project in the NocoDB interface, select "External Database" and enter the PostgreSQL connection information:

```text
Host: 10.10.10.10
Port: 5432
Database Name: your_database
Username: your_username
Password: your_password
SSL: Disabled (or enable as needed)
```

After connecting, NocoDB reads the table structure automatically. You can then manage data through the visual interface.


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
DATABASE_URL=postgres://dbuser_noco:DBUser.Noco@10.10.10.10:5432/noco
NC_PORT=9003

# JWT secret (recommended to change)
NC_AUTH_JWT_SECRET=change-this-nocodb-jwt-secret-at-least-32-chars
```


Create the dedicated `noco` database and `dbuser_noco` user before startup, and replace the example password and JWT secret. Compose explicitly passes only `DATABASE_URL` and `NC_AUTH_JWT_SECRET`. Add other NocoDB settings to Compose `environment`; writing them to `.env` alone does not pass them into the container.

## Data Persistence

By default, NocoDB stores metadata in external PostgreSQL. It can also store application data in PostgreSQL.

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
