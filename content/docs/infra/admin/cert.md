---
title: CA and Certificates
weight: 3107
description: Using self-signed CA or real HTTPS certificates
icon: fa-solid fa-shield-halved
categories: [Task]
---


Pigsty uses a **self-signed Certificate Authority (CA)** by default for internal SSL/TLS encryption. This document covers:
- [Self-Signed CA](#self-signed-ca): Default PKI infrastructure
- [Issue Certificates](#issue-certificates): Using `cert.yml` to issue additional certificates
- [Trust CA Certificate](#trust-ca-certificate): Installing CA on client machines
- [Let's Encrypt](#lets-encrypt): Using real certificates for public-facing services



---

## Self-Signed CA

Pigsty automatically creates a self-signed CA during infrastructure initialization (`infra.yml`). The CA signs certificates for:

- PostgreSQL server/client SSL
- Patroni REST API
- etcd cluster communication
- Silo cluster communication
- Nginx HTTPS (fallback)
- Infrastructure services



### PKI Directory Structure

```text
files/pki/
├── ca/
│   ├── ca.key                # CA private key (keep secure!)
│   └── ca.crt                # CA certificate
├── csr/                      # Certificate signing requests
│   ├── misc/                     # Miscellaneous certificates (cert.yml output)
│   ├── etcd/                     # ETCD certificates
│   ├── kafka/                    # Kafka node certificates
│   ├── pgsql/                    # PostgreSQL certificates
│   ├── minio/                    # MINIO module object-storage certificates
│   ├── mysql/                    # MySQL node certificates
│   └── nginx/                    # Nginx certificates
└── infra/                    # Infrastructure certificates
```

### CA Variables

| Variable | Default | Description |
|:---------|:--------|:------------|
| `ca_create` | `true` | Allow creation when the CA private key is missing |
| `ca_cn` | `pigsty-ca` | CA certificate common name |
| `cert_validity` | `7300d` | Default validity for issued certificates |
{.full-width}

### Certificate Validity

| Certificate Type | Validity | Control Parameter |
|:-----------------|:---------|:------------------|
| CA certificate | 100 years | Hardcoded (36500 days) |
| Server/Client | 20 years | `cert_validity` (`7300d`) |
| Nginx HTTPS | ~1 year | `nginx_cert_validity` (`397d`) |
{.full-width}

> **Note**: Browser vendors limit trust for certificates longer than 398 days. Nginx uses shorter validity for browser compatibility.



---

## Using External CA

To use your own enterprise CA instead of auto-generated one:

**1. Set `ca_create: false`** in your configuration.

**2. Place your CA files before running playbook:**

```bash
mkdir -p files/pki/ca
cp /path/to/your/ca.key files/pki/ca/ca.key
cp /path/to/your/ca.crt files/pki/ca/ca.crt
chmod 600 files/pki/ca/ca.key
chmod 644 files/pki/ca/ca.crt
```

`ca_create: false` only requires `ca.key` to exist. If only `ca.crt` is missing, the role still uses the existing private key to reissue the certificate. Always back up, verify, and restore the two files together.

**3. Run `./infra.yml`**



---

### Backup CA Files

The CA private key is critical. Back it up securely:

```bash
# Backup with timestamp
tar -czvf pigsty-ca-$(date +%Y%m%d).tar.gz files/pki/ca/
```

> **Warning**: If you lose CA private key, all certificates signed by it become unverifiable. You'll need to regenerate everything.



---

## Issue Certificates

Use `cert.yml` to issue additional certificates signed by Pigsty CA.

### Basic Usage

```bash
# Issue certificate for database user (client cert)
./cert.yml -e cn=dbuser_dba

# Issue certificate for monitor user
./cert.yml -e cn=dbuser_monitor
```

Certificates generated in `files/pki/misc/<cn>.{key,crt}` by default.



### Parameters

| Parameter | Default              | Description                     |
|-----------|----------------------|----------------------------------|
| `cn`      | `pigsty`             | Common Name (required)          |
| `san`     | `[DNS:localhost, IP:127.0.0.1]` | Subject Alternative Names |
| `org`     | `pigsty`             | Organization name               |
| `unit`    | `pigsty`             | Organizational unit name        |
| `expire`   | `7300d`             | Certificate validity (20 years)     |
| `key`     | `files/pki/misc/<cn>.key` | Private key output path    |
| `crt`     | `files/pki/misc/<cn>.crt` | Certificate output path    |



### Advanced Examples

```bash
# Issue certificate with custom SAN (DNS and IP)
./cert.yml -e cn=myservice -e san=DNS:myservice,IP:10.2.82.163
```

(File has more lines. Use 'offset' parameter to read beyond line 130)
