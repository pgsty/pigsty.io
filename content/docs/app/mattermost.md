---
title: "Mattermost: Open-Source IM"
weight: 605
description: Build a private team collaboration platform with Mattermost, the open-source Slack alternative.
module: [SOFTWARE]
categories: [Reference]
---

[**Mattermost**](https://mattermost.com/) is an open-source team collaboration and messaging platform.

Mattermost provides instant messaging, file sharing, audio/video calls, and more. It's an open-source alternative to Slack and Microsoft Teams, particularly suitable for enterprises requiring self-hosted deployment.


## Quick Start

```bash
cd ~/pigsty/app/mattermost
make up     # Start Mattermost with Docker Compose
```

Access URL: http://mattermost.pigsty or http://10.10.10.10:8065

First-time access requires creating an administrator account.


## Features

- **Instant Messaging**: Personal and group chat
- **Channel Management**: Public and private channels
- **File Sharing**: Secure file storage and sharing
- **Audio/Video Calls**: Built-in calling functionality
- **Integration Capabilities**: Webhooks, Bots, and plugins support
- **Mobile Apps**: iOS and Android clients
- **Enterprise-grade**: SSO, LDAP, compliance features


## Connect to PostgreSQL

Mattermost uses PostgreSQL for data storage. Configure the connection information:

```bash
MM_SQLSETTINGS_DRIVERNAME=postgres
MM_SQLSETTINGS_DATASOURCE=postgres://dbuser_mm:DBUser.MM@10.10.10.10:5432/mattermost
```


## Related Links

- Mattermost Website: https://mattermost.com/
- Documentation: https://docs.mattermost.com/
- GitHub Repository: https://github.com/mattermost/mattermost
