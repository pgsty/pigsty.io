---
title: CA and Certificates
weight: 3107
description: Manage Pigsty's self-signed CA, service certificates, and public Certbot certificates.
icon: fa-solid fa-shield-halved
categories: [Task]
---

Pigsty maintains a self-signed Certificate Authority (CA) on the admin node by default. It signs certificates for PostgreSQL, Patroni, etcd, Silo, Nginx, and other internal services. Public Nginx entries can use Certbot/Let's Encrypt certificates configured through `infra_portal`.

{{% alert color="danger" title="Protect the CA private key" %}}
`files/pki/ca/ca.key` is the trust-root private key for the entire deployment. Never print, commit, upload, or transmit it over an unprotected channel. Back it up together with `ca.crt`, encrypted, with tightly restricted read access.
{{% /alert %}}

--------

## Self-Signed CA

The `ca` stage of `infra.yml` creates or reuses the CA **locally on the admin node running Ansible**, not on a remote Infra node. The default layout is:

```text
files/pki/
├── ca/                       # CA key, certificate, and OpenSSL CA state
│   ├── ca.key
│   └── ca.crt
├── csr/                      # certificate signing requests
├── misc/                     # generic certificates issued by cert.yml
├── etcd/
├── infra/
├── kafka/
├── minio/                    # MINIO module (Silo) certificates
├── mongo/
├── mysql/
├── nginx/
└── pgsql/
```

The core defaults match the v4.5.0 roles:

| Parameter               | Default     | Meaning                                           |
|:------------------------|:------------|:--------------------------------------------------|
| `ca_create`             | `true`      | Allow creation when `ca.key` is missing           |
| `ca_cn`                 | `pigsty-ca` | Common Name of the CA certificate                 |
| `cert_validity`         | `7300d`     | Default internal service/client validity (20 years) |
| `nginx_cert_validity`   | `397d`      | Nginx self-signed HTTPS certificate validity      |
{.full-width}

The role hard-codes the CA certificate lifetime to `36500d` (about 100 years). These long-lived certificates are for a controlled internal trust domain; they are not publicly browser-trusted. Clients must explicitly trust `ca.crt`, while public endpoints should use a publicly trusted CA.

Initialize the local CA stage:

```bash
./infra.yml -t ca
```

Running `./infra.yml -t ca` may create a missing key or certificate and therefore changes PKI state. Confirm the admin node, configuration, and existing CA backup first.

--------

## Use an External CA

To reuse an enterprise CA:

1. Set `ca_create: false` in `pigsty.yml`.
2. Place a matching `files/pki/ca/ca.key` and `files/pki/ca/ca.crt` pair on the admin node.
3. Set permissions and verify that the public-key digests match.

```bash
chmod 700 files/pki/ca
chmod 600 files/pki/ca/ca.key
chmod 644 files/pki/ca/ca.crt

# The public-key digests must match; neither command prints private-key material
openssl pkey -in files/pki/ca/ca.key -pubout -outform PEM | openssl sha256
openssl x509 -in files/pki/ca/ca.crt -pubkey -noout | openssl sha256
```

`ca_create: false` prevents generation of a new private key only when `ca.key` is missing. If the key exists but `ca.crt` does not, the role still creates a new self-signed CA certificate from that key. Always restore the pair together instead of relying on certificate regeneration.

Before running the CA stage, verify the files that will be used, the existing CA backup, and the admin node.

--------

## Back Up and Restore the CA

Retain at least:

- `files/pki/ca/ca.key` and `ca.crt`
- CA state such as `ca.srl`, `index.txt`, and CRL files if issuance/revocation management uses them
- backup time, the CA certificate SHA-256 fingerprint, and restoration instructions

```bash
# Inspect the public CA certificate only
openssl x509 -in files/pki/ca/ca.crt -noout -subject -issuer -dates -fingerprint -sha256
```

Encrypt the backup and keep it in controlled offline media or a secrets-management system; do not leave an unencrypted tar archive. Restore into an isolated temporary directory first, then verify file count, type, permissions, public-key match, and certificate fingerprint before replacement.

Losing `ca.key` does **not** immediately make existing certificates unverifiable: they remain verifiable while clients trust `ca.crt` and the certificates remain valid and unrevoked. You can no longer issue, renew, or revoke with the original CA, so recovery usually requires a new CA, reissuing every certificate, and rolling out a new trust chain.

--------

## Issue Certificates with `cert.yml`

[`cert.yml`](https://github.com/pgsty/pigsty/blob/main/cert.yml) runs locally on the admin node and issues generic certificates with the Pigsty CA. Pass `cn` explicitly instead of relying on the generic script default:

```bash
./cert.yml -e cn=dbuser_dba
```

Default outputs:

```text
files/pki/misc/<cn>.key   # 0600
files/pki/misc/<cn>.crt   # 0600
files/pki/csr/<cn>.csr
```

| Parameter | Default                           | Meaning                   |
|:----------|:----------------------------------|:--------------------------|
| `cn`      | `pigsty`                          | Common Name; set explicitly in real use |
| `san`     | `[DNS:localhost, IP:127.0.0.1]`   | Subject Alternative Names |
| `org`     | `pigsty`                          | Organization              |
| `unit`    | `pigsty`                          | Organizational Unit       |
| `expire`  | `7300d`                           | Validity                   |
| `key`     | `files/pki/misc/<cn>.key`         | Private-key output path   |
| `crt`     | `files/pki/misc/<cn>.crt`         | Certificate output path   |
{.full-width}

Advanced examples:

```bash
# Pass DNS/IP SANs as a JSON list
./cert.yml -e cn=myservice \
  -e '{"san":["DNS:myservice.local","DNS:myservice","IP:10.10.10.50"]}'

# Issue a one-year certificate
./cert.yml -e cn=myservice \
  -e '{"san":["DNS:myservice.local","DNS:myservice","IP:10.10.10.50"]}' \
  -e expire=365d

# When customizing key/crt, provide both paths together
./cert.yml -e cn=custom \
  -e key=/secure/path/custom.key \
  -e crt=/secure/path/custom.crt
```

Verify the certificate without displaying or copying private-key content:

```bash
openssl x509 -in files/pki/misc/myservice.crt -noout -subject -issuer -dates -ext subjectAltName
openssl verify -CAfile files/pki/ca/ca.crt files/pki/misc/myservice.crt
```

For PostgreSQL client certificates, `cn` must match the database role expected by HBA/cert authentication. Install the certificate, key, and root certificate on the client with the private key at mode `0600`. With `sslmode=verify-full`, the connection hostname must appear in the server certificate SAN.

--------

## Trust the CA Certificate

Distribute only public `ca.crt`, never `ca.key`. Verify its SHA-256 fingerprint through a separate trusted channel before installation.

### Debian / Ubuntu

```bash
sudo cp ca.crt /usr/local/share/ca-certificates/pigsty-ca.crt
sudo update-ca-certificates
```

### RHEL / Rocky / AlmaLinux

```bash
sudo cp ca.crt /etc/pki/ca-trust/source/anchors/pigsty-ca.crt
sudo update-ca-trust
```

### macOS

```bash
sudo security add-trusted-cert -d -r trustRoot \
  -k /Library/Keychains/System.keychain ca.crt
```

### Windows (Administrator PowerShell)

```powershell
Import-Certificate -FilePath .\ca.crt -CertStoreLocation Cert:\LocalMachine\Root
```

Infra Nginx normally exposes the public CA certificate at `http://<infra_ip>/ca.crt`. Verify the fingerprint after download; HTTP transport alone does not prove certificate authenticity.

--------

## Nginx and Let's Encrypt

Each `infra_portal` entry can name a `certbot` certificate. Pigsty's `/etc/nginx/sign-cert` uses Certbot webroot mode, groups `domain` and `domains` entries that share a certificate name, and then `/etc/nginx/link-cert` links the result into Nginx.

Prerequisites:

- Public DNS A/AAAA records resolve to the intended Infra node.
- Port 80 is publicly reachable for HTTP-01, and Nginx serves the ACME webroot.
- `certbot_email` is valid and the Certbot package is installed.
- Portal domains, additional domains, and certificate names are exact.

```yaml
certbot_email: dba@example.com
infra_portal:
  home:
    domain: example.com
    domains: [www.example.com]
    certbot: example.com
  grafana:
    domain: grafana.example.com
    endpoint: "${admin_ip}:3000"
    websocket: true
    certbot: grafana.example.com
```

Update the Nginx configuration and issue certificates:

```bash
dig +short example.com
./infra.yml -l infra -t nginx_config,nginx_launch

./infra.yml -l infra -t nginx_certbot,nginx_reload -e certbot_sign=true
```

{{% alert color="warning" title="Verify issuance separately" %}}
In v4.5.0, the `nginx_certbot` task has `ignore_errors: true`. A playbook that continues or reports overall success does not prove certificate issuance. Inspect Certbot state, certificate files, Nginx configuration, and a real TLS handshake.
{{% /alert %}}

```bash
certbot certificates
test -r /etc/letsencrypt/live/example.com/fullchain.pem
nginx -t
openssl s_client -connect example.com:443 -servername example.com </dev/null
```

Renewal scheduling depends on the Certbot package for the operating system. Do not add a duplicate cron job before checking existing timers and cron configuration:

```bash
systemctl list-timers --all | grep -i certbot
certbot renew --dry-run
```

After Certbot replaces certificates on disk, Nginx still needs a reload to use them. Configure and verify a renewal deploy hook such as `systemctl reload nginx`, or an equivalent managed process. Treat automatic renewal as proven only after a real or staging renewal exercise.

--------

## Troubleshooting and Acceptance

| Symptom                              | Check                                                        |
|:-------------------------------------|:-------------------------------------------------------------|
| Browser rejects an internal cert     | Correct `ca.crt`, SAN hostname, and system time              |
| `verify-full` fails                  | Connection hostname, SAN, chain, and root certificate        |
| Certbot HTTP-01 fails                | DNS, port 80, ACME webroot, proxy/CDN, and rate limits       |
| Playbook succeeds but old cert remains | Ignored `nginx_certbot` errors, `link-cert`, and Nginx reload |
| Permission denied                    | Private key `0600` (deployed Nginx key is `0640 root:nginx`) |
| Trust breaks after CA rotation       | Roll out client trust, then service certs, then reload services |
{.full-width}

Final acceptance should separately prove correct certificate content and SANs, successful chain validation, that the service loaded the new certificate, that target clients trust it, and that renewal exists and passes a dry run. A generated file or successful playbook alone proves none of those later layers.
