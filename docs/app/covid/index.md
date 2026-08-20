# WHO COVID-19 Pandemic Dashboard

> A sample Applet included with Pigsty for visualizing World Health Organization official pandemic data

---

LLMS index: [llms.txt](/llms.txt)

---

Covid is a sample Applet included with Pigsty for visualizing the World Health Organization's official pandemic data dashboard.

You can browse COVID-19 infection and death cases for each country and region, as well as global pandemic trends.



-----------

## Overview

GitHub Repository: [https://github.com/pgsty/pigsty-app/tree/master/covid](https://github.com/pgsty/pigsty-app/tree/master/covid)

Online Demo: [https://demo.pigsty.io/d/covid](https://demo.pigsty.io/d/covid)

[![COVID-19 analytics dashboard](/img/docs/app/covid.jpg)](https://demo.pigsty.io/d/covid)


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
