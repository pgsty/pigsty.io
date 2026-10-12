---
title: Deployment
weight: 200
description: Multi-node, high-availability Pigsty deployment for production environments.
icon: fas fa-download
module: [PIGSTY]
categories: [Tutorial]
---

Production deployments require [Architecture Planning](/docs/deploy/planning) and [Preparation](/docs/deploy/prepare) beyond the [Getting Started](/docs/setup/) procedure.
This chapter describes the complete deployment process and recommended practices for production.

Before production deployment, test the workflow in the Pigsty [Sandbox](/docs/deploy/sandbox).
Use [Vagrant](/docs/deploy/vagrant/) to create a local 4-node sandbox.
Use [OpenTofu](/docs/deploy/terraform/) to create a larger simulation environment in the cloud.

[![pigsty-sandbox](/img/pigsty/sandbox.png)](/docs/concept/arch)

Production high availability typically requires at least three [nodes](/docs/deploy/prepare).
Review the core [Concepts](/docs/concept) and common administration procedures before deployment.
These procedures include [Configuration](/docs/setup/config), [Ansible Playbooks](/docs/setup/playbook), and [Security Hardening](/docs/deploy/security) for enterprise compliance.
