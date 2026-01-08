---
title: "Maybe: Personal Finance"
weight: 610
description: Manage personal finances with Maybe, the open-source Mint/Personal Capital alternative.
module: [SOFTWARE]
categories: [Reference]
---

[**Maybe**](https://github.com/maybe-finance/maybe) is an open-source personal finance management application.

Maybe provides financial tracking, budget management, investment analysis, and more. It's an open-source alternative to Mint and Personal Capital, giving you complete control over your financial data.

## Quick Start

```bash
cd ~/pigsty/app/maybe
cp .env.example .env
vim .env                    # Must modify SECRET_KEY_BASE
make up                      # Start Maybe service
```

Access URL: http://maybe.pigsty or http://10.10.10.10:5002

## Configuration

Configure in the `.env` file:

```bash
SECRET_KEY_BASE=your-secret-key-here    # Must modify!
DATABASE_URL=postgresql://...
```

**Important**: You must modify `SECRET_KEY_BASE` before first deployment!

## Features

- **Account Management**: Track multiple bank accounts and credit cards
- **Budget Planning**: Set up and track budgets
- **Investment Analysis**: Monitor portfolio performance
- **Bill Reminders**: Automatic reminders for upcoming bills
- **Privacy-first**: Data is completely under your control

## Related Links

- GitHub Repository: https://github.com/maybe-finance/maybe
