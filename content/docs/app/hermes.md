---
title: "Hermes: AI Agent"
weight: 568
description: Install a pinned Hermes Agent release in a Python virtual environment on a Pigsty host and connect it to an external model provider.
module: [SOFTWARE]
categories: [Reference]
---

[`app/hermes`](https://github.com/pgsty/pigsty/tree/main/app/hermes) provides a source installation guide for [**Hermes Agent**](https://github.com/NousResearch/hermes-agent). It uses a separate Python virtual environment and external model APIs on an existing Pigsty Linux host. The directory contains no Compose file or `conf/app/hermes.yml`; `app.yml` is not required.

The development guide pins [**v2026.9.24**](https://github.com/NousResearch/hermes-agent/tree/f97608f178d1ffeca59860195ab7da295f7c8e5f) (Python package version `0.21.5`), which requires Python `>=3.11,<3.14`. The guide in the public Pigsty repository still shows the earlier `0.8.0` example. Use the following steps for the newer release.

## Installation

Install system dependencies such as `python3.12-venv`, then run on the target Linux host:

```bash
set -euo pipefail
curl -fL -o /tmp/hermes-agent.tar.gz \
  https://codeload.github.com/NousResearch/hermes-agent/tar.gz/f97608f178d1ffeca59860195ab7da295f7c8e5f
printf '%s  %s\n' \
  babbdb9706ad1c96708d75914afb45d809cd4b73dec1ceae233a6814f5ed97e3 \
  /tmp/hermes-agent.tar.gz | sha256sum -c -

HERMES_INSTALL_DIR="$HOME/.hermes/hermes-agent-v2026.9.24"
test ! -e "$HERMES_INSTALL_DIR"
mkdir -p "$HERMES_INSTALL_DIR"
tar -xzf /tmp/hermes-agent.tar.gz -C "$HERMES_INSTALL_DIR" --strip-components=1
cd "$HERMES_INSTALL_DIR"
python3.12 -m venv venv
./venv/bin/python -m pip install --upgrade pip
./venv/bin/python -m pip install -e '.[pty,mcp,cron]'
./venv/bin/python -m pip check
./venv/bin/hermes --version
```

This release uses an editable source installation. The CLI is included in the core dependencies; the old `cli` extra is no longer used.

## Configuration and Verification

Store provider credentials in `~/.hermes/.env` with mode `0600`. Select the provider, model, and terminal working directory in `~/.hermes/config.yaml`. See the [**Hermes configuration guide**](https://hermes-agent.nousresearch.com/docs/user-guide/configuration/) and [**provider setup**](https://hermes-agent.nousresearch.com/docs/integrations/providers/).

```bash
./venv/bin/hermes doctor
./venv/bin/hermes chat -q 'Hello'
```
