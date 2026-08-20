# Deployment

> Multi-node, high-availability Pigsty deployment for production environments.

---

LLMS index: [llms.txt](/llms.txt)

---

Unlike [**Getting Started**](/docs/setup/), production Pigsty deployments require more [**Architecture Planning**](/docs/deploy/planning) and [**Preparation**](/docs/deploy/prepare).

This chapter helps you understand the complete deployment process and provides best practices for production environments.

--------

Before deploying to production, we recommend testing in Pigsty's [**Sandbox**](/docs/deploy/sandbox) to fully understand the workflow.
Use [**Vagrant**](/docs/deploy/vagrant/) to create a local 4-node sandbox, or leverage [**Terraform**](/docs/deploy/terraform/) to provision larger simulation environments in the cloud.

[![pigsty-sandbox](/img/pigsty/sandbox.png)](/docs/concept/arch)

For production, you typically need at least three [**nodes**](/docs/deploy/prepare) for high availability. You should understand Pigsty's core [**Concepts**](/docs/concept) and common administration procedures,
including [**Configuration**](/docs/setup/config), [**Ansible Playbooks**](/docs/setup/playbook), and [**Security Hardening**](/docs/deploy/security) for enterprise compliance.

---

Section pages:

- [Install Pigsty for Production](/docs/deploy/install/): How to install Pigsty on Linux hosts for production?
- [Prepare Resources for Serious Deployment](/docs/deploy/prepare/): Production deployment preparation including hardware, nodes, disks, network, VIP, domain, software, and filesystem requirements.
- [Planning Architecture and Nodes](/docs/deploy/planning/): How many nodes? Which modules need HA? How to plan based on available resources and requirements?
- [Setup Admin User and Privileges](/docs/deploy/admin/): Admin user, sudo, SSH, accessibility verification, and firewall configuration
- [Sandbox](/docs/deploy/sandbox/): 4-node sandbox environment for learning, testing, and demonstration
- [Vagrant](/docs/deploy/vagrant/): Create local virtual machine environment with Vagrant
- [Terraform](/docs/deploy/terraform/): Create virtual machine environment on public cloud with Terraform
- [Security Considerations](/docs/deploy/security/): Credential, network, authentication, encryption, data protection, and audit checks for production Pigsty deployments.
