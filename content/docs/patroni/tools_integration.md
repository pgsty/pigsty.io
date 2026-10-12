---
title: "Integration with other tools"
linkTitle: "Tools Integration"
weight: 150
icon: fas fa-puzzle-piece
description: "Integrating Patroni with external backup and orchestration tools."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/tools_integration.html

<a id="tools_integration"></a>
Patroni can integrate with other tools in your stack. These examples show possible integrations. The list is not complete.

--------

## Barman

Patroni provides `patroni_barman`. This application communicates with `pg-backup-api` to run Barman operations remotely.

The application has two subcommands: `recover` and `config-switch`.

### patroni_barman recover

Use the `recover` subcommand as a custom bootstrap method or replica creation method. See [replica_imaging_and_bootstrap](/docs/patroni/replica_bootstrap#replica_imaging_and_bootstrap) for details.

### patroni_barman config-switch

Use the `config-switch` subcommand as an `on_role_change` callback in Patroni. For example, you may stream WALs from the primary to your Barman host. After a failover, you may want to stream from the new primary. Use `patroni_barman config-switch` as the `on_role_change` callback for this change.

> [!NOTE]
> This subcommand uses `barman config-switch`, available since Barman 3.10. The command overrides a Barman server configuration with a predefined model. See the Barman documentation for details.

This example applies a configuration model when the Patroni node becomes primary:

```yaml
postgresql:
    callbacks:
        on_role_change: >
            patroni_barman
                --api-url YOUR_API_URL
                config-switch
                --barman-server YOUR_BARMAN_SERVER_NAME
                --barman-model YOUR_BARMAN_MODEL_NAME
                --switch-when promoted
```

> [!NOTE]
> Configure Barman and `pg-backup-api` on the Barman host before you use `patroni_barman config-switch`. This lets it run `barman config-switch` remotely through the backup API. You must also configure the Barman models in advance. The example uses only some available parameters. Run `patroni_barman config-switch --help` or see the Barman documentation for details.
