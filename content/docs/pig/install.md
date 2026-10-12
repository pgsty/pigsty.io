---
title: "Installation"
linkTitle: "Installation"
description: "How to download and install the pig package manager"
weight: 30
icon: fas fa-download
module: [PIG]
categories: [Task]
---


## Script Installation

The simplest way to install `pig` is to run the following installation script:

**Default Installation** (Cloudflare CDN):

```bash
curl -fsSL https://repo.pigsty.io/pig | bash
```

**China Mirror**:

```bash
curl -fsSL https://repo.pigsty.cc/pig | bash
```

The script downloads the latest `pig` RPM/DEB package from the Pigsty [software repository](/docs/repo/).
It installs the package with `rpm` or `dpkg`.
Use the script on Linux x86_64 / aarch64 systems with RPM or DEB packages.
On macOS, use the binary from the release tarball.


## Specify Version

To install a version published on the selected mirror, pass the version number as an argument:

**Default Installation** (Cloudflare CDN):

```bash
curl -fsSL https://repo.pigsty.io/pig | bash -s X.Y.Z
```

**China Mirror**:

```bash
curl -fsSL https://repo.pigsty.cc/pig | bash -s X.Y.Z
```

Mirror publication can lag the GitHub release. For the exact current release, use the GitHub artifacts below.


## Download Release Artifacts

Download the `v1.9.0` packages (`RPM`/`DEB`/tarball) from the [GitHub Release](https://github.com/pgsty/pig/releases/tag/v1.9.0).
Check the published hashes in [checksums.txt](https://github.com/pgsty/pig/releases/download/v1.9.0/checksums.txt).
Use this URL pattern:

- `https://github.com/pgsty/pig/releases/download/v1.9.0/<filename>`

```text
v1.9.0
├── pig_1.9.0-1_amd64.deb
├── pig_1.9.0-1_arm64.deb
├── pig-1.9.0-1.aarch64.rpm
├── pig-1.9.0-1.x86_64.rpm
├── pig-v1.9.0.linux-amd64.tar.gz
├── pig-v1.9.0.linux-arm64.tar.gz
├── pig-v1.9.0.darwin-amd64.tar.gz
└── pig-v1.9.0.darwin-arm64.tar.gz
```

Extract the archive and put the binary in your system PATH.
The Pigsty mirror directory becomes available after repository synchronization.
Before you run an installer for a specific version, check that its target URL is available.


## Repository Installation

The [`pigsty-infra`](/docs/repo/infra/) repository contains `pig`.
Add this repository to your system. Then install `pig` with the OS package manager:

### YUM

For RHEL, RockyLinux, CentOS, Alma Linux, OracleLinux, and other EL distributions:

```bash
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
enabled = 1
gpgcheck = 0
module_hotfixes=1
EOF

sudo yum makecache;
sudo yum install -y pig
```

### APT

For Debian, Ubuntu, and other DEB distributions:

```bash
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [trusted=yes] https://repo.pigsty.io/apt/infra generic main
EOF

sudo apt update;
sudo apt install -y pig
```


## Update

To upgrade `pig` to the latest available version, run:

```bash
pig update            # upgrade pig itself to the latest version
pig update -m         # upgrade using the pigsty.cc mirror
pig update -v X.Y.Z   # upgrade to a version published by the configured repository
```

To update the extension data used by `pig`, run:

```bash
pig ext reload        # Update pig extension data to the latest version
```


## Uninstall

```bash
apt remove -y pig     # Debian / Ubuntu and other Debian-based systems
yum remove -y pig     # RHEL / CentOS / RockyLinux and other EL distributions
rm -rf /usr/bin/pig   # If installed directly from binary, just delete the binary file
```


## Build from Source

You can build `pig` from its Go source code at [github.com/pgsty/pig](https://github.com/pgsty/pig):

```bash
git clone https://github.com/pgsty/pig.git; cd pig
go mod download
make build
```

The GitHub CI/CD workflow uses GoReleaser to build all RPM/DEB packages automatically.
