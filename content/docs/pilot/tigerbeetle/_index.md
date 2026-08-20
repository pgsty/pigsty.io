---
title: 'Module: TigerBeetle'
weight: 5060
description: Deploy TigerBeetle, the Financial Transactions Database that is 1000x
  faster.
icon: fas fa-bug
module: [PILOT]
categories: [Reference]
---


> [TigerBeetle](https://tigerbeetle.com/) is a financial accounting transaction database offering extreme performance and reliability.


--------

## Overview

The current open-source tree has no TigerBeetle role or dedicated playbook. It only provides the `tigerbeetle` installation alias in the node platform package map; initialize and manage the service according to the official TigerBeetle documentation.


--------

## Installation

Use the following command to install the mapped package from the Pigsty Infra repository:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["tigerbeetle"]}'
```

After installation, please refer to the official documentation for configuration: https://github.com/tigerbeetle/tigerbeetle


> [!CAUTION] TigerBeetle Requires Linux Kernel Version 5.5 or Higher!
> Please note that TigerBeetle supports only Linux kernel version 5.5 or higher, making it incompatible by default with EL7 (3.10) and EL8 (4.18) systems.
>
> To install TigerBeetle, please use EL 9/10, Ubuntu 22/24/26, Debian 12/13, or another system whose kernel version meets TigerBeetle's requirements.
