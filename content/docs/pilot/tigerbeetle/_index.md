---
title: 'Module: TigerBeetle'
weight: 5080
description: Deploy TigerBeetle, the Financial Transactions Database that is 1000x
  faster.
icon: fas fa-bug
module: [TIGERBEETLE]
categories: [Reference]
---


> [TigerBeetle](https://tigerbeetle.com/) is a financial accounting transaction database offering extreme performance and reliability.


--------

## Overview

The TigerBeetle module is currently available for **Beta** preview only in the Pigsty Professional Edition.


--------

## Installation

Pigsty Infra Repo has the RPM / DEB packages for TigerBeetle, use the following command to install:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["tigerbeetle"]}'
```

After installation, please refer to the official documentation for configuration: https://github.com/tigerbeetle/tigerbeetle


{{% alert title="TigerBeetle Requires Linux Kernel Version 5.5 or Higher!" color="danger" %}}

Please note that TigerBeetle supports only Linux kernel version 5.5 or higher, making it incompatible by default with EL7 (3.10) and EL8 (4.18) systems.

To install TigerBeetle, please use EL9 (5.14), Ubuntu 22.04 (5.15), Debian 12 (6.1), Debian 11 (5.10), or another supported system.

{{% /alert %}}
