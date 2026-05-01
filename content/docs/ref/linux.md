---
title: Supported Linux
weight: 455
description: Pigsty compatible Linux OS distribution major versions and CPU architectures
icon: fa-brands fa-redhat
categories: [Reference]
---

Pigsty runs on **Linux**, supporting **`amd64/x86_64`** and **`arm64/aarch64`** arch, plus 3 major distros: [**EL**](#el), [**Debian**](#debian), [**Ubuntu**](#ubuntu).

Pigsty runs bare-metal without containers. Supports actively maintained mainstream releases across the 3 major distro families and both archs.


## Overview

**Recommended OS versions:** RockyLinux 10.1 / 9.7, Ubuntu 26.04.0 / 24.04.4 / 22.04.5, Debian 13.4 / 12.13.

| Distro                 |                Arch                |                                             OS Code                                             |                       PG18                       |                       PG17                       |                       PG16                       |                       PG15                       |                       PG14                       |                       PG13                       |
|:-----------------------|:----------------------------------:|:-----------------------------------------------------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|
| RHEL / Rocky / Alma 10 | <b class="text-sky-600">x86_64</b> |  [`el10.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.x86_64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |
| RHEL / Rocky / Alma 10 | <b class="text-danger">aarch64</b> | [`el10.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.aarch64.yml) | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |
| Ubuntu 26.04 (`resolute`) | <b class="text-sky-600">x86_64</b> |   [`u26.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u26.x86_64.yml)   | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | |
| Ubuntu 26.04 (`resolute`) | <b class="text-danger">aarch64</b> |  [`u26.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u26.aarch64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | |
| Ubuntu 24.04 (`noble`) | <b class="text-sky-600">x86_64</b> |   [`u24.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.x86_64.yml)   | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |
| Ubuntu 24.04 (`noble`) | <b class="text-danger">aarch64</b> |  [`u24.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.aarch64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |
| Debian 13 (`trixie`)   | <b class="text-sky-600">x86_64</b> |   [`d13.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d13.x86_64.yml)   | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |
| Debian 13 (`trixie`)   | <b class="text-danger">aarch64</b> |  [`d13.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d13.aarch64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |


----------------

## EL

Pigsty supports RHEL / Rocky / Alma / Anolis / CentOS 8, 9, 10.

| EL Distro                 |                Arch                |                                             OS Code                                             |                        PG18                        |                        PG17                        |                        PG16                        |                          PG15                           |                          PG14                           |                          PG13                           |
|:--------------------------|:----------------------------------:|:-----------------------------------------------------------------------------------------------:|:--------------------------------------------------:|:--------------------------------------------------:|:--------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|
| RHEL10 / Rocky10 / Alma10 | <b class="text-sky-600">x86_64</b> |  [`el10.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.x86_64.yml)  |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| RHEL10 / Rocky10 / Alma10 | <b class="text-danger">aarch64</b> | [`el10.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.aarch64.yml) |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| RHEL9 / Rocky9 / Alma9    | <b class="text-sky-600">x86_64</b> |   [`el9.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.x86_64.yml)   |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| RHEL9 / Rocky9 / Alma9    | <b class="text-danger">aarch64</b> |  [`el9.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.aarch64.yml)  |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |  <i class="fas fa-circle-check text-primary"></i>  |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| RHEL8 / Rocky8 / Alma8    | <b class="text-sky-600">x86_64</b> |   [`el8.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.x86_64.yml)   | <i class="fas fa-circle-check text-secondary"></i> | <i class="fas fa-circle-check text-secondary"></i> | <i class="fas fa-circle-check text-secondary"></i> |   <i class="fas fa-circle-check text-secondary"></i>    |   <i class="fas fa-circle-check text-secondary"></i>    |   <i class="fas fa-circle-check text-secondary"></i>    |
| RHEL8 / Rocky8 / Alma8    | <b class="text-danger">aarch64</b> |  [`el8.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.aarch64.yml)  | <i class="fas fa-circle-check text-secondary"></i> | <i class="fas fa-circle-check text-secondary"></i> | <i class="fas fa-circle-check text-secondary"></i> |   <i class="fas fa-circle-check text-secondary"></i>    |   <i class="fas fa-circle-check text-secondary"></i>    |   <i class="fas fa-circle-check text-secondary"></i>    |
| RHEL7 / CentOS7           | <b class="text-sky-600">x86_64</b> |   [`el7.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el7.x86_64.yml)   |                                                    |                                                    |                                                    | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> |
| RHEL7 / CentOS7           | <b class="text-danger">aarch64</b> |                                                -                                                |                                                    |                                                    |                                                    |                                                         |                                                         |                                                         |

{{% alert title="RockyLinux 10.1 / 9.7 Recommended" color="success" %}}
RockyLinux 10.1 / 9.7 balances stability and fresh software. Recommended for EL users.
{{% /alert %}}

{{% alert title="EL8 EOL Soon" color="warning" %}}
EL8 goes EOL in 2029. Plan upgrade ASAP. EL10 support is ready, EL8 will be dropped in next release.
{{% /alert %}}

{{% alert title="EL 7 EOL @ 2024-06" color="danger" %}}
RHEL 7 EOL since Jun 2024. PGDG stopped providing binary packages for PG 16/17/18 on EL7.

For extended support on legacy OS, consider [Enterprise Subscription](/docs/about/service).
{{% /alert %}}

----------------

## Ubuntu

Pigsty supports Ubuntu 26.04 / 24.04 / 22.04:

| Ubuntu Distro             |                 Arch                 |                                             OS Code                                              |                       PG18                       |                       PG17                       |                          PG16                           |                          PG15                           |                          PG14                           |                          PG13                           |
|:--------------------------|:------------------------------------:|:------------------------------------------------------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|
| Ubuntu 26.04 (`resolute`) | <b class="text-sky-600">x86_64</b>  |  [`u26.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u26.x86_64.yml)   | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |                                                         |
| Ubuntu 26.04 (`resolute`) | <b class="text-danger">aarch64</b>  | [`u26.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u26.aarch64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |                                                         |
| Ubuntu 24.04 (`noble`) | <b class="text-sky-600">x86_64</b> |  [`u24.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.x86_64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Ubuntu 24.04 (`noble`) | <b class="text-danger">aarch64</b> | [`u24.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.aarch64.yml) | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Ubuntu 22.04 (`jammy`) | <b class="text-sky-600">x86_64</b> |  [`u22.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u22.x86_64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Ubuntu 22.04 (`jammy`) | <b class="text-danger">aarch64</b> | [`u22.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u22.aarch64.yml) | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Ubuntu 20.04 (`focal`) | <b class="text-sky-600">x86_64</b> |  [`u20.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u20.x86_64.yml)  |                                                  |                                                  | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> |
| Ubuntu 20.04 (`focal`) | <b class="text-danger">aarch64</b> |                                               -                                               |                                                  |                                                  |                                                         |                                                         |                                                         |                                                         |

{{% alert title="Ubuntu 26.04.0 / 24.04.4 / 22.04.5 LTS Recommended" color="success" %}}
Ubuntu 26.04 provides the newest LTS baseline, while Ubuntu 24.04 remains the conservative default for Ubuntu users.
{{% /alert %}}

{{% alert title="Ubuntu 20.04 EOL" color="danger" %}}
Ubuntu 20.04 EOL since Apr 2025.
For extended support on legacy OS, consider [Enterprise Subscription](/docs/about/service).
{{% /alert %}}


----------------

## Debian

Pigsty supports Debian 12 / 13, latest Debian 13.3 recommended:

| Debian Distro          |                Arch                |                                            OS Code                                            |                       PG18                       |                       PG17                       |                          PG16                           |                          PG15                           |                          PG14                           |                          PG13                           |
|:-----------------------|:----------------------------------:|:---------------------------------------------------------------------------------------------:|:------------------------------------------------:|:------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|
| Debian 13 (`trixie`)   | <b class="text-sky-600">x86_64</b> |  [`d13.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d13.x86_64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Debian 13 (`trixie`)   | <b class="text-danger">aarch64</b> | [`d13.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d13.aarch64.yml) | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Debian 12 (`bookworm`) | <b class="text-sky-600">x86_64</b> |  [`d12.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d12.x86_64.yml)  | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Debian 12 (`bookworm`) | <b class="text-danger">aarch64</b> | [`d12.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d12.aarch64.yml) | <i class="fas fa-circle-check text-primary"></i> | <i class="fas fa-circle-check text-primary"></i> |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |    <i class="fas fa-circle-check text-primary"></i>     |
| Debian 11 (`bullseye`) | <b class="text-sky-600">x86_64</b> |  [`d11.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d11.x86_64.yml)  |                                                  |                                                  | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> | <i class="fas fa-triangle-exclamation text-danger"></i> |
| Debian 11 (`bullseye`) | <b class="text-danger">aarch64</b> |                                               -                                               |                                                  |                                                  |                                                         |                                                         |                                                         |                                                         |

{{% alert title="Debian 12.13 / 13.3 Recommended" color="success" %}}
{{% /alert %}}

{{% alert title="Debian 11 EOL @ 2024-07" color="danger" %}}
Debian 11 EOL since Jul 2024. For extended support on legacy OS, consider [Enterprise Subscription](/docs/about/service).
{{% /alert %}}


----------------

## Vagrant

For local VM deployment, use these Vagrant base images (same as used in Pigsty dev):

- [`cloud-image/almalinux-8`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/almalinux-8): AlmaLinux 8.10
- [`bento/rockylinux-9`](https://portal.cloud.hashicorp.com/vagrant/discover/bento/rockylinux-9): RockyLinux 9.7
- [`cloud-image/almalinux-10`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/almalinux-10): AlmaLinux 10.1
- [`cloud-image/debian-12`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/debian-12): Debian 12.13
- [`cloud-image/debian-13`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/debian-13): Debian 13.3
- [`cloud-image/ubuntu-22.04`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/ubuntu-22.04): Ubuntu 22.04.5
- [`bento/ubuntu-24.04`](https://portal.cloud.hashicorp.com/vagrant/discover/bento/ubuntu-24.04): Ubuntu 24.04.4
- [`cloud-image/ubuntu-26.04`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/ubuntu-26.04): Ubuntu 26.04.0


----------------

## Terraform

For cloud deployment, use these Terraform base images (Aliyun example):

- Rocky 8.10     :  `rockylinux_8_10_x64_20G_alibase_20240923.vhd`
- Rocky 9.7      :  `rockylinux_9_7_x64_20G_alibase_20260119.vhd`
- Rocky 10.1     :  `rockylinux_10_1_x64_20G_alibase_20260119.vhd`
- Ubuntu 22.04.5 :  `ubuntu_22_04_x64_20G_alibase_20240926.vhd`
- Ubuntu 24.04.4  :  `ubuntu_24_04_x64_20G_alibase_20240923.vhd`
- Debian 12.13   :  `debian_12_13_x64_20G_alibase_20241201.vhd`
- Debian 13.3    :  `debian_13_3_x64_20G_alibase_20250101.vhd`

- Rocky 8.10 (aarch64)     :  `rockylinux_8_10_arm64_20G_alibase_20251120.vhd`
- Rocky 9.7 (aarch64)      :  `rockylinux_9_7_arm64_20G_alibase_20260119.vhd`
- Rocky 10.1 (aarch64)     :  `rockylinux_10_1_arm64_20G_alibase_20260119.vhd`
- Ubuntu 22.04.5 (aarch64) :  `ubuntu_22_04_arm64_20G_alibase_20251126.vhd`
- Ubuntu 24.04.4 (aarch64) :  `ubuntu_24_04_arm64_20G_alibase_20251126.vhd`
- Debian 12.13 (aarch64)   :  `debian_12_13_arm64_20G_alibase_20250825.vhd`
- Debian 13.3 (aarch64)    :  `debian_13_3_arm64_20G_alibase_20251121.vhd`
