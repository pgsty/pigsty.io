---
title: 'Module: MySQL'
weight: 5020
description: Deploy a MySQL 8.0 cluster with Pigsty for demonstration or benchmarking
  purposes.
icon: fas fa-fish
module: [MYSQL]
categories: [Reference]
---


> [MySQL](https://mysql.com/) used to be the "most popular open-source relational database in the world".

[Installation](#installation) | [Configuration](#configuration) | [Administration](#administration) | [Playbook](#playbook) | [Monitoring](#monitoring) | [Parameters](#parameters)


--------

## Overview

MySQL module is currently available in Pigsty Pro as a Beta Preview. Note that you should NOT use this MySQL deployment for production environments.


--------

## Installation

You can install MySQL 8.0 from the official software source on EL systems directly on the nodes managed by Pigsty.

```bash
# el 7,8,9
./node.yml -t node_install -e '{"node_repo_modules":"node,mysql","node_packages":["mysql-community-server,mysql-community-client"]}'

# debian / ubuntu
./node.yml -t node_install -e '{"node_repo_modules":"node,mysql","node_packages":["mysql-server"]}'
```

You can also add the MySQL package to the local repo and use the playbook `mysql.yml` for production deployment.



--------

## Configuration

This config snippet defines a single-node MySQL instance, along with its Databases and Users.

```yaml
my-test:
  hosts: { 10.10.10.10: { mysql_seq: 1, mysql_role: primary } }
  vars:
    mysql_cluster: my-test
    mysql_databases:
      - { name: meta }
    mysql_users:
      - { name: dbuser_meta    ,host: '%' ,password: 'dbuesr_meta'    ,priv: { "*.*": "SELECT, UPDATE, DELETE, INSERT" } }
      - { name: dbuser_dba     ,host: '%' ,password: 'DBUser.DBA'     ,priv: { "*.*": "ALL PRIVILEGES" } }
      - { name: dbuser_monitor ,host: '%' ,password: 'DBUser.Monitor' ,priv: { "*.*": "SELECT, PROCESS, REPLICATION CLIENT" } ,connlimit: 3 }
```


---------

## Administration

Here are some basic MySQL cluster management operations:

Create MySQL cluster with `mysql.yml`:

```bash
./mysql.yml -l my-test
```




----------------

## Playbook

Pigsty has the following playbooks related to the [`MYSQL`](/docs/pilot/mysql/) module:

* [`mysql.yml`](#mysqlyml): Deploy MySQL according to the inventory




----------------

### `mysql.yml`

The playbook [`mysql.yml`](https://github.com/pgsty/pigsty/blob/main/mysql.yml) contains the following subtasks:

```bash
mysql-id       : generate mysql instance identity
mysql_clean    : remove existing mysql instance (DANGEROUS)
mysql_dbsu     : create os user mysql
mysql_install  : install mysql rpm/deb packages
mysql_dir      : create mysql data & conf dir
mysql_config   : generate mysql config file
mysql_boot     : bootstrap mysql cluster
mysql_launch   : launch mysql service
mysql_pass     : write mysql password
mysql_db       : create mysql biz database
mysql_user     : create mysql biz user
mysql_exporter : launch mysql exporter
mysql_register : register mysql service to prometheus
```






----------------

## Monitoring

Pigsty has two built-in [`MYSQL`](/docs/pilot/mysql/) dashboards:

[MYSQL Overview](https://demo.pigsty.io/d/mysql-overview): MySQL cluster overview

[MYSQL Instance](https://demo.pigsty.io/d/mysql-instance): MySQL instance overview




--------

## Parameters

MySQL's available parameters:

```yaml
#-----------------------------------------------------------------
# MYSQL_IDENTITY
#-----------------------------------------------------------------
# mysql_cluster:           #CLUSTER  # mysql cluster name, required identity parameter
# mysql_role: replica      #INSTANCE # mysql role, required, could be primary,replica
# mysql_seq: 0             #INSTANCE # mysql instance seq number, required identity parameter

#-----------------------------------------------------------------
# MYSQL_BUSINESS
#-----------------------------------------------------------------
# mysql business object definition, overwrite in group vars
mysql_users: []                      # mysql business users
mysql_databases: []                  # mysql business databases
mysql_services: []                   # mysql business services

# global credentials, overwrite in global vars
mysql_root_username: root
mysql_root_password: DBUser.Root
mysql_replication_username: replicator
mysql_replication_password: DBUser.Replicator
mysql_admin_username: dbuser_dba
mysql_admin_password: DBUser.DBA
mysql_monitor_username: dbuser_monitor
mysql_monitor_password: DBUser.Monitor

#-----------------------------------------------------------------
# MYSQL_INSTALL
#-----------------------------------------------------------------
# - install - #
mysql_dbsu: mysql                    # os dbsu name, mysql by default, better not change it
mysql_dbsu_uid: 27                   # os dbsu uid and gid, 306 for default mysql users and groups
mysql_dbsu_home: /var/lib/mysql      # mysql home directory, `/var/lib/mysql` by default
mysql_dbsu_ssh_exchange: true        # exchange mysql dbsu ssh key among same mysql cluster
mysql_packages:                      # mysql packages to be installed, `mysql-community*` by default
  - mysql-community*
  - mysqld_exporter

# - bootstrap - #
mysql_data: /data/mysql              # mysql data directory, `/data/mysql` by default
mysql_listen: '0.0.0.0'              # mysql listen addresses, comma separated IP list
mysql_port: 3306                     # mysql listen port, 3306 by default
mysql_sock: /var/lib/mysql/mysql.sock # mysql socket dir, `/var/lib/mysql/mysql.sock` by default
mysql_pid: /var/run/mysqld/mysqld.pid # mysql pid file, `/var/run/mysqld/mysqld.pid` by default
mysql_conf: /etc/my.cnf              # mysql config file, `/etc/my.cnf` by default
mysql_log_dir: /var/log              # mysql log dir, `/var/log/mysql` by default

mysql_exporter_port: 9104            # mysqld_exporter listen port, 9104 by default

mysql_parameters: {}                 # extra parameters for mysqld
mysql_default_parameters:            # default parameters for mysqld

```
