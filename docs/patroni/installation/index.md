# Installation

> Installation and upgrade instructions for Patroni across supported platforms.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/installation.html

<a id="installation"></a>

--------

## Pre-requirements for Mac OS

On a Mac, install the requirements:

```bash
brew install postgresql etcd haproxy libyaml python
```

<a id="psycopg2_install_options"></a>

--------

## Psycopg

Since [psycopg2-2.8](https://www.psycopg.org/articles/2019/04/04/psycopg-28-released/), the binary package is not installed by default. A source installation requires a C compiler and Postgres and Python development packages. Python dependencies cannot express `psycopg2 OR psycopg2-binary`. Select an installation method:

1.  Use the package manager from your distro

```bash
sudo apt-get install python3-psycopg2  # install psycopg2 module on Debian/Ubuntu
sudo yum install python3-psycopg2      # install psycopg2 on RedHat/Fedora/CentOS
```

2.  Specify one of `psycopg`, `psycopg2`, or `psycopg2-binary` in the [list of dependencies](/docs/patroni/installation#extras) when installing Patroni with pip.

<a id="extras"></a>

--------

## General installation for pip

Patroni can be installed with pip:

```bash
pip install patroni[dependencies]
```

Leave `dependencies` empty, or specify one or more of these dependencies:

etcd or etcd3  
`python-etcd` module to use Etcd as the Distributed Configuration Store (DCS)

consul  
`py-consul` module to use Consul as the DCS

zookeeper  
`kazoo` module to use Zookeeper as the DCS

exhibitor  
`kazoo` module to use Exhibitor as the DCS (same dependencies as Zookeeper)

kubernetes  
[kubernetes](/docs/patroni/kubernetes#kubernetes) module to use Kubernetes as the DCS

raft  
`pysyncobj` module to use the Python Raft implementation as the DCS

aws  
`boto3` to use AWS callbacks

jsonlogger  
`python-json-logger` module for JSON [logging](/docs/patroni/config/yaml#log_settings)

systemd  
`systemd-python` for sd_notify integration

all  
all of the above (except psycopg family)

psycopg3  
`psycopg\[binary\]\>=3.0.0` module

psycopg2  
`psycopg2\>=2.5.4` module

psycopg2-binary  
`psycopg2-binary` module

For example, install Patroni with psycopg3, Etcd DCS dependencies, and AWS callbacks:

```bash
pip install patroni[psycopg3,etcd3,aws]
```

Install external tools, such as WAL-E, separately if your replica creation or custom bootstrap scripts call them.

<a id="package_installation"></a>

--------

## Package installation on Linux

The Postgres community may provide Patroni packages for these operating systems:

- RHEL, RockyLinux, AlmaLinux;
- Debian and Ubuntu;
- SUSE Enterprise Linux.

Packages may also provide direct dependencies, such as Python modules absent from the operating system repositories.

For more information see the [PGDG repository](https://www.postgresql.org/download/linux/) documentation.

On RedHat Enterprise Linux derivatives, you may also need EPEL packages. See the [EPEL repository](https://docs.fedoraproject.org/en-US/epel/) documentation.

After you configure the PGDG repository for your operating system, install Patroni.

> [!NOTE]
> The Postgres community maintains these packages, rather than the Patroni developers. For support, first contact [Postgres slack](http://pgtreats.info/slack-invite).

### Installing on Debian derivatives

After you configure the [PGDG repository](/docs/patroni/installation#package_installation), install Patroni with apt:

```bash
apt-get install patroni
```

### Installing on RedHat derivatives

On RHEL 9 and derivatives, first configure the [PGDG repository](/docs/patroni/installation#package_installation). Then install Patroni with an etcd DCS:

```bash
dnf install patroni patroni-etcd
```

If your RedHat derivative does not provide etcd packages, install them from PGDG. On each DCS node, run:

```bash
dnf install 'dnf-command(config-manager)'
dnf config-manager --enable pgdg-rhel9-extras
dnf install etcd
```

For RHEL 8, replace the version with `8` to use `pgdg-rhel8-extras`. RockyLinux, AlmaLinux, Oracle Linux, and other derivatives also use the `pgdg-rhelN-extras` repository name.

### Installing on SUSE Enterprise Linux

Some dependencies may require SUSE PackageHub repositories. See the [SUSE PackageHub](https://packagehub.suse.com/how-to-use/) documentation.

On SLES 15, configure the [PGDG repository](/docs/patroni/installation#package_installation). Then install Patroni:

```bash
zypper install patroni patroni-etcd
```

With the SUSE PackageHub repo enabled you can also install etcd:

```bash
SUSEConnect -p PackageHub/15.5/x86_64
zypper install etcd
```

--------

## Upgrading

To upgrade Patroni, update the software and restart the Patroni daemon on each cluster node.

A Patroni daemon restart also restarts the Postgres database. This can cause primary failover. We recommend maintenance mode until all Patroni daemon restarts finish.

On one Patroni node, put the cluster in maintenance mode:

```bash
patronictl pause --wait
```

Then on each node in the cluster, perform the package upgrade required for your OS:

```bash
apt-get update && apt-get install patroni patroni-etcd
```

Restart the patroni daemon process on each node:

```bash
systemctl restart patroni
```

Resume Patroni monitoring and leave maintenance mode:

```bash
patronictl resume --wait
```

The cluster now operates fully with the new Patroni version.
