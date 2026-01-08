---
title: Get Started
linkTitle: Get Started
weight: 250
description: Deploy Pigsty single-node version on your laptop/cloud server, access DB and Web UI
icon: fas fa-rocket
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty uses a scalable architecture design, suitable for both [**large-scale production environments**](/docs/deploy) and [**single-node development/demo environments**](/docs/setup/install). This guide focuses on the latter.

If you intend to learn about Pigsty, you can start with the [**Quick Start**](/docs/setup/install/) single-node deployment. A Linux virtual machine with 1C/2G is sufficient to run Pigsty.

You can use a Linux MiniPC, free/discounted virtual machines provided by cloud providers, Windows WSL, or create a virtual machine on your own laptop for Pigsty deployment.
Pigsty provides out-of-the-box [**Vagrant**](/docs/deploy/vagrant/) templates and [**Terraform**](/docs/deploy/terraform/) templates to help you provision Linux VMs with one click locally or in the cloud.

[![pigsty-arch](/img/pigsty/arch.png)](/docs/concept/arch)

The single-node version of Pigsty includes all core features: **440+** [**PG extensions**](/docs/pgsql/ext), self-contained Grafana/Victoria monitoring, [**IaC**](/docs/concept/iac) provisioning capabilities,
and local [**PITR**](/docs/concept/pitr) point-in-time recovery. If you have external object storage (for PostgreSQL PITR backup), then for scenarios like demos, personal websites, and small services,
even a single-node environment can provide a certain degree of [**data persistence**](/docs/concept/pitr) guarantee.
However, single-node cannot achieve [**High Availability**](/docs/concept/ha)—automatic failover requires at least 3 nodes.

If you want to install Pigsty in an environment without internet connection, please refer to the [**Offline Install**](/docs/setup/offline/) mode.
If you only need the PostgreSQL database itself, please refer to the [**Slim Install**](/docs/setup/slim/) mode.
If you are ready to start serious multi-node production deployment, please refer to the [**Deployment Guide**](/docs/deploy/).

------

## Quick Start

[**Prepare**](/docs/deploy/prepare) a [**node**](/docs/deploy/prepare#node) with [**compatible Linux system**](/docs/ref/linux/), and execute as an [**admin user**](/docs/deploy/admin) with passwordless [**`ssh`**](/docs/deploy/admin#ssh) and [**`sudo`**](/docs/deploy/admin#sudo) privileges:

```bash
curl -fsSL https://repo.pigsty.cc/get | bash  # Install Pigsty and dependencies
cd ~/pigsty; ./configure -g                   # Generate config (use default single-node config template, -g parameter generates random passwords)
./deploy.yml                                  # Execute deployment playbook to complete deployment
```

Yes, it's that simple. You can use [**pre-configured templates**](/docs/concept/iac/template) to bring up Pigsty with one click without understanding any details.

Next, you can explore the [**Graphical User Interface**](/docs/setup/webui/), access [**PostgreSQL database services**](/docs/setup/pgsql/); or perform [**configuration customization**](/docs/setup/config) and [**execute playbooks**](/docs/setup/playbook) to deploy more clusters.

