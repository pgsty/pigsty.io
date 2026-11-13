---
title: OpenTofu
weight: 390
description: Create virtual machine environments on public clouds with OpenTofu
icon: fa-solid fa-cloud
module: [PIGSTY]
categories: [Tutorial]
---

[OpenTofu](https://opentofu.org/) is an open-source infrastructure-as-code tool.
It creates public cloud virtual machines from configuration files.

The examples use `tofu` directly. `Makefile`, `./ssh`, and `./check` also default to `IAC_CLI=tofu`, with `IAC_CLI=terraform` available. Compatible `.tf` templates cover Alibaba Cloud, AWS global/China, Azure, GCP, Tencent Cloud, Hetzner, Vultr, DigitalOcean, and Linode. `aliyun-s3.tf` also creates a private OSS bucket and dedicated RAM read/write credentials for S3/pgBackRest.

## Quick Start

### Install OpenTofu

On macOS, install OpenTofu with [Homebrew](https://brew.sh/):

```bash
brew install opentofu
tofu version
```

For Debian, Ubuntu, RHEL, or another platform, use the [OpenTofu installation guide](https://opentofu.org/docs/intro/install/).
The package and command name is `tofu`.

### Initialize and Apply

Enter the cloud template directory.
Select a template, initialize the provider plugins, and examine the deployment plan:

```bash
cd ~/pigsty/terraform
cp spec/aliyun.tf terraform.tf         # Select template
tofu init                              # Install cloud provider plugins (first use)
tofu plan                              # Review the execution plan
tofu apply                             # Create resources after interactive confirmation
```

After you review the plan, run `tofu apply`.
Enter `yes` to confirm.
OpenTofu then creates the virtual machines and related cloud resources.

### Get IP Address

After creation, print the administration node's public IP address:

```bash
tofu output -raw meta_ip
```

### Configure SSH Access

Global cloud templates usually supply an executable `ssh_command` output:

```bash
tofu output -raw ssh_command
```

`./ssh` is a compatibility helper for legacy templates whose outputs are all IP addresses and whose root password is `PigstyDemo4`. It checks for `IAC_CLI` and `jq`, reads `$IAC_CLI output -json`, writes outputs as IPs to `~/.ssh/pigsty_config`, then distributes keys with `sshpass`. Use it only with compatible templates such as `aliyun.tf`, `aliyun-full.tf`, `aliyun-oss.tf`, and `aliyun-pro.tf`, not modern templates exposing `ssh_command`, private IPs, or access keys.

`./ssh` defaults to `tofu`; use `IAC_CLI=terraform ./ssh` for Terraform. For compatible templates:

```bash
./ssh       # Write SSH config and distribute keys
ssh meta    # Login using hostname instead of IP
```

> [!NOTE] Load the SSH configuration
> To use `~/.ssh/pigsty_config`, include it from `~/.ssh/config`:
>
> ```bash
> Include ~/.ssh/pigsty_config
> ```

### Destroy Resources

After testing, use this command to remove the cloud resources:

```bash
tofu destroy
```

## Terraform Compatibility and Migration

Names remain `terraform/`, `.tf`, `terraform.tfvars`, `.terraform.lock.hcl`, and `terraform.tfstate`, which OpenTofu officially supports. `Makefile`, `./ssh`, and `./check` all accept `IAC_CLI=terraform`:

```bash
make IAC_CLI=terraform plan
```

Use only one infrastructure command-line tool in a working directory at a time.
Before you migrate existing state, preserve it and compare both plans:

```bash
cp -p terraform.tfstate "terraform.tfstate.pre-tofu.$(date +%Y%m%d%H%M%S)"
terraform plan
tofu init
tofu plan
```

Continue only if the OpenTofu plan contains the expected changes.
Do not delete `terraform.tfstate` when you initialize providers again.

## Template Specs

The [`terraform/spec/` directory](https://github.com/pgsty/pigsty/tree/main/terraform/spec) contains predefined cloud resource templates:

| Template File | Cloud Provider | Description |
|---------------|----------------|-------------|
| [`aliyun.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun.tf) | Alibaba Cloud | Single-node meta template, supports all distributions and AMD/ARM (default) |
| [`aliyun-s3.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-s3.tf) | Alibaba Cloud | Single node + private OSS bucket and RAM read/write credentials for S3/pgBackRest |
| [`aliyun-full.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-full.tf) | Alibaba Cloud | Four-node sandbox, supports all distributions and AMD/ARM |
| [`aliyun-oss.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-oss.tf) | Alibaba Cloud | Six-node build template, supports all distributions and AMD/ARM |
| [`aliyun-pro.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-pro.tf) | Alibaba Cloud | Seven-node multi-distribution test template |
| [`aws.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aws.tf) | AWS | Global AWS single node, Debian 12/13, AMD/ARM |
| [`aws-cn.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aws-cn.tf) | AWS | Legacy single-node environment for AWS China |
| [`azure.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/azure.tf) | Azure | Single node, Debian 12/13, AMD/ARM |
| [`gcp.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/gcp.tf) | GCP | Single node, Debian 12/13, AMD/ARM |
| [`qcloud.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/qcloud.tf) | Tencent Cloud | Tencent Cloud single-node environment |
| [`hetzner.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/hetzner.tf) | Hetzner | Single node, Debian 12/13, AMD/ARM |
| [`vultr.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/vultr.tf) | Vultr | Single node, Debian 12/13, AMD only, using a vultr_vpc private network |
| [`digitalocean.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/digitalocean.tf) | DigitalOcean | Single node, Debian 13 (d13) only, AMD only |
| [`linode.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/linode.tf) | Linode | Single node, Debian 12/13, currently AMD only |
{.full-width .wide .expand}

Copy the selected template to `terraform.tf`:

```bash
cd ~/pigsty/terraform
cp spec/aliyun-full.tf terraform.tf   # Use Alibaba Cloud 4-node sandbox template
tofu init && tofu apply
```

## Variable Configuration

Template variables differ. Alibaba Cloud supports the full distribution matrix and defaults to `u26`. AWS global, Azure, GCP, Tencent Cloud, and Hetzner support Debian 12/13 with AMD/ARM, defaulting to `d12`/`amd64`. Vultr and Linode support Debian 12/13, default `d12`, with AMD instances only. DigitalOcean has retired Debian 12 images and supports only `d13` (Debian 13) on AMD.

### Architecture and Distribution

```hcl
variable "architecture" {
  description = "Architecture type (amd64 or arm64)"
  type        = string
  default     = "amd64"    # Comment this line to use arm64
  #default     = "arm64"   # Uncomment to use arm64
}

variable "distro" {
  description = "Distribution code (the exact set depends on the template)"
  type        = string
  default     = "d12"       # most global clouds default to d12; DigitalOcean only d13; Alibaba Cloud defaults to u26
}
```

### Resource Configuration

Alibaba Cloud templates define these resource parameters in a `locals` block.
Other cloud templates use provider-specific variables or local values for instances, disks, and networks.
Read the selected `.tf` file for its parameters.

```hcl
locals {
  bandwidth        = 100                    # Public bandwidth (Mbps)
  disk_size        = 40                     # System disk size (GB)
  spot_policy      = "SpotWithPriceLimit"   # Spot policy: NoSpot, SpotWithPriceLimit, SpotAsPriceGo
  spot_price_limit = 5                      # Max spot price (only effective with SpotWithPriceLimit)
}
```

## Alibaba Cloud Configuration

### Credential Setup

Set Alibaba Cloud credentials in environment variables.
For example, add them to `~/.bash_profile` or `~/.zshrc`:

```bash
export ALICLOUD_ACCESS_KEY="<your_access_key>"
export ALICLOUD_SECRET_KEY="<your_secret_key>"
export ALICLOUD_REGION="cn-shanghai"
```

### Supported Images

The table lists common Alibaba Cloud [ECS Public OS Image](https://help.aliyun.com/zh/ecs/user-guide/public-mirroring-overview) prefixes.
The recommended and validated versions are:

Verified baselines are Rocky Linux 9.8 / 10.2, Debian 12.15 / 13.7, and Ubuntu 22.04.5 / 24.04.5 / 26.04.1. Alibaba Cloud public images now match, such as `debian_13_7_x64_20G_alibase_20261019.vhd` and its `arm64` counterpart.

| Distribution | Code | x86_64 Image Prefix | aarch64 Image Prefix |
|-----------------------|--------|-----------------------------------|-------------------------------------|
| CentOS 7.9            | `el7`  | `centos_7_9_x64`                  | -                                   |
| Rocky 8.10            | `el8`  | `rockylinux_8_10_x64`             | `rockylinux_8_10_arm64`             |
| Rocky 9.8             | `el9`  | `rockylinux_9_8_x64`              | `rockylinux_9_8_arm64`              |
| Rocky 10.2            | `el10` | `rockylinux_10_2_x64`             | `rockylinux_10_2_arm64`             |
| Debian 11.11          | `d11`  | `debian_11_11_x64`                | -                                   |
| Debian 12.15          | `d12`  | `debian_12_15_x64`                | `debian_12_15_arm64`                |
| Debian 13.7           | `d13`  | `debian_13_7_x64`                 | `debian_13_7_arm64`                 |
| Ubuntu 22.04.5 LTS    | `u22`  | `ubuntu_22_04_x64_20G`            | `ubuntu_22_04_arm64_20G`            |
| Ubuntu 24.04.5 LTS    | `u24`  | `ubuntu_24_04_x64_20G`            | `ubuntu_24_04_arm64_20G`            |
| Ubuntu 26.04.1 LTS    | `u26`  | `ubuntu_26_04_x64_20G`            | `ubuntu_26_04_arm64_20G`            |
| Anolis 8.10           | `an8`  | `anolisos_8_10_x64`               | `anolisos_8_10_arm64`               |
| Alibaba Cloud Linux 3 | `al3`  | `aliyun_3_x64_20G_alibase_[0-9]+` | `aliyun_3_arm64_20G_alibase_[0-9]+` |
{.full-width .wide .expand}

### OSS Storage Configuration

The `aliyun-s3.tf` template creates an OSS bucket and permissions for PostgreSQL PITR backups:

- A private OSS bucket named `pigsty-oss`.
- A dedicated RAM user named `pigsty-oss-user`.
- An AccessKey saved to `~/pigsty.sk`.
- A RAM policy with `oss:*` permissions on the bucket and its objects for read/write operations.

## AWS Configuration

### Credential Setup

The global and China-region templates can read standard AWS environment variables or credential files:

```bash
export AWS_ACCESS_KEY_ID="<your_access_key>"
export AWS_SECRET_ACCESS_KEY="<your_secret_key>"
export AWS_REGION="us-west-2"

# ~/.aws/config
[default]
region = us-west-2

# ~/.aws/credentials
[default]
aws_access_key_id = <YOUR_AWS_ACCESS_KEY>
aws_secret_access_key = <AWS_ACCESS_SECRET>
```

By default, `aws.tf` reads `~/.ssh/id_rsa.pub`.
The legacy `aws-cn.tf` template reads this dedicated public key instead:

```bash
~/.aws/pigsty-key.pub
```

> [!WARNING] Verify AWS template settings
> The `aws.tf` template looks up current official Debian AMIs.
> The `aws-cn.tf` template uses a hard-coded China-region AMI and `~/.aws/pigsty-key.pub`.
> Verify the region, AMI, and key before deployment.

## Tencent Cloud Configuration

### Credential Setup

Set Tencent Cloud credentials in environment variables:

```bash
export TENCENTCLOUD_SECRET_ID="<your_secret_id>"
export TENCENTCLOUD_SECRET_KEY="<your_secret_key>"
export TENCENTCLOUD_REGION="ap-beijing"
```

> [!WARNING] Adjust Tencent Cloud examples when necessary
> The community supplies the Tencent Cloud templates as examples.
> You may need to adjust them for your requirements.

### Other Cloud Credentials

```bash
# Azure: az login is recommended; for a service principal, use all four
export ARM_CLIENT_ID="<client_id>"
export ARM_CLIENT_SECRET="<client_secret>"
export ARM_SUBSCRIPTION_ID="<subscription_id>"
export ARM_TENANT_ID="<tenant_id>"

# GCP: gcloud auth application-default login is also supported
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/service-account-key.json"

# Hetzner / Vultr / DigitalOcean / Linode
export HCLOUD_TOKEN="<api_token>"
export VULTR_API_KEY="<api_key>"
export DIGITALOCEAN_TOKEN="<api_token>"
export LINODE_TOKEN="<api_token>"
```

The GCP template also requires `project`, for example `tofu apply -var="project=my-project"`.
Except for AWS China, the current templates with key authentication read `~/.ssh/id_rsa.pub` by default.
To use another public key, edit the path in the selected template.

## Shortcut Commands

Pigsty's Makefile shortcuts and template validator default to OpenTofu (`IAC_CLI ?= tofu`). Set `IAC_CLI=terraform` explicitly for Terraform.

```bash
cd ~/pigsty/terraform

make init          # tofu init
make validate      # tofu validate
make plan          # tofu plan
make up            # interactive tofu apply, then legacy ./ssh; alias make u, compatible templates only
make up-auto       # tofu apply -auto-approve, then legacy ./ssh; compatible templates only
make apply         # interactive tofu apply
make apply-auto    # tofu apply -auto-approve
make destroy       # interactive tofu destroy; alias make d
make destroy-auto  # tofu destroy -auto-approve
make out           # tofu output
make ssh           # configure SSH access through ./ssh
make reset         # restore terraform.tf from version control; alias make r
./check validate   # validate terraform.tf and all spec/*.tf in isolated temporary directories; same as ./check
```

For modern templates with `ssh_command`, private IPs, or other non-IP outputs, such as `vultr.tf` using `vultr_vpc`, run `tofu apply` or `make apply` directly. Do not use `make up` / `make u`, which subsequently call legacy `./ssh`. Only explicitly named `up-auto`, `apply-auto`, and `destroy-auto` skip interactive confirmation.

## Notes

> [!WARNING] Cloud resource costs
> Cloud resources created by OpenTofu incur charges.
> After testing, run `tofu destroy` promptly to avoid unnecessary charges.
> Pay-as-you-go instances are recommended for tests.
> The templates use Spot Instances by default to reduce costs.

> [!NOTE] Default passwords
> Alibaba Cloud and Tencent Cloud templates set the root password to `PigstyDemo4`.
> Linode uses `PigstyDemo4!` to meet its password complexity rules.
> Current AWS, Azure, GCP, Hetzner, Vultr, and DigitalOcean templates primarily use SSH keys and share no default root password.
> Use example passwords only for temporary tests.
> For production, replace them or disable password login.

> [!NOTE] Security groups
> These templates target demonstrations and development.
> Their security groups or cloud firewalls permit all or nearly all inbound traffic from `0.0.0.0/0`.
> Some also permit `::/0`.
> Before deployment, restrict the permitted source networks and ports.
> Do not use the default access rules unchanged in production.

> [!NOTE] SSH access
> After creation, use this command to log in to the administration node:
>
> ```bash
> ssh root@<public_ip>
> ```
>
> Alibaba Cloud templates with the legacy outputs and passwords can use `./ssh` or `make ssh` to write SSH aliases.
> For other templates, use their `ssh_command` output.
