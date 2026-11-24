# Encrypted Communication

> Pigsty provides a self-signed CA that issues certificates and distributes trust for managed components, creating a unified TLS foundation.

---

LLMS index: [llms.txt](/llms.txt)

---

TLS can provide **transport encryption**, **server authentication**, and **client authentication**. Configure each protection separately. Enabling server TLS does not make clients verify the server or make the server require client certificates.

Most TLS operational work involves certificate issuance, distribution, trust, and rotation. Without central management, services often skip verification or keep plaintext connections.

Pigsty manages PKI declaratively. Deployment creates a local self-signed CA, issues component certificates, and distributes trust. TLS is then ready for use.


---------------

<span id="role-of-the-local-ca"></span>

## Local CA

During initial deployment, Pigsty checks for a CA on the [**administration node**](/docs/concept/arch/node#admin-node). It creates one when required:

| File | Description | Permissions |
|:---|:---|:---|
| `files/pki/ca/ca.key` | CA private key and root of trust for the deployment; protect it carefully | `0600`, with directory mode `0700` |
| `files/pki/ca/ca.crt` | CA root certificate; safe to distribute | `0644` |
{.full-width .wide .expand}

- [`ca_create`](/docs/infra/param#ca_create) controls CA behavior. Pigsty reuses an existing key and certificate unchanged. If only the key exists, it issues a replacement certificate with that key. `ca_create: false` prevents creation of a missing private key. If `ca.key` is absent, deployment stops instead of creating an unexpected trust root. Always back up and restore `ca.key` and `ca.crt` together.
- [`ca_cn`](/docs/infra/param#ca_cn) sets the certificate CN, default `pigsty-ca`. The key is RSA 4096.
- The root CA is valid for 100 years. Component certificates default to 20 years ([`cert_validity`](/docs/infra/param#cert_validity): `7300d`). The browser-facing Nginx certificate is an exception, with a current default of 397 days.

Long default lifetimes reduce initial maintenance for private infrastructure. Production still needs certificate rotation. Organizations with a certificate policy should shorten lifetimes and monitor expiration.


---------------

## Trust Distribution

Every [**node**](/docs/concept/arch/node) must trust the CA. When managing a node, Pigsty copies the CA certificate to `/etc/pki/ca.crt` and links it into the OS trust store:

- EL family (RHEL, Rocky, Alma): link under `/etc/pki/ca-trust/source/anchors/` and run `update-ca-trust`
- Debian and Ubuntu: link under `/usr/local/share/ca-certificates/` and run `update-ca-certificates`

Clients that use the OS trust store, such as `curl`, can then verify Pigsty CA certificates. The [**Nginx portal**](/docs/concept/arch/infra#nginx) also publishes `ca.crt` at its site root for browsers and external clients.

By default, PostgreSQL libpq clients look for `~/.postgresql/root.crt` and use `sslmode=prefer`. They do not directly use the OS trust store to verify server identity.


---------------

## Server Identity Verification

Security-sensitive PostgreSQL clients should use `sslmode=verify-full` and specify the Pigsty CA:

```bash
psql "host=pg-meta dbname=postgres user=dbuser_dba sslmode=verify-full sslrootcert=/etc/pki/ca.crt"
```

`verify-full` checks the certificate chain and connection hostname. The server certificate SAN must contain the client's DNS name or IP address. External clients must install `ca.crt` or specify it with `sslrootcert`.


---------------

<span id="certificate-coverage"></span>

## Certificate Matrix

The local CA issues certificates for these components under one trust chain:

| Component | Certificate Identity (CN) | Deployment Path | Encryption |
|:------------------------------------------------------|:--------------------|:------------------------------------|:-------------------------------------------------------------------------------|
| [**PostgreSQL**](/docs/concept/arch/pgsql#postgresql) | `<cluster>-<seq>` | `/pg/cert/server.{crt,key}` | Server SSL enabled by default; HBA determines whether it is required |
| [**PgBouncer**](/docs/concept/arch/pgsql#pgbouncer) | Reuses PostgreSQL certificate | `/pg/cert/` | TLS disabled by default ([`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode)) |
| [**Patroni**](/docs/concept/arch/pgsql#patroni) | Reuses PostgreSQL certificate | `/pg/cert/` | API HTTPS disabled by default ([`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled)) |
| [**Etcd**](/docs/concept/arch/pgsql#etcd) | `<instance>` | `/etc/etcd/server.{crt,key}` | TLS for client and peer traffic |
| [**VAULT (OpenBao)**](/docs/vault/) | `<instance>` | `/etc/openbao/tls/server.{crt,key}` | TLS 1.3 required; HTTPS client API and mTLS Raft peer traffic |
| [**Silo**](/docs/concept/model/minio) | `<node>` | `~minio/.minio/certs/` | HTTPS enabled by default ([`minio_https`](/docs/minio/param#minio_https)) |
| [**Kafka**](/docs/kafka/) | `<cluster>-<seq>` | `/etc/kafka/pki/kafka.pem` | SASL_SSL/SSL with `kafka_security: scram`; default `plaintext` |
| [**MySQL**](/docs/mysql/) | `<instance>` | `/etc/mysql/pki/server.{crt,key}` | Secure transport required; client and group replication verify certificate chains |
| [**Nginx**](/docs/concept/arch/infra#nginx) | `pigsty`, with portal domains and node IP/VIP SANs | `/etc/nginx/conf.d/cert/` | HTTPS enabled by default ([`nginx_sslmode`](/docs/infra/param#nginx_sslmode)) |
| [**INFRA Nodes**](/docs/concept/arch/node#infra-node) | `<node-IP>` | `/etc/pki/infra.{crt,key}` | Used by infrastructure components |
{.full-width .wide .expand}

Key server certificate **SANs (Subject Alternative Names)** automatically cover common endpoints for `verify-full` hostname verification:

- **PostgreSQL**: `localhost`, `<pg_cluster>`, `<pg_cluster>-<pg_seq>`, `<pg_cluster><pg_dns_suffix>` when the suffix is nonempty, `127.0.0.1`, instance IP, and enabled cluster [`pg_vip_address`](/docs/pgsql/param#pg_vip_address) / node [`vip_address`](/docs/node/param#vip_address).
- **VAULT (OpenBao)**: certificates under `/etc/openbao/tls/` (`ca.crt`, `server.crt`, `server.key`) include `localhost`, `<vault_instance>`, [`vault_domain`](/docs/vault/param#vault_domain), `127.0.0.1`, instance IP, and optional node VIP.
- **Nginx self-signed**: `i.pigsty`, all domains declared in `infra_portal`, `localhost`, all `infra` node IPs, and enabled node Layer 2 VIPs.

These defaults distinguish available TLS from enabled TLS:

- **Enabled at deployment**: PostgreSQL accepts SSL connections, etcd uses TLS for client/peer traffic, and VAULT (OpenBao) requires TLS 1.3 for its API and Raft peers.
- **Encrypted by default:** Object storage backup traffic through MINIO and Nginx web traffic use HTTPS.
- **Available but disabled:** Patroni API and PgBouncer TLS is disabled, with certificates already installed. Enable the corresponding parameters. [**`ha/safe`**](/docs/conf/safe) enables both.

**SSL support, mandatory encryption, and client verification of server identity are separate states.** [**HBA**](/docs/concept/sec/auth) enforces encryption with `auth: ssl` or `cert`. Client `sslmode` and trust settings control server verification. Default rules require TLS only for administrator connections from arbitrary sources. The safe template uses `ssl` or `cert` for main TCP rules. It retains local `ident` and selected localhost password rules.


---------------

<span id="client-certificate-authentication"></span>

## Client Certificates

`cert.yml` issues client certificates. For HBA `cert` authentication, the certificate CN represents the database user name:

```bash
./cert.yml -e cn=dbuser_dba                  # Issue a 20-year client certificate by default
./cert.yml -e cn=dbuser_dba -e expire=365d  # Or specify a shorter lifetime
```

The files are `files/pki/misc/<cn>.key` and `files/pki/misc/<cn>.crt`. Deliver private keys through a controlled channel and allow only the corresponding user to read them. Client certificates let the server verify clients. The client must still use `verify-full` to verify the database server.


---------------

<span id="using-an-external-ca"></span>

## Using an Enterprise CA

Pigsty can issue certificates from an existing enterprise CA or an intermediate signed by its root. Put the certificate and private key at these paths. Playbooks reuse an existing CA:

```bash
files/pki/ca/ca.key    # CA or intermediate CA private key
files/pki/ca/ca.crt    # Corresponding CA certificate
```

Also set `ca_create: false`. Deployment then stops if the private key is missing, rather than creating a new trust root. However, an existing key with a missing certificate still causes certificate reissuance. Verify and restore both files together.


---------------

## Key Protection and Rotation

- The CA private key resides only on the admin node. Together with `pigsty.yml`, it has the highest trust level in the deployment; see [**Trust Boundaries**](/docs/concept/sec/level#trust-boundaries). Keep an offline backup. With VAULT enabled, control-node `files/pki/vault/` (`0700`) also holds `unseal.key`, root initialization credentials in `init.json`, snapshots under `backup/`, and server private keys. Protect and back up it together with `files/pki/ca/` at the same trust level.
- If the CA key is compromised, establish a new trust root and reissue every component and client certificate. Plan a period of trust in both CAs to avoid interrupting all connections together.
- Certificate sources reside under `files/pki/<component>/` on the admin node; copies on service nodes are deployment artifacts. Deleting only a node copy recopies the original certificate rather than reissuing it. For rotation or SAN changes, update/remove the admin-node source, rerun the appropriate playbook, and reload or roll services as required.

---------------

## Next

- 🔑 [**Authentication**](/docs/concept/sec/auth): use HBA to decide who must use SSL or client certificates
- 🔒 [**Data Security**](/docs/concept/sec/data): encryption for stored data and backups
- ✅ [**Compliance**](/docs/concept/sec/compliance): evidence for certificate management
