---
title: "Contributing guidelines"
linkTitle: "Contributing"
weight: 200
icon: fa-solid fa-users
description: "Contribution workflow, support channels, and development guidelines."
module: [PATRONI]
categories: [Task]
---

> Source: https://patroni.readthedocs.io/en/latest/contributing_guidelines.html

<a id="contributing_guidelines"></a>

--------

## Chatting

For questions, interactive troubleshooting, or discussion with other users, join [\#patroni](https://postgresteam.slack.com/archives/C9XPYG92A) on [PostgreSQL Slack](https://pgtreats.info/slack-invite).

<a id="reporting_bugs"></a>

--------

## Reporting bugs

Before you report a bug, **reproduce it with the latest Patroni version**. Check the [Issues Tracker](https://github.com/patroni/patroni/issues) for an existing report.

--------

## Running tests

Requirements for running behave tests:

1.  Install PostgreSQL packages, including [contrib](https://www.postgresql.org/docs/current/contrib.html) modules.
2.  Add PostgreSQL binaries to `PATH`. For example, use `PATH=/usr/lib/postgresql/11/bin:\$PATH python -m behave`.
3.  For external DCS tests, install the relevant packages, such as Etcd, Consul, or Zookeeper. Run their services on localhost and the default port, with unencrypted, unprotected connections. For Etcd and Consul, the behave suite can start the services if their binaries are in `PATH`.

Install dependencies:

``` bash
# You may want to use Virtualenv or specify pip3.
pip install -r requirements.txt
pip install -r requirements.dev.txt
```

After you install the dependencies, run the test suites:

``` bash
# You may want to use Virtualenv or specify python3.

# Run flake8 to check syntax and formatting:
python setup.py flake8

# Run the pytest suite in tests/:
python setup.py test

# Moreover, you may want to run tests in different scopes for debugging purposes,
# the -s option include print output during test execution.
# Tests in pytest typically follow the pattern: FILEPATH::CLASSNAME::TESTNAME.
pytest -s tests/test_api.py
pytest -s tests/test_api.py::TestRestApiHandler
pytest -s tests/test_api.py::TestRestApiHandler::test_do_GET

# Run the behave (https://behave.readthedocs.io/en/latest/) test suite in features/;
# modify DCS as desired (raft has no dependencies so is the easiest to start with):
DCS=raft python -m behave
```

--------

## Testing with tox

Tox tests require one dependency in addition to Python:

``` bash
pip install tox>=4
```

For `behave` tests, also install Docker.

The environments in `tox.ini` run these tasks:

- lint: Python code lint with `flake8`
- test: unit tests for all available python interpreters with `pytest`, generates XML reports or HTML reports if a TTY is detected
- dep: detect package dependency conflicts using `pipdeptree`
- type: static type checking with `pyright`
- black: code formatting with `black`
- docker-build: build docker image used for the `behave` env
- docker-cmd: run arbitrary command with the above image
- docker-behave-etcd: run tox for behave tests with above image
- py\*behave: run behave with available python interpreters (without docker, although this is what is called inside docker containers)
- docs: build docs with `sphinx`

### Running tox

Run the default environments (dep, lint, test, and docs):

``` bash
tox
```

The `test` envs can be run with the label \`test\`:

``` bash
tox -m test
```

The `behave` docker tests can be run with the label \`behave\`:

``` bash
tox -m behave
```

Similarly, docs has the label `docs`.

All other envs can be run with their respective env names:

``` bash
tox -e lint
tox -e py39-test-lin
```

Use `factors` to select some environments. For example, run all Python 3.10 environments:

``` bash
tox -f py310
```

This is equivalent to running all the envs listed below:

``` bash
$ tox -l -f py310
py310-test-lin
py310-test-mac
py310-test-win
py310-type-lin
py310-type-mac
py310-type-win
py310-behave-etcd-lin
py310-behave-etcd-win
py310-behave-etcd-mac
```

With tox \>=v4, list all configured environment combinations:

``` bash
tox l
```

With an active terminal, the `test` and `docs` environments try to open their HTML output after completion. This helps developers who run them locally. They use `open` on Mac and `xdg-open` on Linux. To use another command, set `OPEN_CMD` to its name or path. A failure to open the output does not fail the test run. To disable this behavior, set `OPEN_CMD` to the `:` no-op command.

``` bash
OPEN_CMD=: tox -m docs
```

### Behave tests

The `-m behave` tests build Docker images for PG_MAJOR versions 11 through 16, then run all behave tests. This can take a long time. You may limit tests to one Postgres version, feature set, or group of steps.

To select a Postgres version, specify the full dependent image build environment name, then the behave environment name. For Postgres 14, use:

``` bash
tox -e pg14-docker-build,pg14-docker-behave-etcd-lin
```

To test one feature, pass positional arguments to behave. This example tests the watchdog feature with all Postgres versions:

``` bash
tox -m behave -- features/watchdog.feature
```

You can combine the version and feature selections.

--------

## Contributing a pull request

1.  Fork the repository. Develop and test your changes.
2.  Update the user documentation.
3.  Submit a pull request that clearly describes the purpose of the changes. Link an existing issue if necessary.

The maintainers will review your pull request as soon as possible.
