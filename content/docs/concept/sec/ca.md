---
title: Local CA
weight: 231
description: Pigsty includes a self-signed CA PKI infrastructure for issuing SSL certificates and encrypting network traffic.
icon: fa-solid fa-bank
module: [INFRA]
categories: [Concept]
---

Pigsty enables security best practices by default: using SSL to encrypt network traffic and HTTPS for web interfaces.

To achieve this, Pigsty includes a local self-signed CA for issuing SSL certificates and encrypting network communications.

By default, SSL and HTTPS are enabled but not enforced. For environments with higher security requirements, you can enforce SSL and HTTPS usage.


---------------

## Local CA

During initialization, Pigsty generates a self-signed CA in the Pigsty source directory (`~/pigsty`) on the [ADMIN node](/docs/node/#admin-node). This CA can be used for SSL, HTTPS, digital signatures, issuing database client certificates, and advanced security features.

Each Pigsty deployment uses a unique CA—CAs from different Pigsty deployments are not mutually trusted.

The local CA consists of two files, located in the `files/pki/ca` directory by default:

- `ca.crt`: Self-signed CA root certificate, distributed to all managed nodes for certificate verification.
- `ca.key`: CA private key for issuing certificates and verifying CA identity—**keep this file secure and prevent leakage!**

{{% alert title="Protect the CA Private Key" color="danger" %}}
Keep the CA private key file safe—don't lose it or leak it. We recommend encrypting and backing up this file after completing Pigsty installation.
{{% /alert %}}


---------------

## Using an Existing CA

If you already have your own CA PKI infrastructure, Pigsty can be configured to use your existing CA.

Simply place your CA public key and private key files in the `files/pki/ca` directory:

```bash
files/pki/ca/ca.key     # Core CA private key file, must exist; if missing, a new one is randomly generated
files/pki/ca/ca.crt     # If certificate file is missing, Pigsty auto-generates a new root certificate from the CA private key
```

When Pigsty executes the [**`install.yml`**](/docs/infra/#installyml) or [**`infra.yml`**](/docs/infra/#infrayml) playbooks, if a `ca.key` private key file exists in `files/pki/ca`, the existing CA will be used. Since `ca.crt` can be generated from the `ca.key` private key, Pigsty will automatically regenerate the root certificate file if it's missing.

{{% alert title="Note When Using Existing CA" color="secondary" %}}
You can set the [**`ca_method`**](/docs/infra/param#ca_method) parameter to `copy` to ensure Pigsty errors out and stops if it can't find a local CA, rather than auto-generating a new self-signed CA.
{{% /alert %}}


---------------

## Trusting the CA

During Pigsty installation, `ca.crt` is distributed to all nodes at `/etc/pki/ca.crt` during the `node_ca` task in the [**`node.yml`**](/docs/node/#nodeyml) playbook.

EL-family and Debian-family operating systems have different default trusted CA certificate paths, so the distribution path and update methods differ:

{{< tabpane persist="disabled" >}}
{{% tab header="Trust CA Certificate" disabled=true /%}}

{{< tab header="EL" lang="Bash" >}}
rm -rf /etc/pki/ca-trust/source/anchors/ca.crt
ln -s /etc/pki/ca.crt /etc/pki/ca-trust/source/anchors/ca.crt
/bin/update-ca-trust
{{% /tab %}}

{{< tab header="Debian / Ubuntu" lang="Bash" >}}
rm -rf /usr/local/share/ca-certificates/ca.crt
ln -s /etc/pki/ca.crt /usr/local/share/ca-certificates/ca.crt
/usr/sbin/update-ca-certificates
{{< /tab >}}

{{< /tabpane >}}

Pigsty issues HTTPS certificates for domain names used by web systems on infrastructure nodes by default, allowing HTTPS access to Pigsty's web interfaces.

If you want to avoid "untrusted CA certificate" warnings in client browsers, distribute `ca.crt` to the trusted certificate directory on client machines.

You can double-click the `ca.crt` file to add it to your system keychain. For example, on MacOS, open "Keychain Access," search for `pigsty-ca`, and set it to "trust" this root certificate.


---------------

## Viewing Certificate Contents

Use the following command to view the Pigsty CA certificate contents:

```bash
openssl x509 -text -in /etc/pki/ca.crt
```

<details><summary>Local CA Root Certificate Content Example</summary>

```
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            50:29:e3:60:96:93:f4:85:14:fe:44:81:73:b5:e1:09:2a:a8:5c:0a
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: O=pigsty, OU=ca, CN=pigsty-ca
        Validity
            Not Before: Feb  7 00:56:27 2023 GMT
            Not After : Jan 14 00:56:27 2123 GMT
        Subject: O=pigsty, OU=ca, CN=pigsty-ca
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:c1:41:74:4f:28:c3:3c:2b:13:a2:37:05:87:31:
                    ....
                    e6:bd:69:a5:5b:e3:b4:c0:65:09:6e:84:14:e9:eb:
                    90:f7:61
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name:
                DNS:pigsty-ca
            X509v3 Key Usage:
                Digital Signature, Certificate Sign, CRL Sign
            X509v3 Basic Constraints: critical
                CA:TRUE, pathlen:1
            X509v3 Subject Key Identifier:
                C5:F6:23:CE:BA:F3:96:F6:4B:48:A5:B1:CD:D4:FA:2B:BD:6F:A6:9C
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        89:9d:21:35:59:6b:2c:9b:c7:6d:26:5b:a9:49:80:93:81:18:
        ....
        9e:dd:87:88:0d:c4:29:9e
-----BEGIN CERTIFICATE-----
...
cXyWAYcvfPae3YeIDcQpng==
-----END CERTIFICATE-----
```

</details>


---------------

## Issuing Certificates

If you want to use client certificate authentication, you can use the local CA and the [**`cert.yml`**](https://github.com/pgsty/pigsty/blob/main/cert.yml) playbook to manually issue PostgreSQL client certificates.

Set the certificate's `CN` field to the database username:

```bash
./cert.yml -e cn=dbuser_dba
./cert.yml -e cn=dbuser_monitor
```

Issued certificates are generated in `files/pki/misc/<cn>.{key,crt}` by default.
