---
title: Join the Community
linkTitle: Community 
weight: 125
description: Pigsty is a Build in Public project. We are very active on GitHub, and
  Chinese users are mainly active in WeChat groups.
icon: fas fa-user-group
module: [PIGSTY]
categories: [Reference]
tags: []
---


---------------

## GitHub

Our GitHub repository is: [https://github.com/pgsty/pigsty](https://github.com/pgsty/pigsty). Please give us a ⭐️ [**star**](https://github.com/pgsty/pigsty/stargazers)!

We welcome anyone to [submit new Issues](https://github.com/pgsty/pigsty/issues/new) or create [Pull Requests](https://github.com/pgsty/pigsty/pulls), propose feature suggestions, and contribute to Pigsty.

[![Star History Chart](https://api.star-history.com/svg?repos=pgsty/pigsty&type=Date)](https://star-history.com/#pgsty/pigsty&Date)

Please note that for issues related to Pigsty documentation, please submit [Issues](https://github.com/pgsty/pigsty.cc/issues) in the [github.com/pgsty/pigsty.cc](https://github.com/pgsty/pigsty.cc) repository.


---------------

## WeChat Groups

Chinese users are mainly active in WeChat groups. Currently, there are seven active groups. Groups 1-4 are full; for other groups, you need to add the assistant's WeChat to be invited.

To join the WeChat community, search for "Pigsty小助手" (WeChat ID: `pigsty-cc`), note or send "加群" (join group), and the assistant will invite you to the group.

![](/img/pigsty/pigsty-cc.jpg)


---------------

## International Community

Telegram: https://t.me/joinchat/gV9zfZraNPM3YjFh

Discord: https://discord.gg/j5pG8qfKxU

You can also contact me via email: rh@vonng.com





---------------

## Community Help

When you encounter problems using Pigsty, you can seek help from the community. The more information you provide, the more likely you are to get help from the community.

Please refer to the [Community Help Guide](https://github.com/pgsty/pigsty/discussions/338) and provide as much information as possible so that community members can help you solve the problem. Here is a reference template for asking for help:


**What happened?** (**Required**)

**Pigsty version and OS version** (**Required**)

```
$ grep version pigsty.yml

$ cat /etc/os-release

$ uname -a
```

Some cloud providers have customized standard OS distributions. You can tell us which cloud provider's OS image you are using.
If you have customized and modified the environment after installing the OS, or if there are specific security rules and firewall configurations in your LAN, please also inform us when asking questions.


**Pigsty configuration file**

> Please don't forget to redact any sensitive information: passwords, internal keys, sensitive configurations, etc.

```
cat ~/pigsty/pigsty.yml
```

**What did you expect to happen?**

> Please describe what should happen under normal circumstances, and how the actual situation differs from expectations.

**How to reproduce this issue?**

> Please tell us in as much detail as possible how to reproduce this issue.

**Monitoring screenshots**

> If you are using the monitoring system provided by Pigsty, you can provide **relevant** screenshots.


**Error logs**

Please provide logs related to the error as much as possible. **Please do not paste content like "Failed to start xxx service" that has no informational value**.

You can query logs from Grafana / Loki, or get logs from the following locations:

- Syslog:    `/var/log/messages` (rhel) or `/var/log/syslog` (debian)
- Postgres:   `/pg/log/postgres/*`
- Patroni:   `/pg/log/patroni/*`
- Pgbouncer:   `/pg/log/pgbouncer/*`
- Pgbackrest:   `/pg/log/pgbackrest/*`

```bash
journalctl -u patroni
journalctl -u <service name>
```




**Have you searched Issues/Website/FAQ?**

> In the FAQ, we provide answers to many common questions. Please check before asking.

You can also search for related issues from GitHub Issues and Discussions:

- [Pigsty FAQ](/docs/pgsql/faq)
- [Github Issues](https://github.com/pgsty/pigsty/issues)
- [Pigsty Discussions](https://github.com/pgsty/pigsty/discussions)


**Is there any other information we need to know?**

> The more information and context you provide, the more likely we can help you solve the problem.

