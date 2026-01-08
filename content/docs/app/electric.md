---
title: "Electric: PGLite Sync Engine"
weight: 655
description: Use Electric to solve PostgreSQL data synchronization challenges with partial replication and real-time data transfer.
module: [SOFTWARE]
categories: [Reference]
---

[**Electric**](https://electric-sql.com/) is a PostgreSQL sync engine that solves complex data synchronization problems.

Electric supports partial replication, fan-out delivery, and efficient data transfer, making it ideal for building real-time and offline-first applications.

## Quick Start

```bash
cd ~/pigsty/app/electric
make up     # Start Electric service
```

Access URL: http://electric.pigsty or http://10.10.10.10:3000

## Features

- **Partial Replication**: Sync only the data you need
- **Real-time Sync**: Millisecond-level data updates
- **Offline-first**: Work offline with automatic sync
- **Conflict Resolution**: Automatic handling of data conflicts
- **Type Safety**: TypeScript support

## Related Links

- Electric Website: https://electric-sql.com/
- Documentation: https://electric-sql.com/docs
- GitHub Repository: https://github.com/electric-sql/electric
