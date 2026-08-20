# Encrypted Communication

> Pigsty provides a self-signed CA that issues certificates and distributes trust for managed components, creating a unified TLS foundation.

---

LLMS index: [llms.txt](/llms.txt)

---

TLS can provide three separate protections: **transport encryption**, **server authentication**, and **client authentication**. Each must be configured independently. Enabling server-side TLS does not mean the client verifies the server identity, nor does it mean the server requires a client certificate.

The main operational cost of TLS is not the encryption algorithm but certificate issuance, distribution, trust, and rotation. Without centralized management, internal services often encrypt traffic while skipping certificate verification—or remain on plaintext connections.

Pigsty brings PKI under declarative management. During deployment it creates a local self-signed CA, issues certificates for managed components, and distributes trust so TLS is ready for use after installation.


---------------

<span id="role-of-the-local-ca"></span>

## Local CA

During the first deployment, Pigsty checks for a CA on the [**admin node**](/docs/concept/arch/node#admin-node) and creates one when required:

| File | Description | Permissions |
|:---|:---|:---|
| `files/pki/ca/ca.key` | CA private key and root of trust for the deployment; protect it carefully | `0600`, with directory mode `0700` |
| `files/pki/ca/ca.crt` | CA root certificate; safe to distribute | `0644` |
{.full-width}

- [`ca_create`](/docs/infra/param#ca_create) controls CA behavior. An existing private key and certificate are reused unchanged; if the certificate is missing but the private key exists, that key is used to issue a replacement certificate.
  `ca_create: false` only prevents creation of a missing CA private key. Deployment stops if `ca.key` is absent, preventing an unexpected trust root. Always back up and restore `ca.key` and `ca.crt` together.
- [`ca_cn`](/docs/infra/param#ca_cn) sets the CA certificate CN, which defaults to `pigsty-ca`. The key is RSA 4096.
- The root CA is valid for 100 years, while component certificates default to 20 years ([`cert_validity`](/docs/infra/param#cert_validity): `7300d`).
  The browser-facing Nginx certificate is an exception and currently defaults to 397 days.

Long default lifetimes reduce the initial maintenance burden for private infrastructure; they do not remove the need for production rotation. Organizations with an established certificate policy should shorten lifetimes and monitor expiration.


---------------

## Trust Distribution

Issuing a certificate is only half of PKI. Every [**node**](/docs/concept/arch/node) must trust it. When a node is managed, Pigsty distributes the CA certificate to `/etc/pki/ca.crt` and links it into the operating system trust store:

- EL family (RHEL, Rocky, Alma): link under `/etc/pki/ca-trust/source/anchors/` and run `update-ca-trust`
- Debian and Ubuntu: link under `/usr/local/share/ca-certificates/` and run `update-ca-certificates`

Clients that use the OS trust store, such as `curl`, can then verify certificates signed by the Pigsty CA.
The CA certificate is also published as `ca.crt` at the site root of the [**Nginx portal**](/docs/concept/arch/infra#nginx) for browsers and external clients.

PostgreSQL libpq clients require special attention: by default they look for `~/.postgresql/root.crt` and use `sslmode=prefer`, so they do not directly use the operating system trust store to verify the server identity.


---------------

## Server Identity Verification

Security-sensitive PostgreSQL clients should use `sslmode=verify-full` and specify the Pigsty CA:

```bash
psql "host=pg-meta dbname=postgres user=dbuser_dba sslmode=verify-full sslrootcert=/etc/pki/ca.crt"
```

`verify-full` validates both the certificate chain and the connection host name. The DNS name or IP address used by the client must therefore appear in the server certificate SAN. External clients must install `ca.crt` or specify it with `sslrootcert`.


---------------

<span id="certificate-coverage"></span>

## Certificate Matrix

The local CA issues certificates for the following components and places them under one trust chain:

| Component | Certificate Identity (CN) | Deployment Path | Encryption State |
|:---|:---|:---|:---|
| [**PostgreSQL**](/docs/concept/arch/pgsql#postgresql) | `<cluster>-<sequence>` | `/pg/cert/server.{crt,key}` | Server-side SSL enabled by default; HBA determines whether it is mandatory |
| [**PgBouncer**](/docs/concept/arch/pgsql#pgbouncer) | Reuses the PostgreSQL certificate | `/pg/cert/` | TLS disabled by default ([`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode)) |
| [**Patroni**](/docs/concept/arch/pgsql#patroni) | Reuses the PostgreSQL certificate | `/pg/cert/` | API HTTPS disabled by default ([`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled)) |
| [**etcd**](/docs/concept/arch/pgsql#etcd) | `<instance-name>` | `/etc/etcd/server.{crt,key}` | TLS for client and peer traffic |
| [**Silo**](/docs/concept/model/minio) | `<node-name>` | `~minio/.minio/certs/` | Silo HTTPS is enabled by default ([`minio_https`](/docs/minio/param#minio_https)) |
| [**Kafka**](/docs/kafka/) | `<cluster>-<sequence>` | `/etc/kafka/pki/kafka.pem` | SASL_SSL/SSL with `kafka_security: scram`; defaults to `plaintext` |
| [**MySQL**](/docs/mysql/) | `<instance-name>` | `/etc/mysql/pki/server.{crt,key}` | Secure transport enforced; clients and group replication verify the certificate chain |
| [**Nginx**](/docs/concept/arch/infra#nginx) | `pigsty`, with portal domains in SAN | `/etc/nginx/conf.d/cert/` | HTTPS enabled by default ([`nginx_sslmode`](/docs/infra/param#nginx_sslmode)) |
| [**INFRA node**](/docs/concept/arch/node#infra-node) | `<node-name>` | `/etc/pki/infra.{crt,key}` | Available to infrastructure components |
{.full-width}

The encryption-state column reflects deliberate defaults:

- **Enabled at deployment**: PostgreSQL accepts SSL connections; etcd uses TLS for client and peer traffic.
- **Encrypted by default**: Object-storage backup traffic through the MINIO module and Nginx web traffic use HTTPS.
- **Disabled by default, available on demand**: TLS for the Patroni REST API and PgBouncer is disabled by default, but certificates are already present. Enable it through the corresponding parameters; both are enabled in the [**`ha/safe` template**](/docs/conf/safe).

Keep three states distinct: **server-side SSL support does not force clients to use SSL, and neither state proves that the client verifies the server identity**.
[**HBA rules**](/docs/concept/sec/auth) enforce encryption with `auth: ssl` or `cert`. Client `sslmode` and trust settings control server verification. The default rules require TLS only for administrator connections from arbitrary sources. The safe template changes the main TCP rules to `ssl` or `cert` while retaining local `ident` and selected localhost password rules.


---------------

<span id="client-certificate-authentication"></span>

## Client Certificates

The built-in `cert.yml` playbook issues client certificates. The certificate CN represents the database user name for HBA `cert` authentication:

```bash
./cert.yml -e cn=dbuser_dba                  # Issue a 20-year client certificate by default
./cert.yml -e cn=dbuser_dba -e expire=365d  # Or specify a shorter lifetime
```

Results are stored in `files/pki/misc/<cn>.key` and `files/pki/misc/<cn>.crt`. Deliver private keys through a controlled channel and make them readable only by the corresponding user. The client certificate lets the server authenticate the client; the client must still use `verify-full` to authenticate the database server.


---------------

<span id="using-an-external-ca"></span>

## Using an Enterprise CA

If the organization already operates a PKI, Pigsty can issue certificates from that CA, or from an intermediate signed by the enterprise root. Place the certificate and private key at the expected paths; playbooks do not regenerate a CA when one already exists:

```bash
files/pki/ca/ca.key    # CA or intermediate CA private key
files/pki/ca/ca.crt    # Corresponding CA certificate
```

Also set `ca_create: false`. Deployment will then fail explicitly if the private key is missing instead of creating an unexpected trust root. This setting does not stop the role from reissuing the CA certificate when the private key exists but the certificate is missing, so verify and restore both files together.


---------------

## Key Protection and Rotation

- The CA private key exists only on the admin node. Together with `pigsty.yml`, it is one of the highest-trust assets in the deployment; see [**Trust Boundaries**](/docs/concept/sec/level#trust-boundaries). Keep an offline backup.
- If the CA private key is compromised, establish a new trust root and reissue every component and client certificate. Plan an overlap period in which both old and new CAs are trusted to avoid interrupting all connections at once.
- Component certificate sources are stored under `files/pki/<component>/` on the admin node; node certificates are deployment copies. Deleting only a node copy restores the same certificate rather than issuing a new one. To rotate, update or remove the corresponding source on the admin node, rerun the relevant playbook, then reload or roll the component as required.


---------------

## Next

- 🔑 [**Authentication**](/docs/concept/sec/auth): use HBA to decide who must use SSL or client certificates
- 🔒 [**Data Security**](/docs/concept/sec/data): encryption for stored data and backups
- ✅ [**Compliance**](/docs/concept/sec/compliance): evidence for certificate management
