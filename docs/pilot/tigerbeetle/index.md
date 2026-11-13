# Module: TigerBeetle

> Deploy TigerBeetle, the Financial Transactions Database that is 1000x faster.

---

LLMS index: [llms.txt](/llms.txt)

---

> [TigerBeetle](https://tigerbeetle.com/) is a financial accounting transaction database offering extreme performance and reliability.


--------

## Overview

The current open-source tree has no TigerBeetle role or dedicated playbook. It provides only the `tigerbeetle` installation alias in the node platform package map. Use the official TigerBeetle documentation to initialize and manage the service.


--------

## Installation

Use the following command to install the mapped package from the Pigsty Infra repository:

```bash
./node.yml -t node_install -e '{"node_repo_modules":"infra","node_packages":["tigerbeetle"]}'
```

After installation, use the official documentation to configure TigerBeetle: https://github.com/tigerbeetle/tigerbeetle


> [!CAUTION] TigerBeetle Requires Linux Kernel Version 5.5 or Higher!
> TigerBeetle supports only Linux kernel version 5.5 or higher. Thus, it is incompatible with the default kernels of EL7 (3.10) and EL8 (4.18).
>
> Use EL 9/10, Ubuntu 22/24/26, Debian 12/13, or another system with a supported kernel version.
