# Deployment

> Multi-node, high-availability Pigsty deployment for production environments.

---

LLMS index: [llms.txt](/llms.txt)

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

---

Section pages:

- [Install Pigsty for Production](/docs/deploy/install/): How to install Pigsty on Linux hosts for production?
- [Prepare Resources for Serious Deployment](/docs/deploy/prepare/): Production deployment preparation including hardware, nodes, disks, network, VIP, domain, software, and filesystem requirements.
- [Planning Architecture and Nodes](/docs/deploy/planning/): How many nodes? Which modules need HA? How to plan based on available resources and requirements?
- [Setup Admin User and Privileges](/docs/deploy/admin/): Admin user, sudo, SSH, accessibility verification, and firewall configuration
- [Sandbox](/docs/deploy/sandbox/): 4-node sandbox environment for learning, testing, and demonstration
- [Vagrant](/docs/deploy/vagrant/): Create local virtual machine environment with Vagrant
- [OpenTofu](/docs/deploy/terraform/): Create virtual machine environments on public clouds with OpenTofu
- [Security Considerations](/docs/deploy/security/): Credential, network, authentication, encryption, data protection, and audit checks for production Pigsty deployments.
