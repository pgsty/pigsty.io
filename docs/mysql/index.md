# Module: MYSQL

> Deploy native MySQL 8.4 LTS as a standalone instance or a three-node InnoDB Cluster, with TLS, daily backups, and full observability.

---

LLMS index: [llms.txt](/llms.txt)

---

[MySQL](https://www.mysql.com/) is a widely used open-source relational database. Pigsty's **MYSQL** module installs a fixed **native MySQL 8.4 LTS platform** on managed nodes. Choose a standalone instance or three-node single-primary InnoDB Cluster with Group Replication. The module manages TLS, backups, monitoring, and lifecycle.

> [!NOTE] Current status: Pilot module
> MYSQL is a supplementary pilot module for a simple, low-cost MySQL cluster. Its scope is smaller than PGSQL.
> Deployment, convergence, HA failover, daily backups, monitoring, and alerts have systematic tests.
> Destructive complete-outage recovery and physical restore remain manual. Follow the [Administration](/docs/mysql/admin) procedures.


--------

## Module Capabilities

The MYSQL module currently provides:

- Fixed native MySQL 8.4 LTS server, client, Shell, Router, and matching XtraBackup packages.
- Standalone or three-node single-primary InnoDB Cluster, created and reconciled through MySQL Shell AdminAPI.
- Router on each HA member, with topology-aware read/write `6446` and read-only `6447` endpoints.
- TLS with leaf certificates from the shared Pigsty CA. Non-TLS connections are rejected.
- Additive `mysql_databases` and `mysql_users` declarations that never delete data implicitly.
- `mysql_parameters` overrides, including `max_connections`, with rolling restarts after configuration changes.
- Daily full physical XtraBackup backup and prepare, retention, concurrency locks, and atomic completion.
- mysqld_exporter metrics, 68 recording rules, 27 alerts, five Grafana dashboards, and VictoriaLogs error logs.
- Default `sql_require_primary_key`, blocking tables without primary keys that would break MGR replication and recovery.
- Convergent repair of dropped members and AdminAPI drift by rerunning `mysql.yml`. Safeguards restrict destructive paths.


--------

## Module Architecture

[`NODE`](/docs/node) supplies node management, repositories, and the shared CA. [`INFRA`](/docs/infra) supplies VictoriaMetrics, VictoriaLogs, Grafana, and Alertmanager. MYSQL depends on both, but not `ETCD` or `PGSQL`.

```mermaid
flowchart LR
    admin["Pigsty admin node"] -->|"mysql.yml"| mysqld["mysqld ×3 / single-primary MGR<br>3306 · TLS"]
    client["Application clients"] -->|"RW 6446 / RO 6447"| router["MySQL Router<br>(on every HA member)"]
    router --> mysqld
    mysqld --> backup["XtraBackup daily full<br>(current primary only)"]
    mysqld --> exporter["mysqld_exporter :9104"]
    mysqld --> journal["Error log → Journald"]
    exporter --> vm["VictoriaMetrics"]
    journal --> vector["Vector"] --> vl["VictoriaLogs"]
    vm --> grafana["Grafana"]
    vl --> grafana
    vm --> alertmanager["Alertmanager"]

    style mysqld fill:#4479A1,stroke:#33618a,color:#fff
    style router fill:#70C1B3,stroke:#4f968b,color:#fff
    style vm fill:#E66B7A,stroke:#b84e5c,color:#fff
    style vl fill:#C98367,stroke:#9e634e,color:#fff
```

In three-node clusters, `mysql_seq=1` coordinates bootstrap only. Runtime PRIMARY is elected. Reruns never force it back to node 1.


--------

## Components and Ports

| Component | Purpose | Fixed endpoint |
|:---|:---|:---|
| `mysqld` | Standalone server or MGR member | Classic `3306`, X Protocol `33060` |
| Group Replication | Three-member replication and consensus (XCOM) | `33061` |
| MySQL Router | Topology-aware entry point on every HA member | RW `6446`, RO `6447` |
| MySQL Shell | AdminAPI cluster lifecycle | Local control plane |
| XtraBackup | Daily full physical backup | Local backup repository |
| `mysqld_exporter` | Server and MGR metrics | `9104` |
{.full-width}

The role creates and manages three platform identities:

- `dbuser_cluster@'%'`: TLS-only AdminAPI and Router bootstrap identity (created on HA clusters only);
- `dbuser_monitor@'127.0.0.1'`: least-privilege exporter identity;
- `dbuser_backup@'localhost'`: local XtraBackup identity.


--------

## Supported Platforms

The native-package platform gate admits:

| Arch | Supported systems |
|:---|:---|
| `x86_64` | EL 8/9/10, Debian 12/13, Ubuntu 22/24 |
| `aarch64` | EL 9/10 |
{.full-width}

Preflight rejects Debian/Ubuntu ARM64 because Oracle APT has no MySQL 8.4 `arm64` packages. On ARM, use EL 9/10, such as Rocky Linux.


--------

## Scope and Boundaries

MYSQL provides a fixed platform. Before adoption, accept these **scope limits**:

- **One or three nodes only:** No in-place 1→3 or 3→5 expansion and no persistent two-node operation. Use logical migration for capacity changes and [same-address replacement](/docs/mysql/admin#replace-a-failed-member) for hardware refresh.
- **Fixed versions, ports, directories, and charset:** No parameters change them. Memory sizing comes from node specifications. Override individual keys through [`mysql_parameters`](/docs/mysql/param#mysql_parameters).
- **Daily local full backups:** No incremental chains, continuous binlog archives, or PITR. Physical restore is manual; follow the [procedure](/docs/mysql/admin#restore-from-physical-backup).
- **Manual complete-outage recovery:** This avoids split-brain from automated guesses. Playbook failures print recovery instructions.
- **No VIP, DNS, or HAProxy access layer:** Connect through any member's Router, preferably with a multi-host DSN.


--------

## Documentation

| Page | Content |
|:---|:---|
| [Configuration](/docs/mysql/config) | Topology planning, identity, databases, users, parameter overrides, backup settings |
| [Parameters](/docs/mysql/param) | The 11 public parameters and fixed platform conventions |
| [Administration](/docs/mysql/admin) | Status checks, client access, config changes, failure handling, and three recovery runbooks |
| [Playbook](/docs/mysql/playbook) | `mysql.yml` and `mysql-rm.yml` usage, tags, and guardrails |
| [Monitoring](/docs/mysql/monitor) | Dashboards, recording rules, alert rules, log queries |
| [Metrics](/docs/mysql/metric) | Label model and the derived-metric dictionary |
| [FAQ](/docs/mysql/faq) | Platform limits, primary-key policy, recovery, troubleshooting |
{.full-width}


--------

## Quick Start

Declare a cluster in the inventory (full template: [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml)):

```yaml
all:
  children:
    my-test:
      hosts:
        10.10.10.11: { mysql_seq: 1 }
        10.10.10.12: { mysql_seq: 2 }
        10.10.10.13: { mysql_seq: 3 }
      vars:
        mysql_cluster: my-test
        mysql_databases: [ { name: app } ]
        mysql_users: [ { name: app, password: DBUser.App, priv: { 'app.*': 'ALL PRIVILEGES' } } ]

  vars:
    node_repo_modules: node,infra,mysql   # repos must include the mysql module
    mysql_root_password: MySQL.Root       # change all sample passwords in production
    mysql_monitor_password: MySQL.Monitor
    mysql_cluster_password: MySQL.Cluster
```

After [`NODE`](/docs/node) provisioning, deploy:

```bash
./node.yml  -l my-test             # node provisioning: repo, shared CA, monitoring agents
./mysql.yml -l my-test --check     # preflight the complete three-node cluster
./mysql.yml -l my-test             # real run; a three-node cluster takes ~2 minutes

mysql -h 10.10.10.11 -P 6446 -u app -pDBUser.App \
  --ssl-mode=VERIFY_CA --ssl-ca=/etc/pki/ca.crt app   # connect through the Router RW endpoint
```

Then open the Grafana [MySQL Overview](https://demo.pigsty.io/ui/d/mysql-overview) dashboard to inspect the cluster.

---

Section pages:

- [Configuration](/docs/mysql/config/): Plan MySQL topology and identity; declare databases, users, parameter overrides, and backup policy.
- [Parameters](/docs/mysql/param/): The MYSQL module's 13 public parameters: 11 deployment parameters, 2 protected-removal parameters, and fixed platform conventions.
- [Administration](/docs/mysql/admin/): Status checks, client access, configuration changes, failure handling, and the three recovery runbooks for MySQL clusters.
- [Playbook](/docs/mysql/playbook/): Deploy, converge, tune, and retire MySQL clusters with mysql.yml and mysql-rm.yml.
- [Monitoring](/docs/mysql/monitor/): MySQL metric collection, Grafana dashboards, alert rules, and log queries.
- [Metrics](/docs/mysql/metric/): Label model, derived-metric dictionary, and raw metric families of the MYSQL module.
- [FAQ](/docs/mysql/faq/): Frequently asked questions and troubleshooting for the Pigsty MySQL pilot module.
