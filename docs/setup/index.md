# Get Started

> Install Pigsty on one Linux node. Read the setup guide in an ASD-STE100-inspired style.

---

LLMS index: [llms.txt](/llms.txt)

---

Use this guide to install Pigsty on one Linux node.
Start with [Quick Start](/docs/setup/install/).
A node with 1 CPU core and 2 GB of memory is sufficient.

You can use a Linux MiniPC, a cloud server, Windows WSL, or a virtual machine on your laptop.
Pigsty supplies [Vagrant templates](/docs/deploy/vagrant/) for local virtual machines.
It also supplies [OpenTofu templates](/docs/deploy/terraform/) for cloud servers.

[![Pigsty architecture](/img/pigsty/arch.png)](/docs/concept/arch)

The single-node installation includes these features:

- [600 PostgreSQL extensions](/docs/pgsql/ext).
- Grafana and Victoria monitoring services.
- [Infrastructure as code](/docs/concept/iac) for deployment.
- Local [point-in-time recovery (PITR)](/docs/concept/pitr).

External object storage can keep PostgreSQL backups outside the node.
These backups improve [data durability](/docs/concept/pitr) for demonstrations, personal websites, and small services.
A single node cannot provide [high availability](/docs/concept/ha).
Automatic failover requires at least three nodes.

Choose the installation method that meets your requirements:

| Requirement | Guide |
|:------------|:------|
| Install Pigsty on one Linux node | [Quick Start](/docs/setup/install/) |
| Try Pigsty on macOS or Windows | [Docker Deployment](/docs/setup/docker/) |
| Install without Internet access | [Offline Installation](/docs/setup/offline/) |
| Install PostgreSQL without monitoring services | [Slim Installation](/docs/setup/slim/) |
| Deploy multiple nodes for production | [Deployment Guide](/docs/deploy/) |

## Quick Start

1. [Prepare a node](/docs/deploy/prepare#node) with a [supported Linux operating system](/docs/ref/linux/).
2. Use an [administration account](/docs/deploy/admin) with passwordless [SSH](/docs/deploy/admin#ssh) and [sudo](/docs/deploy/admin#sudo) access.
3. Run the commands below.

```bash
curl -fsSL https://repo.pigsty.io/get | bash  # Install Pigsty and dependencies
cd ~/pigsty; ./configure -g                   # Generate config (with 1-node template, -g generates random passwords)
./deploy.yml                                  # Execute deployment playbook
```

The installation script downloads Pigsty and installs its dependencies.
The configuration script creates `pigsty.yml` and generates random passwords.
The deployment playbook installs the modules in the configuration file.

You can also select a [configuration template](/docs/concept/iac/template).
The template supplies the initial configuration.

After deployment, do these tasks:

- Open the [Web UI](/docs/setup/webui/).
- Connect to [PostgreSQL](/docs/setup/pgsql/).
- Apply the [security recommendations](/docs/setup/security/).
- [Change the configuration](/docs/setup/config/) to add more clusters.
- [Run playbooks](/docs/setup/playbook/) to apply the configuration.

---

Section pages:

- [Single-Node Installation](/docs/setup/install/): Install, configure, and deploy Pigsty on one Linux node.
- [Docker Deployment](/docs/setup/docker/): Run Pigsty in a Docker container for local development and testing.
- [Web Interface](/docs/setup/webui/): Open the Web UI, view monitoring dashboards, and configure domain access.
- [Getting Started with PostgreSQL](/docs/setup/pgsql/): Connect to PostgreSQL with command-line tools and graphical clients.
- [Customize Pigsty with Configuration](/docs/setup/config/): Define nodes, modules, databases, and users in the Pigsty inventory.
- [Run Playbooks with Ansible](/docs/setup/playbook/): Use Ansible playbooks to deploy and manage Pigsty clusters.
- [Offline Installation](/docs/setup/offline/): Install Pigsty without Internet access. Use or build offline packages.
- [Slim Installation](/docs/setup/slim/): Install PostgreSQL clusters without the monitoring infrastructure.
- [Security Recommendations](/docs/setup/security/): Protect credentials, restrict network access, and control access to sensitive files.
