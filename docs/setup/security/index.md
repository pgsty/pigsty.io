# Security Recommendations

> Protect credentials, restrict network access, and control access to sensitive files.

---

LLMS index: [llms.txt](/llms.txt)

---

The default configuration supports local demonstrations and development on a trusted intranet.
If other hosts can reach the deployment, examine the credentials, network access, and sensitive files.

For production, also review the [Security Model](/docs/concept/sec/level/), [Compliance](/docs/concept/sec/compliance/), and [Security Considerations](/docs/deploy/security/).

## Passwords

Pigsty publishes its default credentials in the source code and documentation.
Do not use these credentials in production.

Run the configuration wizard with `-g` to generate random passwords:

```bash
./configure -g
```

The wizard replaces the built-in parameters and example credentials that it recognizes.
It does not replace these credentials:

- The pgBackRest `cipher_pass`.
- Silo user passwords and selected example passwords in `ha/safe`.
- Database, object-storage, or application credentials that you added yourself.

After generation, examine `pigsty.yml`.
Replace every credential that the wizard did not change.

The wizard prints generated passwords to the terminal.
Protect terminal records and automation logs that contain these passwords.
See the [Default Credentials Checklist](/docs/concept/sec/compliance#default-credentials-checklist) for the complete scope.

## Firewall

The default value of [`node_firewall_mode`](/docs/node/param#node_firewall_mode) is `zone`.
This mode trusts the intranet defined by [`node_firewall_intranet`](/docs/node/param#node_firewall_intranet).
It restricts access to ports from public networks.

| Port | Service | Public by Default |
|:---:|:---|:---|
| `22` | SSH | Yes |
| `80` | Nginx HTTP | Yes |
| `443` | Nginx HTTPS | Yes |
| `5432` | PostgreSQL | Not in the base default; exposed additionally by the demo `pigsty.yml` |
{.full-width}

For production, normally remove port `5432` from the demonstration configuration.
If applications require direct database access, permit only their source addresses.
Apply these restrictions in the cloud security group, host firewall, and PostgreSQL HBA rules.

Make sure that the intranet definition matches your trusted network.
The default RFC 1918 address ranges can include networks that you do not trust.
Do not automatically trust office networks, container networks, or other tenant networks.

## Files

These files and directories contain sensitive information:

| File or directory | Contents |
|:------------------|:---------|
| `pigsty.yml` | System and application credentials, node definitions, and service configuration |
| `files/pki/ca/ca.key` | Local CA private key |
| Administration account SSH private key | Access credentials for managed nodes |
| `files/pki/misc/*.key` | Client-certificate private keys |
| `/pg/tmp/pg-user-*.sql` | SQL files with plaintext passwords from user creation |

Restrict access to the administration node and configuration repository.
Do not commit complete inventories or private keys to public repositories.
Keep controlled backups of the CA private key and required configuration.

## Related Documentation

- [Security and Compliance](/docs/concept/sec/) introduces the security model.
- [Authentication](/docs/concept/sec/auth/) explains HBA rules, passwords, and client certificates.
- [Encrypted Communication](/docs/concept/sec/ca/) explains the CA, TLS, and server verification.
- [Production Security Considerations](/docs/deploy/security/) supplies the complete deployment checklist.
