# Usage

> Use VAULT through bao and HTTP APIs for KV secrets, Transit encryption, and AppRole credentials.

---

LLMS index: [llms.txt](/llms.txt)

---

After [configuring](/docs/vault/config) and [deploying](/docs/vault/playbook) VAULT, use this page to get started.
The following engines and authentication methods are enabled by default:

| Path | Type | Purpose |
|:---|:---|:---|
| `secret/` | KV v2 secrets engine | Versioned static secrets such as passwords, API keys, and certificates |
| `transit/` | Transit secrets engine | Encryption as a service; applications send data for encryption/decryption while keys remain in VAULT |
| `auth/approle/` | AppRole authentication | Machine credentials for applications and automation |
| `auth/token/` | Token authentication | Built-in; maximum lease adjusted to ten years |
{.full-width}

OpenBao's API is largely compatible with HashiCorp Vault, so common Vault client libraries and tools generally work directly. See the [OpenBao documentation](https://openbao.org/docs/) for full usage.


--------

## Endpoint

All clients should use the service domain over HTTPS and validate the server certificate with Pigsty CA:

| Item | Value |
|:---|:---|
| Address | `https://vault.pigsty:8200` |
| CA certificate | `/etc/pki/ca.crt` on managed nodes; `files/pki/ca/ca.crt` on the admin node |
| TLS version | TLS 1.3 minimum |
{.full-width}

In a three-member cluster, `vault.pigsty` points to the VIP and HAProxy forwards to the active member. Direct standby access also works; the standby forwards requests to the active member.

```bash
export BAO_ADDR=https://vault.pigsty:8200
export BAO_CACERT=/etc/pki/ca.crt
```

`bao` is installed with `openbao` on VAULT members. Other nodes can use `curl` with the [HTTP API](#http-api), or install `openbao` to obtain `bao`.


--------

## Administrator Login

Run these examples as root on a VAULT member with the root token. See [Administrator Credentials](/docs/vault/admin#administrator-credentials):

```bash
sudo -i                                     # BAO_ADDR and BAO_CACERT are set by /etc/profile.d/bao.sh
read -rs BAO_TOKEN && export BAO_TOKEN      # Enter the root token; input is hidden
bao secrets list                            # List enabled secrets engines
bao auth list                               # List enabled authentication methods
```

Use the root token only for administration. [Issue credentials with minimal privileges](#issue-application-credentials) to applications.


--------

## KV Secrets

`secret/` uses KV v2, which saves a new version on every write:

```bash
bao kv put secret/app/db username=dbuser_app password='S3cret!'   # Write a secret
bao kv get secret/app/db                                          # Read the latest version
bao kv get -field=password secret/app/db                          # Read one field
bao kv get -version=1 secret/app/db                               # Read a historical version
bao kv list secret/app                                            # List secrets under a path
bao kv metadata get secret/app/db                                 # Inspect version metadata
bao kv delete secret/app/db                                       # Soft-delete the latest version; recover with undelete
```

KV v2 policies and HTTP APIs use `secret/data/<path>` for secret reads/writes and `secret/metadata/<path>` for metadata.


--------

## Transit Encryption

`transit/` provides encryption as a service. Applications send data for encryption or decryption without handling keys, suitable for encrypting sensitive database fields in the application layer.

```bash
bao write -f transit/keys/app                                    # Create the app encryption key
bao write transit/encrypt/app plaintext=$(echo -n 'hello' | base64)
# ciphertext    vault:v1:8SDd3WHDOjf7mq69CyCqYjBXAiQQAVZRkFM13ok481zoCmHnSeDX9vyf7w==
bao write -field=plaintext transit/decrypt/app \
  ciphertext='vault:v1:8SDd3WHDOjf7mq69CyCqYjBXAiQQAVZRkFM13ok481zoCmHnSeDX9vyf7w==' | base64 -d
bao write -f transit/keys/app/rotate                             # Rotate the key; old ciphertext remains readable
```

Base64-encode plaintext first. After rotation, new data uses the new key version, while older ciphertext remains decryptable. Use `transit/rewrap/app` to rewrap old ciphertext with the new version.


--------

## Issue Application Credentials

Create a policy with only the permissions each application needs, then issue machine credentials through AppRole:

```bash
# 1. Create a policy: read/write secret/app/ and use the app Transit key only
bao policy write app - <<'EOF'
path "secret/data/app/*"     { capabilities = ["create", "read", "update", "delete", "list"] }
path "secret/metadata/app/*" { capabilities = ["read", "list"] }
path "transit/encrypt/app"   { capabilities = ["update"] }
path "transit/decrypt/app"   { capabilities = ["update"] }
EOF

# 2. Create an AppRole whose login tokens use this policy
bao write auth/approle/role/app token_policies=app token_ttl=1h token_max_ttl=24h

# 3. Read role_id and secret_id and distribute them to the application
bao read -field=role_id auth/approle/role/app/role-id
bao write -f -field=secret_id auth/approle/role/app/secret-id
```

`role_id` acts as a username and `secret_id` as a password. Applications exchange them for a short-lived token, then use that token to access secrets:

```bash
bao write auth/approle/login role_id=<role_id> secret_id=<secret_id>
```

Deliver `secret_id` through a secure channel. Restrict credentials further with `secret_id_ttl`, `secret_id_num_uses`, and `token_bound_cidrs` as needed.

Through the VIP, HAProxy forwards in TCP mode, so OpenBao sees the VAULT member's address rather than the original client. Audit logs record that member address, and `token_bound_cidrs` set to client networks will reject these requests.


--------

## HTTP API

Clients without `bao` can call the HTTP API directly. For example, log in with AppRole and read a secret:

```bash
CA=/etc/pki/ca.crt
URL=https://vault.pigsty:8200

# Log in with AppRole to obtain a client token
TOKEN=$(curl -s --cacert $CA -X POST $URL/v1/auth/approle/login \
  -d '{"role_id":"<role_id>","secret_id":"<secret_id>"}' | jq -r .auth.client_token)

# Read a KV v2 secret; note data/ in the path
curl -s --cacert $CA -H "X-Vault-Token: $TOKEN" $URL/v1/secret/data/app/db | jq .data.data
```

Unauthenticated endpoints support health checks and monitoring:

```bash
curl -s --cacert /etc/pki/ca.crt https://vault.pigsty:8200/v1/sys/health     # Health status
curl -s --cacert /etc/pki/ca.crt https://vault.pigsty:8200/v1/sys/leader     # Active member
```


--------

## Reserved Paths

These paths and names are used by Pigsty or reserved for future features; do not use them for applications:

| Path / Name | Purpose |
|:---|:---|
| `tde/<pg_cluster>` | Reserved for PGSQL `pg_tde` keys, KV v2, one per PG cluster |
| `kes/<minio_cluster>` | Reserved for MINIO KES keys, KV v2, one per object-storage cluster |
| `tde-*`, `kes-*` policies | Reserved for those consumers |
| `vault-backup` policy | Backup token; read-only access to `sys/storage/raft/snapshot` |
{.full-width}

Before whole-cluster removal, [`vault-rm.yml`](/docs/vault/playbook#vault-rmyml) lists existing `tde/*` and `kes/*` mounts to identify consumers that will permanently lose keys.
