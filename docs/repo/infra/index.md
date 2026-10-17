# INFRA Repo

> Packages that are generic to any PostgreSQL version and Linux major version.

---

LLMS index: [llms.txt](/llms.txt)

---

The [`pigsty-infra`](https://github.com/pgsty/infra-pkg) repository contains packages that are independent of the PostgreSQL version and Linux major version. They include the Prometheus and Grafana stack, PostgreSQL administration tools, and many utilities written in Go.

[Ruohang Feng](https://vonng.com/en/) ([Vonng](https://github.com/Vonng)) at [Pigsty](https://pigsty.io) maintains this repository. All build specifications are available on [GitHub](https://github.com/pgsty/infra-pkg).

Prebuilt RPM / DEB packages support RHEL / Debian / Ubuntu on `x86_64` and `aarch64`. Cloudflare CDN provides free global access.

| Linux  | Package | x86_64 | aarch64 |
|:------:|:-------:|:------:|:-------:|
|   EL   |  `rpm`  |   ✓    |    ✓    |
| Debian |  `deb`  |   ✓    |    ✓    |

You can check the [**Release - Infra Changelog**](/docs/repo/infra/log/) for the latest updates.


---------

## Quick Start

Add the `pigsty-infra` repository with the [`pig`](/docs/pig/) CLI tool. It automatically selects from `apt/yum/dnf`.

```bash {tab="Default" group="default-mirror-hint" value="default"}
curl https://repo.pigsty.io/pig | bash  # download and install the pig CLI tool
pig repo add infra                      # add pigsty-infra repo file to your system
pig repo update                         # update local repo cache with apt / dnf
```

```bash {tab="Mirror" value="mirror"}
# use when in mainland China or Cloudflare is down
curl https://repo.pigsty.cc/pig | bash  # install pig from China CDN mirror
pig repo add infra                      # add pigsty-infra repo file to your system
pig repo update                         # update local repo cache with apt / dnf
```

```bash {tab="Hint" value="hint"}
# you can manage infra repo with these commands:
pig repo add infra -u       # add repo file, and update cache
pig repo add infra -ru      # remove all existing repo, add repo and make cache
pig repo set infra          # = pigsty repo add infra -ru

pig repo add all            # add infra, node, pgsql repo to your system
pig repo set all            # remove existing repo, add above repos and update cache
```



---------

## Manual Setup

You can also add this repository to your Linux repository list manually. This method does not require the `pig` CLI tool.


### APT Repo

On **Debian / Ubuntu** compatible Linux distros, you can add the [GPG Key](/docs/repo/gpg/) and APT repo file manually with:

```bash {tab="Default" group="default-mirror-nokey" value="default"}
# Add Pigsty's GPG public key to your system keychain to verify package signatures, or just trust
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian / Ubuntu distribution codename (bookworm, trixie, jammy, noble, resolute)
# and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
EOF

# Refresh APT repository cache
sudo apt update
```

```bash {tab="Mirror" value="mirror"}
# use when in mainland China or Cloudflare is down
# Add Pigsty's GPG public key to your system keychain to verify package signatures, or just trust
curl -fsSL https://repo.pigsty.cc/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian / Ubuntu distribution codename (bookworm, trixie, jammy, noble, resolute)
# and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.cc/apt/infra generic main
EOF

# Refresh APT repository cache
sudo apt update
```

```bash {tab="NoKey" value="nokey"}
# If you don't want to trust any GPG key, just trust the repo directly
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [trust=yes] https://repo.pigsty.io/apt/infra generic main
EOF

sudo apt update
```




### YUM Repo

On **RHEL** compatible Linux distros, you can add the [GPG Key](/docs/repo/gpg/) and YUM repo file manually with:

```bash {tab="Default" group="default-mirror-nokey" value="default"}
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty
module_hotfixes=1
EOF

# Refresh YUM/DNF repository cache
sudo yum makecache;
```

```bash {tab="Mirror" value="mirror"}
# use when in mainland China or Cloudflare is down
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.cc/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.cc/yum/infra/$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty
module_hotfixes=1
EOF

# Refresh YUM/DNF repository cache
sudo yum makecache;
```

```bash {tab="NoKey" value="nokey"}
# If you don't want to trust any GPG key, just trust the repo directly
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 0
module_hotfixes=1
EOF

sudo yum makecache;
```


---------

## Content

For a detailed list of all packages available in the Infra repository, see the [Package List](/docs/repo/infra/list/).

For the changelog and release history, see the [Release Log](/docs/repo/infra/log/).


---------

## Source

The build specifications for this repository are open source on GitHub:

- https://github.com/pgsty/infra-pkg

If your platform is unsupported, you can build the packages from source.

---

Section pages:

- [Package List](/docs/repo/infra/list/): Available packages in the Infra repository
- [Release Log](/docs/repo/infra/log/): pigsty-infra repository changelog and observability package release notes
