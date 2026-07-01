---
title: 'Module: Kubernetes'
weight: 5070
description: Deploy Kubernetes, the Production-Grade Container Orchestration Platform.
icon: fas fa-dharmachakra
module: [PILOT]
categories: [Reference]
---


[Kubernetes](https://kubernetes.io/) is a production-grade, open-source container orchestration platform. It helps you automate, deploy, scale, and manage containerized applications.

Pigsty has native support for [**`ETCD`**](/docs/etcd/) clusters, which can be used by Kubernetes. Therefore, the pro version also provides the **`KUBE`** module for deploying production-grade Kubernetes clusters.

The `KUBE` module is currently in Beta status and only available for Pro edition customers.

However, you can directly specify node repositories in Pigsty, install Kubernetes packages, and use Pigsty to adjust environment configurations and provision nodes for K8S deployment, solving the last mile delivery problem.


-------

## SealOS

[SealOS](https://sealos.io/) is a lightweight, high-performance, and easy-to-use Kubernetes distribution. It is designed to simplify the deployment and management of Kubernetes clusters.

Pigsty provides SealOS 5.0 RPM and DEB packages in the Infra repository, which can be downloaded and installed directly, and use SealOS to manage clusters.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["sealos"]}'
```


-------

## Kubernetes

If you prefer to deploy Kubernetes using the classic Kubeadm, please refer to the module reference below.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"kube","node_packages":["kubeadm,kubelet,kubectl"]}'
```

Kubernetes supports multiple container runtimes. If you want to use Containerd as the container runtime, please make sure Containerd is installed on the node.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"node,infra","node_packages":["containerd.io"]}'
```

To use Docker as the container runtime, install Docker and provide the `cri-dockerd` bridge component yourself. The default package mapping currently only includes the `containerd.io` runtime:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"node,infra","node_packages":["docker-ce,docker-compose-plugin"]}'
```


-------

## Playbook

`kube.yml` playbook (TBD)


-------

## Monitoring

Kubernetes cluster observability is typically handled by in-cluster stacks (such as kube-prometheus-stack).

On the Pigsty side, focus on monitoring the foundational dependencies Kubernetes relies on:

- [**ETCD Monitoring & Alerting**](/docs/etcd/monitor/): Control-plane metadata consistency and availability
- [**NODE Monitoring & Alerting**](/docs/node/monitor/): Host-level CPU, memory, kernel, and network health
- [**INFRA Monitoring & Alerting**](/docs/infra/monitor/): Monitoring backend, alert pipeline, and observability platform health

-------

## Parameters

Kubernetes module parameters:

```yaml
#kube_cluster:                                          #IDENTITY# # define kubernetes cluster name
kube_role: node                                                    # default kubernetes role (master|node)
kube_version: 1.31.0                                               # kubernetes version
kube_registry: registry.aliyuncs.com/google_containers             # kubernetes version aliyun k8s miiror repository
kube_pod_cidr: "10.11.0.0/16"                                      # kubernetes pod network cidr
kube_service_cidr: "10.12.0.0/16"                                  # kubernetes service network cidr
kube_dashboard_admin_user: dashboard-admin-sa                      # kubernetes dashboard admin user name
```
