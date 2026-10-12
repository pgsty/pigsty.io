---
title: "Replica imaging and bootstrap"
linkTitle: "Replica Bootstrap"
weight: 60
icon: fa-solid fa-boxes-stacked
description: "Replica imaging, bootstrap, and custom replica creation workflows."
module: [PATRONI]
categories: [Task]
---

> Source: https://patroni.readthedocs.io/en/latest/replica_bootstrap.html

<a id="replica_imaging_and_bootstrap"></a>
Patroni supports custom replica creation and custom bootstrap for a new, empty cluster. These are separate operations. Patroni creates replicas only when the cluster has an `initialize` key in the DCS. Without that key, only the first node to acquire the initialize lock runs bootstrap.

<a id="custom_bootstrap"></a>

--------

## Bootstrap

By default, Patroni initializes new clusters with PostgreSQL `initdb`. Some operations, such as copying an existing cluster, require a custom bootstrap method. Patroni can run a user-defined script and supply the cluster name and data directory. Configure this in the `bootstrap` section:

```yaml
bootstrap:
    method: <custom_bootstrap_method_name>
    <custom_bootstrap_method_name>:
        command: <path_to_custom_bootstrap_script> [param1 [, ...]]
        keep_existing_recovery_conf: False
        no_params: False
        recovery_conf:
            recovery_target_action: promote
            recovery_target_timeline: latest
            restore_command: <method_specific_restore_command>
```

Each bootstrap method must define a `name` and a `command`. The special `initdb` method selects the default behavior. You can also omit `method` to use this default. Specify `command` as an absolute path or a path relative to the `patroni` command. In addition to fixed configuration parameters, Patroni supplies two cluster-specific arguments:

`--scope`  
Name of the cluster to be bootstrapped

`--datadir`  
Path to the data directory of the cluster instance to be bootstrapped

Set `no_params` to `True` to omit these two arguments.

If the script returns `0`, Patroni tries to configure and start the PostgreSQL instance it created. Any intermediate failure or non-zero script result means bootstrap failed. Patroni cleans up and releases the initialize lock so another node can try bootstrap.

If the custom method includes `recovery_conf`, Patroni generates `recovery.conf` before it starts the new instance. On PostgreSQL \>= 12, it sets recovery options in the Postgres configuration instead. Typically, specify at least one `recovery_target_*` parameter and set `recovery_target_action` to `promote`.

With `keep_existing_recovery_conf` set to `True`, Patroni keeps an existing `recovery.conf` on PostgreSQL \<= 11. On PostgreSQL \>= 12, it keeps existing `recovery.signal` and `standby.signal` files and does not override recovery settings. Use this with backup tools such as pgBackRest that generate recovery configuration.

Patroni passes additional key/value pairs from the custom method configuration to `command` as `--name=value` arguments. For example:

```yaml
bootstrap:
    method: <custom_bootstrap_method_name>
    <custom_bootstrap_method_name>:
        command: <path_to_custom_bootstrap_script>
        arg1: value1
        arg2: value2
```

This adds `--arg1=value1 --arg2=value2` when Patroni runs `command`.

> > [!NOTE]
> > Patroni does not chain bootstrap methods. If the selected method fails, it does not fall back to the default method.

For example, bootstrap a new Patroni cluster from a Barman backup:

```yaml
bootstrap:
    method: barman
    barman:
        keep_existing_recovery_conf: true
        command: patroni_barman --api-url https://barman-host:7480 recover
        barman-server: my_server
        ssh-command: ssh postgres@patroni-host
```

> [!NOTE]
> Configure Barman and `pg-backup-api` on the Barman host before you use `patroni_barman recover`. It runs `barman recover` remotely through the backup API. The example shows only some available parameters. Run `patroni_barman recover --help` for details.

<a id="custom_replica_creation"></a>

--------

## Building replicas

Patroni uses `pg_basebackup` to create replicas. This method requires a running leader. It has no backup compression during transfer or built-in cleanup of outdated backups. You may prefer `WAL-E`, `pgBackRest`, `Barman`, another backup tool, or a custom script. Patroni supports custom scripts to clone replicas. Configure them in the `postgresql` section:

```yaml
postgresql:
    create_replica_methods:
        - <method name>
    <method name>:
        command: <command name>
        keep_data: True
        no_params: True
        no_leader: 1
```

example: wal_e

```yaml
postgresql:
    create_replica_methods:
        - wal_e
        - basebackup
    wal_e:
        command: patroni_wale_restore
        no_leader: 1
        envdir: '{{WALE_ENV_DIR}}'
        use_iam: 1
    basebackup:
        max-rate: '100M'
```

example: pgbackrest

```yaml
postgresql:
    create_replica_methods:
        - pgbackrest
        - basebackup
    pgbackrest:
        command: /usr/bin/pgbackrest --stanza=<scope> --delta restore
        keep_data: True
        no_params: True
    basebackup:
        max-rate: '100M'
```

example: Barman

```yaml
postgresql:
    create_replica_methods:
        - barman
        - basebackup
    barman:
        command: patroni_barman --api-url https://barman-host:7480 recover
        barman-server: my_server
        ssh-command: ssh postgres@patroni-host
    basebackup:
        max-rate: '100M'
```

> [!NOTE]
> Configure Barman and `pg-backup-api` on the Barman host before you use `patroni_barman recover`. It runs `barman recover` remotely through the backup API. The example shows only some available parameters. Run `patroni_barman recover --help` for details.

The `create_replica_methods` list specifies methods and their execution order. Patroni stops after the first method that returns 0. Give each method a separate configuration section with its command and custom parameters. Patroni passes parameters as `--name=value` arguments. In addition to custom parameters, it supplies these cluster-specific arguments:

`--scope`  
Which cluster this replica belongs to

`--datadir`  
Path to the data directory of the replica

`--role`  
Always 'replica'

`--connstring`  
Connection string for the source cluster member, which can be the primary or another replica. The specified user can run SQL and replication protocol commands.

If `no_leader` is defined, Patroni can run the method without a running leader or replica. It passes an empty connection string. This permits restoration of a previous cluster from a binary backup.

If `keep_data` is defined, Patroni does not clean PGDATA before restore.

If `no_params` is defined, Patroni restricts parameters passed to the custom command.

The special `basebackup` method applies when `create_replica_methods` is empty. You can also list it explicitly. It initializes a replica with `pg_basebackup`. The backup source is the leader unless a replica has the `clonefrom` tag. If such replicas exist, Patroni selects one as the source.

No configuration is required, but you can add a `basebackup` section. As with other methods, specify only long options that start with --. Overriding the connection string or selecting tar or compressed backup output prevents Patroni from creating a replica. Patroni does not validate parameter names or values in `basebackup`.

If the WAL directory uses a symlink, specify the correct `--waldir` path. This preserves the symlink after replica creation or reinitialization. This option requires v10 or later.

Specify basebackup parameters as a key/value map or a list. Each list element can be a key/value pair or a single key for a valueless option, such as `--verbose`. For example:

```yaml
postgresql:
    basebackup:
        max-rate: '100M'
        checkpoint: 'fast'
```

and

```yaml
postgresql:
    basebackup:
        - verbose
        - max-rate: '100M'
        - waldir: /pg-wal-mount/external-waldir
```

If every method fails, Patroni retries them all in order during the next event loop cycle.
