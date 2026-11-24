# ER Model

> How Pigsty abstracts different functionality into modules, and the E-R diagrams for these modules.

---

LLMS index: [llms.txt](/llms.txt)

---

A **deployment** is the largest entity in Pigsty. This entity-relationship diagram shows its main entities and their relationships:

![Pigsty full data model ER diagram](/img/pigsty/er-full.svg)

A deployment is also an **environment**. Examples include Production (Prod), User Acceptance Testing (UAT), Staging, Testing, and Development (Devbox). Each environment has a Pigsty [**inventory**](/docs/concept/iac/inventory) that describes all its entities and attributes.

An environment usually has shared infrastructure ([**`INFRA`**](/docs/infra)). This includes [**`ETCD`**](/docs/etcd) for the HA DCS and [**`MINIO`**](/docs/minio) for centralized backup storage. Infrastructure serves multiple PostgreSQL clusters and other database modules. [**Deployments without infrastructure**](/docs/setup/slim) are also possible.

Pigsty organizes almost all database modules into **clusters**. Each cluster is an Ansible group with node resources. PostgreSQL HA, Redis, Etcd, and Silo use this model. An environment can contain multiple clusters.

- [**PostgreSQL Cluster**](/docs/concept/model/pgsql)
- [**ETCD Cluster**](/docs/concept/model/etcd)
- [**MinIO Cluster**](/docs/concept/model/minio)
- [**Redis Cluster**](/docs/concept/model/redis)
- [**INFRA Nodes**](/docs/concept/model/infra)

---

Section pages:

- [E-R Model of Infra Cluster](/docs/concept/model/infra/): Entity-Relationship model for INFRA infrastructure nodes in Pigsty, component composition, and naming conventions.
- [E-R Model of PostgreSQL Cluster](/docs/concept/model/pgsql/): Entity-Relationship model for PostgreSQL clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.
- [E-R Model of Etcd Cluster](/docs/concept/model/etcd/): Entity-Relationship model for ETCD clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.
- [MINIO Cluster Model](/docs/concept/model/minio/): The cluster, instance, and node identity model used when Pigsty's MINIO module deploys Silo.
- [E-R Model of Redis Cluster](/docs/concept/model/redis/): Entity-Relationship model for Redis clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.
