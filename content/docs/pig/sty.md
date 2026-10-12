---
title: "pig sty"
description: "Manage Pigsty installation with pig sty"
weight: 150
icon: fas fa-server
module: [PIG]
categories: [Reference]
---

Use **pig** as a CLI for Pigsty, a free PostgreSQL RDS solution with included tools.
Pigsty provides HA, PITR, monitoring, infrastructure as code (IaC), and extension support for PostgreSQL clusters.

```bash
pig sty - Init (Download), Bootstrap, Configure, and Deploy Pigsty

  pig sty init    [-mpfvd]        # install pigsty (~/pigsty by default)
  pig sty boot    [-rmpk]         # native controller bootstrap
  pig sty conf    [mode] [flags]  # native Inventory-aware configuration
  pig sty deploy                  # use pigsty to deploy everything (CAUTION!)
  pig sty get                     # download pigsty source tarball
  pig sty list                    # list available pigsty versions
  pig sty grafana <verb>          # manage grafana dashboards (native HTTP)

Examples:
  pig sty init                 # extract and init ~/pigsty
  pig sty boot                 # install ansible & other deps
  pig sty conf                 # generate pigsty.yml config file
  pig sty deploy               # run the deploy.yml playbook
```

| Command | Description | Notes |
|:---|:---|:---|
| `sty init` | Install Pigsty | |
| `sty boot` | Bootstrap the Pigsty controller | Auto-elevates when needed |
| `sty conf` | Generate and validate Inventory | Native Go workflow |
| `sty deploy` | Run deployment playbook | |
| `sty list` | List available Pigsty versions | |
| `sty get` | Download Pigsty source tarball | |
| `sty grafana` | Manage Grafana dashboards (alias `gf`) | New in v1.6.0 |
{.full-width}

> From v1.8.0, `pig sty boot` and `pig sty conf` use native Go workflows.
> They no longer call Pigsty's legacy `bootstrap` or `configure` shell scripts.
> In v1.6.0, `pig sty edit` / `validate` / `check` moved to the root-level [`pig inventory`](/docs/pig/inventory/) group.
> The experimental `pig sty dashboard` was replaced by `pig sty grafana`.

## Quick Start

Use `pig sty` to bootstrap and deploy Pigsty on the current node.

```bash
pig sty boot                     # prepare the controller; auto-elevates when needed
pig sty conf -g                  # generate and validate pigsty.yml
pig inventory edit              # optional: review and adjust the Inventory
pig sty deploy                   # run deployment playbook
```

See the detailed setup guide: <https://pigsty.io/docs/setup/install/>

If the default `~/pigsty` tree is missing, `sty boot` attempts to initialize it.
To select a Pigsty version or installation path, run `pig sty init` first.

## sty init

Download and install the Pigsty distribution into `~/pigsty`.

```bash
pig sty init                   # install latest version to ~/pigsty
pig sty init -f                # install and overwrite existing pigsty directory
pig sty init -m                # prefer the pigsty.cc mirror for downloads
pig sty init -p /tmp/pigsty    # install to selected directory /tmp/pigsty
pig sty init -v 3.4            # fetch and install selected version v3.4.1
pig sty init 3                 # fetch and install latest v3 major version
```

**Options:**

- `-p|--path`: target installation directory, default `~/pigsty`
- `-f|--force`: force overwrite of existing pigsty directory
- `-m|--mirror`: prefer the `pigsty.cc` mirror
- `-v|--version`: Pigsty version
- `-d|--dir`: download directory, default `/tmp`

## sty boot

Prepare the Pigsty controller with the native Go workflow.
The command configures a usable Ansible environment, supports online and offline repositories, and repairs common controller prerequisites.
It returns a structured result.
It does not call the legacy `bootstrap` script. Package downloads and extraction do not require `curl`, `wget`, `tar`, or `gzip`.

```bash
sudo pig sty boot                         # online bootstrap with the default region
sudo pig sty boot -r china                # use China-region repositories
sudo pig sty boot -m                      # equivalent to --region china
sudo pig sty boot -k                      # preserve existing repository definitions
sudo pig sty boot -p /path/to/pkg.tgz     # use an explicit offline package
sudo pig sty boot -p https://host/pkg.tgz # download and use an offline package
sudo pig sty boot -o json                 # machine-readable result and warnings
```

You can run the command without `sudo`.
Pig resolves and downloads an explicit source first. If root access is required, it restarts itself once through `sudo`.
Set `PIG_NO_SUDO=1` to disable automatic elevation.
Set `PIG_NON_INTERACTIVE=1` to make the sudo attempt non-interactive.

### Bootstrap stages

The native workflow performs these stages:

1. On Debian 12/13, check `en_US.UTF-8` and repair it if possible so Ansible can start.
2. Run `ansible-playbook` and find its Python interpreter. Check `yaml`, `jmespath`, and either `cryptography` or `OpenSSL`. An Ansible binary must run successfully to be considered ready.
3. Resolve the repository source. Prepare offline content if selected. Install the minimal controller packages only if Ansible is missing or unusable.
4. After installation, check Ansible again. Retry locale preparation if the packages supplied the required locale tools.
5. Check controller helpers. Repair key-based SSH to `127.0.0.1` for the invoking admin user. If possible, initialize a missing default `~/pigsty` tree.

The command prepares explicit, automatically discovered, and already committed offline sources even if Ansible works.
Thus, you can use `sty boot` to prepare an offline repository on a ready controller.

### Source selection and modes

The result records one of four bootstrap modes:

| Mode | Meaning |
|------|---------|
| `ready` | Ansible was already usable and no offline source needed preparation. |
| `offline` | An explicit, trusted automatic, or committed offline repository was selected. |
| `online` | Regional online repositories were configured to repair the controller. |
| `existing` | An online refresh failed under `--keep`, and existing repository definitions were successfully used as a fallback. |

The command selects and prepares sources with these rules:

- `--path` accepts a local archive or HTTP(S) URL. It rejects URL credentials. An invalid explicit source fails the command; it does not switch to online repositories.
- An automatically discovered `/tmp/pkg.tgz` must be a regular file owned by root or the invoking sudo user. Group and world write permissions must be disabled. The command ignores unsafe files and returns a warning.
- A completed `/www/pigsty` repository takes precedence over a selected package. If both exist, the command uses the committed repository and leaves the package unchanged, with a warning.
- Pig downloads and extracts archives itself. If `/www` is absent, Pig creates `/data/nginx` and the `/www -> /data/nginx` symlink before committing content.

Offline mode enables only the strict `pigsty-local` repository.
Online mode configures the selected region and installs Pigsty's embedded signing key with repository signature checks enabled.
It also installs the `node` and `pigsty` controller modules.

### Repository transaction and failure boundary

By default, Pig backs up repository definitions before it replaces them.
If repository setup or package installation fails, Pig attempts to restore the backup and reports the rollback result.
With `--keep`, Pig adds definitions and preserves existing ones.
If online refresh fails in this mode, Pig can use the existing definitions. Replacement rollback is not needed.

The command fails for invalid explicit sources, repository or package errors, or unusable Ansible after installation.
It also fails if installation is required but the package manager is unsupported.
Locale repair, optional helper checks, localhost SSH repair, and Pigsty tree initialization are advisory steps.
If these steps fail but the result is usable, Pig returns warnings.

**Options:**

- `-r|--region`: region, such as default, china, europe
- `-m|--mirror`: equivalent to `--region china`; mutually exclusive with `--region`
- `-p|--path`: offline package file or HTTP(S) URL; an invalid explicit source is a hard error
- `-k|--keep`: preserve existing repositories instead of replacing them

### Structured output

For automation, use global `-o json` or `-o yaml`.
The payload kind is `pig.sty.boot/v2`. It includes Ansible state, selected mode and package manager, repository policy, and rollback result.
It also includes source and repository paths, locale, localhost SSH, and Pigsty tree initialization status.
The result reports machine changes, warnings, and these recommended next steps:

```bash
pig sty conf -g
pig inv edit
pig sty deploy
```

Dynamic progress is suppressed in structured mode, so stdout remains machine-readable.

See: <https://pigsty.io/docs/setup/offline/#bootstrap>

## sty conf

Generate a Pigsty Inventory with the native Go workflow.
The `sty conf` command reads one template below `<PIGSTY_HOME>/conf` and makes limited structural changes.
It validates the complete candidate, then writes an owner-only Inventory atomically.
It does not call or fall back to `./configure`.

```bash
pig sty conf                         # use conf/meta.yml and write pigsty.yml
pig sty conf -g                      # generate random passwords (recommended)
pig sty conf rich                    # positional mode selects conf/rich.yml
pig sty conf -c ha/full              # equivalent flag form; do not combine both forms
pig sty conf ha/trio --ip 10.0.0.10,10.0.0.11,10.0.0.12
pig sty conf --domain infra.example.com
pig sty conf rich -v 18              # request PostgreSQL 18 for a generic template
pig sty conf -r china -s             # China region, placeholder IP, no admin preflight
pig sty conf -x                       # materialize proxy environment variables
pig sty conf full -g -O ha.yml       # custom owner-only output file
pig sty conf -n --ip 10.0.0.10 -o json
```

The default mode is `meta`. Command aliases are `pig sty c` and `pig sty configure`.
Use `-O` for the Inventory output file.
Use global lowercase `-o` for text, JSON, or YAML command output.

### Template and output safety

- A mode is a slash-separated relative name below `<PIGSTY_HOME>/conf`; `.yml` is optional.
  Absolute paths, traversal, empty segments, and path escape are rejected.
- Relative output paths are resolved below `<PIGSTY_HOME>`; absolute output paths are retained.
- The destination cannot alias the source through the same path, an existing symlink, a
  symlinked parent, or a hard link. An existing output symlink is always refused.
- Pig parses the source and rejects conflicting IP mappings before running external preflight
  checks. A parse, mutation, preflight, or validation failure leaves the destination unchanged.
- A successful result is written atomically with mode `0600`.

### Structural mutations

The command changes parsed YAML structures and bounded scalar tokens. It does not use broad text replacement:

| Input | Native behavior |
|-------|-----------------|
| `--ip A,B,...` | Maps up to ten distinct addresses, in order, to `10.10.10.10` through `10.10.10.19`. Replacement is simultaneous, so swaps are safe and unrelated VIPs remain intact. |
| no `--ip` | Detects local interfaces. Interactive mode asks when selection is ambiguous; `--non-interactive` or closed stdin fails with guidance to pass `--ip`. |
| `--domain NAME` | Replaces only the exact `i.pigsty` token, not names such as `cli.pigsty` or `i.pigsty.cc`; NAME must be a valid DNS domain. |
| small controller | When detected CPU count is below four, rewrites `node_tune: oltp` and `pg_conf: oltp.yml` to their `tiny` profiles. |
| `--region REGION` | Updates `all.vars.region` for non-default regions. `china` also activates template-provided Docker and pip mirrors, but never invents values absent from the template. |
| `--proxy` | Writes non-empty `HTTP_PROXY`/`http_proxy`, `HTTPS_PROXY` (falling back to `ALL_PROXY`), `ALL_PROXY`, and `NO_PROXY` values into `all.vars.proxy_env`; a safe default no-proxy list is used when needed. |
| `--version MAJOR` | Updates generic templates for PostgreSQL 14-18, or explicit 19 beta, and selects the matching locale. Version-pinned `mssql`, `polar`, and `pgNN` modes keep their template version and report a warning. |
| `--generate` | Generates one 24-character value per known credential identifier and consistently replaces its active values and documented placeholders. |

Pig rejects an IP mapping if it would conflict with an Inventory key that is not replaced.
If a supplied address has no matching placeholder, structured output includes a discarded-IP warning.

For PostgreSQL 19 beta, Pig adds the `beta` repository after `pgsql` if the template has the expected repository list.
Modes below `conf/build/` skip IP mapping and controller-admin preflight checks to keep build templates portable.

Active password identifiers are `grafana_admin_password`, `pg_admin_password`, `pg_monitor_password`, `pg_replication_password`, `patroni_password`, `haproxy_admin_password`, `minio_secret_key`, and `etcd_root_password`.
Generation also covers `DBUser.Meta`, `DBUser.Viewer`, `S3User.Backup`, `S3User.Meta`, `S3User.Data`, `DBUser.Supa`, and `Vibe.Coding` placeholders.
Each occurrence of the same identifier receives the same generated value.

**Options:**

- `-c|--conf`: template mode, equivalent to positional `[mode]`; the two forms are exclusive
- `--ip`: up to ten distinct comma-separated IPv4 addresses
- `--domain`: replace the exact `i.pigsty` placeholder with a valid DNS domain
- `-v|--version`: PostgreSQL major version, 18/17/16/15/14; 19 beta can be specified explicitly
- `-r|--region`: upstream repository region, such as default/china/europe
- `-m|--mirror`: equivalent to `--region china`; mutually exclusive with `--region`
- `-O|--output-file`: output config file path, default `pigsty.yml`
- `-s|--skip`: keep the placeholder IP and skip admin SSH/sudo preflight; exclusive with `--ip`
- `-p|--port`: SSH port
- `-x|--proxy`: write non-empty proxy environment variables into `all.vars.proxy_env`
- `-n|--non-interactive`: refuse ambiguous IP selection instead of prompting
- `-g|--generate`: replace known demo credentials with random 24-character values

### Preflight and validation

Unless you use `--skip`, Pig checks the kernel, architecture, package manager, platform vendor, and controller resources.
It also checks sudo/admin access, localhost SSH, and Ansible. The SSH check uses `--port`.
If Inventory generation can continue, diagnostics appear as warnings with corrective actions.
Invalid arguments and unsafe configuration changes remain errors.

The generated candidate must pass Pig's native Inventory validation.
If `ansible-inventory` is available, Pig also runs a bounded external parse before writing the file.
The `--skip` option keeps placeholder IPs and bypasses admin SSH/sudo checks.
It does not disable template parsing, safe changes, Inventory validation, or atomic writing.

### Structured output

With global `-o json` or `-o yaml`, the payload kind is `pig.sty.configure/v1`.
It reports mode, source and output paths, region, primary address, applied and discarded IPs, domain, and SSH port.
It also reports requested and effective PostgreSQL versions, the native-workflow marker, generated secret identifiers, and warnings.
It never prints secret values.

See: <https://pigsty.io/docs/setup/install/#configure>

## sty deploy

Deploy Pigsty with the `deploy.yml` playbook.

```bash
pig sty deploy       # run deploy.yml, falling back to install.yml if not found
pig sty d            # short alias
pig sty de           # short alias
```

The command runs `deploy.yml` from the Pigsty installation directory.
For compatibility, it uses `install.yml` if `deploy.yml` is absent and `install.yml` exists.

> **Warning**: this operation changes your system. **Running the command gives consent**.
> Deployment starts immediately without a `--yes` check. Press Ctrl+C to interrupt an accidental run.
> The `pig sty install` / `ins` aliases were removed in v1.6.0.

## sty list

List available Pigsty versions.

```bash
pig sty list                     # list available versions
```

## sty get

Download the Pigsty source tarball.

```bash
pig sty get                      # download latest version
pig sty get v3.4.0               # download selected version
pig sty get -m                   # prefer the pigsty.cc mirror
```

## sty grafana

From v1.6.0, `pig sty grafana` (alias `gf`) manages dashboards through Grafana's native HTTP API.
It replaces the experimental `pig sty dashboard`.
The `PATH` argument selects the grafana root, one direct folder, or one dashboard JSON file.
Without `PATH`, pig uses `<PIGSTY_HOME>/files/grafana`. It does not use the current directory as a fallback.

```bash
pig sty grafana info             # check Grafana health, authentication, and basic info
pig sty grafana list             # list all dashboards in the active organization
pig sty grafana boot             # bootstrap Grafana around the existing pigsty dashboards
pig sty grafana init             # load the complete dashboard corpus, then bootstrap
pig sty grafana load [PATH]      # load dashboards selected by a local path
pig sty grafana dump [PATH]      # export remote dashboards into a local path
pig sty grafana clean [PATH]     # delete dashboards selected by a path (--dry-run/--yes)
pig sty grafana lang zh-Hans     # set the organization and current-user language
pig sty grafana style            # set the organization and current-user visual style
```

**Connection and credentials**:

| Option            | Description                                                     |
|:------------------|:----------------------------------------------------------------|
| `--endpoint`      | Grafana origin and optional path prefix (default `http://i.pigsty/ui`) |
| `--username`      | Grafana API username                                            |
| `--password`      | Grafana API password (**insecure**: visible in process arguments and shell history) |
| `--password-file` | Owner-only file containing the password (recommended)           |
{.full-width}

Password selection uses `--password` first, then `--password-file`, then the `GRAFANA_PASSWORD` environment variable.
The final source is `all.vars.grafana_admin_password` in the inventory.
The HTTP client enforces timeouts and response-size limits, refuses redirects, and checks TLS certificates by default.

### Legacy dashboards and schema v2 resources

`load` and `init` accept both classic Grafana dashboard JSON and the resource form whose identity is exactly:

```json
{"apiVersion":"dashboard.grafana.app/v2","kind":"Dashboard","metadata":{"name":"pgsql-overview","namespace":"default"},"spec":{}}
```

The two formats are not flattened into one another during loading:

- Classic JSON takes its UID from top-level `uid` and uses the legacy dashboard API.
- Schema v2 takes its UID from `metadata.name`, defaults a missing namespace to `default`, requires an object-valued `spec`, and uses Grafana's dashboard resource API.
- The JSON filename (without `.json`) must match the resolved UID. Only one local folder layer is allowed; its directory name becomes the Grafana folder UID.
- For schema v2, PIG preserves `spec` and the `grafana.app/message` annotation, sets `grafana.app/folder` from the local folder, and deliberately removes server-managed metadata/status before upsert.
- `dump` preserves schema v2 only when the target file already exists locally in v2 form; it then fetches the native v2 resource using that file's namespace. A new dump target defaults to classic JSON. Local-only files are never deleted by `dump`.

Pig rejects other `dashboard.grafana.app/*` versions and malformed resource envelopes.
It does not treat them as classic dashboards.
To preserve v2 format through export and import, keep the existing local file.
