# PIG 1.10.0 Documentation

> Install, manage, and build PostgreSQL and its extensions with the pig CLI.

---

LLMS index: [llms.txt](/llms.txt)

---

Current stable version: **v1.10.0**. Read the [release notes](/docs/pig/release/#v1100).

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

Press Ctrl + K (⌘ + K on macOS) to search the site. Press \/ for page actions. An AI assistant action sends the public page URL and a reading prompt to the selected service.

- [Design Records](https://pig.pgsty.com/design/): implementation decisions, trade-offs, and proposals.
- [Release notes](/docs/pig/release/): changes and download files for each version.
- [Extension catalog](https://pigsty.io/ext/list/): extension descriptions and package information.
- [GitHub Issues](https://github.com/pgsty/pig/issues): report a problem or request a feature.

PIG is developed by [Vonng](https://vonng.com/en/) and released under [Apache 2.0](https://github.com/pgsty/pig/blob/main/LICENSE). [Pigsty](https://pigsty.io/) provides PostgreSQL deployment, monitoring, backups, and high availability.

---

Section pages:

- [Getting Started](/docs/pig/start/): Install PostgreSQL and pgvector, start an instance, and enable the extension
- [Introduction](/docs/pig/intro/): What PIG does, how package installation works, and which platforms it supports
- [Installation](/docs/pig/install/): How to download and install the pig package manager
- [Release](/docs/pig/release/): pig — PostgreSQL Package Manager Release Notes
- [Command Reference](/docs/pig/_div_cmd/)
- [pig](/docs/pig/cmd/): pig CLI command reference overview
- [pig repo](/docs/pig/repo/): Manage software repositories with pig repo
- [pig ext](/docs/pig/ext/): Manage PostgreSQL extensions with pig ext
- [pig build](/docs/pig/build/): Build PostgreSQL extensions from source with pig build
- [pig sty](/docs/pig/sty/): Manage Pigsty installation with pig sty
- [pig inventory](/docs/pig/inventory/): Inspect, edit, validate, check, and exchange the Pigsty Inventory
- [pig do](/docs/pig/do/): Run Pigsty administration tasks with pig do
- [pig postgres](/docs/pig/pg/): Manage local PostgreSQL server with pig postgres subcommand
- [pig patroni](/docs/pig/pt/): Run patronictl transparently, with Pigsty service, config, and log helpers
- [pig pe](/docs/pig/pe/): Read PostgreSQL metrics and reload pg_exporter configuration
- [pig pgbackrest](/docs/pig/pb/): Create, inspect, restore, and expire pgBackRest backups
- [pig pitr](/docs/pig/pitr/): Restore PostgreSQL to a selected recovery target with pgBackRest
