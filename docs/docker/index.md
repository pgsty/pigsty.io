# Module: DOCKER

> Docker daemon service that enables one-click deployment of containerized stateless software templates and additional functionality.

---

LLMS index: [llms.txt](/llms.txt)

---

[Docker](https://www.docker.com/) is the most popular containerization platform, providing standardized software delivery capabilities.

**Pigsty does not rely on Docker to deploy any of its components; instead, it provides the ability to deploy and install Docker** — this is an **optional module**.

Pigsty offers a series of [Docker software/tool/application templates](/docs/app/) for you to choose from as needed.
This allows users to quickly spin up various containerized stateless software templates, adding extra functionality.
You can use external, Pigsty-managed highly available database clusters while placing stateless applications inside containers.

When running `configure`, Pigsty automatically selects suitable upstream repositories and mirror acceleration settings based on `region` (for example, mainland China network environments), to improve image pull speed and availability.
You can easily configure Registry and Proxy settings to flexibly access different image sources.

---

Section pages:

- [Usage](/docs/docker/usage/): Docker module quick start guide - installation, removal, download, repository, mirrors, proxy, and image pulling.
- [Parameters](/docs/docker/param/): DOCKER module provides 8 configuration parameters
- [Playbooks](/docs/docker/playbook/): How to use the built-in Ansible playbook to manage Docker and quick reference for common management commands.
- [Metrics](/docs/docker/metric/): Complete list of monitoring metrics provided by the Pigsty Docker module
- [FAQ](/docs/docker/faq/): Frequently asked questions about the Pigsty Docker module
