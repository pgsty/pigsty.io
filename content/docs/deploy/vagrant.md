---
title: Vagrant
weight: 385
description: Create local virtual machine environment with Vagrant
icon: fa-solid fa-laptop-code
module: [PIGSTY]
categories: [Tutorial]
---

[**Vagrant**](https://www.vagrantup.com/) is a popular local virtualization tool that creates local virtual machines in a declarative manner.

Pigsty requires a Linux environment to run. You can use Vagrant to easily create Linux virtual machines locally for testing.


----------------

## Quick Start

### Install Dependencies

First, ensure you have [**Vagrant**](https://www.vagrantup.com/) and a virtual machine provider (such as [**VirtualBox**](https://www.virtualbox.org/) or [**libvirt**](https://libvirt.org/)) installed on your system.

On macOS, you can use [**Homebrew**](https://brew.sh/) for one-click installation:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vagrant virtualbox ansible
```

{{% alert title="VirtualBox requires reboot after installation" color="warning" %}}
After installing VirtualBox, you need to restart your system and allow its kernel extensions in System Preferences.
{{% /alert %}}

On Linux, you can use VirtualBox or [**vagrant-libvirt**](https://vagrant-libvirt.github.io/vagrant-libvirt/) as the VM provider.

### Create Virtual Machines

Use the Pigsty-provided `make` shortcuts to create virtual machines:

```bash
cd ~/pigsty

make meta       # 1 node devbox for quick start, development, and testing
make full       # 4 node sandbox for HA testing and feature demonstration
make simu       # 20 node simubox for production environment simulation

# Other less common specs
make dual       # 2 node environment
make trio       # 3 node environment
make deci       # 10 node environment
```

You can use variant aliases to specify different operating system images:

```bash
make meta9      # Create single node with RockyLinux 9
make full12     # Create 4-node sandbox with Debian 12
make simu24     # Create 20-node simubox with Ubuntu 24.04
```

Available OS suffixes: `7` (EL7), `8` (EL8), `9` (EL9), `10` (EL10), `11` (Debian 11), `12` (Debian 12), `13` (Debian 13), `20` (Ubuntu 20.04), `22` (Ubuntu 22.04), `24` (Ubuntu 24.04)

### Build Environment

You can also use the following aliases to create Pigsty build environments. These templates won't replace the base image:

```bash
make oss        # 3 node OSS build environment
make pro        # 5 node PRO build environment
make rpm        # 3 node EL7/8/9 build environment
make deb        # 5 node Debian11/12 Ubuntu20/22/24 build environment
make all        # 7 node full build environment
```


----------------

## Spec Templates

Pigsty provides multiple predefined VM specs in the [`vagrant/spec/`](https://github.com/pgsty/pigsty/tree/main/vagrant/spec) directory:

|                                 Template                                  | Nodes  |       Spec        |         Description          |  Alias  |
|:-------------------------------------------------------------------------:|:------:|:-----------------:|:----------------------------:|:-------:|
| [meta.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/meta.rb) | 1 node |    2c4g x 1       |     Single-node devbox       | Devbox  |
| [dual.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/dual.rb) | 2 nodes|    1c2g x 2       |      Two-node environment    |         |
| [trio.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/trio.rb) | 3 nodes|    1c2g x 3       |     Three-node environment   |         |
| [full.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/full.rb) | 4 nodes| 2c4g + 1c2g x 3   |    4-node full sandbox       | Sandbox |
| [deci.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/deci.rb) | 10 nodes|      Mixed       |     10-node environment      |         |
| [simu.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/simu.rb) | 20 nodes|      Mixed       | 20-node production simubox   | Simubox |
| [minio.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/minio.rb)| 4 nodes| 1c2g x 4 + disk  |   MinIO test environment     |         |
| [oss.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/oss.rb)   | 3 nodes|    1c2g x 3       | 3-node OSS build environment |         |
| [pro.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/pro.rb)   | 5 nodes|    1c2g x 5       | 5-node PRO build environment |         |
| [rpm.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/rpm.rb)   | 3 nodes|    1c2g x 3       | 3-node EL build environment  |         |
| [deb.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/deb.rb)   | 5 nodes|    1c2g x 5       | 5-node Deb build environment |         |
| [all.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/all.rb)   | 7 nodes|    1c2g x 7       | 7-node full build environment|         |

Each spec file contains a `Specs` variable describing the VM nodes. For example, `full.rb` contains the 4-node sandbox definition:

```ruby
# full: pigsty full-featured 4-node sandbox for HA-testing & tutorial & practices

Specs = [
  { "name" => "meta"   , "ip" => "10.10.10.10" ,  "cpu" => "2" ,  "mem" => "4096" ,  "image" => "bento/rockylinux-9" },
  { "name" => "node-1" , "ip" => "10.10.10.11" ,  "cpu" => "1" ,  "mem" => "2048" ,  "image" => "bento/rockylinux-9" },
  { "name" => "node-2" , "ip" => "10.10.10.12" ,  "cpu" => "1" ,  "mem" => "2048" ,  "image" => "bento/rockylinux-9" },
  { "name" => "node-3" , "ip" => "10.10.10.13" ,  "cpu" => "1" ,  "mem" => "2048" ,  "image" => "bento/rockylinux-9" },
]
```

### simu Spec Details

`simu.rb` provides a 20-node production environment simulation configuration:

- 3 x infra nodes (`meta1-3`): 4c16g
- 2 x haproxy nodes (`proxy1-2`): 1c2g
- 4 x minio nodes (`minio1-4`): 1c2g
- 5 x etcd nodes (`etcd1-5`): 1c2g
- 6 x pgsql nodes (`pg-src-1-3`, `pg-dst-1-3`): 2c4g


----------------

## Config Script

Use the [`vagrant/config`](https://github.com/pgsty/pigsty/blob/main/vagrant/config) script to generate the final `Vagrantfile` based on spec and options:

```bash
cd ~/pigsty
vagrant/config [spec] [image] [scale] [provider]

# Examples
vagrant/config meta                # Use 1-node spec with default EL9 image
vagrant/config dual el9            # Use 2-node spec with EL9 image
vagrant/config trio d12 2          # Use 3-node spec with Debian 12, double resources
vagrant/config full u22 4          # Use 4-node spec with Ubuntu 22, 4x resources
vagrant/config simu u24 1 libvirt  # Use 20-node spec with Ubuntu 24, libvirt provider
```

### Image Aliases

The config script supports various image aliases:

| Distro | Alias | Vagrant Box |
|--------|-------|-------------|
| CentOS 7 | `el7`, `7`, `centos` | `generic/centos7` |
| Rocky 8 | `el8`, `8`, `rocky8` | `bento/rockylinux-9` |
| Rocky 9 | `el9`, `9`, `rocky9`, `el` | `bento/rockylinux-9` |
| Rocky 10 | `el10`, `rocky10` | `rockylinux/10` |
| Debian 11 | `d11`, `11`, `debian11` | `generic/debian11` |
| Debian 12 | `d12`, `12`, `debian12` | `generic/debian12` |
| Debian 13 | `d13`, `13`, `debian13` | `cloud-image/debian-13` |
| Ubuntu 20.04 | `u20`, `20`, `ubuntu20` | `generic/ubuntu2004` |
| Ubuntu 22.04 | `u22`, `22`, `ubuntu22`, `ubuntu` | `generic/ubuntu2204` |
| Ubuntu 24.04 | `u24`, `24`, `ubuntu24` | `bento/ubuntu-24.04` |

### Resource Scaling

You can use the `VM_SCALE` environment variable to adjust the resource multiplier (default is `1`):

```bash
VM_SCALE=2 vagrant/config meta     # Double the CPU/memory resources for meta spec
```

For example, using `VM_SCALE=4` with the meta spec will adjust the default 2c4g to 8c16g:

```ruby
Specs = [
  { "name" => "meta" , "ip" => "10.10.10.10", "cpu" => "8" , "mem" => "16384" , "image" => "bento/rockylinux-9" },
]
```

{{% alert title="simu spec doesn't support scaling" color="info" %}}
The `simu` spec doesn't support resource scaling. The scale parameter will be automatically ignored because its resource configuration is already optimized for simulation scenarios.
{{% /alert %}}


----------------

## VM Management

Pigsty provides a set of Makefile shortcuts for managing virtual machines:

```bash
make           # Equivalent to make start
make new       # Destroy existing VMs and create new ones
make ssh       # Write VM SSH config to ~/.ssh/ (must run after creation)
make dns       # Write VM DNS records to /etc/hosts (optional)
make start     # Start VMs and configure SSH (up + ssh)
make up        # Start VMs with vagrant up
make halt      # Shutdown VMs (alias: down, dw)
make clean     # Destroy VMs (alias: del, destroy)
make status    # Show VM status (alias: st)
make pause     # Pause VMs (alias: suspend)
make resume    # Resume VMs
make nuke      # Destroy all VMs and volumes with virsh (libvirt only)
make info      # Show libvirt info (VMs, networks, storage volumes)
```


----------------

## SSH Keys

Pigsty Vagrant templates use your `~/.ssh/id_rsa[.pub]` as the SSH key for VMs by default.

Before starting, ensure you have a valid SSH key pair. If not, generate one with:

```bash
ssh-keygen -t rsa -b 2048 -N '' -f ~/.ssh/id_rsa -q
```


----------------

## Supported Images

Pigsty currently uses the following Vagrant Boxes for testing:

```bash
# x86_64 / amd64
el8 :  bento/rockylinux-8     (libvirt, 202502.21.0, (amd64))
el9 :  bento/rockylinux-9     (libvirt, 202502.21.0, (amd64))
el10:  rockylinux/10          (libvirt)

d11 :  generic/debian11       (libvirt, 4.3.12, (amd64))
d12 :  generic/debian12       (libvirt, 4.3.12, (amd64))
d13 :  cloud-image/debian-13  (libvirt)

u20 :  generic/ubuntu2004     (libvirt, 4.3.12, (amd64))
u22 :  generic/ubuntu2204     (libvirt, 4.3.12, (amd64))
u24 :  bento/ubuntu-24.04     (libvirt, 20250316.0.0, (amd64))
```

For Apple Silicon (aarch64) architecture, fewer images are available:

```bash
# aarch64 / arm64
bento/rockylinux-9 (virtualbox, 202502.21.0, (arm64))
bento/ubuntu-24.04 (virtualbox, 202502.21.0, (arm64))
```

You can find more available Box images on [**Vagrant Cloud**](https://app.vagrantup.com/bento/boxes).


----------------

## Environment Variables

You can use the following environment variables to control Vagrant behavior:

```bash
export VM_SPEC='meta'              # Spec name
export VM_IMAGE='bento/rockylinux-9'  # Image name
export VM_SCALE='1'                # Resource scaling multiplier
export VM_PROVIDER='virtualbox'    # Virtualization provider
export VAGRANT_EXPERIMENTAL=disks  # Enable experimental disk features
```


----------------

## Notes

{{% alert title="VirtualBox Network Configuration" color="warning" %}}
When using older versions of VirtualBox as Vagrant provider, additional configuration is required to use `10.x.x.x` CIDR as Host-Only network:

```bash
echo "* 10.0.0.0/8" | sudo tee -a /etc/vbox/networks.conf
```
{{% /alert %}}

{{% alert title="First-time image download is slow" color="info" %}}
The first time you use Vagrant to start a specific operating system, it will download the corresponding Box image file (typically 1-2 GB). After download, the image is cached and reused for subsequent VM creation.
{{% /alert %}}

{{% alert title="libvirt Provider" color="info" %}}
If you're using libvirt as the provider, you can use `make info` to view VMs, networks, and storage volume information, and `make nuke` to forcefully destroy all related resources.
{{% /alert %}}

