# Join the Community

> Pigsty is a Build in Public project. We are very active on GitHub, and Chinese users are mainly active in WeChat groups.

---

LLMS index: [llms.txt](/llms.txt)

---

---------------

## GitHub

Find the project at [github.com/pgsty/pigsty](https://github.com/pgsty/pigsty). You can support it with a [**star**](https://github.com/pgsty/pigsty/stargazers).

Contribute feature suggestions, [new issues](https://github.com/pgsty/pigsty/issues/new), or [pull requests](https://github.com/pgsty/pigsty/pulls).

[![Star History Chart](https://api.star-history.com/svg?repos=pgsty/pigsty&type=Date)](https://star-history.com/#pgsty/pigsty&Date)

For documentation problems, submit [issues](https://github.com/pgsty/pigsty.cc/issues) to [github.com/pgsty/pigsty.cc](https://github.com/pgsty/pigsty.cc).

Press ⌘ + K on macOS, or Ctrl + K, to search the documentation, extension catalog, and blog directly.


---------------

## Maintainers

Pigsty is built by its maintainers and community.

- [\@Vonng](https://github.com/Vonng) — Pigsty founder and maintainer
- [\@pgsty](https://github.com/pgsty) — Pigsty open\-source organization



---------------

## WeChat Groups

Chinese users mainly use WeChat groups. There are seven active groups. Groups 1-4 are full. Add the assistant on WeChat for an invitation to another group.

To join, search for "Pigsty小助手" on WeChat (ID: `pigsty-cc`). Include or send "加群" (join group). The assistant will send an invitation.

![Pigsty Chinese community](/img/pigsty/pigsty-cc.jpg)


---------------

## International Community

Telegram: https://t.me/joinchat/gV9zfZraNPM3YjFh

Discord: https://discord.gg/j5pG8qfKxU

You can also contact me via email: rh@vonng.com





---------------

## Community Help

For problems with Pigsty, ask the community for help. More diagnostic information improves the chance of a useful response.

Follow the [Community Help Guide](https://github.com/pgsty/pigsty/discussions/338) and provide enough information to diagnose the problem. Use this request template:


**What happened?** (**Required**)

**Pigsty version and OS version** (**Required**)

```text
$ grep version pigsty.yml

$ cat /etc/os-release

$ uname -a
```

Some cloud providers customize operating system images. Identify the provider and image that you use. Describe any changes made after OS installation and any relevant LAN security or firewall rules.


**Pigsty configuration file**

> Please don't forget to redact any sensitive information: passwords, internal keys, sensitive configurations, etc.

```text
cat ~/pigsty/pigsty.yml
```

**What did you expect to happen?**

> Please describe what should happen under normal circumstances, and how the actual situation differs from expectations.

**How to reproduce this issue?**

> Please tell us in as much detail as possible how to reproduce this issue.

**Monitoring screenshots**

> If you are using the monitoring system provided by Pigsty, you can provide **relevant** screenshots.


**Error logs**

Provide logs that explain the error. **A message such as "Failed to start xxx service" alone does not identify the cause**.

You can query logs from Grafana / VictoriaLogs, or get logs from the following locations:

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
