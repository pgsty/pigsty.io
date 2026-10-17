# Pause/Resume mode for the cluster

> Pause and resume mode behavior for Patroni cluster management.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/pause.html

<a id="pause"></a>

--------

## The goal

Patroni sometimes needs to suspend cluster management while it retains cluster state in the DCS. Examples include major version upgrades and corruption recovery. During these operations, nodes often start and stop for reasons that Patroni does not know. Temporary promotions can also violate the assumption that only one primary runs. Pause mode lets Patroni detach from the running cluster, like maintenance mode in Pacemaker.

--------

## The implementation

In pause mode, Patroni does not change PostgreSQL state, with these exceptions:

- Patroni updates each node's member key in the DCS with current cluster information. It runs read-only queries on each running member.
- Patroni updates the leader lock for the Postgres primary that holds it. If that node is manually demoted, Patroni releases the lock instead of promoting the node again.
- Manual unscheduled restarts, failovers, switchovers, and reinitialization are allowed. Scheduled actions are not allowed. A manual switchover must specify the target node.
- If Patroni detects multiple primaries, it logs a warning. It does not demote a primary that lacks the leader lock.
- If the cluster has no leader lock, a running primary acquires it. With multiple primaries, the first to acquire the lock wins. With no primary, Patroni does not promote a replica. One exception applies if the old primary released the lock by demoting itself for a manual promotion. Only the candidate named in that request may acquire the lock. After a new leader acquires the lock, Patroni redirects replicas from the previous leader to the new leader.
- Patroni does not start a stopped Postgres instance. When Patroni stops, it does not stop the Postgres instance that it manages.
- Patroni does not remove replication slots that do not represent another cluster member or are absent from the permanent slot configuration.

--------

## User guide

[patronictl](/docs/patroni/patronictl#patronictl) supports [pause](/docs/patroni/patronictl#patronictl_pause) and [resume](/docs/patroni/patronictl#patronictl_resume) commands.

You can also send a `PATCH` request to `{namespace}/{cluster}/config` with `{"pause": true/false/null}`.
