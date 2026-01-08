---
title: "Teable: AI No-Code Database"
weight: 590
description: Build AI-powered no-code database applications with Teable to boost team productivity.
module: [SOFTWARE]
categories: [Reference]
---

[**Teable**](https://teable.io/) is an AI-powered no-code database platform designed for team collaboration and automation.

Teable perfectly combines the power of databases with the ease of spreadsheets, integrating AI capabilities to help teams efficiently generate, automate, and collaborate on data.


## Quick Start

Teable requires a complete Pigsty environment (including PostgreSQL, Redis, MinIO).

### Prepare Environment

```bash
cd ~/pigsty
./bootstrap                # Prepare local repo and Ansible
./configure -c app/teable  # Important: modify default credentials!
./deploy.yml               # Install Pigsty, PostgreSQL, MinIO
./redis.yml                # Install Redis instance
./docker.yml               # Install Docker and Docker Compose
./app.yml                  # Install Teable with Docker Compose
```

### Access Service

- Default URL: http://teable.pigsty
- Alternate URL: http://10.10.10.10:3000
- First-time access requires registering an administrator account


## Management Commands

Manage Teable in the Pigsty software template directory:

```bash
cd ~/pigsty/app/teable

make up      # Start Teable service
make down    # Stop Teable service
make log     # View container logs
make clean   # Clean up containers and data
```


## Architecture

Teable depends on the following components:

- **PostgreSQL**: Stores application data and metadata
- **Redis**: Caching and session management
- **MinIO**: Object storage (files, images, etc.)
- **Docker**: Container runtime environment

Ensure these services are properly installed before deploying Teable.


## Features

- **AI Integration**: Built-in AI assistant for auto-generating data, formulas, and workflows
- **Smart Tables**: Powerful table functionality with multiple field types
- **Automated Workflows**: No-code automation to boost team efficiency
- **Multiple Views**: Grid, form, kanban, calendar, and more
- **Team Collaboration**: Real-time collaboration, permission management, comments
- **API and Integrations**: Auto-generated API with Webhook support
- **Template Library**: Rich application templates for quick project starts


## Configuration

Teable configuration is managed through environment variables in `docker-compose.yml`:

```yaml
# PostgreSQL connection
POSTGRES_HOST=10.10.10.10
POSTGRES_PORT=5432
POSTGRES_DB=teable
POSTGRES_USER=dbuser_teable
POSTGRES_PASSWORD=DBUser.Teable

# Redis connection
REDIS_HOST=10.10.10.10
REDIS_PORT=6379
REDIS_DB=0

# MinIO connection
MINIO_ENDPOINT=http://10.10.10.10:9000
MINIO_ACCESS_KEY=minioadmin
MINIO_SECRET_KEY=minioadmin

# Application configuration
BACKEND_URL=http://teable.pigsty
PUBLIC_ORIGIN=http://teable.pigsty
```

**Important**: In production environments, modify all default passwords and keys!


## Data Persistence

Teable data persistence relies on:

- **PostgreSQL**: All structured data stored in PostgreSQL
- **MinIO**: Files, images, and other unstructured data stored in MinIO
- **Redis**: Cache data (optional persistence)

Regularly back up the PostgreSQL database and MinIO buckets to ensure data safety.


## Security Recommendations

1. **Change Default Credentials**: Modify all default usernames and passwords in configuration files
2. **Enable HTTPS**: Configure SSL certificates for production environments
3. **Configure Firewall**: Restrict access to services
4. **Regular Backups**: Regularly back up PostgreSQL and MinIO data
5. **Update Components**: Keep Teable and dependent components up to date


## Related Links

- Teable Website: https://teable.io/
- Documentation: https://help.teable.io/
- GitHub Repository: https://github.com/teableio/teable
- Pigsty Software Template: https://github.com/pgsty/pigsty/tree/main/app/teable
