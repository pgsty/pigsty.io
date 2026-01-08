---
title: Deployment
weight: 350
description: Multi-node, high-availability Pigsty deployment for serious production environments.
icon: fas fa-boxes-packing
module: [PIGSTY]
categories: [Tutorial]
---


Unlike [**Getting Started**](/docs/setup/), production Pigsty deployments require more [**Architecture Planning**](/docs/deploy/planning) and [**Preparation**](/docs/deploy/prepare).

This chapter helps you understand the complete deployment process and provides best practices for production environments.

--------

Before deploying to production, we recommend testing in Pigsty's [**Sandbox**](/docs/deploy/sandbox) to fully understand the workflow.
Use [**Vagrant**](/docs/deploy/vagrant/) to create a local 4-node sandbox, or leverage [**Terraform**](/docs/deploy/terraform/) to provision larger simulation environments in the cloud.

[![pigsty-sandbox](/img/pigsty/sandbox.png)](/docs/concept/arch)

For production, you typically need at least three [**nodes**](/docs/deploy/prepare) for high availability. You should understand Pigsty's core [**Concepts**](/docs/concept) and common administration procedures,
including [**Configuration**](/docs/setup/config), [**Ansible Playbooks**](/docs/setup/playbook), and [**Security Hardening**](/docs/deploy/security) for enterprise compliance.


