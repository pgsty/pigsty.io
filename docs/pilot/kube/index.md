# Module: Kubernetes

> Deploy Kubernetes, the Production-Grade Container Orchestration Platform.

---

LLMS index: [llms.txt](/llms.txt)

---

[Kubernetes](https://kubernetes.io/) is a production-grade, open-source container orchestration platform. It helps you automate, deploy, scale, and manage containerized applications.

Pigsty has native support for [**`ETCD`**](/docs/etcd/) clusters, which can be used as external etcd for Kubernetes.

The current open-source tree has no `kube.yml` playbook, Kubernetes role, or `kube_*` parameters. Pigsty provides software repositories and base-node provisioning here; cluster initialization, networking, control-plane management, and upgrades must still be handled by kubeadm, SealOS, or another Kubernetes tool.


-------

## SealOS

[SealOS](https://sealos.io/) is a lightweight, high-performance, and easy-to-use Kubernetes distribution. It is designed to simplify the deployment and management of Kubernetes clusters.

The current Pigsty node platform mapping includes the `sealos` package. Install it from the Infra repository, then use SealOS to manage the cluster.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["sealos"]}'
```


-------

## Kubernetes

If you use classic kubeadm to deploy Kubernetes, install these packages first:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"kube","node_packages":["kubeadm","kubelet","kubectl"]}'
```

Kubernetes supports multiple container runtimes. If you want to use Containerd as the container runtime, please make sure Containerd is installed on the node.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"node,infra","node_packages":["containerd.io"]}'
```

To use Docker as the container runtime, install Docker and provide the `cri-dockerd` bridge component yourself. The default package mapping currently only includes the `containerd.io` runtime:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"node,infra","node_packages":["docker-ce","docker-compose-plugin"]}'
```


## Monitoring

Kubernetes cluster observability is typically handled by in-cluster stacks (such as kube-prometheus-stack).

On the Pigsty side, you can monitor the foundational dependencies Kubernetes relies on:

- [**ETCD Monitoring & Alerting**](/docs/etcd/monitor/): Control-plane metadata consistency and availability
- [**NODE Monitoring & Alerting**](/docs/node/monitor/): Host-level CPU, memory, kernel, and network health
- [**INFRA Monitoring & Alerting**](/docs/infra/monitor/): Monitoring backend, alert pipeline, and observability platform health
