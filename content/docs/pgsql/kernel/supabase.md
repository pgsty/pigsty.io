---
title: Supabase
date: 2024-06-23
weight: 2102
description: How to self-host Supabase with Pigsty, deploy an open-source Firebase alternative with a complete backend stack in one click.
icon: fas fa-bolt
module: [SOFTWARE]
categories: [Concept]
---

> [Supabase](https://supabase.com/) — Build in a weekend, Scale to millions

Supabase is an open-source Firebase alternative that wraps PostgreSQL and provides authentication, out-of-the-box APIs, edge functions, real-time subscriptions, object storage, and vector embedding capabilities.
This is a low-code all-in-one backend platform that lets you skip most backend development work, requiring only database design and frontend knowledge to quickly ship products!

Supabase's motto is: "**Build in a weekend, Scale to millions**". Indeed, Supabase is [extremely cost-effective](https://supabase.com/pricing) at small to micro scales (4c8g), like a cyber bodhisattva.
— But when you really scale to millions of users — you should seriously consider self-hosting Supabase — whether for functionality, performance, or cost considerations.

Pigsty provides you with a complete one-click self-hosting solution for Supabase. Self-hosted Supabase enjoys full PostgreSQL monitoring, IaC, PITR, and high availability,
and compared to Supabase cloud services, it provides up to [**440**](https://pgext.cloud) out-of-the-box PostgreSQL extensions and can more fully utilize the performance and cost advantages of modern hardware.

For the complete self-hosting tutorial, please refer to: [**Supabase Self-Hosting Guide**](/docs/app/supabase)


![](/img/pigsty/supabase.webp)

-------

## Quick Start

Pigsty's default [`supa.yml`](https://github.com/pgsty/pigsty/blob/main/conf/supa.yml) configuration template defines a single-node Supabase.

First, use Pigsty's [standard installation process](/docs/setup/install) to install the MinIO and PostgreSQL instances required for Supabase:

```bash
 curl -fsSL https://repo.pigsty.io/get | bash
./bootstrap          # Environment check, install dependencies
./configure -c supa  # Important: modify passwords and other key info in config!
./deploy.yml         # Install Pigsty, deploy PGSQL and MINIO!
```

Before deploying Supabase, please modify the [Supabase parameters](#configuration-details) in the `pigsty.yml` config file according to your actual situation (mainly passwords!)

Then, run [`docker.yml`](/docs/docker/playbook) and [`app.yml`](/docs/docker/playbook) to complete the remaining work and deploy Supabase containers:

```bash
./docker.yml       # Install Docker module
./app.yml          # Start Supabase stateless components!
```

For users in China, please configure appropriate Docker mirror sites or proxy servers to bypass GFW to pull DockerHub images.
For [professional subscriptions](/docs/about/service), we provide the ability to [offline install](/docs/setup/offline) Pigsty and Supabase without internet access.

Pigsty exposes web services through Nginx on the admin node/INFRA node by default. You can add DNS resolution for `supa.pigsty` pointing to this node locally,
then access `https://supa.pigsty` through a browser to enter the Supabase Studio management interface.

> Default username and password: supabase / pigsty

{{< asciinema file="demo/supabase.cast" markers="0:Check,11:Install,43:Config,307:Docker,321:Domain,340:App,350:Verify" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}
