---
title: Failure Model
weight: 1104
description: What failures can high availability solve, and what can't it solve?
icon: fa-solid fa-triangle-exclamation
module: [PIGSTY, PGSQL]
categories: [Concept]
---


## Failure Scenario Analysis

### Single Node Failures

#### Primary Process Crash

**Scenario**: PostgreSQL primary process is `kill -9` or crashes

```mermaid
flowchart LR
    subgraph Detection["🔍 Failure Detection"]
        D1["Patroni detects process gone"]
        D2["Attempts to restart PostgreSQL"]
        D3["Restart fails, stop lease renewal"]
        D1 --> D2 --> D3
    end

    subgraph Failover["🔄 Failover"]
        F1["Etcd lease expires (~10s)"]
        F2["Trigger election, latest replica wins"]
        F3["New primary promoted"]
        F4["HAProxy detects new primary"]
        F1 --> F2 --> F3 --> F4
    end

    subgraph Impact["📊 Impact"]
        I1["Write service down: 15-30s"]
        I2["Read service: brief interruption"]
        I3["Data loss: < 1MB or 0"]
    end

    Detection --> Failover --> Impact

    style D1 fill:#ffcdd2
    style F3 fill:#c8e6c9
    style I1 fill:#fff9c4
```

#### Patroni Process Failure

**Scenario**: Patroni process is killed or crashes

```mermaid
flowchart TB
    FAULT["Patroni process failure"]

    subgraph Detection["Failure Detection"]
        D1["Patroni stops lease renewal"]
        D2["PostgreSQL continues running<br/>(orphan state)"]
        D3["Etcd lease countdown"]
    end

    subgraph FailsafeOn["failsafe_mode: true"]
        FS1["Check if can access other Patroni"]
        FS2["✅ Can → Continue as primary"]
        FS3["❌ Cannot → Self-demote"]
    end

    subgraph FailsafeOff["failsafe_mode: false"]
        FF1["Trigger switchover after lease expires"]
        FF2["Original primary demotes"]
    end

    FAULT --> Detection
    Detection --> FailsafeOn
    Detection --> FailsafeOff

    style FAULT fill:#f44336,color:#fff
    style FS2 fill:#4CAF50,color:#fff
    style FS3 fill:#ff9800,color:#fff
```

#### Replica Failure

**Scenario**: Any replica node fails

**Impact**:
- Read-only traffic redistributed to other replicas
- If no other replicas, primary handles read-only traffic
- ✅ Write service completely unaffected

**Recovery**:
- Node recovery triggers Patroni auto-start
- Auto-resync from primary
- Restored as replica role

-----------------

### Multi-Node Failures

#### Three Nodes Down to Two (2/3 Failure)

**Scenario**: 3-node cluster, 2 nodes fail simultaneously

```mermaid
flowchart TB
    subgraph Analysis["Situation Analysis"]
        A1["Etcd loses majority (1/3 < 2/3)"]
        A2["Cannot perform leader election"]
        A3["Auto-switchover mechanism fails"]
    end

    subgraph Survivor["Surviving Node Status"]
        S1{"Surviving node is?"}
        S2["🟢 Primary<br/>Continues running under failsafe_mode"]
        S3["🔵 Replica<br/>Cannot auto-promote"]
    end

    A1 --> A2 --> A3 --> S1
    S1 -->|"Primary"| S2
    S1 -->|"Replica"| S3

    style A1 fill:#ffcdd2
    style S2 fill:#c8e6c9
    style S3 fill:#fff9c4
```

**Emergency Recovery Procedure**:

```bash
# 1. Confirm surviving node status
patronictl -c /etc/patroni/patroni.yml list

# 2. If surviving node is replica, manually promote
pg_ctl promote -D /pg/data

# 3. Or use pg-promote script
/pg/bin/pg-promote

# 4. Modify HAProxy config, point directly to surviving node
# Comment out health checks, hardcode routing

# 5. After recovering Etcd cluster, reinitialize
```

#### Two Nodes Down to One (1/2 Failure)

**Scenario**: 2-node cluster, primary fails

**Problem**:
- Etcd has only 2 nodes, no majority
- Cannot complete election
- Replica cannot auto-promote

**Solutions**:
1. Option 1: Add external Etcd arbiter node
2. Option 2: Manual intervention to promote replica
3. Option 3: Use Witness node

**Manual Promotion Steps**:
1. Confirm primary is truly unrecoverable
2. Stop replica Patroni: `systemctl stop patroni`
3. Manual promote: `pg_ctl promote -D /pg/data`
4. Start PostgreSQL directly: `systemctl start postgres`
5. Update application connection strings or HAProxy config

-----------------

### Etcd Cluster Failures

#### Etcd Single Node Failure

**Scenario**: 3-node Etcd cluster, 1 node fails

**Impact**:
- ✅ Etcd still has majority (2/3)
- ✅ Service runs normally
- ✅ PostgreSQL HA unaffected

**Recovery**:
- Fix failed node
- Use etcd-add to rejoin
- Or replace with new node

#### Etcd Majority Lost

**Scenario**: 3-node Etcd cluster, 2 nodes fail

```mermaid
flowchart TB
    subgraph Impact["❌ Impact"]
        I1["Etcd cannot write"]
        I2["Patroni cannot renew lease"]
        I3["failsafe_mode activates"]
        I4["Cannot perform failover"]
    end

    subgraph PG["PostgreSQL Behavior"]
        P1["🟢 Primary: Continues running"]
        P2["🔵 Replica: Continues replicating"]
        P3["✅ New writes can continue"]
    end

    subgraph Limit["⚠️ Limitations"]
        L1["Cannot switchover"]
        L2["Cannot failover"]
        L3["Config changes cannot take effect"]
    end

    Impact --> PG --> Limit

    style I1 fill:#ffcdd2
    style P1 fill:#c8e6c9
    style L1 fill:#fff9c4
```

**Recovery Priority**:
1. Restore Etcd majority
2. Verify PostgreSQL status
3. Check Patroni lease renewal

-----------------

### Network Partition

#### Primary Network Isolation

**Scenario**: Primary cannot reach Etcd/other nodes

```mermaid
flowchart LR
    subgraph Isolated["🔒 Isolated Side (Primary)"]
        P1["Primary"]
        CHECK{"failsafe_mode<br/>check"}
        CONT["Continue running"]
        DEMOTE["Self-demote"]

        P1 --> CHECK
        CHECK -->|"Can access other Patroni"| CONT
        CHECK -->|"Cannot access"| DEMOTE
    end

    subgraph Majority["✅ Majority Side"]
        E[("Etcd")]
        P2["Replica"]
        ELECT["Trigger election"]
        NEWPRI["New primary emerges"]

        E --> ELECT --> P2 --> NEWPRI
    end

    Isolated -.->|"Network partition"| Majority

    style P1 fill:#ff9800,color:#fff
    style DEMOTE fill:#f44336,color:#fff
    style NEWPRI fill:#4CAF50,color:#fff
```

**Split-brain Protection**:
- Patroni failsafe_mode
- Old primary self-detection
- Fencing (optional)
- Watchdog (optional)

#### Watchdog Mechanism

**For protection in extreme scenarios**:

```yaml
watchdog:
  mode: automatic                     # off|automatic|required
  device: /dev/watchdog
  safety_margin: 5                    # Safety margin (seconds)
```

**How it works**:
- Patroni periodically writes to watchdog device
- If Patroni unresponsive, kernel triggers restart
- Ensures old primary doesn't continue serving
- Prevents severe split-brain scenarios

-----------------

## Best Practices

### Production Environment Checklist

**Infrastructure**:
- [ ] At least 3 nodes (PostgreSQL)
- [ ] At least 3 nodes (Etcd, can share with PG)
- [ ] Nodes distributed across different failure domains (racks/AZs)
- [ ] Network latency < 10ms (same city) or < 50ms (cross-region)
- [ ] 10GbE network (recommended)

**Parameter Configuration**:
- [ ] `pg_rto` adjusted based on network conditions (15-60s)
- [ ] `pg_rpo` set based on business requirements (0 or 1MB)
- [ ] `pg_conf` choose appropriate template (oltp/crit)
- [ ] `patroni_watchdog_mode` evaluate necessity

**Monitoring Alerts**:
- [ ] Patroni status monitoring (leader/replication lag)
- [ ] Etcd cluster health monitoring
- [ ] Replication lag alerts (lag > 1MB)
- [ ] failsafe_mode activation alerts

**Disaster Recovery Drills**:
- [ ] Regularly execute failover drills
- [ ] Verify RTO/RPO meets expectations
- [ ] Test backup recovery procedures
- [ ] Verify monitoring alert effectiveness

### Common Troubleshooting

**Failover Failures**:
```bash
# Check Patroni status
patronictl -c /etc/patroni/patroni.yml list

# Check Etcd cluster health
etcdctl endpoint health

# Check replication lag
psql -c "SELECT * FROM pg_stat_replication"

# View Patroni logs
journalctl -u patroni -f
```

**Split-brain Handling**:
```bash
# 1. Confirm which is the "true" primary
psql -c "SELECT pg_is_in_recovery()"

# 2. Stop the "wrong" primary
systemctl stop patroni

# 3. Use pg_rewind to sync
pg_rewind --target-pgdata=/pg/data --source-server="host=<true_primary>"

# 4. Restart Patroni
systemctl start patroni
```


