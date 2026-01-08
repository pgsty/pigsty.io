---
title: Version Upgrade
weight: 2011
description: How to upgrade (or downgrade) PostgreSQL minor version kernel, and how
  to perform major version upgrades
icon: fa-solid fa-circle-up
module: [PGSQL]
categories: [Task]
---


----------------

## Minor Version Upgrade

To perform a minor version server upgrade/downgrade, you first need to [add software](#adding-software) to your local software repository: the latest PG minor version RPM/DEB.

First perform a rolling upgrade/downgrade on all replicas, then execute a cluster [switchover](#active-switchover) to upgrade/downgrade the primary.

```bash
ansible <cls> -b -a "yum upgrade/downgrade -y <pkg>"    # Upgrade/downgrade packages
pg restart --force <cls>                                # Restart cluster
```

This time we'll perform a rolling upgrade:

```bash
ansible pg-test -b -a "yum upgrade -y postgresql15*"    # Upgrade packages (or apt upgrade)
ansible pg-test -b -a '/usr/pgsql/bin/pg_ctl --version' # Check binary version is 15.2
pg restart --role replica --force pg-test               # Restart replicas
pg switchover --leader pg-test-1 --candidate=pg-test-2 --scheduled=now --force pg-test    # Switchover primary and replica
pg restart --role primary --force pg-test               # Restart primary
```


----------------

## Minor Version Downgrade

Add 15.1 packages to the software repository and refresh the node's yum/apt cache:

```bash
cd ~/pigsty; ./infra.yml -t repo_upstream               # Add upstream repository
cd /www/pigsty; repotrack postgresql15-*-15.1           # Add 15.1 packages to yum repository
cd ~/pigsty; ./infra.yml -t repo_create                 # Rebuild repository metadata
ansible pg-test -b -a 'yum clean all'                   # Clean node repository cache
ansible pg-test -b -a 'yum makecache'                   # Regenerate yum cache from new repository

# For Ubuntu/Debian users, use apt instead of yum
ansible pg-test -b -a 'apt clean'                       # Clean node repository cache
ansible pg-test -b -a 'apt update'                      # Regenerate apt cache from new repository
```

Execute downgrade and restart cluster:

```bash
ansible pg-test -b -a "yum downgrade -y postgresql15*"  # Downgrade packages
pg restart --force pg-test                              # Restart entire cluster to complete upgrade
```




----------------

## Major Version Upgrade

The simplest way to perform a major version upgrade is to create a new cluster using the new version, then perform [**online migration**](/docs/pgsql/migration) through logical replication and blue-green deployment.

You can also perform an in-place major version upgrade. When you only use the database kernel itself, this is not complicated; use PostgreSQL's built-in `pg_upgrade`:

Suppose you want to upgrade PostgreSQL major version from 14 to 15. You first need to **add software** to the repository and ensure that core extension plugins installed on both sides of the two major versions also have the same version numbers.

```bash
./pgsql.yml -t pg_pkg -e pg_version=15                         # Install pg 15 packages
sudo su - postgres; mkdir -p /data/postgres/pg-meta-15/data/   # Prepare directory for 15
pg_upgrade -b /usr/pgsql-14/bin/ -B /usr/pgsql-15/bin/ -d /data/postgres/pg-meta-14/data/ -D /data/postgres/pg-meta-15/data/ -v -c # Pre-check
pg_upgrade -b /usr/pgsql-14/bin/ -B /usr/pgsql-15/bin/ -d /data/postgres/pg-meta-14/data/ -D /data/postgres/pg-meta-15/data/ --link -j8 -v -c
rm -rf /usr/pgsql; ln -s /usr/pgsql-15 /usr/pgsql;             # Fix binary link
mv /data/postgres/pg-meta-14 /data/postgres/pg-meta-15         # Rename data directory
rm -rf /pg; ln -s /data/postgres/pg-meta-15 /pg                # Fix data directory link
```
