# Vagrant

> Create local virtual machine environment with Vagrant

---

LLMS index: [llms.txt](/llms.txt)

---

[**Vagrant**](https://www.vagrantup.com/) is a popular local virtualization tool that creates local virtual machines in a declarative manner.

Pigsty requires a Linux environment to run. You can use Vagrant to easily create Linux virtual machines locally for testing.

The currently recommended and validated baselines are Rocky Linux 9.8 / 10.2, Debian 12.15 / 13.6, and Ubuntu 22.04.5 / 24.04.4 / 26.04.0. Major-version Vagrant aliases map to pinned box versions.


----------------

## Quick Start

### Install Dependencies

First, ensure you have [**Vagrant**](https://www.vagrantup.com/) and a virtual machine provider (such as [**VirtualBox**](https://www.virtualbox.org/) or [**libvirt**](https://libvirt.org/)) installed on your system.

On macOS, you can use [**Homebrew**](https://brew.sh/) for one-click installation:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vagrant virtualbox ansible
```

> [!WARNING] VirtualBox requires reboot after installation
> After installing VirtualBox, you need to restart your system and allow its kernel extensions in System Preferences.

On Linux, you can use VirtualBox or [**vagrant-libvirt**](https://vagrant-libvirt.github.io/vagrant-libvirt/) as the VM provider.

### Create Virtual Machines

Use the Pigsty-provided `make` shortcuts to create virtual machines:

```bash
cd ~/pigsty/vagrant

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
make meta9      # Create single node with Rocky Linux 9.8
make full12     # Create 4-node sandbox with Debian 12.15
make simu24     # Create 20-node simubox with Ubuntu 24.04.4
make full26     # Create 4-node sandbox with Ubuntu 26.04.0
```

Available OS suffixes: `8` (EL8), `9` (EL9), `10` (EL10), `12` (Debian 12.15), `13` (Debian 13.6), `22` (Ubuntu 22.04.5), `24` (Ubuntu 24.04.4), `26` (Ubuntu 26.04.0)

### Build Environment

You can also use the following aliases to create Pigsty build environments. These templates won't replace the base image:

```bash
make oss        # 7 node OSS build environment
make pro        # 7 node PRO build environment
make rpm        # 2 node EL9/10 build environment
make deb        # 5 node Debian12/13 Ubuntu22/24/26 build environment
make all        # 7 node full build environment
```


----------------

## Spec Templates

Pigsty provides multiple predefined VM specs in the [`vagrant/spec/`](https://github.com/pgsty/pigsty/tree/main/vagrant/spec) directory:

|                                  Template                                   |  Nodes   |      Spec       |          Description          |  Alias  |
|:---------------------------------------------------------------------------:|:--------:|:---------------:|:-----------------------------:|:-------:|
|  [meta.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/meta.rb)  |  1 node  |    2c4g x 1     |      Single-node devbox       | Devbox  |
|  [dual.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/dual.rb)  | 2 nodes  |    1c2g x 2     |     Two-node environment      |         |
|  [trio.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/trio.rb)  | 3 nodes  |    1c2g x 3     |    Three-node environment     |         |
|  [full.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/full.rb)  | 4 nodes  | 2c4g + 1c2g x 3 |      4-node full sandbox      | Sandbox |
|  [deci.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/deci.rb)  | 10 nodes |      Mixed      |      10-node environment      |         |
|  [simu.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/simu.rb)  | 20 nodes |      Mixed      |  20-node production simubox   | Simubox |
| [minio.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/minio.rb) | 4 nodes  | 1c2g x 4 + disk |    MinIO test environment     |         |
| [citus.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/citus.rb) | 13 nodes |      Mixed      | Citus coordinator and six two-replica worker groups | |
|   [oss.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/oss.rb)   | 7 nodes  |    2c2g x 7     | 7-platform OSS build environment |         |
|   [pro.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/pro.rb)   | 7 nodes  |    2c2g x 7     | 7-platform PRO build environment |         |
|   [rpm.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/rpm.rb)   | 2 nodes  |    1c2g x 2     |  2-node EL build environment  |         |
|   [deb.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/deb.rb)   | 5 nodes  |    1c2g x 5     | 5-node Deb build environment  |         |
|   [all.rb](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/all.rb)   | 7 nodes  |    1c2g x 7     | 7-node full build environment |         |

Each spec file contains a `Specs` variable describing the VM nodes. For example, `full.rb` contains the 4-node sandbox definition:

Current Vagrant templates explicitly provision a **32 GB primary system disk** for every VM. Regular nodes also receive one data disk whose size comes from the spec's `disk` value, defaulting to 128 GB when omitted. Object-storage nodes whose names begin with `minio` instead receive four 32 GB data disks mounted at `/data1` through `/data4`.
These disks depend on Vagrant's experimental disks feature. The repository Makefile exports `VAGRANT_EXPERIMENTAL=disks` automatically; set it yourself when invoking `vagrant` directly.

```ruby
# full: pigsty full-featured 4-node sandbox for HA-testing & tutorial & practices

Specs = [
  { "name" => "meta"   , "ip" => "10.10.10.10" ,  "cpu" => "2" ,  "mem" => "4096" ,  "image" => "cloud-image/ubuntu-24.04" },
  { "name" => "node-1" , "ip" => "10.10.10.11" ,  "cpu" => "1" ,  "mem" => "2048" ,  "image" => "cloud-image/ubuntu-24.04" },
  { "name" => "node-2" , "ip" => "10.10.10.12" ,  "cpu" => "1" ,  "mem" => "2048" ,  "image" => "cloud-image/ubuntu-24.04" },
  { "name" => "node-3" , "ip" => "10.10.10.13" ,  "cpu" => "1" ,  "mem" => "2048" ,  "image" => "cloud-image/ubuntu-24.04" },
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
cd ~/pigsty/vagrant
vagrant/config [spec] [image] [scale] [provider]

# Examples
vagrant/config meta u24            # Use 1-node spec with Ubuntu 24.04.4 image
vagrant/config dual el9            # Use 2-node spec with RockyLinux 9.7 image
vagrant/config trio d12 2          # Use 3-node spec with Debian 12.14, double resources
vagrant/config full u22 4          # Use 4-node spec with Ubuntu 22.04.5, 4x resources
vagrant/config simu u26 1 libvirt  # Use 20-node spec with Ubuntu 26.04.0, libvirt provider
```

### Image Aliases

The config script supports various image aliases:

| Distro         | Alias                                     | Vagrant Box                |
|----------------|-------------------------------------------|----------------------------|
| Rocky 8        | `el8`, `rocky8`, `r8`                     | `cloud-image/rocky-8`      |
| Rocky 9        | `el9`, `rocky9`, `el`, `r9`               | `cloud-image/rocky-9`      |
| Rocky 10       | `el10`, `rocky10`, `r10`                  | `cloud-image/rocky-10`     |
| Debian 12      | `d12`, `debian12`, `deb12`                | `cloud-image/debian-12`    |
| Debian 13      | `d13`, `debian13`, `deb13`                | `cloud-image/debian-13`    |
| Ubuntu 22.04.5 | `u22`, `ubuntu22`, `ubuntu2204`           | `cloud-image/ubuntu-22.04` |
| Ubuntu 24.04.4 | `u24`, `ubuntu24`, `ubuntu2404`, `ubuntu` | `cloud-image/ubuntu-24.04` |
| Ubuntu 26.04.0 | `u26`, `ubuntu26`, `ubuntu2604`           | `cloud-image/ubuntu-26.04` |
| AlmaLinux 8    | `alma8`                                   | `cloud-image/almalinux-8`  |
| AlmaLinux 9    | `alma9`                                   | `cloud-image/almalinux-9`  |
| AlmaLinux 10   | `alma10`                                  | `cloud-image/almalinux-10` |
| RHEL 8 / 9     | `rhel8`, `rhel9`                          | `generic/rhel8`, `generic/rhel9` |
| Oracle Linux 8 / 9 | `oracle8`, `oracle9`                  | `generic/oracle8`, `generic/oracle9` |

The historical `d11`/`debian11`/`deb11` and `u20`/`ubuntu20`/`ubuntu2004` aliases remain visible in the script mapping, but the current script explicitly rejects them; they are not supported images.

### Resource Scaling

You can use the `VM_SCALE` environment variable to adjust the resource multiplier (default is `1`):

```bash
VM_SCALE=2 vagrant/config meta     # Double the CPU/memory resources for meta spec
```

For example, using `VM_SCALE=4` with the meta spec will adjust the default 2c4g to 8c16g:

```ruby
Specs = [
  { "name" => "meta" , "ip" => "10.10.10.10", "cpu" => "8" , "mem" => "16384" , "image" => "cloud-image/ubuntu-24.04" },
]
```

> [!NOTE] simu and deci specs don't support scaling
> The `simu` and `deci` specs don't support resource scaling. The scale parameter is automatically reset to `1` because their resource configurations are already optimized for simulation scenarios.


----------------

## VM Management

The `vagrant/Makefile` provides shortcuts for managing virtual machines. Run the following commands from that directory:

```bash
cd ~/pigsty/vagrant
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

The standard EL, Debian, Ubuntu, and AlmaLinux matrix uses `cloud-image/*` boxes from [**Vagrant Cloud**](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image). Explicit RHEL and Oracle Linux aliases use `generic/*` boxes. The current config script applies the same `cloud-image/*` mapping to VirtualBox, libvirt, `amd64`, and `arm64`; actual payload availability is still resolved by Vagrant Cloud at runtime.

VirtualBox and libvirt use the same mapping. `vagrant/config` writes the validated versions below for every supported `cloud-image/*` image, making amd64 and arm64 environments reproducible:

| OS | Vagrant Box | Source Version Policy |
|----|-------------|:---------------------:|
| Rocky 8 | [`cloud-image/rocky-8`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/rocky-8) | `8.10.20240528.0` |
| Rocky 9 | [`cloud-image/rocky-9`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/rocky-9) | `9.8.20260525.0` |
| Rocky 10 | [`cloud-image/rocky-10`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/rocky-10) | `10.2.20260525.0` |
| Debian 12 | [`cloud-image/debian-12`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/debian-12) | `20260806.2562.0` |
| Debian 13 | [`cloud-image/debian-13`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/debian-13) | `20260810.2566.0` |
| Ubuntu 22.04 | [`cloud-image/ubuntu-22.04`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/ubuntu-22.04) | `20260810.0.0` |
| Ubuntu 24.04 | [`cloud-image/ubuntu-24.04`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/ubuntu-24.04) | `20260801.0.0` |
| Ubuntu 26.04 | [`cloud-image/ubuntu-26.04`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/ubuntu-26.04) | `20260731.0.0` |
| AlmaLinux 8 | [`cloud-image/almalinux-8`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/almalinux-8) | `8.10.20260803` |
| AlmaLinux 9 | [`cloud-image/almalinux-9`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/almalinux-9) | `9.8.20260810` |
| AlmaLinux 10 | [`cloud-image/almalinux-10`](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image/almalinux-10) | `10.2.20260526.0` |
{.full-width}

The retained but unsupported Debian 11 and Ubuntu 20.04 aliases are pinned to `20260618.2513.0` and `20250624.0.0`; experimental `generic/*` RHEL, Oracle Linux, and CentOS 7 images are pinned to their final `4.3.12` release. These legacy images are outside the current support matrix.


----------------

## Environment Variables

You can use the following environment variables to control Vagrant behavior:

```bash
export VM_SPEC='meta'              # Spec name
export VM_IMAGE='cloud-image/rocky-9' # Image name
export VM_SCALE='1'                # Resource scaling multiplier
export VM_PROVIDER='virtualbox'    # Virtualization provider
export VAGRANT_EXPERIMENTAL=disks  # Enable disks for direct vagrant use; Makefile sets this automatically
```


----------------

## Notes

> [!WARNING] VirtualBox Network Configuration
> When using older versions of VirtualBox as Vagrant provider, additional configuration is required to use `10.x.x.x` CIDR as Host-Only network:
>
> ```bash
> echo "* 10.0.0.0/8" | sudo tee -a /etc/vbox/networks.conf
> ```

> [!NOTE] First-time image download is slow
> The first time you use Vagrant to start a specific operating system, it will download the corresponding Box image file (typically 1-2 GB). After download, the image is cached and reused for subsequent VM creation.

> [!NOTE] libvirt Provider
> If you're using libvirt as the provider, you can use `make info` to view VMs, networks, and storage volume information, and `make nuke` to forcefully destroy all related resources.
