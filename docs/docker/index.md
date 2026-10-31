# Module: DOCKER

> Docker daemon service that enables one-click deployment of containerized stateless software templates and additional functionality.

---

LLMS index: [llms.txt](/llms.txt)

---

[Docker](https://www.docker.com/) is a widely used containerization platform. It provides a standard way to deliver software.

**Pigsty provides Docker as an optional module.** Pigsty does not require Docker to deploy its components.

Select the [Docker software, tool, and application templates](/docs/app/) that you need. These templates quickly start stateless software in containers to provide extra functions. You can connect these applications to external, highly available database clusters managed by Pigsty.

When you run `configure`, Pigsty selects suitable upstream repositories and mirror settings from `region`. For example, it adjusts these settings for networks in mainland China. This improves image download speed and availability.

Configure the Registry and Proxy settings to access the image sources you need.

---

Section pages:

- [Usage](/docs/docker/usage/): Docker module quick start guide - installation, removal, download, repository, mirrors, proxy, and image pulling.
- [Parameters](/docs/docker/param/): DOCKER module provides 8 configuration parameters
- [Playbooks](/docs/docker/playbook/): How to use the built-in Ansible playbook to manage Docker and quick reference for common management commands.
- [Metrics](/docs/docker/metric/): Docker metrics collection endpoints and historical scrape samples.
- [FAQ](/docs/docker/faq/): Frequently asked questions about the Pigsty Docker module
