---
title: Security and Compliance
weight: 1106
description: Detailed explanation of security features and compliance capabilities
  of PostgreSQL clusters in Pigsty
icon: fa-solid fa-scale-balanced
module: [PGSQL]
categories: [Concept]
---

Pigsty v4.0 provides **Enterprise-grade** PostgreSQL security configuration, covering multiple dimensions including identity authentication, access control, communication encryption, audit logging, data integrity, backup and recovery, etc.

This document uses **China Level 3 MLPS** (GB/T 22239-2019) and **SOC 2 Type II** security compliance requirements as reference, comparing and verifying Pigsty's security capabilities item by item.

Each security dimension includes two parts:

- **Default Configuration**: Security compliance status when using `conf/meta.yml` and default parameters (Personal use)
- **Available Configuration**: Enhanced security status achievable by adjusting Pigsty parameters (Enterprise-grade configuration achievable)

------

## Compliance Summary

### Level 3 MLPS Core Requirements Comparison

| Requirement | Default Met | Config Available | Description |
|:-------|:----:|:----:|:----------------------------------------|
| Identity Uniqueness | ✅ | ✅ | Role system ensures unique user identification |
| Password Complexity | ⚠️ | ✅ | Can enable passwordcheck / credcheck to enforce password complexity |
| Password Periodic Change | ⚠️ | ✅ | Set user validity period via expire_in/expire_at and refresh periodically |
| Login Failure Handling | ⚠️ | ✅ | Failed login requests recorded in logs, can work with fail2ban for auto-blocking |
| Two-Factor Auth | ⚠️ | ✅ | Password + Client SSL certificate auth |
| Access Control | ✅ | ✅ | HBA rules + RBAC + SELinux |
| Least Privilege | ✅ | ✅ | Tiered role system |
| Privilege Separation | ✅ | ✅ | DBA / Monitor / App Read/Write/ETL/Personal user separation |
| Communication Encryption | ✅ | ✅ | SSL enabled by default, can enforce SSL |
| Data Integrity | ✅ | ✅ | Data checksums enabled by default |
| Storage Encryption | ⚠️ | ✅ | Backup encryption + Percona TDE kernel support |
| Audit Logging | ✅ | ✅ | Logs record DDL and sensitive operations, can record all operations |
| Log Protection | ✅ | ✅ | File permission isolation, VictoriaLogs centralized collection for tamper-proofing |
| Backup Recovery | ✅ | ✅ | pgBackRest automatic backup |
| Network Isolation | ✅ | ✅ | Firewall + HBA |


### SOC 2 Type II Control Points Comparison

| Control Point | Default Met | Config Available | Description |
|:-------------|:----:|:----:|:-------------------------------------------|
| CC6.1 Logical Access Control | ✅ | ✅ | HBA + RBAC + SELinux |
| CC6.2 User Registration Auth | ✅ | ✅ | Ansible declarative management |
| CC6.3 Least Privilege | ✅ | ✅ | Tiered roles |
| CC6.6 Transmission Encryption | ✅ | ✅ | SSL/TLS globally enabled |
| CC6.7 Static Encryption | ⚠️ | ✅ | Can use Percona PGTDE kernel, and pgsodium/vault extensions |
| CC6.8 Malware Protection | ⚠️ | ✅ | Minimal installation + audit |
| CC7.1 Intrusion Detection | ⚠️ | ✅ | Set log Auth Fail monitoring alert rules |
| CC7.2 System Monitoring | ✅ | ✅ | VictoriaMetrics + Grafana |
| CC7.3 Event Response | ✅ | ✅ | Alertmanager |
| CC9.1 Business Continuity | ✅ | ✅ | HA + automatic failover |
| A1.2 Data Recovery | ✅ | ✅ | PITR backup recovery |

**Legend**: ✅ Default met  ⚠️ Requires additional configuration




------

## Identity Authentication

> **MLPS Requirement**: Users logging in should be identified and authenticated, with unique identity identification; two or more combined authentication techniques such as passwords, cryptographic technology, and biometric technology should be used.
>
> **SOC 2**: CC6.1 - Logical and physical access control; user authentication mechanisms.


### User Identity Identification

PostgreSQL implements user identity identification through the Role system, with each user having a unique role name.

| Config Item | Default | Description |
|:------|:------|:-----|
| [`pg_default_roles`](/docs/pgsql/param/#pg_default_roles) | 4 default roles + 4 system users | Predefined role system |
| [`pg_users`](/docs/pgsql/param/#pg_users) | `[]` | Business user definition list |

**Default Configuration**: Pigsty presets a tiered role system:

```yaml
pg_default_roles:
  - { name: dbrole_readonly  ,login: false ,comment: 'Global read-only role' }
  - { name: dbrole_offline   ,login: false ,comment: 'Restricted read-only role (offline queries)' }
  - { name: dbrole_readwrite ,login: false ,roles: [dbrole_readonly] ,comment: 'Global read-write role' }
  - { name: dbrole_admin     ,login: false ,roles: [pg_monitor,dbrole_readwrite] ,comment: 'Object management role' }
  - { name: postgres         ,superuser: true  ,comment: 'System superuser' }
  - { name: replicator       ,replication: true,roles: [pg_monitor,dbrole_readonly] ,comment: 'Replication user' }
  - { name: dbuser_dba       ,superuser: true  ,roles: [dbrole_admin] ,pgbouncer: true ,comment: 'Admin user' }
  - { name: dbuser_monitor   ,roles: [pg_monitor,dbrole_readonly] ,pgbouncer: true ,comment: 'Monitor user' }
```

**Available Configuration**: Users can define business users via `pg_users`, supporting account validity period, connection limits, etc.:

```yaml
pg_users:
  - name: dbuser_app
    password: 'SecurePass123!'
    roles: [dbrole_readwrite]
    expire_in: 365           # Expires after 365 days
    connlimit: 100           # Maximum 100 connections
    comment: 'Application user'
```


### Password Policy

| Config Item | Default | Description |
|:------|:------|:-----|
| [`pg_pwd_enc`](/docs/pgsql/param/#pg_pwd_enc) | `scram-sha-256` | Password encryption algorithm |
| [`pg_dbsu_password`](/docs/pgsql/param/#pg_dbsu_password) | `''` (empty) | Database superuser password |

**Default Configuration**:

- Password encryption uses **SCRAM-SHA-256** algorithm, the most secure password hash algorithm currently supported by PostgreSQL
- Passwords automatically use `SET log_statement TO 'none'` when set to prevent plaintext leakage to logs
- Database superuser `postgres` has no password by default, only allows local Unix Socket access via `ident` authentication

**Available Configuration**:

- Enable [`passwordcheck`](https://www.postgresql.org/docs/current/passwordcheck.html) extension to enforce password complexity:

  ```yaml
  pg_libs: 'passwordcheck, pg_stat_statements, auto_explain'
  ```

- Use [`credcheck`](https://github.com/MigOpsRepos/credcheck) extension for richer password policies (length, complexity, history, etc.)

- Set user account validity period:

  ```yaml
  pg_users:
    - { name: temp_user, password: 'xxx', expire_in: 30 }  # Expires after 30 days
    - { name: temp_user, password: 'xxx', expire_at: '2025-12-31' }  # Expires on specified date
  ```


### Authentication Mechanisms

| Config Item | Default | Description |
|:------|:------|:-----|
| [`pg_default_hba_rules`](/docs/pgsql/param/#pg_default_hba_rules) | 12 rules | Default HBA authentication rules |
| [`pg_hba_rules`](/docs/pgsql/param/#pg_hba_rules) | `[]` | Business HBA rules |

**Default Configuration**: Pigsty implements tiered authentication strategy based on source address:

```yaml
pg_default_hba_rules:
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu local ident auth'}
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu local replication'}
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replication user local password auth'}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replication user intranet password auth'}
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replication user intranet access postgres'}
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor user local password auth'}
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor user access from infra nodes'}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin SSL+password auth'}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin global SSL+password auth'}
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'readonly role local password auth'}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'readonly role intranet password auth'}
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'offline role intranet password auth'}
```

Supported authentication method aliases:

| Alias | Actual Method | Description |
|:-----|:--------|:-----|
| `deny` | `reject` | Reject connection |
| `pwd` | `scram-sha-256` | Password auth (default encrypted) |
| `ssl` | `scram-sha-256` + `hostssl` | SSL + password auth |
| `cert` | `cert` | Client certificate auth |
| `os`/`ident`/`peer` | `ident`/`peer` | OS user mapping |
| `trust` | `trust` | Unconditional trust (not recommended) |

**Available Configuration**:

- Enable client certificate authentication for two-factor auth:

  ```yaml
  pg_hba_rules:
    - {user: 'secure_user', db: all, addr: world, auth: cert, title: 'Certificate auth user'}
  ```

- Restrict specific user to access from specified IP only:

  ```yaml
  pg_hba_rules:
    - {user: 'app_user', db: 'appdb', addr: '192.168.1.100/32', auth: ssl}
  ```


------

## Access Control

> **MLPS Requirement**: Management users should be granted minimum necessary privileges, implementing privilege separation for management users; access control policies should be configured by authorized entities.
>
> **SOC 2**: CC6.3 - Role-based access control and least privilege principle.


### Privilege Separation

**Default Configuration**: Pigsty implements clear separation of duties model:

| Role | Privileges | Purpose |
|:----|:-----|:----|
| `postgres` | SUPERUSER | System superuser, local OS auth only |
| `dbuser_dba` | SUPERUSER + dbrole_admin | Database administrator |
| `replicator` | REPLICATION + pg_monitor | Replication and monitoring |
| `dbuser_monitor` | pg_monitor + dbrole_readonly | Read-only monitoring |
| `dbrole_admin` | CREATE + dbrole_readwrite | Object management (DDL) |
| `dbrole_readwrite` | INSERT/UPDATE/DELETE + dbrole_readonly | Data read-write |
| `dbrole_readonly` | SELECT | Read-only access |
| `dbrole_offline` | SELECT (restricted) | Offline/ETL queries |

**Available Configuration**:

- Fine-grained privilege control implemented via `pg_default_privileges`:

  ```yaml
  pg_default_privileges:
    - GRANT USAGE      ON SCHEMAS   TO dbrole_readonly
    - GRANT SELECT     ON TABLES    TO dbrole_readonly
    - GRANT SELECT     ON SEQUENCES TO dbrole_readonly
    - GRANT EXECUTE    ON FUNCTIONS TO dbrole_readonly
    - GRANT INSERT     ON TABLES    TO dbrole_readwrite
    - GRANT UPDATE     ON TABLES    TO dbrole_readwrite
    - GRANT DELETE     ON TABLES    TO dbrole_readwrite
    - GRANT TRUNCATE   ON TABLES    TO dbrole_admin
    - GRANT CREATE     ON SCHEMAS   TO dbrole_admin
  ```


### Operating System Level Privileges

| Config Item | Default | Description |
|:------|:------|:-----|
| [`pg_dbsu`](/docs/pgsql/param/#pg_dbsu) | `postgres` | Database superuser OS account |
| [`pg_dbsu_sudo`](/docs/pgsql/param/#pg_dbsu_sudo) | `limit` | sudo privilege level |
| [`node_admin_sudo`](/docs/pgsql/param/#node_admin_sudo) | `nopass` | Admin sudo privileges |

**Default Configuration**:

- Database superuser `postgres` sudo privileges are `limit`, only allowing execution of specific service management commands:
  - Start/stop/restart PostgreSQL related services
  - Load softdog kernel module (for watchdog)

```bash
%postgres ALL=NOPASSWD: /bin/systemctl stop postgres
%postgres ALL=NOPASSWD: /bin/systemctl start postgres
%postgres ALL=NOPASSWD: /bin/systemctl reload patroni
# ... other restricted commands
```

**Available Configuration**:

- `pg_dbsu_sudo: none` - Completely disable sudo privileges (strictest)
- `pg_dbsu_sudo: all` - Full sudo requiring password (balanced solution)
- `pg_dbsu_sudo: nopass` - Full sudo without password (not recommended)


### Row Level Security (RLS)

PostgreSQL natively supports Row Level Security (RLS), can set user attributes via `pg_users`:

```yaml
pg_users:
  - name: secure_user
    bypassrls: false  # Don't allow bypassing RLS
    roles: [dbrole_readwrite]
```

Combined with RLS policies in database, can implement fine-grained data access control.


------

## Communication Security

> **MLPS Requirement**: Cryptographic technology should be used to ensure data integrity and confidentiality during communication.
>
> **SOC 2**: CC6.6 - Data transmission security; CC6.7 - Encryption controls.


### SSL/TLS Encryption

| Config Item | Default | Description |
|:------|:------|:-----|
| `ssl` (postgresql.conf) | `on` | Server-side SSL switch |
| [`patroni_ssl_enabled`](/docs/pgsql/param/#patroni_ssl_enabled) | `false` | Patroni API SSL |
| [`pgbouncer_sslmode`](/docs/pgsql/param/#pgbouncer_sslmode) | `disable` | PgBouncer client SSL |
| [`nginx_sslmode`](/docs/pgsql/param/#nginx_sslmode) | `enable` | Nginx HTTPS |

**Default Configuration**:

- PostgreSQL server **enables SSL by default**, supports encrypted connections
- Admin users (`${admin}`) forced to use `hostssl` connections
- Automatically generates and distributes SSL certificates to all database nodes

```yaml
# SSL configuration in patroni.yml
ssl: 'on'
ssl_cert_file: '/pg/cert/server.crt'
ssl_key_file: '/pg/cert/server.key'
ssl_ca_file: '/pg/cert/ca.crt'
```

**Available Configuration**:

- Enable Patroni REST API SSL encryption:

  ```yaml
  patroni_ssl_enabled: true
  ```

- Enable PgBouncer client SSL:

  ```yaml
  pgbouncer_sslmode: require  # or verify-ca, verify-full
  ```

- Force all connections to use SSL:

  ```yaml
  pg_hba_rules:
    - {user: all, db: all, addr: world, auth: ssl, title: 'Force SSL'}
  ```


### PKI Certificate Management

| Config Item | Default | Description |
|:------|:------|:-----|
| [`cert_validity`](/docs/pgsql/param/#cert_validity) | `7300d` | Certificate validity period (20 years) |
| CA Certificate Validity | 100 years | Self-signed CA validity |

**Default Configuration**:

Pigsty uses self-built PKI system, automatically manages certificate lifecycle:

```
files/pki/
├── ca/           # CA root certificate
│   ├── ca.crt    # CA public key certificate
│   └── ca.key    # CA private key
├── csr/          # Certificate signing requests
├── pgsql/        # PostgreSQL cluster certificates
├── etcd/         # ETCD cluster certificates
├── infra/        # Infrastructure node certificates
└── minio/        # MinIO certificates
```

- Each PostgreSQL cluster shares one private key, each instance has independent certificate
- Certificates include correct SAN (Subject Alternative Name) configuration
- CA certificate automatically distributed to `/etc/pki/ca.crt` and `/pg/cert/ca.crt`

**Available Configuration**:

- Use externally CA-signed certificates: Place certificates in `files/pki/` directory, set `ca_create: false`
- Adjust certificate validity: `cert_validity: 365d` (1 year)


### ETCD Communication Security

ETCD as Patroni's DCS (Distributed Configuration Store), uses mTLS (mutual TLS) authentication by default:

```yaml
etcd3:
  hosts: '10.10.10.10:2379'
  protocol: https
  cacert: /pg/cert/ca.crt
  cert:   /pg/cert/server.crt
  key:    /pg/cert/server.key
  username: 'pg-meta'        # Cluster-specific account
  password: 'pg-meta'        # Default same as cluster name
```


------

## Data Encryption

> **MLPS Requirement**: Cryptographic technology should be used to ensure confidentiality of important data during storage.
>
> **SOC 2**: CC6.1 - Data encryption storage.


### Backup Encryption

| Config Item | Default | Description |
|:------|:------|:-----|
| `cipher_type` | `aes-256-cbc` | Backup encryption algorithm (MinIO repo) |
| `cipher_pass` | `pgBackRest` | Encryption password (needs modification) |

**Default Configuration**:

- Local backup (`pgbackrest_method: local`) not encrypted by default
- Remote object storage backup supports AES-256-CBC encryption

**Available Configuration**:

Enable backup encryption (recommended for remote storage):

```yaml
pgbackrest_method: minio
pgbackrest_repo:
  minio:
    type: s3
    s3_endpoint: sss.pigsty
    s3_bucket: pgsql
    s3_key: pgbackrest
    s3_key_secret: S3User.Backup
    cipher_type: aes-256-cbc
    cipher_pass: 'YourSecureBackupPassword!'  # Must modify!
    retention_full_type: time
    retention_full: 14
```


### Transparent Data Encryption (TDE)

PostgreSQL community edition doesn't support native TDE, but storage encryption can be implemented via:

- **Filesystem-level encryption**: Use LUKS/dm-crypt to encrypt storage volumes
- **pgsodium extension**: Supports column-level encryption

```yaml
# Enable pgsodium column-level encryption
pg_libs: 'pgsodium, pg_stat_statements, auto_explain'

# Custom encryption key (64-bit hex)
pgsodium_key: 'a1b2c3d4e5f6...'  # Or use external key management script
```


### Data Integrity Verification

| Config Item | Default | Description |
|:------|:------|:-----|
| [`pg_checksum`](/docs/pgsql/param/#pg_checksum) | `true` | Data checksums |

**Default Configuration**:

- **Data checksums enabled by default**, can detect storage layer data corruption
- `crit.yml` template enforces data checksums
- Supports `pg_rewind` for failure recovery

```yaml
pg_checksum: true  # Strongly recommend keeping enabled
```


------

## Security Auditing

> **MLPS Requirement**: Security auditing should be enabled, covering each user, auditing important user behaviors and security events.
>
> **SOC 2**: CC7.2 - System monitoring and logging; CC7.3 - Security event detection.


### Database Audit Logging

| Config Item | Default | Description |
|:------|:------|:-----|
| `logging_collector` | `on` | Enable log collector |
| `log_destination` | `csvlog` | CSV format logs |
| `log_statement` | `ddl` | Record DDL statements |
| `log_min_duration_statement` | `100ms` | Slow query threshold |
| `log_connections` | `authorization` (PG18) / `on` | Connection audit |
| `log_disconnections` | `on` (crit template) | Disconnection audit |
| `log_checkpoints` | `on` | Checkpoint logs |
| `log_lock_waits` | `on` | Lock wait logs |
| `log_replication_commands` | `on` | Replication command logs |

**Default Configuration**:

```yaml
# oltp.yml template audit configuration
log_destination: csvlog
logging_collector: 'on'
log_directory: /pg/log/postgres
log_filename: 'postgresql-%a.log'    # Rotate by weekday
log_file_mode: '0640'                # Restrict log file permissions
log_rotation_age: '1d'
log_truncate_on_rotation: 'on'
log_checkpoints: 'on'
log_lock_waits: 'on'
log_replication_commands: 'on'
log_statement: ddl                   # Record all DDL
log_min_duration_statement: 100      # Record slow queries >100ms
```

**Available Configuration (crit.yml critical business template)**:

```yaml
# crit.yml provides more comprehensive auditing
log_connections: 'receipt,authentication,authorization'  # PG18 full connection audit
log_disconnections: 'on'             # Record disconnections
log_lock_failures: 'on'              # Record lock failures (PG18)
track_activity_query_size: 32768     # Full query recording
```

Enable `pgaudit` extension for fine-grained auditing:

```yaml
pg_libs: 'pgaudit, pg_stat_statements, auto_explain'
pg_parameters:
  pgaudit.log: 'all'
  pgaudit.log_catalog: 'on'
  pgaudit.log_relation: 'on'
```


### Performance and Execution Auditing

| Extension | Default Enabled | Description |
|:----|:--------|:----|
| `pg_stat_statements` | Yes | SQL statistics |
| `auto_explain` | Yes | Slow query execution plans |
| `pg_wait_sampling` | Config available | Wait event sampling |

**Default Configuration**:

```yaml
pg_libs: 'pg_stat_statements, auto_explain'

# auto_explain configuration
auto_explain.log_min_duration: 1s    # Record query plans >1s
auto_explain.log_analyze: 'on'
auto_explain.log_verbose: 'on'
auto_explain.log_timing: 'on'

# pg_stat_statements configuration
pg_stat_statements.max: 10000
pg_stat_statements.track: all
```


### Centralized Log Management

**Default Configuration**:

- PostgreSQL logs: `/pg/log/postgres/`
- Patroni logs: `/pg/log/patroni/`
- PgBouncer logs: `/pg/log/pgbouncer/`
- pgBackRest logs: `/pg/log/pgbackrest/`

**Available Configuration**:

Send logs to VictoriaLogs for centralized storage via Vector:

```yaml
# Logs automatically collected to VictoriaLogs
vlogs_enabled: true
vlogs_port: 9428
vlogs_options: >-
  -retentionPeriod=15d
  -retention.maxDiskSpaceUsageBytes=50GiB
```


------

## Network Security

> **MLPS Requirement**: Access control devices should be deployed at network boundaries to implement access control for data flows entering and leaving the network.
>
> **SOC 2**: CC6.1 - Boundary protection and network security.


### Firewall Configuration

| Config Item | Default | Description |
|:------|:------|:-----|
| [`node_firewall_mode`](/docs/pgsql/param/#node_firewall_mode) | `zone` | Firewall mode |
| [`node_firewall_intranet`](/docs/pgsql/param/#node_firewall_intranet) | RFC1918 segments | Intranet CIDR |
| [`node_firewall_public_port`](/docs/pgsql/param/#node_firewall_public_port) | `[22,80,443,5432]` | Public ports |

**Default Configuration**:

```yaml
node_firewall_mode: zone             # Enable zone firewall
node_firewall_intranet:              # Define intranet addresses
  - 10.0.0.0/8
  - 192.168.0.0/16
  - 172.16.0.0/12
node_firewall_public_port:           # Public ports
  - 22    # SSH
  - 80    # HTTP
  - 443   # HTTPS
  - 5432  # PostgreSQL (open cautiously)
```

Firewall rules:
- Intranet addresses automatically added to `trusted` zone
- Only specified ports open to public
- Supports firewalld (RHEL-based) and ufw (Debian-based)

**Available Configuration**:

- `node_firewall_mode: off` - Disable firewall (not recommended)
- `node_firewall_mode: none` - Don't modify existing config
- Remove port 5432, only allow intranet database access


### Service Access Control

| Config Item | Default | Description |
|:------|:------|:-----|
| `pg_listen` | `0.0.0.0` | PostgreSQL listen address |
| `patroni_allowlist` | infra + cluster | Patroni API whitelist |

**Default Configuration**:

Patroni REST API only allows access from following addresses:

```yaml
# Automatically calculated whitelist
pg_allow_list = [admin_ip] + pg_cluster_members + groups["infra"]
```

**Available Configuration**:

Restrict PostgreSQL to listen on specific NIC only:

```yaml
pg_listen: '${ip}'  # Only listen on host IP, not 0.0.0.0
```


### SELinux

| Config Item | Default | Description |
|:------|:------|:-----|
| [`node_selinux_mode`](/docs/pgsql/param/#node_selinux_mode) | `permissive` | SELinux mode |

**Default Configuration**: SELinux set to `permissive` mode (log but don't block)

**Available Configuration**:

```yaml
node_selinux_mode: enforcing  # Enforcing mode (requires additional policy configuration)
```


------

## Availability and Recovery

> **MLPS Requirement**: Should provide data backup and recovery functions; should provide automatic failure recovery.
>
> **SOC 2**: CC9.1 - Business continuity; A1.2 - Data backup and recovery.


### High Availability Architecture

| Config Item | Default | Description |
|:------|:------|:-----|
| [`patroni_enabled`](/docs/pgsql/param/#patroni_enabled) | `true` | Enable Patroni HA |
| [`pg_rto`](/docs/pgsql/param/#pg_rto) | `30` | Recovery time objective (seconds) |
| [`pg_rpo`](/docs/pgsql/param/#pg_rpo) | `1048576` | Recovery point objective (1MB) |

**Default Configuration**:

- Patroni automatic failure detection and switching (RTO < 30s)
- Asynchronous replication, max data loss 1MB (RPO)
- `failsafe_mode: true` prevents split-brain

**Available Configuration**:

Enable synchronous replication for RPO = 0:

```yaml
pg_rpo: 0                    # Zero data loss
pg_conf: crit.yml            # Use critical business template
# crit.yml automatically enables synchronous_mode: true
```

Enable hardware watchdog:

```yaml
patroni_watchdog_mode: automatic  # or required
```


### Backup Recovery

| Config Item | Default | Description |
|:------|:------|:-----|
| [`pgbackrest_enabled`](/docs/pgsql/param/#pgbackrest_enabled) | `true` | Enable pgBackRest |
| [`pgbackrest_method`](/docs/pgsql/param/#pgbackrest_method) | `local` | Backup storage method |
| `retention_full` | `2` | Retain full backup count |

**Default Configuration**:

```yaml
pgbackrest_enabled: true
pgbackrest_method: local
pgbackrest_repo:
  local:
    path: /pg/backup
    retention_full_type: count
    retention_full: 2            # Retain 2 full backups
```

**Available Configuration**:

Off-site backup to object storage:

```yaml
pgbackrest_method: minio
pgbackrest_repo:
  minio:
    type: s3
    s3_endpoint: sss.pigsty
    s3_bucket: pgsql
    cipher_type: aes-256-cbc     # Encrypt backups
    retention_full_type: time
    retention_full: 14           # Retain 14 days
    block: y                     # Block-level incremental backup
    bundle: y                    # Small file merging
```

Scheduled backup strategy:

```yaml
node_crontab:
  - '00 01 * * * postgres /pg/bin/pg-backup full'   # Daily 1am full backup
  - '00 */4 * * * postgres /pg/bin/pg-backup diff'  # Every 4 hours differential backup
```


------

## Intrusion Prevention

> **MLPS Requirement**: Should follow minimal installation principle, only installing necessary components and applications; should be able to detect intrusion attempts on important nodes, providing alerts for serious intrusion events.
>
> **SOC 2**: CC6.8 - Malware protection; CC7.1 - Intrusion detection.


### Minimal Installation

**Default Configuration**:

- Only install necessary PostgreSQL components and extensions
- Precisely control installation content via `pg_packages` and `pg_extensions`
- Production systems don't install development tools and debug symbols

```yaml
pg_packages: [ pgsql-main, pgsql-common ]  # Minimal installation
pg_extensions: []                          # Add extensions as needed
```


### Security Extensions

Pigsty provides the following [**security-related extensions**](https://pgext.cloud/zh/list/cate/#sec), can be installed and enabled as needed:

| Extension/Package | Version | Description |
|:-----------------------------------------------------------------------|:------|:--------------------------------|
| [passwordcheck_cracklib](https://pgext.cloud/e/passwordcheck_cracklib) | 3.1.0 | Strengthen PG user passwords using cracklib |
| [supautils](https://pgext.cloud/e/supautils) | 3.0.2 | Ensure database cluster security in cloud environment |
| [pgsodium](https://pgext.cloud/e/pgsodium) | 3.1.9 | Table data encryption storage TDE |
| [supabase_vault / pg_vault](https://pgext.cloud/e/supabase_vault) | 0.3.1 | Extension for storing encrypted credentials in Vault (supabase) |
| [pg_session_jwt](https://pgext.cloud/e/pg_session_jwt) | 0.4.0 | Session authentication using JWT |
| [anon](https://pgext.cloud/e/anon) | 2.5.1 | Data anonymization tool |
| [pgsmcrypto](https://pgext.cloud/e/pgsmcrypto) | 0.1.1 | Provide SM algorithms for PostgreSQL: SM2,SM3,SM4 |
| [pg_enigma](https://pgext.cloud/e/pg_enigma) | 0.5.0 | PostgreSQL encrypted data types |
| [pgaudit](https://pgext.cloud/e/pgaudit) | 18.0 | Provide audit functionality |
| [pgauditlogtofile](https://pgext.cloud/e/pgauditlogtofile) | 1.7.6 | pgAudit sub-extension, write audit logs to separate files |
| [pg_auditor](https://pgext.cloud/e/pg_auditor) | 0.2 | Audit data changes and provide flashback capability |
| [logerrors](https://pgext.cloud/e/logerrors) | 2.1.5 | Functions for collecting message statistics in log files |
| [pg_auth_mon](https://pgext.cloud/e/pg_auth_mon) | 3.0 | Monitor connection attempts per user |
| [pg_jobmon](https://pgext.cloud/e/pg_jobmon) | 1.4.1 | Record and monitor functions |
| [credcheck](https://pgext.cloud/e/credcheck) | 4.2 | Plaintext credential checker |
| [pgcryptokey](https://pgext.cloud/e/pgcryptokey) | 0.85 | PG key management |
| [login_hook](https://pgext.cloud/e/login_hook) | 1.7 | Execute login_hook.login() function on user login |
| [set_user](https://pgext.cloud/e/set_user) | 4.2.0 | SET ROLE with added logging |
| [pg_snakeoil](https://pgext.cloud/e/pg_snakeoil) | 1.4 | PostgreSQL dynamic library anti-virus functionality |
| [pgextwlist](https://pgext.cloud/e/pgextwlist) | 1.19 | PostgreSQL extension whitelist functionality |
| [sslutils](https://pgext.cloud/e/sslutils) | 1.4 | Manage SSL certificates using SQL |
| [noset](https://pgext.cloud/e/noset) | 0.3.0 | Prevent non-superusers from using SET/RESET to set variables |
| [pg_tde](https://pgext.cloud/e/pg_tde) | 1.0 | Percona encrypted storage engine |
| [sepgsql](https://pgext.cloud/e/sepgsql) | - | SELinux label-based mandatory access control |
| [auth_delay](https://pgext.cloud/e/auth_delay) | - | Pause before returning auth failure, avoid brute force |
| [pgcrypto](https://pgext.cloud/e/pgcrypto) | 1.3 | Utility encryption/decryption functions |
| [passwordcheck](https://pgext.cloud/e/passwordcheck) | - | Extension to force reject weak password changes |

Install all security extension packages:

```yaml
pg_extensions: [ pg18-sec ]  # Install security extension group
```


### Alerting and Monitoring

**Default Configuration**:

- VictoriaMetrics + Alertmanager provide monitoring and alerting
- Preset PostgreSQL alert rules
- Grafana visualization dashboards

Key security-related alerts:
- Excessive authentication failures
- Excessive replication lag
- Backup failures
- Disk space shortage
- Connection exhaustion
