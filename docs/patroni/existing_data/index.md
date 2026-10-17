# Convert a Standalone to a Patroni Cluster

> Procedure to convert existing PostgreSQL data into a Patroni cluster.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/existing_data.html

<a id="existing_data"></a>
This section describes the process for converting a standalone PostgreSQL instance into a Patroni cluster.

To deploy a Patroni cluster without using a pre-existing PostgreSQL instance, see [Running and Configuring](/docs/patroni/readme#running_configuring) instead.

--------

## Procedure

The following steps convert an existing Postgres cluster to Patroni management. All nodes must be running. These steps assume you do not intend to change the Postgres configuration during migration.

1.  Create the Postgres users described in the [authentication](/docs/patroni/config/yaml#postgresql_settings) section. In the sample SQL below, replace usernames and passwords for your environment. Skip this step if the required users already exist.

    ``` sql
    -- Patroni superuser
    -- Replace PATRONI_SUPERUSER_USERNAME and PATRONI_SUPERUSER_PASSWORD accordingly
    CREATE USER PATRONI_SUPERUSER_USERNAME WITH SUPERUSER ENCRYPTED PASSWORD 'PATRONI_SUPERUSER_PASSWORD';

    -- Patroni replication user
    -- Replace PATRONI_REPLICATION_USERNAME and PATRONI_REPLICATION_PASSWORD accordingly
    CREATE USER PATRONI_REPLICATION_USERNAME WITH REPLICATION ENCRYPTED PASSWORD 'PATRONI_REPLICATION_PASSWORD';

    -- Patroni rewind user, if you intend to enable use_pg_rewind in your Patroni configuration
    -- Replace PATRONI_REWIND_USERNAME and PATRONI_REWIND_PASSWORD accordingly
    CREATE USER PATRONI_REWIND_USERNAME WITH ENCRYPTED PASSWORD 'PATRONI_REWIND_PASSWORD';
    GRANT EXECUTE ON function pg_catalog.pg_ls_dir(text, boolean, boolean) TO PATRONI_REWIND_USERNAME;
    GRANT EXECUTE ON function pg_catalog.pg_stat_file(text, boolean) TO PATRONI_REWIND_USERNAME;
    GRANT EXECUTE ON function pg_catalog.pg_read_binary_file(text) TO PATRONI_REWIND_USERNAME;
    GRANT EXECUTE ON function pg_catalog.pg_read_binary_file(text, bigint, bigint, boolean) TO PATRONI_REWIND_USERNAME;
    ```

2.  Complete these steps on each Postgres node. Finish one node before you continue to the next. Start with the primary, then process each standby:

    1.  If systemd runs Postgres, disable the Postgres systemd unit. Patroni will manage Postgres startup and shutdown.
    2.  Create a Patroni YAML configuration file. You can use [Patroni configuration generation and validation tooling](/docs/patroni/config#validate_generate_config).
        - **Note (specific for the primary node):** If cluster members use replication slots, we recommend enabling `use_slots`. Configure the existing slots as permanent with `slots`. When `use_slots` is enabled, Patroni creates member replication slots and drops slots it does not recognize. Permanent slot configuration preserves your existing slots during migration. See [Dynamic Configuration Settings](/docs/patroni/config/dynamic#dynamic) for details.
    3.  Start the `patroni` systemd service. Patroni detects that Postgres is running and starts monitoring it.

3.  Transfer Postgres startup management to Patroni. Restart members with [patronictl restart cluster-name member-name](/docs/patroni/patronictl#patronictl_restart_parameters). To minimize downtime, you may split this step:

    1.  Immediate restart of the standby nodes.
    2.  Scheduled restart of the primary node within a maintenance window.

4.  If you configured permanent slots in step `1.2.`, wait for the Patroni slots to catch up. Their `restart_lsn` must reach the `restart_lsn` of the corresponding original slots. Then remove the original slots from `slots` with [patronictl edit-config cluster-name](/docs/patroni/patronictl#patronictl_edit_config_parameters). Patroni can then drop the original slots when they are no longer needed. Use this example query to compare `restart_lsn` values:

    ``` sql
    -- Assume original_slot_for_member_x is the name of the slot in your original
    -- cluster for replicating changes to member X, and slot_for_member_x is the
    -- slot created by Patroni for that purpose. You need restart_lsn of
    -- slot_for_member_x to be >= restart_lsn of original_slot_for_member_x
    SELECT slot_name,
           restart_lsn
    FROM pg_replication_slots
    WHERE slot_name IN (
        'original_slot_for_member_x',
        'slot_for_member_x'
    )
    ```

<a id="major_upgrade"></a>

## Major Upgrade of PostgreSQL Version

The only possible way to do a major upgrade currently is:

1.  Stop Patroni.
2.  Upgrade the PostgreSQL binaries. Run [pg_upgrade](https://www.postgresql.org/docs/current/pgupgrade.html) on the primary.
3.  Update patroni.yml.
4.  Remove the initialize key from the DCS, or remove all cluster state with [patronictl remove cluster-name](/docs/patroni/patronictl#patronictl_remove_parameters). This is necessary because pg_upgrade runs initdb, which creates a database with a new PostgreSQL system identifier.
5.  If you removed all cluster state, you may copy patroni.dynamic.json from the old data directory to the new directory. This retains some PostgreSQL parameters that you set earlier.
6.  Start Patroni on the primary.
7.  On standby nodes, upgrade PostgreSQL binaries, update patroni.yml, and remove the contents of data_dir.
8.  Start Patroni on the standbys. Wait for replication to complete.

PostgreSQL does not support pg_upgrade on standby nodes. If you understand the procedure, you can use rsync as described in <https://www.postgresql.org/docs/current/pgupgrade.html> instead of removing data_dir. Letting Patroni replicate the data is the safest method.

--------

## FAQ

- During Patroni startup, Patroni complains that it cannot bind to the PostgreSQL port.

  Check `listen_addresses` and `port` in `postgresql.conf`, and `postgresql.listen` in `patroni.yml`. Make sure `pg_hba.conf` permits this access.

- After asking Patroni to restart the node, PostgreSQL displays the error message `could not open configuration file "/etc/postgresql/10/main/pg_hba.conf": No such file or directory`

  The cause depends on how you manage PostgreSQL configuration. With `postgresql.config_dir`, Patroni generates `pg_hba.conf` from [bootstrap](/docs/patroni/config/yaml#bootstrap_settings) settings only during new-cluster bootstrap. Here, `PGDATA` was not empty, so no bootstrap occurred. The file must already exist.
