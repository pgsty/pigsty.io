---
title: Terraform
weight: 390
description: Create virtual machine environment on public cloud with Terraform
icon: fa-solid fa-cloud
module: [PIGSTY]
categories: [Tutorial]
---

[**Terraform**](https://www.terraform.io/) is a popular "Infrastructure as Code" tool that you can use to create virtual machines on public clouds with one click.

Pigsty provides Terraform templates for Alibaba Cloud, AWS, and Tencent Cloud as examples.


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
cp spec/aliyun-meta.tf terraform.tf   # Select template
terraform init                         # Install cloud provider plugins (first use)
terraform apply                        # Generate execution plan and create resources
```

After running the `apply` command, type `yes` to confirm when prompted. Terraform will create VMs and related cloud resources for you.

### Get IP Address

After creation, print the public IP address of the admin node:

```bash
terraform output | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
```

### Configure SSH Access

Use the `ssh` script to automatically configure SSH aliases and distribute keys:

```bash
./ssh    # Write SSH config to ~/.ssh/pigsty_config and copy keys
```

This script writes the IP addresses from Terraform output to `~/.ssh/pigsty_config` and automatically distributes SSH keys using the default password `PigstyDemo4`.

After configuration, you can login directly using hostnames:

```bash
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
| [`aliyun-meta.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/aliyun-meta.tf) | Alibaba Cloud | Single-node meta template, supports all distros and AMD/ARM (default) |
| [`aliyun-meta-s3.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/aliyun-meta-s3.tf) | Alibaba Cloud | Single-node template + OSS bucket for PITR backup |
| [`aliyun-full.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/aliyun-full.tf) | Alibaba Cloud | 4-node sandbox template, supports all distros and AMD/ARM |
| [`aliyun-oss.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/aliyun-oss.tf) | Alibaba Cloud | 5-node build template, supports all distros and AMD/ARM |
| [`aliyun-pro.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/aliyun-pro.tf) | Alibaba Cloud | Multi-distro test template for cross-OS testing |
| [`aws-cn.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/aws-cn.tf) | AWS | AWS China region 4-node environment |
| [`tencentcloud.tf`](https://github.com/pgsty/pigsty/tree/main/terraform/spec/tencentcloud.tf) | Tencent Cloud | Tencent Cloud 4-node environment |

When using a template, copy the template file to `terraform.tf`:

```bash
cd ~/pigsty/terraform
cp spec/aliyun-full.tf terraform.tf   # Use Alibaba Cloud 4-node sandbox template
terraform init && terraform apply
```


----------------

## Variable Configuration

Pigsty's Terraform templates use variables to control architecture, OS distribution, and resource configuration:

### Architecture and Distribution

```hcl
variable "architecture" {
  description = "Architecture type (amd64 or arm64)"
  type        = string
  default     = "amd64"    # Comment this line to use arm64
  #default     = "arm64"   # Uncomment to use arm64
}

variable "distro" {
  description = "Distribution code (el8,el9,el10,u22,u24,d12,d13)"
  type        = string
  default     = "el9"       # Default uses Rocky Linux 9
}
```

### Resource Configuration

The following resource parameters can be configured in the `locals` block:

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

| Distro | Code | x86_64 Image Prefix | aarch64 Image Prefix |
|--------|------|---------------------|----------------------|
| CentOS 7.9 | `el7` | `centos_7_9_x64` | - |
| Rocky 8.10 | `el8` | `rockylinux_8_10_x64` | `rockylinux_8_10_arm64` |
| Rocky 9.6 | `el9` | `rockylinux_9_6_x64` | `rockylinux_9_6_arm64` |
| Rocky 10.0 | `el10` | `rockylinux_10_0_x64` | `rockylinux_10_0_arm64` |
| Debian 11.11 | `d11` | `debian_11_11_x64` | - |
| Debian 12.11 | `d12` | `debian_12_11_x64` | `debian_12_11_arm64` |
| Debian 13.2 | `d13` | `debian_13_2_x64` | `debian_13_2_arm64` |
| Ubuntu 20.04 | `u20` | `ubuntu_20_04_x64` | - |
| Ubuntu 22.04 | `u22` | `ubuntu_22_04_x64` | `ubuntu_22_04_arm64` |
| Ubuntu 24.04 | `u24` | `ubuntu_24_04_x64` | `ubuntu_24_04_arm64` |
| Anolis 8.9 | `an8` | `anolisos_8_9_x64` | - |
| Alibaba Cloud Linux 3 | `al3` | `aliyun_3_0_x64` | - |

### OSS Storage Configuration

The `aliyun-meta-s3.tf` template additionally creates an OSS bucket and related permissions for PostgreSQL PITR backup:

- **OSS Bucket**: Creates a private bucket named `pigsty-oss`
- **RAM User**: Creates a dedicated `pigsty-oss-user` user
- **Access Key**: Generates AccessKey and saves to `~/pigsty.sk`
- **IAM Policy**: Grants full access to the bucket


----------------

## AWS Configuration

### Credential Setup

Set up AWS configuration and credential files:

```bash
# ~/.aws/config
[default]
region = cn-northwest-1

# ~/.aws/credentials
[default]
aws_access_key_id = <YOUR_AWS_ACCESS_KEY>
aws_secret_access_key = <AWS_ACCESS_SECRET>
```

If you need to use SSH keys, place the key files at:

```bash
~/.aws/pigsty-key
~/.aws/pigsty-key.pub
```

{{% alert title="AWS templates may need adjustments" color="warning" %}}
AWS templates are community-contributed examples and may need adjustments based on your specific requirements.
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


----------------

## Shortcut Commands

Pigsty provides some Makefile shortcuts for Terraform operations:

```bash
cd ~/pigsty/terraform

make u          # terraform apply -auto-approve + configure SSH
make d          # terraform destroy -auto-approve
make apply      # terraform apply (interactive confirmation)
make destroy    # terraform destroy (interactive confirmation)
make out        # terraform output
make ssh        # Run ssh script to configure SSH access
make r          # Reset terraform.tf to repository state
```


----------------

## Notes

{{% alert title="Cloud Resource Costs" color="warning" %}}
Cloud resources created with Terraform incur costs. After testing, promptly use `terraform destroy` to destroy resources to avoid unnecessary expenses.

It's recommended to use pay-as-you-go instance types for testing. Templates default to using Spot Instances to reduce costs.
{{% /alert %}}

{{% alert title="Default Password" color="info" %}}
The default root password for VMs in all templates is `PigstyDemo4`. In production environments, be sure to change this password or use SSH key authentication.
{{% /alert %}}

{{% alert title="Security Group Configuration" color="info" %}}
Terraform templates automatically create security groups and open necessary ports (all TCP ports open by default). In production environments, adjust security group rules according to actual needs, following the principle of least privilege.
{{% /alert %}}

{{% alert title="SSH Access" color="info" %}}
After creation, SSH login to the admin node using:

```bash
ssh root@<public_ip>
```

You can also use `./ssh` or `make ssh` to write SSH aliases to the config file, then login using `ssh pg-meta`.
{{% /alert %}}

