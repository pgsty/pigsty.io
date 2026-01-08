---
title: WHO COVID-19 Pandemic Dashboard
date: 2022-01-18
weight: 680
description: A sample Applet included with Pigsty for visualizing World Health Organization
  official pandemic data
module: [APP]
categories: [Reference]
tags: [Visualization]
---


Covid is a sample Applet included with Pigsty for visualizing the World Health Organization's official pandemic data dashboard.

You can browse COVID-19 infection and death cases for each country and region, as well as global pandemic trends.



-----------

## Overview

GitHub Repository: [https://github.com/Vonng/pigsty-app/tree/master/covid](https://github.com/Vonng/pigsty-app/tree/master/covid)

Online Demo: [https://demo.pigsty.io/d/covid](https://demo.pigsty.io/d/covid)

[![](/img/docs/app/covid.jpg)](https://demo.pigsty.io/d/covid)


-----------

## Installation

Enter the application directory on the admin node and execute `make` to complete the installation.

```bash
make            # Complete all configuration
```

Other sub-tasks:

```bash
make reload     # download latest data and pour it again
make ui         # install grafana dashboards
make sql        # install database schemas
make download   # download latest data
make load       # load downloaded data into database
make reload     # download latest data and pour it into database
```

