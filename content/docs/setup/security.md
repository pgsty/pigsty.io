---
title: Security Recommendations
weight: 290
description: Basic security checks for quick-start and single-node deployments.
icon: fas fa-shield-halved
module: [PIGSTY]
categories: [Tutorial]
---

The default configuration targets local demonstrations and development or testing on a trusted intranet. If other hosts can reach the deployment, complete at least three checks: credentials, network boundaries, and critical files.

Production environments should also review the [**Security Model**](/docs/concept/sec/level), [**Compliance**](/docs/concept/sec/compliance), and [**Security Considerations**](/docs/deploy/security/).


----------------

## Passwords

Pigsty default credentials are public in the source code and documentation and must not be used directly in production.

The configuration wizard can randomize built-in parameters and example credentials that it recognizes:

```bash
./configure -g
```

`configure -g` does not replace:

- the pgBackRest `cipher_pass`;
- MinIO users and selected example passwords in `ha/safe`;
- database, object-storage, or application credentials added by the user.

After generation, inspect `pigsty.yml` and replace every uncovered credential. The wizard prints generated passwords to the terminal, so protect terminal history and automation logs as sensitive data.

See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for the complete scope.


----------------

## Firewall

[**`node_firewall_mode`**](/docs/node/param#node_firewall_mode) defaults to `zone`. It trusts the intranet defined by [**`node_firewall_intranet`**](/docs/node/param#node_firewall_intranet) and restricts ports exposed to public networks.

| Port | Service | Public by Default |
|:---:|:---|:---|
| `22` | SSH | Yes |
| `80` | Nginx HTTP | Yes |
| `443` | Nginx HTTPS | Yes |
| `5432` | PostgreSQL | Not in the base default; exposed additionally by the demo `pigsty.yml` |
{.full-width}

Production deployments should normally remove `5432` from the demo configuration. If applications need direct database access, restrict source addresses in the cloud security group, host firewall, and HBA.

Also verify that the intranet definition matches the actual trust boundary. The default RFC 1918 ranges may be too broad; office networks, container networks, and other tenant networks should not become trusted automatically.


----------------

## Files

The following files and directories contain highly sensitive information:

- `pigsty.yml`: system and application credentials, node definitions, and service configuration;
- `files/pki/ca/ca.key`: local CA private key;
- the administration user's SSH private key, used to access managed nodes;
- `files/pki/misc/*.key`: client-certificate private keys;
- `/pg/tmp/pg-user-*.sql`: SQL containing plaintext passwords generated during user creation.

Restrict access to the admin node and configuration repository. Do not commit complete inventories or private keys to public repositories. Maintain controlled backups of the CA private key and required configuration.


----------------

## Related Documentation

- [**Security and Compliance**](/docs/concept/sec/): security chapter entry point
- [**Authentication**](/docs/concept/sec/auth): HBA, passwords, and client certificates
- [**Encrypted Communication**](/docs/concept/sec/ca): CA, TLS, and server verification
- [**Production Security Considerations**](/docs/deploy/security/): complete launch checklist
