---
title: 'Module: Victoria'
weight: 5140
description: Deploy VictoriaMetrics & VictoriaLogs, the in-place replacement for Prometheus
  & Loki.
icon: fas fa-layer-group
module: [VICTORIA]
categories: [Reference]
---

> [VictoriaMetrics](https://victoriametrics.com/) is the in-place replacement for Prometheus, offering better performance and compression ratio.


--------

## Overview

Victoria is currently only available in the Pigsty Professional Edition **Beta** preview.
It includes the deployment and management of VictoriaMetrics and VictoriaLogs components.


--------

## Installation

Pigsty Infra Repo has the RPM / DEB packages for VictoriaMetrics, use the following command to install:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["victoria-metrics"]}'
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["victoria-metrics-cluster"]}'
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["victoria-metrics-utils"]}'
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["victoria-logs"]}'
```

For common users, installing the standalone version of VictoriaMetrics is sufficient.
If you need to deploy a cluster, you can install the `victoria-metrics-cluster` package.
