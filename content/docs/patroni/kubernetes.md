---
title: "Using Patroni with Kubernetes"
linkTitle: "Use with Kubernetes"
weight: 120
icon: fas fa-dharmachakra
description: "Using Patroni with Kubernetes objects, labels, and service discovery."
module: [PATRONI]
categories: [Task]
---

> Source: https://patroni.readthedocs.io/en/latest/kubernetes.html

<a id="kubernetes"></a>
Patroni can store cluster state and the leader key in Kubernetes objects. This lets it run Postgres in Kubernetes without a separate consistency store, such as an extra Etcd deployment. Patroni supports two object types for the leader and configuration keys. Select the type with `kubernetes.use_endpoints` or the `PATRONI_KUBERNETES_USE_ENDPOINTS` environment variable.

--------

## Use Endpoints

This mode is recommended but disabled by default for compatibility. When enabled, Patroni creates `Endpoints` and stores cluster configuration and the leader key in their `metadata: annotations` fields. A leader change updates both the leader annotations and the addresses of the leader pod in one operation. This is safer than `ConfigMaps`.

--------

## Use ConfigMaps

In this mode, Patroni creates ConfigMaps and stores keys in their metadata. A leader change needs at least two updates: one for the leader ConfigMap and one for its Endpoint.

To route traffic to the Postgres leader, configure the Kubernetes Postgres service label selector with `role_label` from the Patroni configuration.

Some environments, such as OpenShift, require ConfigMaps.

--------

## Configuration

Patroni Kubernetes [settings](/docs/patroni/config/yaml#kubernetes_settings) and [environment variables](/docs/patroni/config/env#kubernetes_environment) are described in the general chapters of the documentation.

<a id="kubernetes_role_values"></a>

### Customize role label

By default, Patroni labels its pod with the node role, such as `role=primary`. Customize the label key and values with `kubernetes.role_label`, `kubernetes.leader_label_value`, `kubernetes.follower_label_value`, and `kubernetes.standby_leader_label_value`.

To reduce downtime when you change default role labels to custom labels, use these steps:

1.  Set `kubernetes.tmp_role_label` to a temporary label, such as `tmp_role`, with the original role value. After the pods restart, Patroni sets these labels:

> ```yaml
> labels:
>   cluster-name: foo
>   role: primary
>   tmp_role: primary
> ```

2.  After all pods have been updated, modify the service selector to select the temporary label.

> ```yaml
> selector:
>   cluster-name: foo
>   tmp_role: primary
> ```

3.  Add the custom role label, for example `kubernetes.leader_label_value=primary`. After the pods restart, Patroni sets these labels:

> ```yaml
> labels:
>   cluster-name: foo
>   role: primary
>   tmp_role: primary
> ```

4.  After all pods have been updated again, modify the service selector to use new role value.

> ```yaml
> selector:
>   cluster-name: foo
>   role: primary
> ```

5.  Finally, remove the temporary label from your configuration and update all pods.

> ```yaml
> labels:
>   cluster-name: foo
>   role: primary
> ```

--------

## Examples

- The [kubernetes](https://github.com/patroni/patroni/tree/master/kubernetes) directory contains an example Docker image and Kubernetes manifest for tests. The current example cannot use PersistentVolumes because of permission problems.
- The [Spilo Project](https://github.com/zalando/spilo) provides a full-featured Docker image with Persistent Volume support.
- A [Helm chart](https://github.com/kubernetes/charts/tree/master/incubator/patroni) deploys the Spilo image with Patroni configured to run in Kubernetes.
- For Patroni and Spilo clusters at scale, see [postgres-operator](https://github.com/zalando/postgres-operator). It uses the operator pattern to manage Spilo clusters.
