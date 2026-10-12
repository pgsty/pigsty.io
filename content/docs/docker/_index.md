---
title: "Module: DOCKER"
weight: 4200
description: Docker daemon service that enables one-click deployment of containerized stateless software templates and additional functionality.
icon: fa-brands fa-docker
module: [DOCKER]
categories: [Reference]
---

[Docker](https://www.docker.com/) is a widely used containerization platform. It provides a standard way to deliver software.

**Pigsty provides Docker as an optional module.** Pigsty does not require Docker to deploy its components.

Select the [Docker software, tool, and application templates](/docs/app/) that you need. These templates quickly start stateless software in containers to provide extra functions. You can connect these applications to external, highly available database clusters managed by Pigsty.

When you run `configure`, Pigsty selects suitable upstream repositories and mirror settings from `region`. For example, it adjusts these settings for networks in mainland China. This improves image download speed and availability.

Configure the Registry and Proxy settings to access the image sources you need.
