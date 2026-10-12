---
title: "Stanza Upgrade Command (stanza-upgrade)"
linkTitle: "stanza-upgrade"
weight: 160
description: "Reference for pgBackRest `stanza-upgrade` command options and behavior."
icon: fa-solid fa-arrow-up-right-dots
module: [PGBACKREST]
categories: [Reference]
---

> Source: [pgBackRest Command Docs: stanza-upgrade](https://pgbackrest.org/command.html#command-stanza-upgrade)

Immediately after a PostgreSQL major version upgrade, update `pg-path` in all pgBackRest configurations to the new database location. Then run `stanza-upgrade`. It upgrades the stanza in every repository configured on the host. If the database is offline, use `--no-online`.

## Command Options

### Online Option (`--online`)

Update an online cluster.

Specify --no-online to upgrade the stanza without connecting to PostgreSQL.

```yaml
default: y
example: --no-online
```

## General Options

### Allow Run as Root Option (`--allow-root`)

Allow the command to run as the root user.

By default, only `restore` can run as root because it manages file ownership. Other commands can create root-owned files, for example in the repository. The PostgreSQL user cannot access these files, which causes later commands to fail.

Enable this option to run another command as root. Preferably, run pgBackRest as the user that owns the repository and PostgreSQL cluster.

```yaml
default: n
example: --allow-root
```

### Buffer Size Option (`--buffer-size`)

Buffer size for I/O operations.

Set the buffer size for copy, compression, encryption, and other operations. Options determine the number of buffers. Each operation can also use more memory. For example, `gz` compression can use an additional 256KiB.

Allowed values are `16KiB`, `32KiB`, `64KiB`, `128KiB`, `256KiB`, `512KiB`, `1MiB`, `2MiB`, `4MiB`, `8MiB`, and `16MiB`.

```yaml
default: 1MiB
example: --buffer-size=2MiB
```

### SSH Client Command Option (`--cmd-ssh`)

SSH client command.

Use this option to select a different SSH client or when the `ssh` command is not in $PATH.

```yaml
default: ssh
example: --cmd-ssh=/usr/bin/ssh
```

### Network Compress Level Option (`--compress-level-network`)

Network compression level.

Set the network compression level when `compress-type=none` and the command runs on a host other than the repository host. Compression reduces network traffic. When `compress-type` is not `none`, pgBackRest ignores `compress-level-network` and uses `compress-level`. This prevents compression of the same file twice.

```yaml
default: 1
allowed: [-5, 12]
example: --compress-level-network=1
```

### Config Option (`--config`)

pgBackRest configuration file.

Use this option to select a configuration file other than the default.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_FILE
example: --config=/conf/pgbackrest/pgbackrest.conf
```

### Config Include Path Option (`--config-include-path`)

Path to additional pgBackRest configuration files.

pgBackRest combines files with the `.conf` extension in this location with its configuration file. The result is one configuration file.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_INCLUDE_PATH
example: --config-include-path=/conf/pgbackrest/conf.d
```

### Config Path Option (`--config-path`)

Base path of pgBackRest configuration files.

Set the default base path for `--config` and `--config-include-path`. Explicit command-line values for these options override this setting.

For example, specify only `--config-path=/conf/pgbackrest` to set the `--config` default to `/conf/pgbackrest/pgbackrest.conf`. This also sets the `--config-include-path` default to `/conf/pgbackrest/conf.d`.

```yaml
default: CFGOPTDEF_CONFIG_PATH
example: --config-path=/conf/pgbackrest
```

### Database Timeout Option (`--db-timeout`)

Database query timeout.

Set the database query timeout in seconds. This includes backup start/stop functions, which can each take substantial time. Keep a high timeout unless these functions will return quickly. For example, you have set `start-fast=y` and know the cluster will generate few WAL segments during the backup.

> **NOTE:** The `db-timeout` option must be less than the `protocol-timeout` option.

```yaml
default: 30m
allowed: [100ms, 7d]
example: --db-timeout=600
```

### I/O Timeout Option (`--io-timeout`)

I/O timeout.

Set the connection and read/write timeout in seconds.

The complete read/write operation can take longer than this timeout. However, it must make some progress before the timeout, even if only one byte.

```yaml
default: 1m
allowed: [100ms, 1h]
example: --io-timeout=120
```

### Lock Path Option (`--lock-path`)

Path where lock files are stored.

pgBackRest creates lock files in this path to prevent conflicting operations from running at the same time.

```yaml
default: /tmp/pgbackrest
example: --lock-path=/backup/db/lock
```

### Neutral Umask Option (`--neutral-umask`)

Use a neutral umask.

Set the umask to 0000 to control repository permissions. The default directory mode is 0750. The default file mode is 0640.

To use the executing user's umask, set `neutral-umask=n` in the configuration file or `--no-neutral-umask` on the command line.

```yaml
default: y
example: --no-neutral-umask
```

### Set Process Priority Option (`--priority`)

Set process priority.

Set the process priority, or niceness, used by the kernel scheduler. Positive values decrease priority. Negative values increase priority. Processes usually lack permission to increase their priority.

```yaml
allowed: [-20, 19]
example: --priority=19
```

### Protocol Timeout Option (`--protocol-timeout`)

Protocol timeout.

Set how many seconds a local or remote process waits for a new protocol message. This prevents an indefinite wait.

> **NOTE:** The `protocol-timeout` option must be greater than the `db-timeout` option.

```yaml
default: 31m
allowed: [100ms, 7d]
example: --protocol-timeout=630
```

### Keep Alive Option (`--sck-keep-alive`)

Keep-alive enable.

Enables keep-alive messages on socket connections.

```yaml
default: y
example: --no-sck-keep-alive
```

### Stanza Option (`--stanza`)

Defines the stanza.

A stanza contains the configuration for a PostgreSQL database cluster. It defines the cluster location, backup method, archive options, and other settings. Most database servers have one PostgreSQL cluster and one stanza. A backup server has a stanza for each cluster that needs a backup.

Choose a stanza name that describes the databases in the cluster. The primary and all replicas use the same stanza name. A functional name, such as app or dw, is preferable to a local cluster name, such as main or prod.

```yaml
example: --stanza=main
```

### Keep Alive Count Option (`--tcp-keep-alive-count`)

Keep-alive count.

Set how many TCP keep-alive messages can be lost before the connection is considered dead.

This option is available on systems that support the `TCP_KEEPCNT` socket option.

```yaml
allowed: [1, 32]
example: --tcp-keep-alive-count=3
```

### Keep Alive Idle Option (`--tcp-keep-alive-idle`)

Keep-alive idle time.

Set how many seconds of network inactivity must pass before the operating system sends a TCP keep-alive message.

This option is available on systems that support the `TCP_KEEPIDLE` socket option.

```yaml
allowed: [1, 3600]
example: --tcp-keep-alive-idle=60
```

### Keep Alive Interval Option (`--tcp-keep-alive-interval`)

Keep-alive interval time.

Set how many seconds to wait before retransmitting a TCP keep-alive message that has no acknowledgement.

This option is available on systems that support the `TCP_KEEPINTVL` socket option.

```yaml
allowed: [1, 900]
example: --tcp-keep-alive-interval=30
```

### TLSv1.2 cipher suites Option (`--tls-cipher-12`)

Allowed TLSv1.2 cipher suites.

All TLS connections between the pgBackRest client and server use encryption. Connections to object stores, such as S3, also use encryption by default.

> **NOTE:** The absolute minimum security level for any transport connection is TLSv1.2.

Change the accepted cipher suites if necessary. The example is suitable unless you have specific security requirements. By default, this option is unset and the underlying OpenSSL library default applies.

```yaml
example: --tls-cipher-12=HIGH:MEDIUM:+3DES:!aNULL
```

### TLSv1.3 cipher suites Option (`--tls-cipher-13`)

Allowed TLSv1.3 cipher suites.

All TLS connections between the pgBackRest client and server use encryption. Connections to object stores, such as S3, also use encryption by default.

> **NOTE:** The absolute minimum security level for any transport connection is TLSv1.2.

Change the accepted cipher suites if necessary. By default, this option is unset and the underlying OpenSSL library default applies.

```yaml
example: --tls-cipher-13=TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256
```

## Log Options

### Console Log Level Option (`--log-level-console`)

Level for console logging.

The following log levels are supported:

- `off` - No logging at all (not recommended)
- `error` - Log only errors
- `warn` - Log warnings and errors
- `info` - Log info, warnings, and errors
- `detail` - Log detail, info, warnings, and errors
- `debug` - Log debug, detail, info, warnings, and errors
- `trace` - Log trace (very verbose debugging), debug, info, warnings, and errors

```yaml
default: warn
example: --log-level-console=error
```

### File Log Level Option (`--log-level-file`)

Level for file logging.

The following log levels are supported:

- `off` - No logging at all (not recommended)
- `error` - Log only errors
- `warn` - Log warnings and errors
- `info` - Log info, warnings, and errors
- `detail` - Log detail, info, warnings, and errors
- `debug` - Log debug, detail, info, warnings, and errors
- `trace` - Log trace (very verbose debugging), debug, info, warnings, and errors

```yaml
default: info
example: --log-level-file=debug
```

### Std Error Log Level Option (`--log-level-stderr`)

Level for stderr logging.

Select the log levels that write to `stderr` instead of `stdout`, which `log-level-console` controls. Output to `stderr` excludes the timestamp and process.

The following log levels are supported:

- `off` - No logging at all (not recommended)
- `error` - Log only errors
- `warn` - Log warnings and errors
- `info` - Log info, warnings, and errors
- `detail` - Log detail, info, warnings, and errors
- `debug` - Log debug, detail, info, warnings, and errors
- `trace` - Log trace (very verbose debugging), debug, info, warnings, and errors

```yaml
default: off
example: --log-level-stderr=error
```

### Log Path Option (`--log-path`)

Path where log files are stored.

pgBackRest stores log files in this path. If `log-level-file=off`, no log path is necessary.

```yaml
default: /var/log/pgbackrest
example: --log-path=/backup/db/log
```

### Log Subprocesses Option (`--log-subprocess`)

Enable logging in subprocesses.

Enable file logging for subprocesses created by this process. Use the level specified by `log-level-file`.

```yaml
default: n
example: --log-subprocess
```

### Log Timestamp Option (`--log-timestamp`)

Enable timestamp in logging.

Include timestamps in console and file logs. Disable this option for special uses, such as documentation generation.

```yaml
default: y
example: --no-log-timestamp
```

## Maintainer Options

### Force PostgreSQL Version Option (`--pg-version-force`)

Force PostgreSQL version.

Use the specified PostgreSQL version instead of the version detected from `pg_control` or WAL headers. This is mainly useful for PostgreSQL forks or development versions whose values differ from the release version. The version that PostgreSQL reports through `server_version_num` must match the forced version.

WARNING:

Use this option with care. pgBackRest still reads `pg_control` and WAL headers in the official open-source PostgreSQL format for the specified version. Changes to fields that pgBackRest uses can cause unexpected behavior. Generally, the fork must add all custom struct members *after* the standard PostgreSQL members for this option to work correctly.

```yaml
example: --pg-version-force=15
```

## Repository Options

### Azure Repository Container Option (`--repo-azure-container`)

Azure repository container.

Azure container used to store the repository.

Set `repo-path=/` to store the repository in the container root. Usually, specify a prefix such as `/repo`. The container can then also store logs and other Azure-generated content.

```yaml
example: --repo1-azure-container=pg-backup
```

### Azure Repository Key Type Option (`--repo-azure-key-type`)

Azure repository key type.

The following types are supported for authorization:

- `shared` - Shared key
- `sas` - Shared access signature
- `auto` - Automatically authorize using Azure managed identities

```yaml
default: shared
example: --repo1-azure-key-type=sas
```

### Azure Repository URI Style Option (`--repo-azure-uri-style`)

Azure URI Style.

The following URI styles are supported:

- `host` - Connect to `account.endpoint` host.
- `path` - Connect to `endpoint` host and prepend account to URIs.

```yaml
default: host
example: --repo1-azure-uri-style=path
```

### Repository Cipher Type Option (`--repo-cipher-type`)

Cipher used to encrypt the repository.

The following cipher types are supported:

- `none` - The repository is not encrypted
- `aes-256-cbc` - Advanced Encryption Standard with 256 bit key length

pgBackRest always encrypts data on the client, even when the repository type, such as S3, supports encryption.

```yaml
default: none
example: --repo1-cipher-type=aes-256-cbc
```

### GCS Repository Bucket Option (`--repo-gcs-bucket`)

GCS repository bucket.

GCS bucket used to store the repository.

Set `repo-path=/` to store the repository in the bucket root. Usually, specify a prefix such as `/repo`. The bucket can then also store logs and other GCS-generated content.

```yaml
example: --repo1-gcs-bucket=/pg-backup
```

### GCS Repository Endpoint Option (`--repo-gcs-endpoint`)

GCS repository endpoint.

Set the endpoint for the storage service connection. You can select a local GCS server or another endpoint.

```yaml
default: storage.googleapis.com
example: --repo1-gcs-endpoint=localhost
```

### GCS Repository Key Type Option (`--repo-gcs-key-type`)

GCS repository key type.

The following types are supported for authorization:

- `auto` - Authorize using the instance service account.
- `service` - Service account from locally stored key.
- `token` - For local testing, e.g. `fakegcs`.

When `repo-gcs-key-type=service`, pgBackRest reloads credentials when it renews the authentication token.

```yaml
default: service
example: --repo1-gcs-key-type=auto
```

### GCS Repository Project ID Option (`--repo-gcs-user-project`)

GCS project ID.

GCS project ID used to determine request billing.

```yaml
example: --repo1-gcs-user-project=my-project
```

### Repository Host Option (`--repo-host`)

Repository host when operating remotely.

This setting is not necessary for backups and archives on a locally mounted filesystem.

```yaml
example: --repo1-host=repo1.domain.com
```

Deprecated Name: backup-host

### Repository Host Certificate Authority File Option (`--repo-host-ca-file`)

Repository host certificate authority file.

Use a CA file other than the system default for connecting to the repository host.

```yaml
example: --repo1-host-ca-file=/etc/pki/tls/certs/ca-bundle.crt
```

### Repository Host Certificate Authority Path Option (`--repo-host-ca-path`)

Repository host certificate authority path.

Use a CA path other than the system default for connecting to the repository host.

```yaml
example: --repo1-host-ca-path=/etc/pki/tls/certs
```

### Repository Host Certificate File Option (`--repo-host-cert-file`)

Repository host certificate file.

pgBackRest sends this certificate to the repository host to prove the client identity.

```yaml
example: --repo1-host-cert-file=/path/to/client.crt
```

### Repository Host Command Option (`--repo-host-cmd`)

Repository host pgBackRest command.

Set this option only when the pgBackRest command path differs between the local and repository hosts. Otherwise, the repository host uses the local command path.

```yaml
default: [path of executed pgbackrest binary]
example: --repo1-host-cmd=/usr/lib/backrest/bin/pgbackrest
```

Deprecated Name: backup-cmd

### Repository Host Configuration Option (`--repo-host-config`)

pgBackRest repository host configuration file.

Set the repository host configuration file location. This is necessary only when it differs from the local configuration file location.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_FILE
example: --repo1-host-config=/conf/pgbackrest/pgbackrest.conf
```

Deprecated Name: backup-config

### Repository Host Configuration Include Path Option (`--repo-host-config-include-path`)

pgBackRest repository host configuration include path.

Set the repository host configuration include path. This is necessary only when it differs from the local configuration include path.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_INCLUDE_PATH
example: --repo1-host-config-include-path=/conf/pgbackrest/conf.d
```

### Repository Host Configuration Path Option (`--repo-host-config-path`)

pgBackRest repository host configuration path.

Set the repository host configuration path. This is necessary only when it differs from the local configuration path.

```yaml
default: CFGOPTDEF_CONFIG_PATH
example: --repo1-host-config-path=/conf/pgbackrest
```

### Repository Host Key File Option (`--repo-host-key-file`)

Repository host key file.

This key proves that the certificate owner sent the client certificate.

```yaml
example: --repo1-host-key-file=/path/to/client.key
```

### Repository Host Port Option (`--repo-host-port`)

Repository host port when `repo-host` is set.

Use this option to specify a non-default port for the repository host protocol.

> **NOTE:** When `repo-host-type=ssh`, `repo-host-port` has no default. The command specified by `cmd-ssh` supplies its configured port.

```yaml
default (depending on repo-host-type):
    tls - 8432

allowed: [0, 65535]
example: --repo1-host-port=25
```

Deprecated Name: backup-ssh-port

### Repository Host Protocol Type Option (`--repo-host-type`)

Repository host protocol type.

The following protocol types are supported:

- `ssh` - Secure Shell.
- `tls` - pgBackRest TLS server.

```yaml
default: ssh
example: --repo1-host-type=tls
```

### Repository Host User Option (`--repo-host-user`)

Repository host user when `repo-host` is set.

Set the user for repository host operations. Prefer a separate user, such as `pgbackrest`, to the `postgres` user. If PostgreSQL runs on the repository host, you can add `postgres` to the `pgbackrest` group. This gives it read access to the repository without permission to damage its contents accidentally.

```yaml
default: pgbackrest
example: --repo1-host-user=repo-user
```

Deprecated Name: backup-user

### Repository Path Option (`--repo-path`)

Path where backups and archive are stored.

The repository is where pgBackRest stores backups and archives WAL segments.

To estimate repository space, take some backups. Record the sizes of full, incremental, and differential backups (full/incr/diff). Measure how much WAL the database generates each day. These measurements give an approximate space requirement. Requirements will probably change as the database changes.

```yaml
default: /var/lib/pgbackrest
example: --repo1-path=/backup/db/backrest
```

### S3 Repository Bucket Option (`--repo-s3-bucket`)

S3 repository bucket.

S3 bucket used to store the repository.

Set `repo-path=/` to store the repository in the bucket root. Usually, specify a prefix such as `/repo`. The bucket can then also store logs and other AWS-generated content.

```yaml
example: --repo1-s3-bucket=pg-backup
```

### S3 Repository Endpoint Option (`--repo-s3-endpoint`)

S3 repository endpoint.

The AWS endpoint should be valid for the selected region.

For custom/test configurations the `repo-storage-ca-file`, `repo-storage-ca-path`, `repo-storage-host`, `repo-storage-port`, and `repo-storage-verify-tls` options may be useful.

```yaml
example: --repo1-s3-endpoint=s3.amazonaws.com
```

### S3 Repository Key Type Option (`--repo-s3-key-type`)

S3 repository key type.

The following types are supported:

- `shared` - Shared keys
- `auto` - Automatically retrieve temporary credentials
- `web-id` - Automatically retrieve web identity credentials
- `pod-id` - Automatically retrieve EKS pod identity credentials
- `process` - Retrieve credentials by executing a process

```yaml
default: shared
example: --repo1-s3-key-type=auto
```

### S3 Repository KMS Key ID Option (`--repo-s3-kms-key-id`)

S3 repository KMS key.

Enables S3 server-side encryption using the specified AWS key management service key.

```yaml
example: --repo1-s3-kms-key-id=bceb4f13-6939-4be3-910d-df54dee817b7
```

### S3 Authentication Process Command Option (`--repo-s3-process-cmd`)

S3 authentication process command.

Set the command and optional arguments that retrieve temporary S3 credentials. The first list entry is the command. The remaining entries are its parameters.

The process must output JSON with `AccessKeyId`, `SecretAccessKey`, `SessionToken`, and `Expiration` fields. pgBackRest refreshes credentials automatically before they expire. See [Process Credential Provider](https://docs.aws.amazon.com/sdkref/latest/guide/feature-process-credentials.html#feature-process-credentials-output) for the format.

```yaml
example: --repo1-s3-process-cmd=/usr/local/bin/get-credentials --repo1-s3-process-cmd=--role --repo1-s3-process-cmd=my-role
```

### S3 Repository Region Option (`--repo-s3-region`)

S3 repository region.

The AWS region where the bucket was created.

```yaml
example: --repo1-s3-region=us-east-1
```

### S3 Repository Requestor Pays Option (`--repo-s3-requester-pays`)

S3 repository requester pays.

Enables S3 requester pays.

```yaml
default: n
example: --no-repo1-s3-requester-pays
```

### S3 Repository Role Option (`--repo-s3-role`)

S3 repository role.

When `repo-s3-key-type=auto`, set the AWS role name used to retrieve temporary credentials. Use the name, not the full ARN.

```yaml
example: --repo1-s3-role=authrole
```

### S3 Repository Service Option (`--repo-s3-service`)

S3 signing service.

Set the signing service for SigV4 authentication. The default is `s3` for standard S3 endpoints. For an S3 Outposts endpoint, use `s3-outposts`.

```yaml
default: s3
example: --repo1-s3-service=s3-outposts
```

### S3 Repository STS Endpoint Option (`--repo-s3-sts-host`)

S3 repository STS endpoint.

When `repo-s3-key-type=web-id`, this endpoint retrieves temporary credentials. To use regional STS, select a regional endpoint, such as `sts.us-east-1.amazonaws.com`. Regional STS might be necessary for GovCloud or China regions, or to reduce latency.

```yaml
default: sts.amazonaws.com
example: --repo1-s3-sts-host=sts.us-east-1.amazonaws.com
```

### S3 Repository URI Style Option (`--repo-s3-uri-style`)

S3 URI Style.

The following URI styles are supported:

- `host` - Connect to `bucket.endpoint` host.
- `path` - Connect to `endpoint` host and prepend bucket to URIs.

```yaml
default: host
example: --repo1-s3-uri-style=path
```

### SFTP Repository Host Option (`--repo-sftp-host`)

SFTP repository host.

The SFTP host containing the repository.

```yaml
example: --repo1-sftp-host=sftprepo.domain
```

### SFTP Repository Host Fingerprint Option (`--repo-sftp-host-fingerprint`)

SFTP repository host fingerprint.

Generate the SFTP host fingerprint with the hash type specified by `repo-sftp-host-key-hash-type`. Use `awk '{print $2}' ssh_host_xxx_key.pub | base64 -d | (md5sum or sha1sum) -b`. SSH host keys are usually in `/etc/ssh`.

```yaml
example: --repo1-sftp-host-fingerprint=f84e172dfead7aeeeae6c1fdfb5aa8cf
```

### SFTP Host Key Check Type Option (`--repo-sftp-host-key-check-type`)

SFTP host key check type.

The following SFTP host key check types are supported:

- `strict` - pgBackRest never adds host keys to ~/.ssh/known_hosts automatically. It refuses connections when a host key changes or is absent from the known hosts files. Add each new host manually.
- `accept-new` - pgBackRest automatically adds new host keys to the user's known hosts file. It refuses connections when a host key changes.
- `fingerprint` - pgBackRest compares the host key with the `repo-sftp-host-fingerprint` value.
- `none` - pgBackRest does not check host keys.

```yaml
default: strict
example: --repo1-sftp-host-key-check-type=accept-new
```

### SFTP Repository Host Key Hash Type Option (`--repo-sftp-host-key-hash-type`)

SFTP repository host key hash type.

Set the hash type used to calculate the remote host key digest at SSH startup. Newer `libssh2` versions support `sha256` as well as md5 and sha1.

```yaml
example: --repo1-sftp-host-key-hash-type=sha256
```

### SFTP Repository Host Port Option (`--repo-sftp-host-port`)

SFTP repository host port.

SFTP repository host port.

```yaml
default: 22
allowed: [1, 65535]
example: --repo1-sftp-host-port=22
```

### SFTP Repository Host User Option (`--repo-sftp-host-user`)

SFTP repository host user.

User on the host used to store the repository.

```yaml
example: --repo1-sftp-host-user=pg-backup
```

### SFTP Known Hosts File Option (`--repo-sftp-known-host`)

SFTP known hosts file.

Set a known hosts file to check during SFTP authentication. By default, pgBackRest searches `~/.ssh/known_hosts`, `~/.ssh/known_hosts2`, `/etc/ssh/ssh_known_hosts`, and `/etc/ssh/ssh_known_hosts2`. If you configure file paths, it searches those files. Use absolute paths or paths that start with a tilde. Repeat `repo-sftp-known-host` to specify multiple files. To check known hosts files, do not set `repo-sftp-host-fingerprint`.

See also the `repo-sftp-host-check-type` option.

```yaml
example: --repo1-sftp-known-host=/home/postgres/.ssh/known_hosts
```

### SFTP Repository Private Key File Option (`--repo-sftp-private-key-file`)

SFTP private key file.

SFTP private key file used for authentication.

```yaml
example: --repo1-sftp-private-key-file=~/.ssh/id_ed25519
```

### SFTP Repository Public Key File Option (`--repo-sftp-public-key-file`)

SFTP public key file.

Set the SFTP public key file for authentication. This file is optional for builds that use OpenSSL. Other builds require it.

```yaml
example: --repo1-sftp-public-key-file=~/.ssh/id_ed25519.pub
```

### Repository Storage CA File Option (`--repo-storage-ca-file`)

Repository storage CA file.

Use a CA file other than the system default for storage (e.g. S3, Azure) certificates.

```yaml
example: --repo1-storage-ca-file=/etc/pki/tls/certs/ca-bundle.crt
```

Deprecated Names: repo-azure-ca-file, repo-s3-ca-file

### Repository Storage TLS CA Path Option (`--repo-storage-ca-path`)

Repository storage CA path.

Use a CA path other than the system default for storage (e.g. S3, Azure) certificates.

```yaml
example: --repo1-storage-ca-path=/etc/pki/tls/certs
```

Deprecated Names: repo-azure-ca-path, repo-s3-ca-path

### Repository Storage Host Option (`--repo-storage-host`)

Repository storage host.

Connect to a host other than the storage (e.g. S3, Azure) endpoint. This is typically used for testing.

```yaml
example: --repo1-storage-host=127.0.0.1
```

Deprecated Names: repo-azure-host, repo-s3-host

### Repository Storage Port Option (`--repo-storage-port`)

Repository storage port.

Port to use when connecting to the storage (e.g. S3, Azure) endpoint (or host if specified).

```yaml
default: 443
allowed: [1, 65535]
example: --repo1-storage-port=9000
```

Deprecated Names: repo-azure-port, repo-s3-port

### Repository Storage Tag Option (`--repo-storage-tag`)

Repository storage tag(s).

For an object store repository, such as S3, specify the tags to add to objects. Repeat this option to add multiple tags.

pgBackRest cannot change these tags. Before you run `stanza-create`, set them correctly to give the entire repository uniform tags.

```yaml
example: --repo1-storage-tag=key1=value1
```

### Repository Storage Upload Chunk Size Option (`--repo-storage-upload-chunk-size`)

Repository storage upload chunk size.

Object stores, such as S3, support uploads in chunks for files too large to fit in memory. For smaller files, chunks also reduce the memory used for uploads.

Larger chunks usually improve performance because they reduce upload requests. More files can fit in a single request without division into chunks. However, larger chunks use more memory. Each process needs a chunk buffer, so a larger `process-max` value also increases total memory use.

Valid chunk sizes depend on the storage type and platform. For example, AWS S3 requires a minimum chunk size of 5MiB. To find minimum and maximum values, search for the term that matches your storage type. Use "part size" for AWS S3, "chunk size" for GCS, and "block size" for Azure.

By default, PostgreSQL creates files no larger than 1GiB. For larger files, pgBackRest increases the chunk size in increments, up to the allowed maximum, to complete the upload.

```yaml
default (depending on repo-type):
    azure - 4MiB
    gcs - 4MiB
    s3 - 5MiB

allow range (depending on repo-type):
    azure - [4MiB, 1GiB]
    gcs - [4MiB, 1GiB]
    s3 - [5MiB, 1GiB]

example: --repo1-storage-upload-chunk-size=16MiB
```

### Repository Storage Certificate Verify Option (`--repo-storage-verify-tls`)

Repository storage certificate verify.

Enable or disable verification of the storage server TLS certificate, for example for S3 or Azure. Disable verification only for testing or other cases that use a self-signed certificate.

```yaml
default: y
example: --no-repo1-storage-verify-tls
```

Deprecated Names: repo-azure-verify-tls, repo-s3-verify-ssl, repo-s3-verify-tls

### Repository Type Option (`--repo-type`)

Type of storage used for the repository.

The following repository types are supported:

- `azure` - Azure Blob Storage Service
- `cifs` - Like `posix`, but disables links and directory fsyncs
- `gcs` - Google Cloud Storage
- `posix` - Posix-compliant file systems
- `s3` - AWS Simple Storage Service
- `sftp` - Secure File Transfer Protocol

For an NFS mount used as a `posix` repository, follow the PostgreSQL filesystem rules. See [Creating a Database Cluster - File Systems](https://www.postgresql.org/docs/current/creating-cluster.html#CREATING-CLUSTER-FILESYSTEM).

```yaml
default: posix
example: --repo1-type=cifs
```

## Stanza Options

### PostgreSQL Database Option (`--pg-database`)

PostgreSQL database.

Set the database name for PostgreSQL connections. The default is usually suitable, but some installations do not have this database.

For compatibility, pgBackRest ignores the `PGDATABASE` environment variable.

```yaml
default: postgres
example: --pg1-database=backupdb
```

### PostgreSQL Host Option (`--pg-host`)

PostgreSQL host for operating remotely.

Use this option when the PostgreSQL host and repository host differ.

```yaml
example: --pg1-host=db.domain.com
```

Deprecated Name: db-host

### PostgreSQL Host Certificate Authority File Option (`--pg-host-ca-file`)

PostgreSQL host certificate authority file.

Use a CA file other than the system default for connecting to the PostgreSQL host.

```yaml
example: --pg1-host-ca-file=/etc/pki/tls/certs/ca-bundle.crt
```

### PostgreSQL Host Certificate Authority Path Option (`--pg-host-ca-path`)

PostgreSQL host certificate authority path.

Use a CA path other than the system default for connecting to the PostgreSQL host.

```yaml
example: --pg1-host-ca-path=/etc/pki/tls/certs
```

### PostgreSQL Host Certificate File Option (`--pg-host-cert-file`)

PostgreSQL host certificate file.

pgBackRest sends this certificate to the PostgreSQL host to prove the client identity.

```yaml
example: --pg1-host-cert-file=/path/to/client.crt
```

### PostgreSQL Host Command Option (`--pg-host-cmd`)

PostgreSQL host pgBackRest command.

Set this option only when the pgBackRest command path differs between the local and PostgreSQL hosts. Otherwise, the PostgreSQL host uses the local command path.

```yaml
default: [path of executed pgbackrest binary]
example: --pg1-host-cmd=/usr/lib/backrest/bin/pgbackrest
```

Deprecated Name: db-cmd

### PostgreSQL Host Configuration Option (`--pg-host-config`)

pgBackRest database host configuration file.

Set the PostgreSQL host configuration file location. This is necessary only when it differs from the local configuration file location.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_FILE
example: --pg1-host-config=/conf/pgbackrest/pgbackrest.conf
```

Deprecated Name: db-config

### PostgreSQL Host Configuration Include Path Option (`--pg-host-config-include-path`)

pgBackRest database host configuration include path.

Set the PostgreSQL host configuration include path. This is necessary only when it differs from the local configuration include path.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_INCLUDE_PATH
example: --pg1-host-config-include-path=/conf/pgbackrest/conf.d
```

### PostgreSQL Host Configuration Path Option (`--pg-host-config-path`)

pgBackRest database host configuration path.

Set the PostgreSQL host configuration path. This is necessary only when it differs from the local configuration path.

```yaml
default: CFGOPTDEF_CONFIG_PATH
example: --pg1-host-config-path=/conf/pgbackrest
```

### PostgreSQL Host Key File Option (`--pg-host-key-file`)

PostgreSQL host key file.

This key proves that the certificate owner sent the client certificate.

```yaml
example: --pg1-host-key-file=/path/to/client.key
```

### PostgreSQL Host Port Option (`--pg-host-port`)

PostgreSQL host port when `pg-host` is set.

Use this option to specify a non-default port for the PostgreSQL host protocol.

> **NOTE:** When `pg-host-type=ssh`, `pg-host-port` has no default. The command specified by `cmd-ssh` supplies its configured port.

```yaml
default (depending on pg-host-type):
    tls - 8432

allowed: [0, 65535]
example: --pg1-host-port=25
```

Deprecated Name: db-ssh-port

### PostgreSQL Host Protocol Type Option (`--pg-host-type`)

PostgreSQL host protocol type.

The following protocol types are supported:

- `ssh` - Secure Shell.
- `tls` - pgBackRest TLS server.

```yaml
default: ssh
example: --pg1-host-type=tls
```

### PostgreSQL Host User Option (`--pg-host-user`)

PostgreSQL host logon user when `pg-host` is set.

This user owns the remote pgBackRest process and starts PostgreSQL connections. Use the PostgreSQL cluster owner, usually the default user `postgres`.

```yaml
default: postgres
example: --pg1-host-user=db_owner
```

Deprecated Name: db-user

### PostgreSQL Path Option (`--pg-path`)

PostgreSQL data directory.

Use the `data_directory` value reported by PostgreSQL. Other sources can provide this value, but they might be unavailable during a restore or offline backup. Set it here as a precaution.

Each online backup compares `pg-path` with the value reported by PostgreSQL. Thus, this setting should stay current.

```yaml
example: --pg1-path=/data/db
```

Deprecated Name: db-path

### PostgreSQL Port Option (`--pg-port`)

PostgreSQL port.

Set the PostgreSQL port. Most clusters use the default port, so this setting is usually unnecessary.

```yaml
default: 5432
allowed: [0, 65535]
example: --pg1-port=6543
```

Deprecated Name: db-port

### PostgreSQL Socket Path Option (`--pg-socket-path`)

PostgreSQL unix socket path.

Set the Unix socket directory selected at PostgreSQL startup. pgBackRest searches the standard location for your OS automatically. Usually, set this option only if `unix_socket_directories` in `postgresql.conf` specifies another directory.

```yaml
example: --pg1-socket-path=/var/run/postgresql
```

Deprecated Name: db-socket-path

### PostgreSQL Database User Option (`--pg-user`)

PostgreSQL database user.

Set the database user for PostgreSQL connections. If unset, pgBackRest uses the local OS user or `PGUSER`.

```yaml
example: --pg1-user=backupuser
```
