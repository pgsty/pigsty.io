---
title: Setup Admin User and Privileges
linkTitle: Admin Setup
weight: 370
description: Admin user, sudo, SSH, accessibility verification, and firewall configuration
icon: fa-solid fa-user-shield
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty requires an OS **admin user** with passwordless [**SSH**](#ssh) and [**Sudo**](#sudo) privileges on all managed nodes.

This user must be able to SSH to all managed nodes and execute sudo commands on them.


--------

## User

Typically use names like `dba` or `admin`, avoiding `root` and `postgres`:

- Using `root` for deployment is possible but not a production best practice.
- Using `postgres` ([**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu)) as admin user is strictly prohibited.


--------

## Passwordless

The passwordless requirement is optional if you can accept entering a password for every `ssh` and `sudo` command.

Use `-k|--ask-pass` when [**running playbooks**](/docs/setup/playbook/) to prompt for **SSH** password,
and `-K|--ask-become-pass` to prompt for **sudo** password.

```bash
./deploy.yml -k -K
```

Some enterprise security policies may prohibit passwordless `ssh` or `sudo`. In such cases, use the options above,
or consider configuring a sudoers rule with a longer password cache time to reduce password prompts.



----------------

## Create Admin User

Typically, your server/VM provider creates an initial admin user.

If unsatisfied with that user, Pigsty's deployment playbook can [**create a new admin user**](#create-admin-user) for you.

Assuming you have root access or an existing admin user on the node, create an admin user with Pigsty itself:

```bash
./node.yml -k -K -t node_admin -e ansible_user=[your_existing_admin]
```

This leverages the existing admin to create a new one—a dedicated `dba` (uid=88) user described by these parameters, with sudo/ssh properly configured:

| Name                                                          | Description              | Default |
|---------------------------------------------------------------|--------------------------|---------|
| [`node_admin_enabled`](/docs/node/param#node_admin_enabled)   | Enable node admin user   | `true`  |
| [`node_admin_uid`](/docs/node/param#node_admin_uid)           | Node admin user UID      | `88`    |
| [`node_admin_username`](/docs/node/param#node_admin_username) | Node admin username      | `dba`   |
{.full-width}



----------------

## Sudo

All [**admin users**](#user) should have `sudo` privileges on all managed nodes, preferably with passwordless execution.

To configure an admin user with passwordless `sudo` from scratch, edit/create a sudoers file (assuming username `vagrant`):

```bash
echo '%vagrant ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/vagrant
```

For admin user `dba`, the `/etc/sudoers.d/dba` content should be:

```bash
%dba ALL=(ALL) NOPASSWD: ALL
```

If your security policy prohibits passwordless `sudo`, remove the `NOPASSWD:` part:

```bash
%dba ALL=(ALL) ALL
```

Ansible relies on `sudo` to execute commands with root privileges on managed nodes.
In environments where `sudo` is unavailable (e.g., inside Docker containers), install `sudo` first.



----------------

## SSH

Your current user should have passwordless SSH access to all managed nodes as the corresponding admin user.

Your current user can be the admin user itself, but this isn't required—as long as you can SSH as the admin user.

SSH configuration is Linux 101, but here are the basics:


### Generate SSH Key

If you don't have an SSH key pair, generate one:

```bash
ssh-keygen -t rsa -b 2048 -N '' -f ~/.ssh/id_rsa -q
```

Pigsty will do this for you during the [`bootstrap`](/docs/setup/offline#bootstrap) stage if you lack a key pair.


### Copy SSH Key

Distribute your generated public key to remote (and local) servers, placing it in the admin user's `~/.ssh/authorized_keys` file on all nodes.
Use the `ssh-copy-id` utility:

```bash
ssh-copy-id <ip>                        # Interactive password entry
sshpass -p <password> ssh-copy-id <ip>  # Non-interactive (use with caution)
```


### Using Alias

When direct SSH access is unavailable (jumpserver, non-standard port, different credentials), configure SSH aliases in `~/.ssh/config`:

```bash
Host meta
    HostName 10.10.10.10
    User dba                      # Different user on remote
    IdentityFile /etc/dba/id_rsa  # Non-standard key
    Port 24                       # Non-standard port
```

Reference the alias in the inventory using `ansible_host` for the real SSH alias:

```yaml
nodes:
  hosts:          # If node `10.10.10.10` requires SSH alias `meta`
    10.10.10.10: { ansible_host: meta }  # Access via `ssh meta`
```

SSH parameters work directly in Ansible. See [Ansible Inventory Guide](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#connecting-to-hosts-behavioral-inventory-parameters) for details.
This technique enables accessing nodes in private networks via jumpservers, or using different ports and credentials,
or using your local laptop as an admin node.



----------------

## Check Accessibility

You should be able to passwordlessly `ssh` from the admin node to all managed nodes as your current user.
The remote user (admin user) should have privileges to run passwordless `sudo` commands.

To verify passwordless ssh/sudo works, run this command on the admin node for all managed nodes:

```bash
ssh <ip|alias> 'sudo ls'
```

If there's no password prompt or error, passwordless ssh/sudo is working as expected.




--------

## Firewall

Production deployments typically require firewall configuration to block unauthorized port access.

By default, block inbound access from office/Internet networks except:

- SSH port `22` for node access
- HTTP (`80`) / HTTPS (`443`) for WebUI services
- PostgreSQL port `5432` for database access

If accessing PostgreSQL via other ports, allow them accordingly.
See [**used ports**](/docs/node/) for the complete port list.

- `5432`: PostgreSQL database
- `6432`: Pgbouncer connection pooler
- `5433`: PG primary service
- `5434`: PG replica service
- `5436`: PG default service
- `5438`: PG offline service



