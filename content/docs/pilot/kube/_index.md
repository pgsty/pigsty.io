---
title: 'Module: Kubernetes'
weight: 5070
description: Deploy Kubernetes, the Production-Grade Container Orchestration Platform.
icon: fas fa-dharmachakra
module: [PILOT]
categories: [Reference]
---


[Kubernetes](https://kubernetes.io/) is a production-grade, open-source container orchestration platform. It helps you automate, deploy, scale, and manage containerized applications.

Pigsty has native support for [**`ETCD`**](/docs/etcd/) clusters, which can be used as external etcd for Kubernetes.

The current open-source tree has no `kube.yml` playbook, Kubernetes role, or `kube_*` parameters. Pigsty provides software repositories and base-node provisioning. Use kubeadm, SealOS, or another Kubernetes tool for cluster initialization, networking, control-plane management, and upgrades.


-------

## SealOS

[SealOS](https://sealos.io/) is a lightweight, high-performance Kubernetes distribution. It simplifies Kubernetes cluster deployment and management.

The current Pigsty node platform mapping includes the `sealos` package. Install it from the Infra repository. Then use SealOS to manage the cluster.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["sealos"]}'
```


-------

## Kubernetes

If you use classic kubeadm to deploy Kubernetes, install these packages first:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"kube","node_packages":["kubeadm","kubelet","kubectl"]}'
```

Kubernetes supports multiple container runtimes. To use Containerd as the container runtime, make sure it is installed on the node.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"node,infra","node_packages":["containerd.io"]}'
```

To use Docker as the container runtime, install Docker and provide the `cri-dockerd` bridge component yourself. The default package mapping currently only includes the `containerd.io` runtime:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"node,infra","node_packages":["docker-ce","docker-compose-plugin"]}'
```


## Monitoring

An in-cluster stack, such as kube-prometheus-stack, typically handles Kubernetes cluster observability.

On the Pigsty side, you can monitor the foundational dependencies Kubernetes relies on:

- [**ETCD Monitoring & Alerting**](/docs/etcd/monitor/): Control-plane metadata consistency and availability
- [**NODE Monitoring & Alerting**](/docs/node/monitor/): Host-level CPU, memory, kernel, and network health
- [**INFRA Monitoring & Alerting**](/docs/infra/monitor/): Monitoring backend, alert pipeline, and observability platform health
