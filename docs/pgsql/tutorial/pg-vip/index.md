# Bind a L2 VIP to PostgreSQL Primary with VIP-Manager

LLMS index: [llms.txt](/llms.txt)

---

If all cluster nodes share one L2 network, you can optionally define an **L2 VIP** for the PostgreSQL cluster.

The VIP uses Master-Backup mode.
It always points to the node that runs the cluster primary instance.

[VIP-Manager](https://github.com/cybertec-postgresql/vip-manager) manages the VIP.
It reads the Leader Key that Patroni writes to DCS (etcd) to determine whether the local node is primary.


------

## Enable VIP

To enable VIP for a cluster, set [`pg_vip_enabled`](/docs/pgsql/param#pg_vip_enabled) to `true` at cluster level.
You can also enable it globally.

```bash
# pgsql 3 node ha cluster: pg-test
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }   # primary instance, leader of cluster
    10.10.10.12: { pg_seq: 2, pg_role: replica }   # replica instance, follower of leader
    10.10.10.13: { pg_seq: 3, pg_role: replica, pg_offline_query: true } # replica with offline access
  vars:
    pg_cluster: pg-test           # define pgsql cluster name
    pg_users:  [{ name: test , password: test , pgbouncer: true , roles: [ dbrole_admin ] }]
    pg_databases: [{ name: test }]

    # Enable L2 VIP
    pg_vip_enabled: true
    pg_vip_address: 10.10.10.3/24
    #pg_vip_interface: auto
```

[`pg_vip_address`](/docs/pgsql/param#pg_vip_address) must be an available, valid IP address with a subnet in the current L2 network.

[`pg_vip_interface`](/docs/pgsql/param#pg_vip_interface) defaults to `auto`.
With this setting, Pigsty detects each instance interface from its inventory IPv4 address.

If automatic detection is unsuitable for a non-standard or policy-routing environment, specify a valid interface name for each instance.
For example:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary , pg_vip_interface: eth0  }
    10.10.10.12: { pg_seq: 2, pg_role: replica , pg_vip_interface: eth1  }
    10.10.10.13: { pg_seq: 3, pg_role: replica , pg_vip_interface: ens33 }
  vars:
    pg_cluster: pg-test           # define pgsql cluster name
    pg_users:  [{ name: test , password: test , pgbouncer: true , roles: [ dbrole_admin ] }]
    pg_databases: [{ name: test }]

    # Enable L2 VIP
    pg_vip_enabled: true
    pg_vip_address: 10.10.10.3/24
```

To refresh the VIP configuration and restart the VIP-Manager, use the following command:

```bash
./pgsql.yml -t pg_vip
```

------

## TLS Certificates and SAN

During initial issuance of `/pg/cert/server.crt`, if `pg_vip_enabled` / `pg_vip_address` or node `vip_enabled` / `vip_address` is configured, Pigsty adds the mask-free VIP to the server certificate's Subject Alternative Name (SAN), allowing secure VIP connections with `sslmode=verify-full`.

Certificate tasks skip reissuance when `files/pki/pgsql/<cls>-<seq>.crt` already exists on the admin node. If you add or change `pg_vip_address` **after initialization**, remove the cluster's old instance certificate files there, reissue and distribute certificates, then reload PostgreSQL:

```bash
# On the admin node, remove old server certificates; replace pg-test-* with the actual instance prefix
rm -f files/pki/pgsql/pg-test-*.{key,crt} files/pki/csr/pg-test-*.csr

# Reissue/distribute certificates and refresh VIP configuration
./pgsql.yml -l pg-test -t pg_cert,pg_vip

# Reload PostgreSQL to activate the new server certificate
ansible pg-test -b -m shell -a 'su - postgres -c "pg_ctl -D /pg/data reload"'
```
