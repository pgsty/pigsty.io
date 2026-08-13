---
title: Terraform
weight: 390
description: Create virtual machine environment on public cloud with Terraform
icon: fa-solid fa-cloud
module: [PIGSTY]
categories: [Tutorial]
---

[**Terraform**](https://www.terraform.io/) is a popular "Infrastructure as Code" tool that you can use to create virtual machines on public clouds with one click.

Pigsty currently provides example Terraform templates for Alibaba Cloud, AWS (global and China), Azure, GCP, Tencent Cloud, Hetzner, Vultr, DigitalOcean, and Linode. The `aliyun-s3.tf` template also creates a private OSS bucket and dedicated RAM read/write credentials for S3/pgBackRest scenarios.


----------------

## Quick Start

### Install Terraform

On macOS, you can use [**Homebrew**](https://brew.sh/) to install Terraform:

```bash
brew install terraform
```

For other platforms, refer to the [**Terraform Official Installation Guide**](https://developer.hashicorp.com/terraform/install).

### Initialize and Apply

Enter the Terraform directory, select a template, initialize provider plugins, and apply the configuration:

```bash
cd ~/pigsty/terraform
cp spec/aliyun.tf terraform.tf         # Select template
terraform init                         # Install cloud provider plugins (first use)
terraform apply                        # Generate execution plan and create resources
```

After running the `apply` command, type `yes` to confirm when prompted. Terraform will create VMs and related cloud resources for you.

### Get IP Address

After creation, print the public IP address of the admin node:

```bash
terraform output -raw meta_ip
```

### Configure SSH Access

Global-cloud templates usually also provide an executable `ssh_command` output:

```bash
terraform output -raw ssh_command
```

The repository's `./ssh` script is a compatibility tool for legacy templates whose outputs are all IP addresses and whose root password is `PigstyDemo4`. It iterates over **every** Terraform output, treats it as an IP address, writes it to `~/.ssh/pigsty_config`, and distributes keys with `sshpass`. It is suitable for compatibility templates such as `aliyun.tf`, `aliyun-full.tf`, `aliyun-oss.tf`, and `aliyun-pro.tf`. Do not run it against modern templates that output `ssh_command`, private IPs, or access keys.

When using a compatible template:

```bash
./ssh       # Write SSH config and distribute keys
ssh meta    # Login using hostname instead of IP
```

{{% alert title="Using SSH Config File" color="info" %}}
If you want to use the configuration in `~/.ssh/pigsty_config`, ensure your `~/.ssh/config` includes:

```bash
Include ~/.ssh/pigsty_config
```
{{% /alert %}}

### Destroy Resources

After testing, you can destroy all created cloud resources with one click:

```bash
terraform destroy
```


----------------

## Template Specs

Pigsty provides multiple predefined cloud resource templates in the [`terraform/spec/`](https://github.com/pgsty/pigsty/tree/main/terraform/spec) directory:

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
| [`vultr.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/vultr.tf) | Vultr | Single node, Debian 12/13, currently AMD only |
| [`digitalocean.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/digitalocean.tf) | DigitalOcean | Single node, Debian 12/13, currently AMD only |
| [`linode.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/linode.tf) | Linode | Single node, Debian 12/13, currently AMD only |
{.full-width}

When using a template, copy the template file to `terraform.tf`:

```bash
cd ~/pigsty/terraform
cp spec/aliyun-full.tf terraform.tf   # Use Alibaba Cloud 4-node sandbox template
terraform init && terraform apply
```


----------------

## Variable Configuration

Variables differ between templates. Alibaba Cloud templates support the full multi-distribution matrix and default to `u26`. Global AWS, Azure, GCP, Tencent Cloud, and Hetzner support Debian 12/13 with AMD/ARM selection and generally default to `d12`/`amd64`. Vultr, DigitalOcean, and Linode currently expose AMD instance choices only.

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
  default     = "d12"       # Global-cloud templates usually default to Debian 12; Alibaba Cloud defaults to u26
}
```

### Resource Configuration

Alibaba Cloud templates expose the following resource parameters in a `locals` block. Other cloud templates use provider-specific instance, disk, and network variables or local values; consult the selected `.tf` file.

```hcl
locals {
  bandwidth        = 100                    # Public bandwidth (Mbps)
  disk_size        = 40                     # System disk size (GB)
  spot_policy      = "SpotWithPriceLimit"   # Spot policy: NoSpot, SpotWithPriceLimit, SpotAsPriceGo
  spot_price_limit = 5                      # Max spot price (only effective with SpotWithPriceLimit)
}
```


----------------

## Alibaba Cloud Configuration

### Credential Setup

Add your Alibaba Cloud credentials to environment variables, for example in `~/.bash_profile` or `~/.zshrc`:

```bash
export ALICLOUD_ACCESS_KEY="<your_access_key>"
export ALICLOUD_SECRET_KEY="<your_secret_key>"
export ALICLOUD_REGION="cn-shanghai"
```

### Supported Images

The following are commonly used [**ECS Public OS Image**](https://help.aliyun.com/zh/ecs/user-guide/public-mirroring-overview) prefixes in Alibaba Cloud:

The currently recommended and validated baselines are Rocky Linux 9.8 / 10.2, Debian 12.15 / 13.6, and Ubuntu 22.04.5 / 24.04.4 / 26.04.0.

| Distro | Code | x86_64 Image Prefix | aarch64 Image Prefix |
|--------|------|---------------------|----------------------|
| CentOS 7.9 | `el7` | `centos_7_9_x64` | - |
| Rocky 8.10 | `el8` | `rockylinux_8_10_x64` | `rockylinux_8_10_arm64` |
| Rocky 9.8 | `el9` | `rockylinux_9_8_x64` | `rockylinux_9_8_arm64` |
| Rocky 10.2 | `el10` | `rockylinux_10_2_x64` | `rockylinux_10_2_arm64` |
| Debian 11.11 | `d11` | `debian_11_11_x64` | - |
| Debian 12.15 | `d12` | `debian_12_15_x64` | `debian_12_15_arm64` |
| Debian 13.6 | `d13` | `debian_13_6_x64` | `debian_13_6_arm64` |
| Ubuntu 22.04.5 LTS | `u22` | `ubuntu_22_04_x64_20G` | `ubuntu_22_04_arm64_20G` |
| Ubuntu 24.04.4 LTS | `u24` | `ubuntu_24_04_x64_20G` | `ubuntu_24_04_arm64_20G` |
| Ubuntu 26.04.0 LTS | `u26` | `ubuntu_26_04_x64_20G` | `ubuntu_26_04_arm64_20G` |
| Anolis 8.10 | `an8` | `anolisos_8_10_x64` | `anolisos_8_10_arm64` |
| Alibaba Cloud Linux 3 | `al3` | `aliyun_3_x64_20G_alibase_[0-9]+` | `aliyun_3_arm64_20G_alibase_[0-9]+` |
{.full-width}

### OSS Storage Configuration

The `aliyun-s3.tf` template additionally creates an OSS bucket and related permissions for PostgreSQL PITR backup:

- **OSS Bucket**: Creates a private bucket named `pigsty-oss`
- **RAM User**: Creates a dedicated `pigsty-oss-user` user
- **Access Key**: Generates AccessKey and saves to `~/pigsty.sk`
- **RAM Policy**: Grants the user `oss:*` permissions on the bucket and its objects for read/write use


----------------

## AWS Configuration

### Credential Setup

Both global and China-region templates can read standard AWS environment variables or credential files:

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

`aws.tf` reads `~/.ssh/id_rsa.pub` by default. The legacy China-region `aws-cn.tf` instead reads this dedicated public key:

```bash
~/.aws/pigsty-key.pub
```

{{% alert title="AWS templates may need adjustments" color="warning" %}}
`aws.tf` uses a rolling lookup for official Debian AMIs. `aws-cn.tf` uses a hard-coded China-region AMI and `~/.aws/pigsty-key.pub`; verify the target region, AMI, and key before deployment.
{{% /alert %}}


----------------

## Tencent Cloud Configuration

### Credential Setup

Add Tencent Cloud credentials to environment variables:

```bash
export TENCENTCLOUD_SECRET_ID="<your_secret_id>"
export TENCENTCLOUD_SECRET_KEY="<your_secret_key>"
export TENCENTCLOUD_REGION="ap-beijing"
```

{{% alert title="Tencent Cloud templates may need adjustments" color="warning" %}}
Tencent Cloud templates are community-contributed examples and may need adjustments based on your specific requirements.
{{% /alert %}}

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

The GCP template also requires a `project` variable, for example `terraform apply -var="project=my-project"`. Except for AWS China, current key-based templates read `~/.ssh/id_rsa.pub` by default; edit the selected template to use another public-key path.


----------------

## Shortcut Commands

Pigsty provides some Makefile shortcuts for Terraform operations:

```bash
cd ~/pigsty/terraform

make u          # terraform apply -auto-approve + run legacy ./ssh (compatible templates only)
make d          # terraform destroy -auto-approve
make apply      # terraform apply (interactive confirmation)
make destroy    # terraform destroy (interactive confirmation)
make out        # terraform output
make ssh        # Run ssh script to configure SSH access
make r          # Reset terraform.tf to repository state
```

For modern templates with `ssh_command`, private-IP, or other non-IP outputs, run `terraform apply` directly; do not use `make u`, which invokes the legacy `./ssh` script afterward.

----------------

## Notes

{{% alert title="Cloud Resource Costs" color="warning" %}}
Cloud resources created with Terraform incur costs. After testing, promptly use `terraform destroy` to destroy resources to avoid unnecessary expenses.

It's recommended to use pay-as-you-go instance types for testing. Templates default to using Spot Instances to reduce costs.
{{% /alert %}}

{{% alert title="Default Password" color="info" %}}
Alibaba Cloud and Tencent Cloud templates set the default root password to `PigstyDemo4`; Linode uses `PigstyDemo4!` to satisfy its password-complexity rules.
Current AWS, Azure, GCP, Hetzner, Vultr, and DigitalOcean templates primarily use SSH public-key authentication and do not share a default root password. Example passwords are for temporary tests only; change them or disable password login in production.
{{% /alert %}}

{{% alert title="Security Group Configuration" color="info" %}}
These templates target demonstration and development. Their current security groups or cloud firewalls allow all or nearly all inbound traffic from `0.0.0.0/0` (some also include `::/0`), not just the ports Pigsty requires.
Restrict source networks and ports before deployment; do not use these defaults unchanged in production.
{{% /alert %}}

{{% alert title="SSH Access" color="info" %}}
After creation, SSH login to the admin node using:

```bash
ssh root@<public_ip>
```

Alibaba Cloud templates that retain the legacy output and password conventions can also use `./ssh` or `make ssh` to write SSH aliases. For other templates, use their `ssh_command` output.
{{% /alert %}}
