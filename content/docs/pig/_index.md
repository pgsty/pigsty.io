---
title: "PIG 1.10.1 Documentation"
linkTitle: "pig"
weight: 5200
description: "Install, manage, and build PostgreSQL and its extensions with the pig CLI."
icon: fas fa-piggy-bank
module: [PIG]
sidebar_root_for: self
---

Documentation version: **v{{< param pig_version >}}**. Read the [release notes](/docs/pig/release/#v1101).

This maintenance release updates Go to `1.27.3` and refreshes the embedded extension catalog to **{{< param pig_catalog_count >}} entries**.

PIG provides commands to find, install, and build PostgreSQL extension packages. It also manages PostgreSQL, Patroni, pgBackRest, and Pigsty workflows. Package installation uses the system's `apt`, `dnf`, or `yum`.

## Start here

| Your task | Page |
|:---|:---|
| Install PostgreSQL and enable your first extension | [Getting started](/docs/pig/start/) |
| Learn what PIG does and which platforms it supports | [Introduction](/docs/pig/intro/) |
| Download, install, update, or remove PIG | [Installation](/docs/pig/install/) |
| Look up commands, options, and automation features | [Command reference](/docs/pig/cmd/) |

## Install PostgreSQL and extensions

On a Linux host with root or `sudo` access, run:

```bash
curl -fsSL https://repo.pigsty.io/pig | bash
sudo pig repo add pgsql --update
sudo pig install -v 18 pg18 vector
```

In mainland China, use `https://repo.pigsty.cc/pig` for the installer. These commands install PostgreSQL 18 and pgvector packages. Continue with [Getting started](/docs/pig/start/) to start a test instance and enable the extension with `CREATE EXTENSION vector`.

## Command reference

| Task | Command |
|:---|:---|
| Configure APT/DNF repositories | [`pig repo`](/docs/pig/repo/) |
| Query the catalog, install, or update extension packages | [`pig ext`](/docs/pig/ext/), [`pig install`](/docs/pig/cmd/#pig-install) |
| Build extension packages from source | [`pig build`](/docs/pig/build/) |
| Manage local PostgreSQL instances and databases | [`pig pg`](/docs/pig/pg/) |
| Manage Patroni clusters through patronictl | [`pig pt`](/docs/pig/pt/) |
| Inspect or reload pg_exporter | [`pig pe`](/docs/pig/pe/) |
| Back up and restore with pgBackRest | [`pig pb`](/docs/pig/pb/) |
| Run point-in-time recovery | [`pig pitr`](/docs/pig/pitr/) |
| Install and configure Pigsty, manage Grafana | [`pig sty`](/docs/pig/sty/) |
| Read, edit, and validate Pigsty inventory | [`pig inventory`](/docs/pig/inventory/) |
| Run Pigsty administration playbooks | [`pig do`](/docs/pig/do/) |
| Collect host, database, and backup status | [`pig context`](/docs/pig/cmd/#pig-context) |

Run `pig help <command>` for command help. For automation, use `pig -o json --help` to inspect command capabilities, then select the relevant output and plan options.

## Find more information

Press {{< kbd "Ctrl" "K" >}} ({{< kbd "⌘" "K" >}} on macOS) to search the site. Press {{< kbd "/" >}} for page actions. An AI assistant action sends the public page URL and a reading prompt to the selected service.

- [Design Records](https://pig.pgsty.com/design/): implementation decisions, trade-offs, and proposals.
- [Release notes](/docs/pig/release/): changes and download files for each version.
- [Extension catalog](https://pigsty.io/ext/list/): extension descriptions and package information.
- [GitHub Issues](https://github.com/pgsty/pig/issues): report a problem or request a feature.

PIG is developed by [Vonng](https://vonng.com/en/) and released under [Apache 2.0](https://github.com/pgsty/pig/blob/main/LICENSE). [Pigsty](https://pigsty.io/) provides PostgreSQL deployment, monitoring, backups, and high availability.
