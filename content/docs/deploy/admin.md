---
title: Setup Admin User and Privileges
linkTitle: Admin Setup
weight: 370
description: Admin user, sudo, SSH, accessibility verification, and firewall configuration
icon: fa-solid fa-user-shield
module: [PIGSTY]
categories: [Tutorial]
---

Pigsty uses an operating system **administration account** with [SSH](#ssh) and [sudo](#sudo) access to every managed node.
The account must be able to log in through SSH and run sudo commands on these nodes.
Passwordless access is the standard configuration; password prompts are also supported.

## User

Use an account name such as `dba` or `admin`.
Avoid `root` and `postgres`:

- You can deploy as `root`, but this is not recommended for production.
- Do not use `postgres` ([`pg_dbsu`](/docs/pgsql/param#pg_dbsu)) as the administration account.

## Passwordless

You can enter passwords for each `ssh` and `sudo` command instead of configuring passwordless access.
When you [run playbooks](/docs/setup/playbook/), use `-k|--ask-pass` for the SSH password prompt.
Use `-K|--ask-become-pass` for the sudo password prompt:

```bash
./deploy.yml -k -K
```

If your security policy prohibits passwordless `ssh` or `sudo`, use these options.
You can also configure a longer sudo password cache time in sudoers to reduce repeated prompts.

## Create Admin User

Your server or virtual machine provider usually creates an initial administration account.
If you need a different account, the deployment playbook can [create one](#create-admin-user).

Use an existing administration account or root access to create the new account:

```bash
./node.yml -k -K -t node_admin \
  -e ansible_user=[current_login_admin] \
  -e node_admin_username=[new_admin_to_create]
```

The existing account creates a dedicated `dba` account with UID `88` by default.
The playbook also configures sudo and SSH access.
These parameters control the account:

| Name                                                          | Description              | Default |
|---------------------------------------------------------------|--------------------------|---------|
| [`node_admin_enabled`](/docs/node/param#node_admin_enabled)   | Enable node admin user   | `true`  |
| [`node_admin_uid`](/docs/node/param#node_admin_uid)           | Node admin user UID      | `88`    |
| [`node_admin_username`](/docs/node/param#node_admin_username) | Node admin username      | `dba`   |
{.full-width}

## Sudo

Give the [administration account](#user) `sudo` access on every managed node.
Passwordless sudo is recommended.

For an account named `vagrant`, create or edit its sudoers file:

```bash
echo '%vagrant ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/vagrant
```

For the `dba` account, use this content in `/etc/sudoers.d/dba`:

```bash
%dba ALL=(ALL) NOPASSWD: ALL
```

If your security policy prohibits passwordless `sudo`, remove `NOPASSWD:`:

```bash
%dba ALL=(ALL) ALL
```

Ansible uses `sudo` to run commands with root privileges on managed nodes.
If an environment has no `sudo`, install it first.
This can apply to Docker containers.

## SSH

The current local account should have passwordless SSH access to the administration account on every managed node.
The local and remote account names can differ.
The following procedures describe the basic SSH configuration.

### Generate SSH Key

If you do not have an SSH key pair, generate one:

```bash
ssh-keygen -t rsa -b 2048 -N '' -f ~/.ssh/id_rsa -q
```

The [`bootstrap` script](/docs/setup/offline#bootstrap) also generates a key pair if none exists.

### Copy SSH Key

Copy the public key to the administration account's `~/.ssh/authorized_keys` file on every node, including the local node.
Use `ssh-copy-id`:

```bash
ssh-copy-id <ip>                        # Interactive password entry
sshpass -p <password> ssh-copy-id <ip>  # Non-interactive (use with caution)
```

### Using Alias

If a node requires a jumpserver, another port, or different credentials, define an SSH alias in `~/.ssh/config`:

```bash
Host meta
    HostName 10.10.10.10
    User dba                      # Different user on remote
    IdentityFile /etc/dba/id_rsa  # Non-standard key
    Port 24                       # Non-standard port
```

Set `ansible_host` to this SSH alias in the inventory:

```yaml
nodes:
  hosts:          # If node `10.10.10.10` requires SSH alias `meta`
    10.10.10.10: { ansible_host: meta }  # Access via `ssh meta`
```

Ansible can also use SSH connection parameters directly.
See the [Ansible Inventory Guide](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#connecting-to-hosts-behavioral-inventory-parameters).

This method supports private nodes behind jumpservers and nodes with different ports or credentials.
It also lets you use a local laptop as the administration node.

## Check Accessibility

From the administration node, the current account should reach every managed node through passwordless `ssh`.
The remote administration account should also have passwordless `sudo` access.

Run this command from the administration node for each managed node:

```bash
ssh <ip|alias> 'sudo ls'
```

If the command returns without a password prompt or error, passwordless SSH and sudo access work.

## Firewall

For production, configure the firewall to block unauthorized access to service ports.
By default, block inbound access from office and Internet networks except these ports:

- `22` for SSH node access.
- `80` for HTTP and `443` for HTTPS Web UI access.
- `5432` for PostgreSQL access.

If clients use other PostgreSQL service ports, permit those ports as required.
See the complete [port list](/docs/ref/port/).

- `5432`: PostgreSQL database.
- `6432`: PgBouncer connection pooler.
- `5433`: PostgreSQL primary service.
- `5434`: PostgreSQL replica service.
- `5436`: PostgreSQL default service.
- `5438`: PostgreSQL offline service.
