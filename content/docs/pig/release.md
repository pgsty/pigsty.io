---
title: Release
weight: 40
description: pig — PostgreSQL Package Manager Release Notes
icon: fa-solid fa-clipboard-list
module: [PIG]
categories: [Reference]
---

Changes for [v1.10.2](#v1102) and earlier versions are listed below.

|     Version     |    Date    | Summary                                                            |                           GitHub                           |
|:---------------:|:----------:|--------------------------------------------------------------------|:----------------------------------------------------------:|
| [v1.10.2](#v1102) | 2026-10-24 | pg_nanotime, extension and package updates, 616 catalog entries | [v1.10.2](https://github.com/pgsty/pig/releases/tag/v1.10.2) |
| [v1.10.1](#v1101) | 2026-10-24 | Go 1.27.3 security fix, dependency updates, 615 catalog entries | [v1.10.1](https://github.com/pgsty/pig/releases/tag/v1.10.1) |
| [v1.10.0](#v1100) | 2026-10-17 | 603 catalog entries, PostgreSQL target and recovery safety, faithful Inventory, automation fixes | [v1.10.0](https://github.com/pgsty/pig/releases/tag/v1.10.0) |
| [v1.9.0](#v190) | 2026-10-06 | 600 catalog entries, Xray roles, repository keys, pgrx 0.19.3 | [v1.9.0](https://github.com/pgsty/pig/releases/tag/v1.9.0) |
| [v1.8.1](#v181) | 2026-09-03 | CLI/repository safety, debug packages by default, pgrx 0.19.2 | [v1.8.1](https://github.com/pgsty/pig/releases/tag/v1.8.1) |
| [v1.8.0](#v180) | 2026-08-14 | Native `sty boot` and `sty conf`, 575 packaged extensions          | [v1.8.0](https://github.com/pgsty/pig/releases/tag/v1.8.0) |
| [v1.7.0](#v170) | 2026-08-12 | EL module policy, China mirrors, EL7 compatibility, 575 extensions | [v1.7.0](https://github.com/pgsty/pig/releases/tag/v1.7.0) |
| [v1.6.2](#v162) | 2026-08-11 | 572 extensions, Grafana schema v2, SOW-first repository generation | [v1.6.2](https://github.com/pgsty/pig/releases/tag/v1.6.2) |
| [v1.6.1](#v161) | 2026-07-30 | Catalog refresh and embedded Pigsty 4.5.0                           | [v1.6.1](https://github.com/pgsty/pig/releases/tag/v1.6.1) |
| [v1.6.0](#v160) | 2026-07-28 | 562 packaged extensions, patronictl passthrough, inventory & CMDB, Grafana | [v1.6.0](https://github.com/pgsty/pig/releases/tag/v1.6.0) |
| [v1.5.1](#v151) | 2026-07-08 | PG kernel fork updates, mirror mode, bug fixes                    | [v1.5.1](https://github.com/pgsty/pig/releases/tag/v1.5.1) |
| [v1.5.0](#v150) | 2026-07-04 | 531 extensions, pigsty v4.4, pg/pt/pb/pitr rework, clone & fork    | [v1.5.0](https://github.com/pgsty/pig/releases/tag/v1.5.0) |
| [v1.4.2](#v142) | 2026-06-18 | 524 extensions, PG19 beta, pgrx 0.18.1, Patroni fixes              | [v1.4.2](https://github.com/pgsty/pig/releases/tag/v1.4.2) |
| [v1.4.1](#v141) | 2026-05-01 | 510 extensions, Ubuntu 26.04 support, repo calibration             | [v1.4.1](https://github.com/pgsty/pig/releases/tag/v1.4.1) |
| [v1.4.0](#v140) | 2026-04-19 | 510 extensions, pgrx 0.18.0, more building specs                   | [v1.4.0](https://github.com/pgsty/pig/releases/tag/v1.4.0) |
| [v1.3.4](#v134) | 2026-04-14 | 504 extensions refreshed, release checksums updated                | [v1.3.4](https://github.com/pgsty/pig/releases/tag/v1.3.4) |
| [v1.3.3](#v133) | 2026-04-10 | 481 extensions and Go 1.26.2 update                                | [v1.3.3](https://github.com/pgsty/pig/releases/tag/v1.3.3) |
| [v1.3.2](#v132) | 2026-03-23 | Routine metadata refresh, new `pg tune`, new build aliases         | [v1.3.2](https://github.com/pgsty/pig/releases/tag/v1.3.2) |
| [v1.3.1](#v131) | 2026-03-05 | Retire PG13 defaults, unify PG14-18 support window, 464 extensions | [v1.3.1](https://github.com/pgsty/pig/releases/tag/v1.3.1) |
| [v1.3.0](#v130) | 2026-02-27 | Build pipeline hardening, 461 extensions, new pgedge/ivory support | [v1.3.0](https://github.com/pgsty/pig/releases/tag/v1.3.0) |
| [v1.2.0](#v120) | 2026-02-23 | Unified aliases, routine updates, plan mode, repo fixes            | [v1.2.0](https://github.com/pgsty/pig/releases/tag/v1.2.0) |
| [v1.1.1](#v111) | 2026-02-14 | Path, symlink, and build migration fixes | [v1.1.1](https://github.com/pgsty/pig/releases/tag/v1.1.1) |
| [v1.1.0](#v110) | 2026-02-12 | 451 extensions, Agent-Native CLI framework                         | [v1.1.0](https://github.com/pgsty/pig/releases/tag/v1.1.0) |
| [v1.0.0](#v100) | 2026-01-26 | New pg/pt/pb/pitr commands, availability matrix                    | [v1.0.0](https://github.com/pgsty/pig/releases/tag/v1.0.0) |
| [v0.9.0](#v090) | 2025-12-28 | Rename sty deploy and expand sty conf options | [v0.9.0](https://github.com/pgsty/pig/releases/tag/v0.9.0) |
| [v0.8.1](#v081) | 2025-12-27 | Restore llvmjit to the pgsql-full alias | [v0.8.1](https://github.com/pgsty/pig/releases/tag/v0.8.1) |
| [v0.8.0](#v080) | 2025-12-26 | 440 extensions, remove sysupdate repo                              | [v0.8.0](https://github.com/pgsty/pig/releases/tag/v0.8.0) |
| [v0.7.5](#v075) | 2025-12-12 | Routine extension update, fixed aliyun mirror                      | [v0.7.5](https://github.com/pgsty/pig/releases/tag/v0.7.5) |
| [v0.7.4](#v074) | 2025-12-01 | Update ivory/pgtde kernel and pgdg extras                          | [v0.7.4](https://github.com/pgsty/pig/releases/tag/v0.7.4) |
| [v0.7.3](#v073) | 2025-11-24 | Fix repo for el10 & debian13                                       | [v0.7.3](https://github.com/pgsty/pig/releases/tag/v0.7.3) |
| [v0.7.2](#v072) | 2025-11-20 | 437 extensions, fix pig build issue                                | [v0.7.2](https://github.com/pgsty/pig/releases/tag/v0.7.2) |
| [v0.7.1](#v071) | 2025-11-10 | New Website, improve in-docker experience                          | [v0.7.1](https://github.com/pgsty/pig/releases/tag/v0.7.1) |
| [v0.7.0](#v070) | 2025-11-05 | Build Enhancement and massive upgrade                              | [v0.7.0](https://github.com/pgsty/pig/releases/tag/v0.7.0) |
| [v0.6.2](#v062) | 2025-10-03 | PG 18 official Repo                                                | [v0.6.2](https://github.com/pgsty/pig/releases/tag/v0.6.2) |
| [v0.6.1](#v061) | 2025-08-14 | CI/CD, el10 stub, PGDG CN Mirror                                   | [v0.6.1](https://github.com/pgsty/pig/releases/tag/v0.6.1) |
| [v0.6.0](#v060) | 2025-07-17 | 423 extension, percona pg_tde, mcp toolbox                         | [v0.6.0](https://github.com/pgsty/pig/releases/tag/v0.6.0) |
| [v0.5.0](#v050) | 2025-06-30 | 422 extension, new extension catalog                               | [v0.5.0](https://github.com/pgsty/pig/releases/tag/v0.5.0) |
| [v0.4.2](#v042) | 2025-05-27 | 421 extension, halo & oriole deb                                   | [v0.4.2](https://github.com/pgsty/pig/releases/tag/v0.4.2) |
| [v0.4.1](#v041) | 2025-05-07 | 414 extension, pg18 alias support                                  | [v0.4.1](https://github.com/pgsty/pig/releases/tag/v0.4.1) |
| [v0.4.0](#v040) | 2025-05-01 | do & pt sub-cmd, halo & orioledb                                   | [v0.4.0](https://github.com/pgsty/pig/releases/tag/v0.4.0) |
| [v0.3.4](#v034) | 2025-04-05 | routine update                                                     | [v0.3.4](https://github.com/pgsty/pig/releases/tag/v0.3.4) |
| [v0.3.3](#v033) | 2025-03-25 | alias, repo, deps                                                  | [v0.3.3](https://github.com/pgsty/pig/releases/tag/v0.3.3) |
| [v0.3.2](#v032) | 2025-03-21 | new extensions                                                     | [v0.3.2](https://github.com/pgsty/pig/releases/tag/v0.3.2) |
| [v0.3.1](#v031) | 2025-03-19 | minor bug fix                                                      | [v0.3.1](https://github.com/pgsty/pig/releases/tag/v0.3.1) |
| [v0.3.0](#v030) | 2025-02-24 | new home page and extension catalog                                | [v0.3.0](https://github.com/pgsty/pig/releases/tag/v0.3.0) |
| [v0.2.2](#v022) | 2025-02-22 | 404 extensions                                                     | [v0.2.2](https://github.com/pgsty/pig/releases/tag/v0.2.2) |
| [v0.2.0](#v020) | 2025-02-14 | 400 extensions                                                     | [v0.2.0](https://github.com/pgsty/pig/releases/tag/v0.2.0) |
| [v0.1.4](#v014) | 2025-02-12 | routine bugfix                                                     | [v0.1.4](https://github.com/pgsty/pig/releases/tag/v0.1.4) |
| [v0.1.3](#v013) | 2025-01-23 | 390 extensions                                                     | [v0.1.3](https://github.com/pgsty/pig/releases/tag/v0.1.3) |
| [v0.1.2](#v012) | 2025-01-12 | the anon extension and 350 other ext                               | [v0.1.2](https://github.com/pgsty/pig/releases/tag/v0.1.2) |
| [v0.1.1](#v011) | 2025-01-09 | Update Extension List                                              | [v0.1.1](https://github.com/pgsty/pig/releases/tag/v0.1.1) |
| [v0.1.0](#v010) | 2024-12-29 | repo, ext, sty, and self-update                                    | [v0.1.0](https://github.com/pgsty/pig/releases/tag/v0.1.0) |
| [v0.0.1](#v001) | 2024-12-23 | Genesis Release                                                    | [v0.0.1](https://github.com/pgsty/pig/releases/tag/v0.0.1) |


--------

## v1.10.2

PIG `v1.10.2` refreshes the embedded PostgreSQL extension catalog from
**615 to 616 entries**, adding `pg_nanotime` and updating extension versions,
compatibility, and package availability metadata.

### New extension

Add [`pg_nanotime`](https://github.com/bunko666-cloud/pg_nanotime) `0.2.0`, which
provides nanosecond timestamp and fixed-duration interval types. The catalog
records RPM and DEB packages for PostgreSQL **17 and 18**. Upstream classifies
`0.2.0` as a testing release.

### Version updates

| Extension | Previous | Updated |
|:----------|:---------|:--------|
| `citus`, `citus_columnar` | `14.2.0` | `14.3.0` packages |
| `duckdb_fdw` | `2.0.1` | `2.0.2` |
| `pg_mentat` | `1.17.2` | `1.18.0` |
| `pg_tre` | `4.5.1` | `4.5.2` |

The Citus catalog extension version is `14.3-1`; its RPM and DEB package version
is `14.3.0`. The refresh also adds DEB availability metadata for `pg_tre` on
PostgreSQL 17 and 18.

### Catalog metadata

- Update PostgreSQL compatibility, package availability, licenses, and descriptions.
- Set the `duckdb_fdw` catalog range to PostgreSQL 15–18 and
  `pgcontext_pgvector` to PostgreSQL 17.
- Count **616 catalog entries**: 613 available records and 3 retained removed
  records. The [catalog-entry counting rule](/docs/pig/ext/#catalog-count) includes SQL
  utilities and lifecycle records; availability still depends on the platform
  and PostgreSQL major version.

Go remains at `1.27.3`, embedded Pigsty at `4.5.0`, and default `cargo-pgrx` at
`0.19.3`. Follow the [installation guide](/docs/pig/install/) to upgrade PIG.

### Checksums

```checksums {base="https://github.com/pgsty/pig/releases/download/v1.10.2"}
f07992b20b0b397d1e4bb286656b404e3c911775e98e5fc7d940ef91439f62ed  pig-1.10.2-1.aarch64.rpm
372f4fe8d54a1ad888c91976d011d8b95de3e10286966cfc94b0ab91e2170b20  pig-1.10.2-1.x86_64.rpm
a54be0a4ceadf1e047b74fdb187ff57e9f97b81907c8d66795e7787de88ad864  pig-v1.10.2.darwin-amd64.tar.gz
60df049a38e109bccb3089d74fa41e0d22606ce4df0e4fadae39530d546ca731  pig-v1.10.2.darwin-arm64.tar.gz
686c5d6cf682a5a5a1d70cc09a86fecc441b22456f79bb84f192c4730ac2bd8a  pig-v1.10.2.linux-amd64.tar.gz
e1e84d5afcddc8e474d130de638bc400bb965f887bdc9face842f111fb94afeb  pig-v1.10.2.linux-arm64.tar.gz
38b9634be544a1ee462926f74f3c647c2fc1b21eeffb43e41c24a9033a03a63b  pig_1.10.2-1_amd64.deb
4034cebd3a51839ecb0cb8bdf325d783f1ebb88e19b4664ab21fbf31316eae58  pig_1.10.2-1_arm64.deb
```

Release artifacts: [v1.10.2](https://github.com/pgsty/pig/releases/tag/v1.10.2)

## v1.10.1

PIG `v1.10.1` is a security and catalog maintenance release. It upgrades Go to
`1.27.3`, refreshes tooling dependencies, and expands the embedded PostgreSQL
extension catalog from **603 to 615 entries**.

### Security update

- Upgrade the Go toolchain from `1.27.2` to `1.27.3`. CI and release builds read
  the version from `go.mod`.
- Include the `crypto/x509` fix for
  [CVE-2026-111943 / GO-2026-6809](https://pkg.go.dev/vuln/GO-2026-6809).
  Go's certificate verifier rejects chains containing specific intermediate
  certificates that are no longer trusted.

Go `1.27.3` adds **one security fix** over `1.27.2`, as documented in the
[Go release announcement](https://groups.google.com/g/golang-announce/c/66pojueaQek).
Earlier Go security fixes are already included in the `1.27.2` baseline used by PIG `v1.10.0`.

### Dependency updates

Update inherited tooling dependencies through version-specific module replacements:

| Module | Previous | Updated |
|:-------|:---------|:--------|
| `github.com/cpuguy83/go-md2man/v2` | `v2.0.6` | `v2.0.7` |
| `github.com/stretchr/objx` | `v0.1.0` | `v0.8.0` |
| `golang.org/x/mod` | `v0.41.0` | `v0.42.0` |
| `golang.org/x/tools` | `v0.51.0` | `v0.52.0` |

### Extension catalog

The embedded catalog now contains **615 entries**, with **12 additions** since `v1.10.0`:

- `codesystem`, `encsearch`, `hdr_histogram`, `pg_improv`
- `pg_kv`, `pg_lease`, `pg_synonym`, `pg_table_range`
- `pg_tre`, `pg_try_cast`, `stannum`, `tin`

The refresh also updates existing extension versions and package availability metadata.
The total follows the [catalog-entry counting rule](/docs/pig/ext/#catalog-count): it includes
packaged SQL utilities and retained records for removed extensions. It does not imply
that all 615 entries support `CREATE EXTENSION` or can be installed on every platform.

### Compatibility

Commands, flags, and configuration remain compatible with `v1.10.0`.
Embedded Pigsty remains at `4.5.0`, and default `cargo-pgrx` remains at `0.19.3`.

Building from source requires Go `1.27.3` or later. Prebuilt packages do not require a local Go installation.
Follow the [installation guide](/docs/pig/install/) to upgrade PIG. Replacing the PIG executable
brings in the updated Go standard library; upgrading the host's Go installation alone
does not update an existing PIG binary.

### Checksums

```checksums {base="https://github.com/pgsty/pig/releases/download/v1.10.1"}
fbd58de4cd1fa767c6d2b15d4fcb029fe38c90a0d12db2e387b7f698b5c8a69d  pig-1.10.1-1.aarch64.rpm
7955e93744fcc2d4cce9044102c2bd7ca470388a0556d3220a624f78e38c629b  pig-1.10.1-1.x86_64.rpm
31fea0e9513e551e2be8dc99a8fc0f77de4bdfe40e66dadc206e227254bb7942  pig-v1.10.1.darwin-amd64.tar.gz
1177f3b616279100ce97d23eb4fa6bc2e8daf02dbd23780a8dd5025240082c5a  pig-v1.10.1.darwin-arm64.tar.gz
0e837098d45b080ddf9205681709dbc38318d2b65cbdaed711246fd5834c3b50  pig-v1.10.1.linux-amd64.tar.gz
6658242816263ea4f5e3abeb3454665098c7100c75c76a3e45386a15faf6f397  pig-v1.10.1.linux-arm64.tar.gz
37f5dca9407010c56d8c5747c8ddcef101d7f07602296e0bb89620c633692eab  pig_1.10.1-1_amd64.deb
f385d1c6fac40a6cf648505d349a72e7e3eadf2948024f086efe81733c2a9be5  pig_1.10.1-1_arm64.deb
```

Release artifacts: [v1.10.1](https://github.com/pgsty/pig/releases/tag/v1.10.1)


## v1.10.0

Pig `v1.10.0` strengthens the correctness and safety of existing commands. It verifies PostgreSQL
targets before operations, preserves Inventory sources and YAML types, and makes repository,
extension, and automation results match the work actually performed. The bundled catalog grows
from **600 to 603 records**. Embedded Pigsty remains `4.5.0`; the default `cargo-pgrx` remains `0.19.3`.

### PostgreSQL targets and maintenance

- An explicit `-D` binds `psql`, `ps`, `kill`, `vacuum`, `analyze`, `freeze`, and `repack` to the
  selected instance, including `--all` database enumeration. PIG validates the PID, data directory,
  port, socket, and process identity before starting the SQL client. Invalid, stale, copied, or
  uncertain runtime metadata causes failure instead of a fallback to another instance.
- Without `-D`, those SQL commands retain native client connection defaults. `pg clone` and
  `pg fork` retain their own port options. Promotion timeline checks use the selected instance
  or its control data; an unresolved timeline is left unknown.
- Plans and confirmation retry commands preserve the selected data directory, PostgreSQL version,
  operating-system user, and maintenance options. `VACUUM FULL` plans correctly require confirmation.
- Maintenance operands are literal database names. Values containing `=` or beginning with
  `postgres://` or `postgresql://` are rejected before planning or execution, without echoing
  the value. Spaces and non-ASCII names remain supported. Generated commands put names after
  `--`, so a database named `--all` cannot become a command option.
- `vacuum`, `analyze`, and `freeze --all` validate the complete database list before maintenance
  begins. Use native clients when a connection string or a database name rejected by this boundary is required.

See [`pig pg`](/docs/pig/pg/#global-options) for target selection and
[maintenance commands](/docs/pig/pg/#database-maintenance-commands) for database-name rules.

### Runtime state, recovery, and fork safety

- Permission failures, malformed PID metadata, and unavailable process identity are reported as
  errors or unknown state. They cannot authorize forced initialization, restore, or fork replacement.
  `pg status` returns `130201` (exit `3`) for permission failures and `130808` (exit `1`) for
  other runtime-probe failures. Plans report an unresolved precondition as `unknown`.
- Declining PITR confirmation or reaching EOF returns `161001` (exit `7`) before any service stop,
  restore, or startup. An unknown state cannot supply a PID for forced termination or count as
  successful startup. Post-restore SQL checks require a verified target.
- Replacing a nonempty unmanaged fork requires valid ownership metadata with a matching explicit
  target path. Missing, damaged, or mismatched metadata cannot authorize deletion. Existing
  protections for running targets and source/destination relationships remain in force.
- Clone and fork path checks run as the selected database operating-system user when needed,
  supporting private `0700` data directories. An inaccessible or unresolved path cannot bypass
  validation. Managed orphan cleanup remains available through the managed fork name.
- Files written as the database user use private sibling staging and exact-target replacement.
  The new file has `0600` permissions; directory or symlink targets are refused, and replacement
  does not overwrite the contents of another hard link to the old file.

The [PITR reference](/docs/pig/pitr/) explains the managed recovery workflow;
[`pig pb restore`](/docs/pig/pb/#pb-restore) remains a separate restore primitive.

### Inventory and Pigsty

- `sty deploy` and `do` pass the resolved Inventory path explicitly to Ansible. Flag and environment
  paths resolve from the caller's working directory; quoted `~/` paths expand before resolution.
  A selected missing or invalid source does not silently fall back to another inventory.
- `pg_users[].roles` preserves both role-name strings and structured grants, including grant state
  and optional `admin`, `set`, and `inherit` attributes.
- Editing, serialization, and CMDB export retain strings that YAML consumers might otherwise
  interpret as numbers, dates, or timestamps. Existing timestamp scalars retain their original
  source representation. Independent PyYAML checks verify the emitted string types.
- `sty conf --proxy` accepts uppercase and lowercase HTTP, HTTPS, ALL, and NO proxy variables.
  Missing HTTP and HTTPS values both fall back to ALL_PROXY. Version completion observes dotted
  version boundaries, so a request for `1.1` cannot select `1.10`.

See [Inventory source selection](/docs/pig/inventory/#source-selection) and [`pig sty`](/docs/pig/sty/).

### Repositories and extensions

- Repository commands validate the complete operand list before changing files. Empty values,
  empty comma-separated elements, and unsafe repository names fail before mutation.
  Only truly argument-free `repo rm` backs up all repository files; `repo rm all` expands the
  `node`, `pgsql`, and `infra` modules. Removal results preserve the original request and distinguish
  missing targets from removed files. `--update` also refreshes the cache after a full backup.
- Repository creation retains documentation RPMs. Debug package suppression continues to use
  `--nodbg`; a `-docs` or `-doc` name alone does not make a package a debug package.
- Default extension lists, availability summaries, and refresh results count all catalog records,
  including SQL utilities and retained lifecycle entries. The total describes catalog coverage,
  not how many extensions can be installed on one host or enabled with `CREATE EXTENSION`.
- Text, JSON, and YAML share availability rules. On covered Linux platforms, package matrices take
  precedence and a missing matrix cell means unavailable. Architecture aliases are normalized.
  On macOS, the status describes declared PostgreSQL support without promising an RPM/DEB package.
  `ext list -v` selects the version used to evaluate status; unavailable records remain listed.
- `ext import` reports failure if any requested package cannot be resolved or downloaded, while
  retaining successful downloads and reporting the completed and failed portions. APT virtual
  dependency markers are excluded from package download requests. Installed-library scanning also
  recognizes catalog entries without a control file.
- The three new catalog records are `pg_icu_parser`, `pg_vectorsearch`, and `textsearch_intl`.
  Existing versions and platform metadata are refreshed as well. Use `pig ext avail NAME` to inspect
  a target before installing.

Details: [`pig repo`](/docs/pig/repo/), [`pig ext`](/docs/pig/ext/).

### Builds and automation

- Multi-version build dependency installation expands package names for every selected PostgreSQL
  major version and removes duplicates. Default build targets retain their metadata and local
  installation rules independently of package-matrix gaps.
- Debian/Ubuntu builds preserve the inherited `PATH` order and append the current user's
  `~/.cargo/bin` when present, preserving an explicitly selected toolchain.
- Xray setup recognizes complete legacy service definitions, including marker-free macOS plists
  generated by the previous renderer. A comment alone cannot prove ownership; changed or foreign
  definitions still require explicit replacement. Matching reruns preserve a running service.
- JSON/YAML output and `PIG_NON_INTERACTIVE=1` consistently disable prompt input and use
  non-interactive sudo in PIG-owned adapters. Explicit data-input channels remain available;
  native Patronictl forwarding retains its interaction and exit contract.
- CMDB connection strings, legacy VMess credentials, and license keys are excluded from routine
  parameters and failure details. Explicit credential export and raw Inventory display retain
  their documented sensitive-output behavior.
- Exporter HTTP 4xx/5xx responses now fail with the numeric status and standard description,
  without including response bodies or custom status text. Unsupported `pig update` platforms
  fail explicitly. Command help and bilingual references are aligned with these behaviors.
- Go dependencies and validation tools are refreshed. CI includes Linux permission and instance
  boundary acceptance plus independent YAML consumer checks.

See [`pig build`](/docs/pig/build/), [`pig pe`](/docs/pig/pe/), and [global command behavior](/docs/pig/cmd/).

### Upgrade notes

Existing command names and flags remain available. Automation should handle the corrected failure
statuses for partial imports, HTTP errors, cancelled recovery, and indeterminate PostgreSQL state.
Scripts must supply valid repository operands, explicit confirmation where required, and literal
maintenance database names. When a name begins with `-`, place all options before `--` and the name.

Upgrade with the [installation instructions](/docs/pig/install/).

Release artifacts: [v1.10.0](https://github.com/pgsty/pig/releases/tag/v1.10.0)

--------

## v1.9.0

Pig `v1.9.0` adds one-command Xray client/server setup, automatic Pigsty repository-key
preparation, and a refreshed **600-entry extension catalog**. The default `cargo-pgrx`
version is now `0.19.3`; the embedded Pigsty version remains `4.5.0`.

### Xray clients and servers

- `pig build proxy` installs or verifies Xray. `pig build proxy client` configures a
  VLESS/REALITY/Vision HTTP/SOCKS client; `pig build proxy server` configures a Linux server.
  Linux uses systemd; the macOS client uses a dedicated user LaunchAgent.
- Client input accepts a standard VLESS URI, `--from FILE/-`, or explicit connection flags.
  The first client listener is `127.0.0.1:12345`; the first direct server listener is
  `0.0.0.0:443`. Repeated setup preserves existing listeners and server credentials.
- Matching configuration, ownership, permissions, and service state avoid rewrites and
  restarts. Failed client connectivity checks restore prior managed files and service state.
  Replacing a different client requires `--replace --yes`; `--plan` previews either role.
- `server --export-only --host HOST --export -` exports an existing connection without changing the
  deployment. File exports use mode `0600`; explicit stdout export requires text output.
  Ordinary results and plans omit credentials. The historical VMess positional form remains
  available through V2Ray.

```bash
sudo pig build proxy server --host proxy.example.com --target www.sraoss.co.jp:443 --export ./client.uri
sudo pig build proxy client --from ./client.uri
```

Run the server command on the server, then transfer `client.uri` securely to the client and run
the client command there. See [`pig build`](/docs/pig/build/#build-proxy) for prerequisites and macOS setup.

### Repository keys

- `repo add`, `repo set`, and `sty boot` prepare the embedded Pigsty public key when selected
  repositories need it. Existing regular key files are reused; missing defaults are installed
  offline at `/etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty` or `/etc/apt/keyrings/pigsty.asc`.
- Implicit default-key failure emits a warning and falls back only for selected Pigsty
  definitions. Default key references remain stable, including APT `signed-by`.
- Explicit signing-key references are mandatory: invalid or unavailable keys fail before
  repository replacement or cache refresh. EL imports explicit references with `rpm --import`.
  Selecting unrelated repositories does not prepare the Pigsty key.

See [`pig repo`](/docs/pig/repo/#repository-definitions) for signature-enforcement
defaults and the distinction between key preparation and metadata refresh.

### Catalog and build defaults

- The embedded catalog contains **600 entries**, adding 22 entries to the v1.8.1 snapshot.
  New entries include `edtf_postgres`, `plphp`, `pg_lexo`, `pg_money`, `istore`, `colnames`,
  `pg_statkit`, `pgtelemetry`, `pg_rusage`, `pgexporter_ext`, `pg_statvfs`, and `libx509pq`.
  Package versions and platform-availability metadata are refreshed as well.
- The catalog total includes retained lifecycle records. Installability depends on each
  extension's state and OS/architecture/PostgreSQL matrix. Use `pig ext avail NAME` to check a target.
- `pig build pgrx` defaults to `cargo-pgrx 0.19.3`. An explicit `-v` and extension-specific
  catalog metadata continue to select another required version.
- Platform debug packages remain enabled by default, as in v1.8.1. Use `--nodbg` for RPM
  `debuginfo`/`debugsource` and DEB `dbgsym` suppression; `-s|--symbol` is a deprecated no-op.

### Compatibility

No existing command or flag is removed. New Xray role commands use VLESS/REALITY/Vision;
existing positional VMess commands retain their V2Ray behavior. Server setup checks the local listener and service.
Configure the firewall, cloud security group, and any Nginx frontend for the chosen public port,
then verify the connection from the client.

Release artifacts: [v1.9.0](https://github.com/pgsty/pig/releases/tag/v1.9.0)

### Verification

The verified [v1.9.0 tag](https://github.com/pgsty/pig/tree/v1.9.0) points to
[`9eb5488`](https://github.com/pgsty/pig/commit/9eb5488847ea34827a74c9f8bb7b2dd3778f5190). The exact commit passed
[full CI](https://github.com/pgsty/pig/actions/runs/37483835198), including randomized tests,
command race regressions, vet, static analysis, vulnerability scanning, and a release snapshot.
The [Release workflow](https://github.com/pgsty/pig/actions/runs/37484632240) produced eight
Linux/macOS archives and RPM/DEB packages. Published downloads were verified against SHA-256.

### Checksums

```checksums {base="https://github.com/pgsty/pig/releases/download/v1.9.0"}
d0d80bd23a654308598f265ce4b4d4f78d6156c113ce6aa00f82bfc9519a180f  pig-1.9.0-1.aarch64.rpm
e3b25640c9e528f2b883f7e5f4838640a8897857fa22dc1324aca69b72966a7c  pig-1.9.0-1.x86_64.rpm
d7eb266e1b8ab60d20ac582c6b0e3741b7e8516ce1a56df447c0285b3e5dcab9  pig-v1.9.0.darwin-amd64.tar.gz
096284577d0493ddba871b51e820654b358c7f4eb9c11175674a1d21b2718824  pig-v1.9.0.darwin-arm64.tar.gz
a4b5ffca540bc4f924f86398bcad6cb7221ac7520b54b1d3fd32c9877d9cafd2  pig-v1.9.0.linux-amd64.tar.gz
ddfa80fbb34f6738dd68e0d04cd92355711330f6896cd650df7d71b012788def  pig-v1.9.0.linux-arm64.tar.gz
3d955a24a8ff805ee2b6da6428e2b882f97104e2fb597785225269443071d93a  pig_1.9.0-1_amd64.deb
c175b37552147e64590309801800826a0075ae8285ed78178c2adcaec3741471  pig_1.9.0-1_arm64.deb
```

## v1.8.1

Pig `v1.8.1` is a safety, correctness, and maintenance release on top of
[v1.8.0](#v180). It hardens command initialization, privileged log access,
repository and build workflows, release integrity, and structured-output redaction. It also
refreshes the embedded extension catalog and moves the build toolchain to Go `1.27.1` and
`cargo-pgrx 0.19.2`. The embedded Pigsty version remains `4.5.0`.

### CLI safety and correctness

- Read-only and configuration-independent commands no longer require a writable `HOME` or create
  `~/.pig` as a side effect. Leaf commands preserve their declared initialization policy.
- `pig pg log`, `pig pt log`, and `pig pb log` preserve arguments through sudo execution as the
  database OS user and reject unsafe log-file links.
- `pig do` validates Pigsty names and rejects reserved Ansible cluster targets before execution.
- Native PostgreSQL role detection is bound to the selected instance rather than an unrelated
  local default.
- Structured results redact credentials, license material, and build-proxy identifiers while
  retaining truthful command failure.

### Repository and build hardening

- Repository add and remove operations now fail when any requested operation fails, deduplicate
  module selections, and preserve replacement boundaries.
- Offline cache bundles reject unsafe paths, links, special files, and incomplete inputs; archive
  extraction remains rooted and fail-closed. The obsolete exported cache wrapper was removed after
  production moved to the structured result path.
- Build source and artifact validation rejects incomplete or unsafe inputs. `pig build proxy`
  uses the package-provided service contract, treats its operands as optional, and keeps secret
  identifiers out of structured output.
- Self-update verifies release checksums, and release tooling refuses dirty or mismatched-tag
  publication and immutable artifact replacement.

### Toolchain and catalog

- `pig build ext` and `pig build pkg` keep platform debug packages enabled by default;
  use `--nodbg` to omit them. `-s|--symbol` remains a deprecated compatibility no-op.

- Go is updated to `1.27.1`; Logrus to `1.10.2`; GoReleaser to `2.18.0`; and
  golangci-lint to `2.13.2`.
- `pig build pgrx` now installs `cargo-pgrx 0.19.2` by default. Use `-v` when an extension requires
  an older pgrx line recorded in its catalog metadata.
- The embedded catalog is refreshed from the maintained pgext view. It adds `acdat 0.1.0`, marks
  the superseded `pgcontext_pgvector` entry removed, and updates package versions, repository
  ownership, PostgreSQL coverage, and availability matrices.

### Verification

The release is built from source commit
[`1c6f524`](https://github.com/pgsty/pig/commit/1c6f52401accc8ad6d7e8ab51248895632d7629b).
The exact commit passed the full [CI workflow](https://github.com/pgsty/pig/actions/runs/33747971725),
including randomized tests, command race regressions, vet, static analysis, dead-code detection,
vulnerability scanning, and a GoReleaser snapshot. The tag then passed the
[Release workflow](https://github.com/pgsty/pig/actions/runs/33748002429), which produced the
published RPM, DEB, macOS, and Linux artifacts.

### Compatibility notes

- No CLI command or flag is removed in this release.
- Scripts that previously depended on read-only commands creating local configuration should
  create that state explicitly instead.
- The pgrx default changes to `0.19.2`; extension-specific metadata remains authoritative when a
  build requires another pgrx version.

### Checksums

```checksums {base="https://github.com/pgsty/pig/releases/download/v1.8.1"}
4154b3e49cb499e57d7c7b1ab4ae5e45d03d5d0c2ffe26d6ade64e46db6923cf  pig-1.8.1-1.aarch64.rpm
35c398f409d9293b4f8c0cdf949b19c62d06016ec7e724472143d2327199869d  pig-1.8.1-1.x86_64.rpm
6c08b6a698191b8b6494a0f60880fb17cafa535bad12d5c544333e4625048455  pig-v1.8.1.darwin-amd64.tar.gz
0fb6c86cc18a29aeb74e9d12e717c104087c6ecf5a43250dfcc71cd7681fb868  pig-v1.8.1.darwin-arm64.tar.gz
9219e87433ebd239e0773ae7417fdd08e97bb511312e6747542bf46b6b1bbf2b  pig-v1.8.1.linux-amd64.tar.gz
b30924880f21126ece3afc77ca75794a0ceb77964cdfd8bc20da72d9d3273078  pig-v1.8.1.linux-arm64.tar.gz
6fc304501671921b18439223c630c7d4635b10ac75493d5c12a5987ff80c618e  pig_1.8.1-1_amd64.deb
1a70cd71f6c1f443812fe30535427891513c0ba03be219ac21f1a3d6fd450051  pig_1.8.1-1_arm64.deb
```

Release artifacts: [v1.8.1](https://github.com/pgsty/pig/releases/tag/v1.8.1)


## v1.8.0

Pig `v1.8.0` updates native controller workflows from `v1.7.0`. Go implementations of `pig sty boot` and `pig sty conf` replace wrappers for the legacy `bootstrap` and `configure` shell scripts. The packaged PostgreSQL extension count remains **575**. The embedded Pigsty version remains `4.5.0`.

**Highlights**

- `pig sty boot` can elevate once through sudo. It verifies Ansible and its actual Python runtime. It supports explicit local packages, HTTP(S) URLs, trusted automatic offline packages, committed local repositories, and regional online repositories. It backs up repository configuration before replacement and restores it on failure. It attempts to repair localhost SSH and a missing `~/pigsty`, but repair is not guaranteed.
- `pig sty conf` generates inventory natively from safe templates. It supports up to ten IP mappings, exact domain replacement, region and proxy settings, PostgreSQL-version selection, and random credentials. It validates the complete candidate, then writes it atomically with mode `0600`.
- Bootstrap download and extraction no longer require `curl`, `wget`, `tar`, or `gzip`. Offline operation uses only `pigsty-local` and requires the `/www -> /data/nginx` layout.
- EL8 and newer consistently prefer DNF. Local RPM requirements resolve by provider capability. This release updates extension metadata and availability matrices, and moves the toolchain to Go `1.26.6`.

**Compatibility Notes**

- `pig sty boot` no longer runs `<PIGSTY_HOME>/bootstrap`. Automation that relied on script side effects must use the native command.
- Removed `pig sty conf --raw`. `--conf MODE` and positional `MODE` are equivalent. `--ip` accepts up to ten addresses. You cannot combine it with `--skip`.
- EL8 and newer use DNF. The limited EL7 compatibility catalog keeps its separate legacy YUM path.

**Checksums**

Artifacts: [GitHub Release](https://github.com/pgsty/pig/releases/tag/v1.8.0) · [checksums.txt](https://github.com/pgsty/pig/releases/download/v1.8.0/checksums.txt)

```bash
02fd2628810c1b00de730ece32b09dba1318be4c99a4ff1a0551740e32bf223b  pig-1.8.0-1.aarch64.rpm
72ba72a00af52a84b08b1346f85b42668b52bc097e315774ff9f501ca23ece8b  pig-1.8.0-1.x86_64.rpm
f023a5c9049dc532a057e932c73a8197683eaf4d97cb7a8f219492da1ad2a65f  pig-v1.8.0.darwin-amd64.tar.gz
e0ccf61c4d135dbc45359c207751092aeb6df788e826bb73eccc1a1ed8800998  pig-v1.8.0.darwin-arm64.tar.gz
a24a08c1b8d54adcdef5a99ed7b91caeedef1552a1440b1258eb4eb07fb20353  pig-v1.8.0.linux-amd64.tar.gz
9d23875804f87e78039498245059fd6b765831f027aacfc511ad0ac42711fa7b  pig-v1.8.0.linux-arm64.tar.gz
96259ff7584cd52254c91a9fd7d77bd577f23c55cb09f4bc995a3ca0fcbc7321  pig_1.8.0-1_amd64.deb
2e7370211514df6355ef96fb812670febe6ee1b85a28378432c33ebdaecb4b63  pig_1.8.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.8.0

--------

## v1.7.0

Pig `v1.7.0` updates repository compatibility and the catalog from `v1.6.2`. It makes China-mirror selection explicit and preserves native DNF module filtering by default. It restores a simplified EL7 repository catalog. The bundled extension snapshot grows from 572 to 575. The embedded Pigsty version remains `4.5.0`.

**Highlights**

- `-m|--mirror` directly selects the bundled `china` repository definitions. PGDG, Rocky Linux, Debian, Ubuntu, Docker, and other regional routes use the maintained mirror list. This replaces the former PGDG proxy rewrite at runtime.
- EL repository definitions no longer receive `module_hotfixes=1` globally. Pigsty and PGDG repositories explicitly enable it when they need to override module streams. BaseOS, AppStream, EPEL, and other repositories retain native DNF module filtering.
- EL7 retains a limited compatibility catalog. It includes archived CentOS 7 Base/Updates/Extras/SCLo and EPEL definitions for `x86_64`, plus shared Pigsty and supported PGDG entries. EL7 YUM rendering removes the DNF-only `module_hotfixes` key.
- If the catalog has no matching definitions, repository setup reports an unsupported platform. It no longer continues with an empty repository set.

**Extension Catalog**

- Packaged extensions: **572 -> 575**, with no removals.
- Add `pg_local_cache 1.2.0`, `pg_statviz 0.1.0`, and `pg_policy 0.1.0`.
- Refresh `biscuit 3.0.0`, `pg_clickhouse 0.10.0`, `pg_search 0.25.2`, `pg_turbovec` packages `1.29.0`, `pg_uuid_v8 1.1.0`, and the Debian `q3c 2.0.5` package.

**Compatibility Notes**

- No commands or global flags are removed in this release.
- `-m|--mirror` now explicitly selects the China region. It no longer rewrites the PGDG proxy. For a specific route, use `--region=default|china|europe`.
- Custom EL repository definitions must set `meta.module_hotfixes: 1` explicitly to override module streams. Ordinary OS repositories omit this setting. EL7 removes it.
- EL7 is end-of-life and has only limited compatibility coverage. Prefer EL8 or newer for current PostgreSQL and extension packages.

**Checksums**

Artifacts: [GitHub Release](https://github.com/pgsty/pig/releases/tag/v1.7.0) · [checksums.txt](https://github.com/pgsty/pig/releases/download/v1.7.0/checksums.txt)

```bash
e3a339fefdd2203825d15438b52f18e729547eb88dae014212a46006a9bd47d1  pig-1.7.0-1.aarch64.rpm
34ce29d75ef9f669f3bf832cc812ae082abda7320ee2b2336ea61e701b9b67f8  pig-1.7.0-1.x86_64.rpm
d26803c685ba29c01cb8e6dfe50c6c1b0f004173be82015618fa8cdf6a329ba7  pig-v1.7.0.darwin-amd64.tar.gz
ea8120d48b93da936919f590ebbefeb72e73277e6bc133c1ef0bb1abc055d3ce  pig-v1.7.0.darwin-arm64.tar.gz
40295b64a2423094fa6f4e6d31da8d8ad5b26698c397d8916c0289591522d0bf  pig-v1.7.0.linux-amd64.tar.gz
7929091732957d85751ef3381285a1e5b0c3c7f82c0e00fc24ed085c496012d5  pig-v1.7.0.linux-arm64.tar.gz
41523c15f36a6c1acaf4af5c851d2626472fc15c21d25f91fc1e991fe8411072  pig_1.7.0-1_amd64.deb
adf7b2d9ce8fe42bad935428d16a9c998337df986b1065e0761dc167ce837ef5  pig_1.7.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.7.0


--------

## v1.6.2

Pig `v1.6.2` adds features and updates the catalog from `v1.6.1`. Packaged extensions increase from 562 to 572. This release adds native Grafana dashboard schema v2 support and improves local repository generation. The embedded Pigsty version remains `4.5.0`.

**Highlights**

- `pig sty grafana` accepts legacy dashboard JSON and native `dashboard.grafana.app/v2` Dashboard resources. It loads v2 dashboards through the Grafana resource API to preserve tabs and section variables across loading and dumping. Dumps preserve an existing v2 destination. New dumps use the legacy format by default.
- When SOW is available, `pig repo create` prefers `sow create --pigsty --timeout 10m -- <dir>`. It requires a `repo_complete` marker that is a regular file. On Linux, it can fall back to `createrepo_c` / `dpkg-scanpackages`.
- Local repository creation works on macOS through SOW. On macOS, it defaults to the current directory and does not require `sudo`. The Linux default remains `/www/pigsty`.
- Release metadata is bumped to `1.6.2`; the embedded Pigsty version stays at `4.5.0`.

**Extension Catalog**

- Packaged extensions: **562 -> 572**, with no removals.
- 10 new extensions: `pg_turbovec`, `pg_disorder`, `pg_mentat`, `plruby`, `jsonb_plruby`, `hstore_plruby`, `ltree_plruby`, `pg_describe`, `cat_tools`, and `pg_vault_tde`.
- 12 version refreshes: `timescaledb 2.29.1`, `q3c 2.0.5`, `pgmnemo 0.16.1`, `pg_search 0.25.1`, `citus 14.2.0`, `citus_columnar 14.2.0`, `provsql 1.12.0`, `plpgsql_check 2.10.4`, `pg_rational 0.0.3`, `pgbson 2.1.0`, `pg_readme 0.7.1`, and `pg_readme_test_extension 0.7.1`.
- Package metadata and availability matrices are refreshed. Run `pig ext reload` to replace the embedded release snapshot with the latest online catalog.

**Compatibility Notes**

- No commands or global flags are removed in this release.
- With SOW installed, `pig repo create` prefers it over the legacy Linux generators. It checks for the completion marker before reporting success.
- The catalog count does not guarantee package availability for every PostgreSQL / OS / architecture combination. Check the target host with `pig ext avail NAME`.

**Checksums**

Artifacts: [GitHub Release](https://github.com/pgsty/pig/releases/tag/v1.6.2) · [checksums.txt](https://github.com/pgsty/pig/releases/download/v1.6.2/checksums.txt)

```bash
6697a96bbf476e697a5c3da8b6c861719e4b7208e1e4fe927cf4b475ea1f162f  pig-1.6.2-1.aarch64.rpm
ad0b311867bc6cd689dd73e9a96b84f1fe0f49f6c0f1184abf9eb3232a07a184  pig-1.6.2-1.x86_64.rpm
bb167e04fceb6cebee5c8a2423279cefb4474f46301a5055c464ac98294dc9db  pig-v1.6.2.darwin-amd64.tar.gz
3de74e33321884a0c36596c1e7df9370be594a315395538e9ba5b775bbc1a79d  pig-v1.6.2.darwin-arm64.tar.gz
7b69214e115e6815e772b7e179aa4070bd8553e585b164ba3a0f69a1d53a0294  pig-v1.6.2.linux-amd64.tar.gz
b511e727642987867be5921d72e8019e9c6186b82e63ddc34ad653773abed5a8  pig-v1.6.2.linux-arm64.tar.gz
3d1a80b833c6179b84ac5cc590ad06695b187b2bb4a09f544b1a14f9684dc4bc  pig_1.6.2-1_amd64.deb
00e4c84cd6b07a98401c73fb58dedaafe34bc794d7604edbcb76c5de39b0fb44  pig_1.6.2-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.6.2


--------

## v1.6.1

Pig `v1.6.1` is a maintenance release. It updates the bundled extension catalog and sets the embedded Pigsty version to `4.5.0`. It adds no commands and changes no flags.

**Highlights**

- Regenerates the embedded `extension.csv` from Pigsty package repositories. New installations use current package metadata without first running `pig ext reload`.
- Update the embedded Pigsty version reported by `pig sty` and `pig status` from `4.4.0` to `4.5.0`.
- Keep 562 packaged extensions across PostgreSQL 14-18, EL 8/9/10, Debian 12/13, and Ubuntu 22/24/26 on `x86_64` and `aarch64`.

**Checksums**

Artifacts: [Pigsty Mirror](https://repo.pigsty.io/pkg/pig/v1.6.1/) · [checksums.txt](https://repo.pigsty.io/pkg/pig/v1.6.1/checksums.txt)

```bash
088e62bf7c64dbbe1d66cb54e6a6971e4d245e76ac0b9ab9de2280053b692e77  pig-1.6.1-1.aarch64.rpm
11b81f43754bcd7691752025ff0a95aa39745883d1cc17183e81fd357f50f5d3  pig-1.6.1-1.x86_64.rpm
f0512d26fd934a9ac7b0bf5aba22aba151991a4edcc8e995441f79f66fc6080a  pig-v1.6.1.darwin-amd64.tar.gz
595f122c210b1e5a5211de5b397bfcf2a803179f52a97aa38e68e8c567381533  pig-v1.6.1.darwin-arm64.tar.gz
d6c0ad7784c8df33539d60cb22259bb1b6f92a6fc26543f4384448dd630a83fd  pig-v1.6.1.linux-amd64.tar.gz
017fbae1c32858b5438514685e45959ceaeb6bf29ae11ecf0496b52d00908627  pig-v1.6.1.linux-arm64.tar.gz
571bc16bc8490190935ecb6d8dde9c5827e63eced0b7bbd05cfad1e4363e385b  pig_1.6.1-1_amd64.deb
54010b414aaf3971c435db714d5e1c0e039f30a11adf95a902040e177f911fa6  pig_1.6.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.6.1


--------

## v1.6.0

Pig `v1.6.0` is a major release. `pig pt` becomes a transparent `patronictl` launcher. The root-level `pig inventory` group adds lossless editing and validation of `pigsty.yml`, plus an experimental PostgreSQL CMDB bridge. `pig sty grafana` adds native Grafana dashboard management. The packaged extension catalog grows to 562.

**Highlights**

- `pig pt` becomes a native `patronictl` launcher. All cluster commands (`list`, `restart`, `switchover`, `failover`, `edit-config`, …) forward directly with native flags, prompts, output, and exit codes. New patronictl features therefore work without a new pig release. Local helpers `status`, `log`, `set`, and `service/svc` remain. New options are `-c/--config-file`, `-d/--dcs-url`, and `-k/--insecure`. Use `pig pt -- …` to pass arguments directly.
- Adds the root-level `pig inventory` command group (alias `inv`): `status` / `list` / `show` / `edit` / `validate` / `check` / `diff`. Its lossless YAML engine preserves comments, formatting, key order, and anchors byte-for-byte. `edit` validates before writing, then writes atomically. Invalid YAML cannot reach disk.
- Adds **experimental** `pig inventory cmdb` subcommands: `check` / `init` / `load` / `dump` / `enable` / `disable`. They exchange inventory with the PostgreSQL Pigsty CMDB through a native driver. They use bounded timeouts and confirmation tied to a digest for destructive operations.
- Adds `pig sty grafana` (alias `gf`) for native Grafana dashboard management over HTTP. Its commands are `info` / `list` / `boot` / `load` / `init` / `dump` / `clean` / `lang` / `style`. Removes `sty edit` / `validate` / `check` / `cmdb` / `dashboard` / `release` to simplify `pig sty`. Use `pig inventory`, `pig sty grafana`, and `pig sty list` / `get` instead.
- Reliability improvements: repository, catalog, and download writes are atomic, preventing truncated files after interruption. Structured `-o json|yaml` output keeps only the result envelope on stdout and sends wrapped-tool output to stderr. More specific exit codes distinguish usage errors (2) from missing `--yes` confirmation (7). Ansible list variables use JSON encoding.
- Repository updates: MySQL moves to 8.4 LTS, with new Percona XtraBackup (`pxb84`) and MySQL Tools repositories. Kubernetes moves to v1.36. LLVM APT coverage extends to Debian/Ubuntu 26. Percona TDE uses repo.percona.com directly. Removes the `wiltondb` repository.
- Toolchain: Go 1.26.5, new native PostgreSQL driver (pgx v5), embedded Pigsty version `4.4.0`.

**Extension Catalog**

- Packaged extensions: **531 -> 562**; the broader PGEXT.CLOUD directory contains **2,230** entries.
- 33 new extensions, including the `pg_lake` family (`pg_lake`, `pg_lake_table`, `pg_lake_engine`, `pg_lake_iceberg`, `pg_lake_copy`), `pg_jieba`, `pg_cjk_parser`, `pg_fts`, `pgmonitor`, `pgmemento`, `pg_tiktoken_c`, `online_advisor`, `pgsqlmock`, and `plx`.
- 2 removed: `pg_analytics`, `spat`; 58 version refreshes, including `vector 0.8.5`, `timescaledb 2.28.3`, `pg_search 0.24.3`, `pg_tde 2.2.1`, and `powa 5.2.0`.
- Aligns package aliases with Pigsty. Renames `kafka` to `kafka-stack`. The Debian/Ubuntu `postgresql` alias maps only to `postgresql-$v`. For the full development set, use `pgsql` / `pgsql-full`.

**Compatibility Notes**

- ⚠ `pig pt failover <name>` now treats the positional argument as the **cluster**, not the promotion candidate. Use `pig pt failover CLUSTER --candidate MEMBER`. Review failover automation before upgrading.
- `pig pt` uses native cluster-first positional arguments (`restart CLUSTER [MEMBER]`). Forwarded commands return native patronictl exit codes and manage their own confirmation prompts. `-y` no longer controls those prompts. They no longer support `-o json`; use native `--format json`. `pig pt set K=V` and native `show-config` / `edit-config` replace `pig pt config`.
- In structured output mode, wrapped-tool output goes to stderr. Stdout contains only the JSON/YAML envelope. Update scripts that parsed mixed output.
- `pig inventory edit` tightens the inventory file mode to 0600 after a successful edit, since the file may contain credentials.

**Checksums**

```bash
6899e8a3e1c0adfe8c0c177c0632b0a00821b304ed5998fcbdf28d02660c6768  pig-1.6.0-1.aarch64.rpm
cabe593fe7f5c31cdbcd8d546ae4925b57f98f70c564452335568389f3f9737c  pig-1.6.0-1.x86_64.rpm
1f46d4a0b4710eed06b2cf8e7e17ee04b8d65331697c5c65afd513cc28282231  pig-v1.6.0.darwin-amd64.tar.gz
845decb95697fc68bc5e12bc80cecfd4c6d23160afee96568b699d82f2e9261d  pig-v1.6.0.darwin-arm64.tar.gz
4f1bb4fda8131db9f40db15e1575a6045b373dee609250cf5ee2bdedc2db89e2  pig-v1.6.0.linux-amd64.tar.gz
4384d11150e31d614ed4ac3de4d6bf7ee7fa111ac84f5575753bb9f2f31f4ed8  pig-v1.6.0.linux-arm64.tar.gz
e35ef0f2c76afe5f3512d34c0440abd8c0106c0e2775c5452e167ae3a4127e8e  pig_1.6.0-1_amd64.deb
c3bc6d04c6acd7e5c3164a33b7525b25a93e2de9822ce957c15c18ee0d551901  pig_1.6.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.6.0


--------

## v1.5.1

Pig `v1.5.1` updates PG kernel forks to the latest package names.

**Highlights**

- Adds mirror/proxy mode to repository, build, sty, update, and extension update workflows. `pig build rust -m` also configures Cargo mirrors through `rsproxy.cn`.
- Adds explicit PostgreSQL 19 beta build options: `pig build repo --beta`, `pig build tool --beta`, and `pig build pgrx -b`. PostgreSQL 18 and PG14-18 remain the stable defaults.
- Refresh kernel and fork package aliases for IvorySQL, PolarDB, OrioleDB, OpenHaloDB, Babelfish, and the pgEdge suite.
- Improve the Cloudberry package build flow for `cloudberry`, `cloudberry-backup`, and `cloudberry-pxf`.
- Refresh source/package metadata for Cloudberry, Babelfish, OrioleDB, pgEdge, PolarDB, `polarstore`, `zlog`, `libpgfeutils`, and `libfq`.
- Improve repository generation for newer EL release strings, including PGDG on EL9.6+ / EL10+ and EPEL's EL10 `10z` stream.
- Refresh extension versions including `pg_ivm 1.15`, `spock 5.0.10`, `snowflake 2.5.0`, `pg_tde 2.2`, `decoderbufs 3.6.0`, and IvorySQL `5.4` packages.

**Checksums**

```bash
bc83887d640ed299a967b4eda2ae6db621a985abfa022fccabf508f7ec7b98e3  pig-1.5.1-1.aarch64.rpm
f0eab8e638d9e00a9172751446db869d0fe6ca7f382c7d540a931e0764014c0a  pig-1.5.1-1.x86_64.rpm
b32d894dc444ef2b9ec00816d50d82b5834e64c35b3bb18f08b6286a7ca8e8e7  pig-v1.5.1.darwin-amd64.tar.gz
4d768829b7e93fac6c732e27f665d3ab3945ec8bc1c336e5b91980932e8c9932  pig-v1.5.1.darwin-arm64.tar.gz
69f4a016af52f1ee8f1a1ffc1e405bb3be551c3813b6d24f70ef8394330be5eb  pig-v1.5.1.linux-amd64.tar.gz
f49becb5fd556b36a9aa8de0c27bdbe210f7958f59254d780774828f2340e77b  pig-v1.5.1.linux-arm64.tar.gz
a0d15145409d8a2629a74d3071f7af593e470920f22d9af4bf6f96725dbb6d49  pig_1.5.1-1_amd64.deb
f05b9b5abef5992ed16cbb5b6a6e3e5e58230072e3665ecc57b9ce2df3edb9a6  pig_1.5.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.5.1


--------

## v1.5.0

Pig `v1.5.0` updates PostgreSQL operations for daily DBA work. It adds local database clone and fork workflows. It clarifies the roles of `pg`, `pt`, `pb`, and `pitr`. It also improves previews, confirmation, and structured output for high-risk operations.

**Highlights**

- `pig pg` focuses on local PostgreSQL operations. `pig pg clone` makes quick database-level copies. `pig pg fork` creates temporary physical instance forks for local validation, recovery drills, and isolated experiments.
- Recovery commands have clearer roles. `pig pitr` coordinates Patroni, PostgreSQL, and pgBackRest. `pig pb restore` remains the low-level pgBackRest restore command. Restore commands require an explicit target. They provide more specific plans and guidance for steps after recovery.
- Patroni operations use more consistent behavior. High-risk actions such as `pig pt restart`, `reinit`, `switchover`, and `failover` use Pig-managed confirmation and plan output. When a restart is required, `pig pt config pg` directs operators to `pig pt restart --pending`.
- Structured output no longer confirms destructive commands. High-risk execution requires explicit `-y/--yes`. `--plan` and `next_actions` provide more consistent workflows to preview an operation before execution.
- Improves logs and status output for incident response. The `pg`, `pb`, and `pt` log commands support common latest / tail / show / grep workflows. Structured log snapshots use JSONL semantics.
- Build and release defaults were refreshed: Pig is `1.5.0`, embedded Pigsty is `4.4.0`, and `pig build pgrx` defaults to `cargo-pgrx 0.19.1`.

**Extension Catalog**

- Available extensions: **524 -> 531**, with no removals.
- New extensions: `pg_ducklake`, `pgdisablelogerror`, `pg_stat_log`, `pg_stat_plans`, `passwordpolicy`, `db2fce`, `plpgsql_wrap`.
- Refreshed a batch of existing extension versions and package metadata, including `timescaledb 2.28.2`, `postgis 3.6.4`, `vector 0.8.4`, `biscuit 2.4.1`, `citus 14.1.0`, `orioledb 1.8`, `documentdb 0.113`, `credcheck 5.0`, and `pgtt 4.5`.
- `orioledb` aliases no longer pin to PG17. They resolve against the requested PostgreSQL major version. EL9 ARM64 Patroni aliases now select noarch packages.

**Compatibility Notes**

- For destructive operations in automation, use `-y/--yes`. Structured output mode no longer replaces human confirmation.
- `pig pb restore` and `pig pitr` require exactly one explicit recovery target. For automatic promotion, use `--target-action=promote`.
- Removed ambiguity in several short options. For log commands, `-o json` selects a JSONL snapshot. It does not apply to tail/follow streaming modes.

**Checksums**

```bash
9f83b78ed2eccedd55a86c634f88364f1945c3cefa1b23efdd72a7cf2062e1df  pig-1.5.0-1.aarch64.rpm
b792001498e9907d4659db46640f9c5164152b20689f90f93418f76fb4633e6e  pig-1.5.0-1.x86_64.rpm
ae1081dfbff8564ecdf713c85e8025c91bfd38e6575ea9ac99a92f968ab8a29d  pig-v1.5.0.darwin-amd64.tar.gz
6d69efcdcdc79fd90d2112e1e8042887020402aa037252d89d632243e7085dc6  pig-v1.5.0.darwin-arm64.tar.gz
8f914821b317cde73d3aec4ed311d5e90710bbc8cb372c1de3322083c31f4a85  pig-v1.5.0.linux-amd64.tar.gz
d4de9ef1c28d0a3661c4a4d47c469b7bfd5f5bddb610325796afb669ab162234  pig-v1.5.0.linux-arm64.tar.gz
35fd32affb4cb5bcca845d47a768782fb7005f06fcc1bcb5b7755d2627f96245  pig_1.5.0-1_amd64.deb
2be1df804d3f630560bc3ced0107c49ffad8bb52b004f72c7f8b4d09dc8d3e04  pig_1.5.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.5.0


--------

## v1.4.2

- Refresh the built-in extension catalog from **510** to **524** available extensions. This adds 14 extensions: `pg_stl`, `pgmnemo`, `psql_bm25s`, `pg_orca`, `pg_sorted_heap`, `graph`, `pgrdf`, `fsm_core`, `jsonschema`, `pg_durable`, `pg_mockable`, `pg_uuid_v8`, `pg_stat_backtrace`, and `pg_projection`.
- Update package metadata for 48 existing extensions, including `timescaledb 2.28.0`, `timescaledb_toolkit 1.23.0`, `pg_task 2.1.29`, `pg_search 0.24.0`, `pg_clickhouse 0.3.2`, `pg_graphql 1.6.1`, `documentdb 0.112`, `toastinfo 1.7`, `wrappers 0.6.1`, and `pgclone 4.3.2`. No extensions were removed or demoted.
- Add PostgreSQL 19 beta install/build/config support. PG19 is accepted as an explicit installable major, while PostgreSQL 18 remains the stable default for auto-detection, catalog display, and latest-version aliases.
- Add `pg19` package aliases and PG19 category alias resolution. PG19 category aliases borrow the PostgreSQL 18 visibility template and limit beta package expansion to PGDG-origin entries.
- `pig sty conf -v 19` enables the `beta` repository module if the template supports it. It warns if the template is not tuned for PG19 beta or cannot enable the beta repository automatically.
- Fixes Patroni cluster operations by passing the resolved `CLUSTER_NAME` to `patronictl restart`, `reinit`, `switchover`, and `failover`. `pig pt list` also accepts an optional cluster name.
- Bump the default `pgrx` version for `pig build pgrx` from `0.18.0` to `0.18.1`.
- Bump release metadata to `v1.4.2`, refresh Go module checksums, and add focused tests for PG19 aliases/config generation plus Patroni cluster-scope behavior.

**Checksums**

```bash
790afe4d6622cb041b06c622bc466cb1b2960a77487f368238027fb4a3a5ef93  pig-1.4.2-1.aarch64.rpm
ef918166b38a5eb1d108a928718c9e2cb8c3590e5a1f72effee942faca9b4bea  pig-1.4.2-1.x86_64.rpm
3e37ff22aed076cbdd453911dc89fcc9340b1a4faac62c0580094bc1eb2d6273  pig-v1.4.2.darwin-amd64.tar.gz
5eb7db776cb149331ebb33e3e6164e1cf711d0107941b92c6930a1d4c4b4eb23  pig-v1.4.2.darwin-arm64.tar.gz
c536c324e40a861217e31f4699ee5f0e6c2daeb4e6f0f0e8cc5f606da9d787eb  pig-v1.4.2.linux-amd64.tar.gz
8b2d5746264a95269535e5a426f78fe0020f73fa3391fcb613f274551c4786ab  pig-v1.4.2.linux-arm64.tar.gz
566e06f6da1fe9d635c41258d20cd9ff10de4e6e74b3b41ba2c6204ba22743c8  pig_1.4.2-1_amd64.deb
8c09e741975cb2f74b0f88c5995a8fa43d6c30a9a7ab7aaf0b8d83a7c66e1fc1  pig_1.4.2-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.4.2


--------

## v1.4.1

- 510 extensions, 3 new extensions, 20 updated.
- Ubuntu 26.04 `resolute` support, drop support for Ubuntu 20.04 `focal`.
- Bump `el9.aarch64` ad hoc `patroni` to `4.1.2`.
- Bump pgEdge to PostgreSQL 18.
- Calibrate upstream repo definition.

**Checksums**

```bash
cbfbb04b9640dcf39fcd9ccfa49e500dd0e65b72c0326c0d166e6f43e52b6dc3  pig-1.4.1-1.aarch64.rpm
c3325c7c68559b3149567eddd5963c4bc3bb4b39622740ca469f9d5d274e462b  pig-1.4.1-1.x86_64.rpm
c82e8a5e010aed198748576a3740479ac73eaa4a05f50cd4afc82fbcc9075d4d  pig-v1.4.1.darwin-amd64.tar.gz
a62e223a9f3fb6755cfeabfed2b9241d1be8aad42251917ddb2a4757fa5df6bd  pig-v1.4.1.darwin-arm64.tar.gz
65938e1158deb8a795c32ae99ff09178b7dec6b09743f8bdfbd9fd09a522e89f  pig-v1.4.1.linux-amd64.tar.gz
0fe4172dd1f03ac1b6ac73a28cdfe78b70c6613996252a230710b291faf8db58  pig-v1.4.1.linux-arm64.tar.gz
bdcc318ed50bff505f193f3a265d8fd2c7b093a104d5e5728b8c070e3580827e  pig_1.4.1-1_amd64.deb
1a1acb69d41bcfb9df8fb86c8d3c076050df5a242b639c1215833cd6394e112d  pig_1.4.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.4.1


--------

## v1.4.0

- Refresh the extension catalog and increase the total available extensions to **510**, with version bumps such as `timescaledb 2.26.3`, `decoderbufs 3.5.0`, `pgclone 4.0.0`, and `nominatim_fdw 1.3`.
- Bump the default `pgrx` version from `0.17.0` to `0.18.0` and align related Rust extension builds.
- Updates authoritative source bundles for `pig build get`. These include Cloudberry / OrioleDB build inputs and bundled artifacts for RDKit and OneSparse packages.
- Fix `repo set` flag isolation and correct schema maintenance SQL.
- Bump `patroni` to `4.1.1` for `el9.aarch64`.

**Checksums**

```bash
c8d2f46ea1b25f7d4665ee0994f0cb403a59f1464f80b3ecfa575ac283e5ecd0  pig-1.4.0-1.aarch64.rpm
fb1fd2f4f1e71894779de7b11a42960c09261620dffa0b54ff7f84e60efbf976  pig-1.4.0-1.x86_64.rpm
aa08045a31c26b9a6bfb770753817581c819022a6ed899e44f7b5a31f57f1733  pig-v1.4.0.darwin-amd64.tar.gz
80e50dd2ccd08d4a4016e85518186e156498e00c56a898e65acb96466db339f0  pig-v1.4.0.darwin-arm64.tar.gz
e425bf35ab6cb7907e94caca802b4418e3baf4bb1642dd957ab4baaa9db9f583  pig-v1.4.0.linux-amd64.tar.gz
840a21695955d64af7df12f7157b49573b18586bb2bf9cc5e7079074b86d39b7  pig-v1.4.0.linux-arm64.tar.gz
401d91bae78b14e3dcc338aaac9e451e94282c79efbe9affabcfeb8b36ece587  pig_1.4.0-1_amd64.deb
d60515f72fb9f8963554dc5668d2398e5ecefd0153a7756a9d555de90115bcce  pig_1.4.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.4.0


--------

## v1.3.4

Increases total available extensions to **504**.

**Checksums**

```bash
dc78def9a1e5eb483ac5df4c87f4ac0ef2018bb12b4bedff650d8ba4d58a05fd  pig-1.3.4-1.aarch64.rpm
998fcbdab1846c94c3155391d2100dad9b0fe338f48212022db38980bb11e696  pig-1.3.4-1.x86_64.rpm
031048c561abbeeeaa73fa3ac919b9fb89479b61c8a759bee5db2efba2e8a1df  pig-v1.3.4.darwin-amd64.tar.gz
e13c939330d32fa91819ce2da88d121fb02a1063240dbf6cc8fa7975960f8fd3  pig-v1.3.4.darwin-arm64.tar.gz
46aa321cf45fc9be635d91b38969b7f3602b7f226f43e5ee0e7614a030945c64  pig-v1.3.4.linux-amd64.tar.gz
f25c4f336edba5c9d2145368082f54e5b1a8b2d4261285b7a1721c088df4caa4  pig-v1.3.4.linux-arm64.tar.gz
563516047e37b25da01da9e25bcbada2c55642d1636b1bdab7d62488f9dcdfbb  pig_1.3.4-1_amd64.deb
81bb482892f7fd4be862d0f377cb37d01c925006c96998d81d94c770ed9652ba  pig_1.3.4-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.3.4



--------

## v1.3.3

- Refresh extension catalog and increase total available extensions to **481**.
- Bump Go toolchain from `1.26.0` to `1.26.2`.

**Extension Updates**

| Extension        | Old    | New    | Notes                    |
|:-----------------|:-------|:-------|:-------------------------|
| `timescaledb`    | 2.25.2 | 2.26.2 | available, PG15-18       |
| `pg_background`  | 1.8    | 1.9.2  | DEB only, PG14-18        |
| `pg_ivm`         | 1.13   | 1.14   | upgraded, PG14-18        |
| `system_stats`   | 3.2    | 4.0    | upgraded, PG14-18        |
| `nominatim_fdw`  | 1.1.0  | 1.2    | upgraded, PG14-18        |
| `pg_textsearch`  | 0.5.0  | 1.0.0  | PG17-18                  |
| `pg_clickhouse`  | 0.1.5  | 0.1.10 | available, PG14-18       |
| `pg_search`      | 0.22.2 | 0.22.6 | manual download, PG15-18 |
| `pg_store_plans` | 1.9    | 1.10   | upgraded, PG14-18        |
| `pg_dispatch`    |        | 0.1.5  | new, PG14-18             |
| `pg_fsql`        |        | 1.1.0  | new, PG14-18             |
| `pg_liquid`      |        | 0.1.7  | new, PG14-18             |
| `pg_regresql`    |        | 2.0.0  | new, PG14-18             |
| `pg_slug_gen`    |        | 1.0.0  | new, PG15-18             |
| `pg_stat_ch`     |        | 0.3.3  | new, PG16-18             |
| `pg_variables`   |        | 1.2.5  | new, PG14-18             |
| `pgcalendar`     |        | 1.1.0  | new, PG14-18             |
| `pgclone`        |        | 2.2.0  | new, PG14-18             |
| `pgelog`         |        | 1.0.2  | new, PG14-18             |
| `pglock`         |        | 1.0.0  | new, PG14-18             |
| `pgproto`        |        | 0.2.1  | new, PG14-18             |
| `postgresbson`   |        | 2.0.2  | new, PG14-18             |
| `rdf_fdw`        |        | 2.4.0  | new, PG14-18             |
| `parray_gin`     |        | 1.4.0  | new, PG14-18             |

**Checksums**

```bash
e74418061ea975fbc3e8a89b31f274d7dc3617d12b9d681e5c8ef03584392088  pig-1.3.3-1.aarch64.rpm
8450e3e1076425fc8a10f24cc5fd833c3d2d880bab12baff5c10e59a31f62231  pig-1.3.3-1.x86_64.rpm
952a0e94b9020fca5add91f8e9a398fbedfda5d2e5c8736e59ddaa2b7152c826  pig-v1.3.3.darwin-amd64.tar.gz
c896b4fd44b19a250f4c3c47dc78643e10e92fde8cb6531b08cdc78e3623bb8a  pig-v1.3.3.darwin-arm64.tar.gz
d18a92f9aa05d6315c5e9bfde3245afc08fca93d200a8063aa20cb40feb8e85e  pig-v1.3.3.linux-amd64.tar.gz
62d020072360229b47f6c430b014344b912f2d9b58fd528154ae9c4ee805190a  pig-v1.3.3.linux-arm64.tar.gz
7a613a1f1c323ee78276b1733df026b8b0f415e0057b4cb8e509f771bfd3d614  pig_1.3.3-1_amd64.deb
f4c91ce86b787b6ab8cd584949d38c2ca87eb82d5e066bab91b80345252f43d8  pig_1.3.3-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.3.3


--------

## v1.3.2

Routine maintenance release.

- Refresh a batch of extension version metadata and catalog entries.
- Add the `pig pg tune` subcommand to generate PostgreSQL tuning parameters from hardware resources and workload profiles.
- Add `pdu` and `pgdog` source package aliases for `pig build get`.
- Migrate extension catalog URLs from `pgext.cloud` to `pigsty.io/ext`.

**Checksums**

```bash
d760f47652ff3e2e4a61eb7b9a68ca68665b2b36c187c52f5eaf50d2f007d8f3  pig-1.3.2-1.aarch64.rpm
c2e02e62497f4c2055a9b448ddb3a24c618fcd488580c28b2b9a0e7cedacef55  pig-1.3.2-1.x86_64.rpm
b8d066ddefa4530946c74c30e7e4acdab6abf8da70a47dcfe2a77719b79e397f  pig-v1.3.2.darwin-amd64.tar.gz
a90e78d879fd720fd2865870c696aed7952558d5ae75591deced3121f2aab1f9  pig-v1.3.2.darwin-arm64.tar.gz
2fe3a9ffbb6383154dfd25ed79420b210828eabf6a96a8af6e8feb9d744b9559  pig-v1.3.2.linux-amd64.tar.gz
522290aaf14f98f0bae83ce75cc76749f2a4e72742eb5c3cba36a1d2fa4d12c2  pig-v1.3.2.linux-arm64.tar.gz
d6c1cf2c52962045f6bbfb2a669058e7f903088526591d6c939e7723f3928d30  pig_1.3.2-1_amd64.deb
4352385c629b26a1837054445a546da89591499848b557699c2fb70fde9377aa  pig_1.3.2-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.3.2


--------

## v1.3.1

This is a small maintenance release from `v1.3.0` to `v1.3.1`.

- PG13 install/build support is removed because PGDG upstream has dropped PG13 archive/distribution.
- Active supported PostgreSQL major versions are now **14-18**.
- Refresh extension catalog (`461 -> 464`), including `pg_pinyin`, `pg_eviltransform`, and `qos`.
- Percona PPG upstream repo is bumped to `18.3`.
- Fix `pig build` dependency/build sync issues; rsync now uses `--keep-dirlinks`.
- In YUM repos, Nginx is split out from `infra` into its own module index (`nginx`).

**Checksums**

```bash
196e57c7dd46cdedd90ab75965a766f74aabc3bc23ddc8fb757473647bed7b8f  pig-1.3.1-1.aarch64.rpm
e4bdd52ef635524d5aec95f6a5abd76bd49940584ecbb00bd309a4f9186292ac  pig-1.3.1-1.x86_64.rpm
4f3f9479344c158e1c5edc3003471be6b595c01b7d86104bf676b34f8faadce5  pig-v1.3.1.darwin-amd64.tar.gz
05ae2f550ef5062ab5714518a24bbf52f48079ca6d0190359fae5b8f4cb7f20d  pig-v1.3.1.darwin-arm64.tar.gz
940645497e907e56bfd387a478e580ac930aaa72593cc9d04225a08b37880ec4  pig-v1.3.1.linux-amd64.tar.gz
8b2c204fd6c933a1097cd1cd0ce491b02ba5c0025626a331a199684ceca3ab43  pig-v1.3.1.linux-arm64.tar.gz
1cfc23d147795cc4c1ea9596e6978d79ff1ec34c02850fbb224f7c2844548ea5  pig_1.3.1-1_amd64.deb
e495678ae1c762194a56e8c9969fd2109e7a59830f34a4747039fb978f7820cc  pig_1.3.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.3.1


--------

## v1.3.0

This engineering update moves from `v1.2.0` to `v1.3.0`. It contains 15 commits across 74 changed files, with `+1184 / -236` LOC.

It improves the reliability of the `pig build` pipeline and extends catalog and alias coverage. Total extensions increase from **451** to **461**.

**Highlights**

- Build source download improvements (`pig build get`):
  - Parse multi-source `Source` fields (whitespace/newline/tab) and deduplicate entries.
  - Add source mappings for `agensgraph` / `agentsgraph`.
  - `pgedge` now downloads both `postgresql-17.9.tar.gz` and `spock-5.0.5.tar.gz`.
- Dependency resolution and install improvements (`pig build dep`):
  - RPM dependencies can infer the PG major version from `pgmajorversion` in spec files. Missing spec/control files return explicit errors.
  - DEB dependency parsing now covers `Build-Depends` / `Build-Depends-Arch` / `Build-Depends-Indep`, including multiline fields, alternatives, arch qualifiers, and build-profile cleanup.
  - `PGVERSION` placeholders can be expanded from `--pg`, installed PG majors, or extension metadata.
  - Dependency install failures are downgraded to warnings so batch runs continue.
- DEB build result semantics fixed (`pig build ext/pkg`):
  - A successful build command exit code determines success. Artifact discovery is best-effort and can only produce warnings.
  - Suppress empty package-list banners on successful no-artifact runs.
  - Partial artifacts are warnings, not failures.
  - Build logs now print real metadata source/version values instead of always composing `name-version`.
- Better machine-readable ext operation output (`pig ext rm/update`):
  - After alias resolution, `removed/updated` now returns resolved package names instead of extension aliases.
- Extension catalog and alias updates:
  - New aliases: `agensgraph` / `agens`, `pgedge`, `babelfishpg`.
  - `openhalodb` is aligned to PG14 package naming; `ivorysqldb` naming is aligned.
  - Fork metadata and availability matrix were refreshed in batch (including `timescaledb`, `pgmq`, `orioledb`, `documentdb`, `pg_tde`, and `babelfishpg_*` entries).
- Engineering and release:
  - Updated the version to `v1.3.0`, including a `v1.2.1` transition commit. Changed the copyright year to 2026. Updated the README for 461 extensions and current alias documentation.

**Compatibility Notes**

- Structured `removed/updated` fields in `pig ext rm/update` now contain package names. Automation that matched extension aliases should update parsing logic.

**New Extensions (451 -> 461)**

| Extension             | Version | Notes                                             |
|:----------------------|:--------|:--------------------------------------------------|
| `aux_mysql`           | 1.5     | openHalo MySQL compatibility helper (PG14)        |
| `gb18030_2022`        | 1.0     | IvorySQL charset conversion module                |
| `ivorysql_ora`        | 1.0     | IvorySQL Oracle compatibility extension           |
| `ora_btree_gin`       | 1.0     | Oracle datatype GIN indexing support              |
| `ora_btree_gist`      | 1.0     | Oracle datatype GiST indexing support             |
| `pg_get_functiondef`  | 1.0     | Function definition utility                        |
| `plisql`              | 1.0     | PL/iSQL procedural language                        |
| `snowflake`           | 2.4     | pgEdge Snowflake-style ID generator                |
| `spock`               | 5.0.5   | pgEdge multi-master logical replication extension  |
| `lolor`               | 1.2.2   | pgEdge logical-replication-friendly large objects  |

**Full Commit List (`v1.2.0..v1.3.0`)**

- `b8ecf8d` bump version string to 1.2.1
- `55df9a4` build/get: support multi-source parsing and pgedge spock tarball
- `da8e347` add agensgraph and pgedge alias
- `86edbd7` ext: show resolved package names in rm/update results
- `ef3c905` build/dep: improve rpm/deb dependency resolution
- `7144e09` ext/catalog: refresh fork metadata and matrix entries
- `befffbf` build(deb): treat successful build command as authoritative result
- `33fd517` build(deb): avoid empty package list banner on successful no-artifact runs
- `3b450f2` avoid concat ext pkg name with version when download
- `33847ab` fix(ext): satisfy staticcheck S1011 in rm/update
- `b8b917d` build(dep): treat dependency install failures as warnings
- `8110c00` adjust ivorysqldb babelfishpg alias
- `fac9faf` bump version to 1.3.0
- `1f88f06` chore: update copyright year to 2026
- `c804757` v1.3.0

**Checksums**

```bash
196f32419886da095f303b1bcad2729b674abc03d412199e88a39390b2616534  pig-1.3.0-1.aarch64.rpm
a2dcc930dd47a08e85285c1fb7925e1355a1e67d458a265a7ef6d9666bc8e7ec  pig-1.3.0-1.x86_64.rpm
c7ebda6b9839408b12ffe1c8ea561f03e1793aae0732f9bbe2320a0d45160714  pig-v1.3.0.darwin-amd64.tar.gz
b717b485ed0a4a8c11dd8bf918400595b21df5ef43818836ec332f8518674c1a  pig-v1.3.0.darwin-arm64.tar.gz
40e6570c6ba0fe36c97950ff8de585eecb6bc1f862509a04f410a5f08ee90148  pig-v1.3.0.linux-amd64.tar.gz
d61430eeafc8005a22918a9aa60dea5c987916f9834331b5484f761b8235644f  pig-v1.3.0.linux-arm64.tar.gz
62c9a4fadc7dda393d6f28ab83b5f3d741e7d7f7de7abe40a5b89c393288519c  pig_1.3.0-1_amd64.deb
19261ae50e873a05a10a6ad500ab1b429b22e2612325c09f9cd5443dcd34308b  pig_1.3.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.3.0


--------

## v1.2.0

- Extension catalog and alias resolution enhancements:
  - Introduce dynamic PG category alias resolution by PG major version.
  - Adds OS-level alias overrides (`ansible`/`bootstrap`). Unknown distributions now fall back only to PGDG.
  - Add aliases such as `node/infra` and `babelfish/cloudberry`, and refresh extension metadata to reduce package resolution ambiguity.
- Plan preview for high-risk operations:
  - Add `pig install --plan` with structured execution plan output.
  - Align preview semantics for `pig pitr` and pgBackRest `repack/expire` under `--plan` / `--dry-run`.
  - Add plan-flag consistency tests to keep subcommand behavior aligned.
- Native `sty` configuration capability:
  - Add `pig sty configure` with full execution flow (preflight, argument handling, execution orchestration).
  - Unifies `sty conf/configure` behavior. The native implementation is the default, and `--raw` remains as a fallback.
  - Add tests for configure main flow, preflight, routing, and install integration to improve maintainability.
- Repo/build/reliability fixes:
  - Fix nil dereference in repo cache on `os.Stat` error paths.
  - Align Ubuntu and Debian repo channel mapping, and add timeout control for mirror pulls during reload.
  - Harden `repo rm` for dotted module names with safe deletion and path validation.
  - Fix symlink preservation, cross-device migration, and target-directory handling in `sty init` and build flows.
  - Improve text output and matrix color rendering, and fix ext command validation for empty args/targets.

- 35 commits, 66 files changed, LOC: `+5006 / -379`

- **PG extension and kernel package updates**

| Package             | Old      | New      | Notes                                             |
|:--------------------|:---------|:---------|:--------------------------------------------------|
| `timescaledb`       | 2.25.0   | 2.25.1   |                                                   |
| `citus`             | 14.0.0-3 | 14.0.0-4 | Rebuilt from the latest official upstream release |
| `age`               | 1.7.0    | 1.7.0    | Add PG 17 support for version 1.7.0               |
| `pg_background`     | -        | 1.8      | DEB-only build; RPM package comes from PGDG       |
| `pgmq`              | 1.10.0   | 1.10.1   | This extension package is currently unavailable   |
| `pg_search`         | 0.21.6   | 0.21.8   | Used as direct download package                   |
| `oriolepg`          | 17.11    | 17.16    | OriolePG kernel update                            |
| `orioledb`          | beta12   | beta14   | Matched with OriolePG 17.16                       |
| `cloudberry`        | -        | 2.0.0    | New package                                       |
| `babelfishpg`       | -        | 5.5.0    | New BabelfishPG package group                     |
| `babelfish`         | -        | 5.5.0    | New Babelfish compatibility package               |
| `antlr4-runtime413` | -        | 4.13     | New runtime dependency for Babelfish              |


**Checksums**

```bash
344b77385fa9c3d4fe5e1961340e68716251e38d1cb8308f5af45ce8a03cd206  pig-1.2.0-1.aarch64.rpm
aa9cf1820a9045cc42f0d66689d5e8679cb71452042f3f01ddd4c3a518a2b757  pig-1.2.0-1.x86_64.rpm
f26e4d9e9fa76c39f7c591c18a09287ca3388e016d121c196302ee9eafb5b678  pig-v1.2.0.darwin-amd64.tar.gz
2ca41efc3495822305f6e6a3ae1825d57cc97e764f280581f833c72e6e5019a2  pig-v1.2.0.darwin-arm64.tar.gz
f7aa291b3534d92d0459b6e8301190e39c63db14a45a6c097d4c5d3062c35181  pig-v1.2.0.linux-amd64.tar.gz
38007ecd6d7a69bae0e3d8f7c78f1a4c8bbaead320b7ac319b0d94d6b53853f0  pig-v1.2.0.linux-arm64.tar.gz
e824716ddfbf3805dc0a1fd6d97917241b7780503657e9fd40a37beb6b398d7a  pig_1.2.0-1_amd64.deb
b67baa404d877b37004331041cb270c85b8f9a3f8a92a5083390a54d76553d2a  pig_1.2.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.2.0


--------

## v1.1.1

**Fixes**

- Preserve symlink semantics during build-tree migration and support cross-device moves.
- Handle a PostgreSQL log directory configured as the filesystem root without resolving files outside the intended directory.
- Allow `pig repo rm` to remove repository modules whose names contain dots while retaining safe-path validation.
- Accept safe relative symlinks when `pig sty init` extracts a Pigsty release archive.

**Checksums**

```checksums {base="https://github.com/pgsty/pig/releases/download/v1.1.1"}
22fe5e951f09e7cfa46ab22781199b3209792992940eb5615ace4928e41a7429  pig-1.1.1-1.aarch64.rpm
7f5a10bbefdc39e5d66a7e688fa78c5ba566c8140458b9f4b1536ff0d7ed457a  pig-1.1.1-1.x86_64.rpm
b90aec9dc559df81c46d32575a8d231fa6d7eeb8b25f4d2e0b6076cc0a9c0e59  pig-v1.1.1.darwin-amd64.tar.gz
3063e3a72e68371a082b4e629d12aafda46d96eddc22976beb2049881854f4ea  pig-v1.1.1.darwin-arm64.tar.gz
081ff8c81bf61108a35ca4cdc51007d4ddf1de8a041d8be087e58e7068e7e177  pig-v1.1.1.linux-amd64.tar.gz
9a81e868699f92d73f8aeb7752206b6eaac8d42d1688089a1f543b12ee0d272d  pig-v1.1.1.linux-arm64.tar.gz
85ce861cfbff846be2ba912ba8dfc766121dad14a59937387d9c5e26b0b6f541  pig_1.1.1-1_amd64.deb
3a108f0544af4d1f98acee55c06c5b5af3b856e3be2b18767e6db0b8a1cc664f  pig_1.1.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.1.1


--------


## v1.1.0

This release upgrades the CLI architecture from `v1.0.0` to `v1.1.0`, with 79 commits across 193 changed files. It extends pig from an interactive CLI to a CLI that agents can orchestrate.

Seven new extensions are added, bringing the total available extensions to 451.

**New Features**

- Adds a unified output framework for agents. Global `--output` supports `text/yaml/json/json-pretty`. A common `Result` structure provides stable status codes and machine-readable output for `ext/repo/pg/pt/pb/pitr/status/version/context`.
- Adds ANCS (Agent Native Command Schema) metadata, including `type/volatility/parallel/risk/confirm/os_user/cost` fields. In structured mode, `help` outputs a command capability tree. Agents can use it to identify capabilities and risks.
- Adds the `pig context` (`pig ctx`) environment snapshot command. One call collects host, PostgreSQL, Patroni, pgBackRest, and extension information for direct use in agent workflows.
- Extends plan support beyond PITR with `pig ext add/rm --plan`, `pig pg stop/restart --plan`, and `pig pt switchover/failover --plan`. These match `pig pitr --plan/--dry-run` in a common, reviewable format. Plans show actions, scope, risks, and expected results.
- Extends structured results with native `pgbackrest info` JSON. Unifies structured return DTOs across Patroni/PostgreSQL/PITR/Repo/Ext for automation compatibility.
- Adds legacy structured wrappers for command groups such as `pg_exporter/pg_probe/do/sty`. These retain existing interaction behavior while providing structured execution results and captured output.
- Update pigsty to `v4.1.0`.

**Extension Update**

| Extension          | Old          | New           |
|:-------------------|:-------------|:--------------|
| timescaledb        | 2.24.0       | 2.25.0        |
| citus              | 14.0.0-2     | 14.0.0-3      |
| pg_incremental     | 1.2.0        | 1.4.1         |
| pg_bigm            | 1.2-20240606 | 1.2-20250903  |
| pg_net             | 0.20.0       | 0.20.2        |
| pgmq               | 1.9.0        | 1.10.0        |
| pg_textsearch      | 0.4.0        | 0.5.0         |
| pljs               | 1.0.4        | 1.0.5         |
| sslutils           | 1.4-1        | 1.4-2         |
| table_version      | 1.11.0       | 1.11.1        |
| supautils          | 3.0.2        | 3.1.0         |
| pg_math            | 1.0          | 1.1.0         |
| pgsentinel         | 1.3.1        | 1.4.0         |
| pg_uri             | 1.20151224   | 1.20251029    |
| pgcollection       | 1.1.0        | 1.1.1         |
| pg_readonly        | 1.0.3        | 1.0.4         |
| timestamp9         | 1.4.0-1      | 1.4.0-2       |
| pg_uint128         | 1.1.1        | 1.2.0         |
| pg_roaringbitmap   | 0.5.5        | 1.1.0         |
| plprql             | 18.0.0       | 18.0.1        |
| pglinter           | 1.0.1        | 1.1.0         |
| pg_jsonschema      | 0.3.3        | 0.3.4         |
| pg_anon            | 2.5.1        | 3.0.1         |
| vchord             | 1.0.0        | 1.1.0         |
| pg_search          | 0.21.4       | 0.21.6/0.21.7 |
| pg_graphql         | 1.5.12-1     | 1.5.12-2      |
| pg_summarize       | 0.0.1-2      | 0.0.1-3       |
| nominatim_fdw      | -            | 1.1.0         |
| pg_utl_smtp        | -            | 1.0.0         |
| pg_strict          | -            | 1.0.2         |
| pg_track_optimizer | -            | 0.9.1         |
| pgmb               | -            | 1.0.0         |

**Bug Fixes**

- Security fix: resolve parsing panic in `pig build proxy` when receiving malformed proxy addresses.
- Security fix: resolve path traversal risk in `pig pg log`, preventing access to files outside the log directory via `../../`.
- Security hardening: improve installer/repo path and quoting handling to reduce path injection and invalid-path misuse risks.
- Build reliability fixes: `pig build get/pkg/ext` now propagates errors and returns non-zero exit codes when downloads or builds fail. Fixes false DEB build failures caused by a `pg_ver` mismatch.
- Repository/catalog update fixes: adds quiet mirror fallback for `ext/repo reload`. Commands `repo add/set/rm` return the correct error status when cache updates fail.
- Extension management fixes: `ext update` now uses explicit targets, and status drift issues are fixed. `ext import` downloads requested DEB resources to the specified repository directory.
- Output/observability fixes: aligns structured-output exit codes with text mode. Improves permission handling and parsing stability in `pg status`.

**Checksums**

```bash
95245dc035270df2b02cdd5d19afac57ccf4949a61b07b1b806fffde3a3b780e  pig-1.1.0-1.aarch64.rpm
8b1a26f1b5dd002841a0b31904eea8ce94d1e6c4acde4704a78d9e121e1656f4  pig-1.1.0-1.x86_64.rpm
dbd079510513f1cd0521b0871cc6fe3eed8f7fa26f66c04c682568c43e24c456  pig-v1.1.0.darwin-amd64.tar.gz
3f3ba081b54569a7de4d9a8fce72c02c84d9e1cbeb53173567f970c7291af251  pig-v1.1.0.darwin-arm64.tar.gz
ad61384bf01cbb8346ce869da0bc893203ad316c516fb9420cb748f1519a005e  pig-v1.1.0.linux-amd64.tar.gz
7713632beea1e6ca5c3e2e7172c4adee13a2b1b256755f6c2898b6ca98ee1e00  pig-v1.1.0.linux-arm64.tar.gz
70cfc41b7b0aad48f29e12c22c34afd55b938bf50868ac8ab067b9cb62ccb867  pig_1.1.0-1_amd64.deb
fc5cf16671254f8f3495ff7e80c9d77d06b2328c1a247f90f96cf1e918e0ad0e  pig_1.1.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.1.0




--------

## v1.0.0

This release adds three command groups: `pig pg` for PostgreSQL, `pig pt` for Patroni, and `pig pb` for pgBackRest. It also adds a coordinated PITR command and improves extension availability displays.

**New Commands**

- `pig pg` - PostgreSQL instance management
  - `pg init/start/stop/restart/reload/status` - Control and manage PostgreSQL instances
  - `pg role/promote` - Detect and switch instance role (primary/replica)
  - `pg psql/ps/kill` - Connection and session management
  - `pg vacuum/analyze/freeze/repack` - Database maintenance operations
  - `pg log` - Log viewing (`list/tail/cat/less`)

- `pig pt` - Patroni cluster management
  - `pt list/config` - View cluster status and configuration
  - `pt restart/reload/reinit` - Manage cluster members
  - `pt switchover/failover` - Cluster failover operations
  - `pt pause/resume` - Control automatic failover
  - `pt start/stop/status/log` - Patroni service management

- `pig pb` - pgBackRest backup management
  - `pb info/ls` - View backup information
  - `pb backup/restore/expire` - Backup operations
  - `pb create/upgrade/delete` - Stanza management
  - `pb check/start/stop/log` - Control operations

- `pig pitr` - Orchestrated Point-In-Time Recovery
  - Automatic Patroni/PostgreSQL coordination
  - Multiple recovery targets: time, LSN, XID, restore point
  - Dry-run mode and post-recovery guidance

**New Features**

- Add availability matrix to `pig ext avail` and `pig ext ls`

**Improvements**

- Unified command aliases across pg/pt/pb commands
- Standardized error message format
- Code refactoring and cleanup

**Bug Fixes**

- Fix missing UTIL extension category

**Checksums**

```bash
306637079e942bcac9ccbc089cd09a80051898f8db1630269bb1acd3fbdaa872  pig-1.0.0-1.aarch64.rpm
d2b9440410f00efbca174d63b507c39d97fc55f402d8e9290ee054c1b1c6414c  pig-1.0.0-1.x86_64.rpm
c8a169e48a8168ee03db508ca2edc22b56ecf6997bae924e9023796ab7ae4e62  pig-v1.0.0.darwin-amd64.tar.gz
c0996037bfeffeae241b545e69d46c06e7fec2d7d456885229f3af9a7f9ea2f8  pig-v1.0.0.darwin-arm64.tar.gz
13837c6f2379edf965888bad9e373e69f70cb72e8428bca18c2c804e2bd879f6  pig-v1.0.0.linux-amd64.tar.gz
08207dfedd6f72745631596a3d3293de65cc12e1544956a643d1da2165d2c876  pig-v1.0.0.linux-arm64.tar.gz
a543882aa905713a0c50088d4e848951b6957a37a1594d7e9f3fe46453d5ce66  pig_1.0.0-1_amd64.deb
4cd6ec54261b09025c12e9c56bcc0cd3c11779ea0e8becdbd4f901cf2e7c8995  pig_1.0.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.0.0



--------

## v0.9.0

**Changes**

- Rename `pig sty install` to `pig sty deploy` so the command name reflects that it runs the Pigsty deployment playbook.
- Add the `-g`, `-p`, and `-o` options to `pig sty conf`, aligning it with the configure script available in this release.
- Keep `llvmjit` in the `pgsql-full` package alias.

**Checksums**

```checksums {base="https://github.com/pgsty/pig/releases/download/v0.9.0"}
ea0c098d0829720b6e364d2f2a91328876962c7f0ae94eee7bdcde0bd43313fa  pig-0.9.0-1.aarch64.rpm
707f4e1fde76d3faa05165ac11e97969c22a8740c97ef84da52727d0328990cc  pig-0.9.0-1.x86_64.rpm
56aeb61674ddfb64368e6f5535e06a38b76f62e3d6c9536a63be7df6babed93e  pig-v0.9.0.darwin-amd64.tar.gz
a213d16817d6124ffa83d93ad880a040598b6ed3fe23a74d43420c095ed43de4  pig-v0.9.0.darwin-arm64.tar.gz
6a1a1836217fa723ca42bc2276ecf1453cd2ee0acacddfc313164701b24a452f  pig-v0.9.0.linux-amd64.tar.gz
5e5728aa5922138c61c900a731f97cdc1b9653c14d7fe804b6753fb6f222b8b0  pig-v0.9.0.linux-arm64.tar.gz
e80d2cb3ceb5fd58fc0262ab4b39b44e8dcccb7712151c73a41ba50cb510353b  pig_0.9.0-1_amd64.deb
ecb504efffde8d696b765579332fc0b3304751fa8077c4c0394e7f3c44aa0fe2  pig_0.9.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.9.0


--------


## v0.8.1

**Fix**

- Restore `llvmjit` to the `pgsql-full` package alias after it was removed in v0.8.0.

**Checksums**

```checksums {base="https://github.com/pgsty/pig/releases/download/v0.8.1"}
fd9291b15953e8e5f579de7e0256b88ca742e11fc0ed578bf181d2ce4cf5258c  pig-0.8.1-1.aarch64.rpm
c2ec07d18eeae6ad831950da44d6bb797fad3ca4d0b1f7b0e82d715a22baedec  pig-0.8.1-1.x86_64.rpm
b07017d257089166377fb4deffe167c952ae1dcacb6203de26a11a89097dfc34  pig-v0.8.1.darwin-amd64.tar.gz
090889ba1447693e3ace0b18222f6852448738fc4baa4964a27acc87ce560501  pig-v0.8.1.darwin-arm64.tar.gz
64cfd28d98c41776c83949b2ffb3b789c66835ccb522a346ea1b53966e9f9544  pig-v0.8.1.linux-amd64.tar.gz
6216612ab63c2c9006466834222bdbdcd9e7e8e112c52a6f17e26d0ebb24fbe4  pig-v0.8.1.linux-arm64.tar.gz
29a2109af6141fa990144f0ebcf3bbbe13030c75af6fb3c6bf89eb8da956d387  pig_0.8.1-1_amd64.deb
7d8728658c942e57df259acd1da0d2655d9132ab7bffcc109527ed184784f882  pig_0.8.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.8.1


--------


## v0.8.0

**Extension Updates**
- Total extensions reached 440
- New extension: [pg_ai_query](https://github.com/benodiwal/pg_ai_query) 0.1.1
- New extension: [pg_textsearch](https://github.com/timescale/pg_textsearch) 0.1.0
- New extension: [pg_clickhouse](https://github.com/clickhouse/pg_clickhouse/) 0.1.0
- pg_biscuit upgraded from 1.0 to 2.0.1 (switched to new repo, renamed to biscuit)
- pg_search upgraded from 0.20.3 to 0.20.5
- pg_duckdb upgraded to official release 1.1.1
- vchord_bm25 upgraded from 0.2.2 to 0.3.0
- pg_semver upgraded from 0.40.0 to 0.41.0
- pg_timeseries upgraded from 0.1.7 to 0.1.8
- Fixed debian/ubuntu pg18 extension issues: supautils, pg_summarize, pg_vectorize, pg_tiktoken, pg_tzf, pglite_fusion, pgsmcrypto, pgx_ulid, plprql
- Pigsty version synced to 4.0.0

**Repository Updates**
- Removed pgdg yum sysupdate repo due to upstream changes
- Removed pgdg yum llvmjit package due to upstream changes
- Fixed patroni 3.0.4 duplicate package issue on el9.aarch64
- Added priorities for EL repository definitions. Skips the Docker repository when it is unavailable.
- Added epel 10 / pgdg 9/10 OS minor version hotfix

**Checksums**

```bash
e457832fb290e2f9975bf719966dc36e650bdcbf8505d319c9e0431f4c03bc9e  pig-0.8.0-1.aarch64.rpm
c97b1bfdd7541f0f464cab0ecc273e65535c8dd2603c38d5cf8dccbf7e95b523  pig-0.8.0-1.x86_64.rpm
d892f06d3d3b440671529f40e6cc7949686e0167e2a4758adc666b8a3d75254d  pig-v0.8.0.darwin-amd64.tar.gz
222413bafdf5a62dc682dac32ea1118cbc34ec3544e2a1b85076ec450b9cc7ae  pig-v0.8.0.darwin-arm64.tar.gz
d50aa9806bbab8fee5ad9228e104fc9e7ead48729228116b5bf889000791fedc  pig-v0.8.0.linux-amd64.tar.gz
d2f410f7b243a8323c8d479f462a0267ac72d217aa4a506c80b5a9927d12dff8  pig-v0.8.0.linux-arm64.tar.gz
4ccd330a995911d4f732e8c9d62aa0db479c21c9596f64c4bc129ec43f156abe  pig_0.8.0-1_amd64.deb
5cb9eccce659110f3ba58e502575564bd6befffd51992a43d84df5a17f8eb8a0  pig_0.8.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.8.0


--------

## v0.7.5

**Extension Updates**

- timescaledb 2.23.1 -> 2.24.0
- pg_search 0.20.0 -> 0.20.3
- convert 0.0.4 -> 0.0.5
- pglinter 1.0.0 -> 1.0.1
- pgdd 0.6.0 -> 0.6.1
- pg_session_jwt 0.3.3 -> 0.4.0
- pg_anon 2.4.1 -> 2.5.1
- pg_enigma 0.4.0 -> 0.5.0
- wrappers 0.5.6 -> 0.5.7
- pg_vectorize 0.25.0 -> 0.26.0

**Repository Updates**

Uses the corrected Aliyun PGDG mirror repository.

**Checksums**

```bash
9de11ac1404fc4100074113f2a5d50e4ec42c353b6e122a0b29edc17e53feca6  pig-0.7.5-1.aarch64.rpm
071d655580f1cc63b33d41a8fb49368556b7b5a276318f4bd772a6ab50e22b34  pig-0.7.5-1.x86_64.rpm
befe0a8f786e5243669ed7219acde8156d13d9adb0a5c2fb88ccf0f614a51f9b  pig-v0.7.5.darwin-amd64.tar.gz
4766b4e9ba390a32a7115e9f2dd6b65cf158439e28f9c099bab5c7f2e588bae2  pig-v0.7.5.darwin-arm64.tar.gz
dc45726c5e7fccd502cacaffc94c659570844151cdc279f2cac6500836071ade  pig-v0.7.5.linux-amd64.tar.gz
1483cf967d4bc9c12d4c6724567644d6b88fcd2a93aaf1d317fc6ad4e1672c13  pig-v0.7.5.linux-arm64.tar.gz
0152b7bd254eccadd640e563845abd9fa62efa68f11c6b67a5f9f0eebfa2d92e  pig_0.7.5-1_amd64.deb
7d22116d26ca09c5e2b8afbf086bb1acb1aea1148905efcc38944c18908fb105  pig_0.7.5-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.5


--------

## v0.7.4

- Update extension metadata: `pg_search`, `pgmq`, `pg_stat_monitor`
- Updates the PGDG repository URL. The `extras` directory moves to the parent directory.
- Bump ivorysql to 5.0 (compatible with PG 18.0)
- Bump Percona Postgres TDE Kernel to 18.1

**Checksums**

```bash
5769b0051f04dcda22dd92b30b8effc8ddfa40097308bded76ce2b38d012ce57  pig-0.7.4-1.aarch64.rpm
d15c829fa2e3ce8dcd1adc063c107607b8e70f2cf747646aaa2fa257cdbf979c  pig-0.7.4-1.x86_64.rpm
bb4c90e253a3d470e50316e633a41e90ed2d4a5c5a1fd3a8dbb68ee87d831d47  pig-v0.7.4.darwin-amd64.tar.gz
faaf7ac7b08390f5048c081bb7a78100714387e35dc890e26d9746fc1caef415  pig-v0.7.4.darwin-arm64.tar.gz
037cacddd0dc1283f13dd2c9bace87ad7f2c74ffc245e629f1420be94bbf93df  pig-v0.7.4.linux-amd64.tar.gz
2ce819b2c3686cfb9f86790fdf61acd30bf7798bd6cd3c4f589df22e273dc867  pig-v0.7.4.linux-arm64.tar.gz
97f62d62f1cca61ce6d335efed88e3855d94ea2cd4ed941f2755fbac73931fcd  pig_0.7.4-1_amd64.deb
d2b80af89ed42601716f6b41eda3f8bee16db34023527df9deef8a43aa25a498  pig_0.7.4-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.4




--------

## v0.7.3

- Add new command: `pig repo reload` to update repo metadata
- Fixes the EL PGDG sysupdate aarch64 repository. The aarch64 repository is now ready.
- Fix EL10.aarch64 PGDG repo renaming issue
- Update extension versions
- Bump Pigsty version to 3.7.0

**Checksums**

```bash
83e1b491b58793859caaccb0600a8ad7f7c0ea71dfcbc1dc348bf4666f7dc742  pig-0.7.3-1.aarch64.rpm
00671775c22918b6e92c8f39972fa2e6e78536ba0ca1e23f9bb9752a2910a974  pig-0.7.3-1.x86_64.rpm
d6ac6164a09a7b2aac210b898c8729df6cbcef6462207a896caf08b1511c9cdb  pig-v0.7.3.darwin-amd64.tar.gz
c595df851cc76b93fe2692e880909aed316db00cfdcd75c0c5667141915e49b7  pig-v0.7.3.darwin-arm64.tar.gz
baa875895623f073204d0ff8fbcb76bd37da6e5806e70aae43aaa2cb14355186  pig-v0.7.3.linux-amd64.tar.gz
b6d75f7e0474341990e2cf64b5006fb7b145839f8b54c12f70657c166bfeeb14  pig-v0.7.3.linux-arm64.tar.gz
5ddfd410c6d6c2546804bf948aab3b7978fa719d92c1477d7a33889e7b1006dd  pig_0.7.3-1_amd64.deb
2996c06fda272e01fea72bb8eec51dca8f4b9e8526d9833dcda1cf7549d1e01a  pig_0.7.3-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.3

--------

## v0.7.2

- Extension list update, + 6 new extensions, 437 total
- Add PGDG EL10 Sysupdate repo
- Add LLVM APT repo
- Use local extension.csv catalog in pig build sub command

- Updated extensions: vchord pg_later pgvectorscale pglite_fusion pgx_ulid pg_search citus timescaledb pg_profile pg_stat_monitor documentdb
- New extensions: pglinter pg_typeid pg_enigma pg_retry pg_biscuit pg_weighted_statistics

**Checksums**

```bash
080dd93c33faf81e8f9d3b9d543b9949604b834ccd55331cce697df79049a9af  pig-0.7.2-1.aarch64.rpm
b91056230d3a790ab0190b3680fc5dbc3eb1306b7a1c2416fb6ef421bf48dcf7  pig-0.7.2-1.x86_64.rpm
9b294e58b8c3629066b905e25dda4f51eacc1eb4b6d5d87fab32d17fb13a9cb7  pig-v0.7.2.darwin-amd64.tar.gz
74f3276752d826c8130ca22a791da48548608378a453908e7cdd095c0564a1eb  pig-v0.7.2.darwin-arm64.tar.gz
0c9f6e6bf930e70206df2c6d58d1296f1a7a77ca7d89d27d47112bc44544cda4  pig-v0.7.2.linux-amd64.tar.gz
f62842217be958569ca09051e8cad0d674ee9446245e45655b91f9918927b340  pig-v0.7.2.linux-arm64.tar.gz
091d12d5d5c3c8e52b8b60ab180b88b7aeaff512aa344af0e039c7d4b73c75a0  pig_0.7.2-1_amd64.deb
53346bd96538a20b0bb3bb4161ba117bca7b5cf6633f5d3c357fe9e560b06ff5  pig_0.7.2-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.2


--------

## v0.7.1

- New [PGEXT.CLOUD extension catalog](https://pgext.cloud/).
- Removes unnecessary sudo calls. Pig can now run inside Docker.
- Allow using `pg18`, `pg17` arg format in pig ext link command
- Adds the environment variable `PIG_NO_SUDO` to prevent sudo use.
- [RPM Changelog](/docs/repo/pgsql/rpm#2025-11-10): Add PG 18 support to almost all extensions
- [DEB Changelog](/docs/repo/pgsql/deb#2025-11-10): Add PG 18 support to almost all extensions
- [Infra Changelog](/docs/repo/infra/log/): Routine update to the latest version

**Checksums**

```bash
a696c9ec784e2fc248e5f3d87cc8aae4116e890f78c5997957d30593f2c85ca6  pig-0.7.1-1.aarch64.rpm
f669538a99cd1dc592d3005b949628fcceb9e78114fc78862d7726b340ee194d  pig-0.7.1-1.x86_64.rpm
e42bdaaf93b720c5b76b32b57362320e4b447109740c76089aefe030b7c8b836  pig-v0.7.1.darwin-amd64.tar.gz
b4c240aadad34e785666ee0a755d9b7455724f790c2d088a1dd7c37ad3b2a457  pig-v0.7.1.darwin-arm64.tar.gz
ffc687add0ca71ac90cba5749c8a7a6075cf7618cba85584072831cf3eb182f7  pig-v0.7.1.linux-amd64.tar.gz
7b0d1f158150d0a40c525692f02b6bce9f5b4ac523a4e59278d702c334e222e1  pig-v0.7.1.linux-arm64.tar.gz
43e91a3bea273d7cacb2d7a58c0a5745501dbd06348b5cb3af971171fae70268  pig_0.7.1-1_amd64.deb
fc2a34aeb46e07cb0ae93611de47d6622c3bd46fe4c415ce4c9091840e0e08a2  pig_0.7.1-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.1

--------

## v0.7.0

- Add support for Debian 13 and EL 10 distributions
- Updates many extensions to their latest versions with PostgreSQL 18 support.
- Almost all Rust extensions now support PG 18 via pgrx 0.16.1
- `pig build` command overhaul
  - `pig build pkg <pkg>` downloads source, prepares dependencies, and builds in one operation.
  - `pig build pgrx` is now separated from `pig build rust`
  - `pig build pgrx [-v pgrx_version]` can now use existing PG installation directly
  - `pig build dep` will now handle extension dependencies on both EL and Debian systems
  - `pig build ext` has more compact output. It can build RPM packages on EL without a build script.
  - `pig build spec` now supports downloading spec files directly from Pigsty repo
  - `pig build repo` / `pig repo add` / `pig repo set` now use `node,pgsql,infra` as default repo modules instead of `node,pgdg,pigsty`
- Optimized error logging
- Adds a catalog website based on Hugo and Hextra.

**Checksums**

```bash
ad60f9abcde954769e46eb23de61965e  pig_0.7.0-1_amd64.deb
aa15d7088d561528e38b2778fe8f7cf9  pig_0.7.0-1_arm64.deb
05549fe01008e04f8d5a59d4f2a5f0b8  pig-0.7.0-1.aarch64.rpm
0cc9e46c7c72d43c127a6ad115873b67  pig-0.7.0-1.x86_64.rpm
ddacfb052f3f3e5567a02e92fdb31cdd  pig-v0.7.0.darwin-amd64.tar.gz
17d25b565308d3d35513e4b0d824946b  pig-v0.7.0.darwin-arm64.tar.gz
ee7e055ceff638039956765fb747f80b  pig-v0.7.0.linux-amd64.tar.gz
284e674807b87447d4b33691fd7a420d  pig-v0.7.0.linux-arm64.tar.gz
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.0


--------

## v0.6.2

- Use official PG 18 repo instead of testing repo
- Add `v` prefix when specifying pigsty version string
- Improved network connectivity check

**Checksums**

```bash
01f5b7dc20644226c762dbb229768347  pig_0.6.2-1_amd64.deb
ce4f00256adc12cbea91467b7f2241cd  pig_0.6.2-1_arm64.deb
cefc36ae8f348aede533b30836fba720  pig-0.6.2-1.aarch64.rpm
d04a287c6eb92b11ecbf99542c2db602  pig-0.6.2-1.x86_64.rpm
e637ca86a7f38866c67686b060223d9a  pig-v0.6.2.darwin-amd64.tar.gz
79749bc69c683586bd8d761bdf6af98e  pig-v0.6.2.darwin-arm64.tar.gz
ad4f02993c7d7d8eec142f0224551bb4  pig-v0.6.2.linux-amd64.tar.gz
9793affa4a0cb60e9753e65b7cba3dca  pig-v0.6.2.linux-arm64.tar.gz
```

Release: https://github.com/pgsty/pig/releases/tag/v0.6.2


--------

## v0.6.1

- Add el10 and debian 13 trixie support stub
- Dedicated [PIG documentation website](https://pig.pgsty.com/).
- Rebuild with go 1.25 and CI/CD pipeline
- Use PIGSTY PGDG mirror in mainland China
- Remove unused `pgdg-el10fix` repo
- Use Pigsty WiltonDB mirror
- Add EL 10 dedicated epel repo
- Version output includes the Go build environment.

Release: https://github.com/pgsty/pig/releases/tag/v0.6.1


--------

## v0.6.0

- New extension catalog: [https://ext.pgsty.com](https://ext.pgsty.com)
- New subcommand: `pig install` to simplify `pig ext install`
- Add new kernel support: percona with pg_tde
- Add new package: Google GenAI MCP toolbox for databases
- Add new repo: percona repo and clickhouse repo
- Change extension summary info links to https://ext.pgsty.com
- Fixes OrioleDB on Debian/Ubuntu.
- Fix epel repo on EL distributions
- Bump golang to 1.24.5
- Bump pigsty to v3.6.0

**Checksums**

```bash
1804766d235b9267701a08f95903bc3b  pig_0.6.0-1_amd64.deb
35f4efa35c1eaecdd12aa680d29eadcb  pig_0.6.0-1_arm64.deb
b523b54d9f2d7dcc5999bcc6bd046b1d  pig-0.6.0-1.aarch64.rpm
9434d9dca7fd9725ea574c5fae1a7f52  pig-0.6.0-1.x86_64.rpm
f635c12d9ad46a779aa7174552977d11  pig-v0.6.0.linux-amd64.tar.gz
165af4e63ec0031d303fe8b6c35c5732  pig-v0.6.0.linux-arm64.tar.gz
```

Release: https://github.com/pgsty/pig/releases/tag/v0.6.0


--------

## v0.5.0

- Update the extension list to 422
- New extension: [pgactive](https://github.com/aws/pgactive) from AWS
- Bump timescaledb to 2.20.3
- Bump citus to 13.1.0
- Bump vchord to 0.4.3
- Fixes pgvectorscale failures on Debian/Ubuntu with PG17.
- Bump kubernetes repo to 1.33
- Bump default pigsty version to 3.5.0

**Checksums**

```text
9ec6f3caf3edbe867caab5de0e0ccb33  pig_0.5.0-1_amd64.deb
4fbb0a42cd8a88bce50b3c9d85745d77  pig_0.5.0-1_arm64.deb
9cf8208396b068cab438f72c90d39efe  pig-0.5.0-1.aarch64.rpm
d9a8d78c30f45e098b29c3d16471aa8d  pig-0.5.0-1.x86_64.rpm
761df804ff7b83965c41492700717674  pig-v0.5.0.linux-amd64.tar.gz
5d1830069d98030728f08835f883ea39  pig-v0.5.0.linux-arm64.tar.gz
```

Release: https://github.com/pgsty/pig/releases/tag/v0.5.0



--------

## v0.4.2

- Update the extension list to 421
- Add openhalo/orioledb support for Debian / Ubuntu
- pgdd [0.6.0](https://github.com/rustprooflabs/pgdd) (pgrx 0.14.1)
- convert [0.0.4](https://github.com/rustprooflabs/convert) (pgrx 0.14.1)
- pg_idkit [0.3.0](https://github.com/VADOSWARE/pg_idkit) (pgrx 0.14.1)
- pg_tokenizer.rs [0.1.0](https://github.com/tensorchord/pg_tokenizer.rs) (pgrx 0.13.1)
- pg_render [0.1.2](https://github.com/mkaski/pg_render) (pgrx 0.12.8)
- pgx_ulid [0.2.0](https://github.com/pksunkara/pgx_ulid) (pgrx 0.12.7)
- pg_ivm [1.11.0](https://github.com/sraoss/pg_ivm) for debian/ubuntu
- orioledb [1.4.0 beta11](https://github.com/orioledb/orioledb)
- Add el7 repo back

**Checksums**

```bash
bbf83fa3e3ec9a4dca82eeed921ae90a  pig_0.4.2-1_amd64.deb
e45753335faf80a70d4f2ef1d3100d72  pig_0.4.2-1_arm64.deb
966d60bbc2025ba9cc53393011605f9f  pig-0.4.2-1.aarch64.rpm
1f31f54da144f10039fa026b7b6e75ad  pig-0.4.2-1.x86_64.rpm
1eec26c4e69b40921e209bcaa4fe257a  pig-v0.4.2.linux-amd64.tar.gz
768d43441917a3625c462ce9f2b9d4ef  pig-v0.4.2.linux-arm64.tar.gz
```

Release: https://github.com/pgsty/pig/releases/tag/v0.4.2

------

## v0.4.1

- Update the extension list to 414
- Add `citus_wal2json` and `citus_pgoutput` to `pig ext scan` mapping
- Add PG 18 beta repo
- Add PG 18 package alias

Release: https://github.com/pgsty/pig/releases/tag/v0.4.1

------

## v0.4.0

- Updates the extension list to **407** available extensions.
- Added `pig do` subcommand for executing Pigsty playbook tasks
- Added `pig pt` subcommand for wrapping Patroni command-line tools
- Added extension aliases: `openhalo` and `orioledb`
- Added `gitlab-ce` / `gitlab-ee` repository distinction
- Built with the latest Go 1.24.2 and upgraded dependency versions
- Fixed `pig ext status` panic issue under specific conditions
- Fixes `pig ext scan` matching for several extensions.

Release: https://github.com/pgsty/pig/releases/tag/v0.4.0

------

## v0.3.4

```bash
curl https://repo.pigsty.io/pig | bash -s 0.3.4
```

- Routine extension metadata update
- Uses the Aliyun EPEL mirror to replace the broken Tsinghua TUNA mirror.
- Bump pigsty version string
- Add `gitlab` repo to the repo list

Release: https://github.com/pgsty/pig/releases/tag/v0.3.4

------

## v0.3.3

- Add `pig build dep` command to install extension build dependencies
- Update default repo list
- Use pigsty.io mirror for `mssql` module (wiltondb/babelfish)
- Merge docker module into `infra`
- Remove pg16/17 from el7 target
- Allow installing extensions in el7
- Update package alias

Release: https://github.com/pgsty/pig/releases/tag/v0.3.3


------

## v0.3.2

**Enhancement**

- New extensions
- Use `upx` to reduce binary size
- Remove embedded pigsty to reduce binary size

Release: https://github.com/pgsty/pig/releases/tag/v0.3.2

------

## v0.3.1

Routine bugfix

- Fix repo format string
- Fix ext info links
- Update pg_mooncake metadata

Release: https://github.com/pgsty/pig/releases/tag/v0.3.1

------

## v0.3.0

This release introduced a [PIG homepage](/docs/pig/) alongside the PostgreSQL extension [catalog](/ext/list/).

Release: https://github.com/pgsty/pig/releases/tag/v0.3.0

------

## v0.2.2

[**404**](/docs/pgsql/ext) Extensions Available in Pig v0.2.2

Release: https://github.com/pgsty/pig/releases/tag/v0.2.2

------

## v0.2.0

**New extensions**

- [pg_documentdb_core](https://github.com/microsoft/documentdb/tree/main/pg_documentdb_core) and FerretDB
- [VectorChord-bm25](https://github.com/tensorchord/VectorChord-bm25) (vchord_bm25) 0.1.0
- [pg_tracing](https://github.com/DataDog/pg_tracing) 0.1.2
- [pg_curl](https://github.com/RekGRpth/pg_curl) 2.4
- [pgxicor](https://github.com/Florents-Tselai/pgxicor) 0.1.0
- [pgsparql](https://github.com/lacanoid/pgsparql) 1.0
- [pgjq](https://github.com/Florents-Tselai/pgJQ) 0.1.0
- [hashtypes](https://github.com/adjust/hashtypes/) 0.1.5
- [db_migrator](https://github.com/cybertec-postgresql/db_migrator) 1.0.0
- [pg_cooldown](https://github.com/rbergm/pg_cooldown) 0.1

**Extension updates**

- citus 13.0.0 -> 13.0.1
- pg_mooncake 0.1.0 -> 0.1.1
- timescaledb 2.17.2 -> 2.18.1
- supautils 2.5.0 -> 2.6.0
- VectorChord 0.1.0 -> 0.2.0
- pg_bulkload 3.1.22 (+pg17)
- pg_store_plan 1.8 (+pg17)
- pg_search 0.14 -> 0.15.1
- pg_analytics 0.3.0 -> 0.3.2
- pgroonga 3.2.5 -> 4.0.0
- zhparser 2.2 -> 2.3
- pg_vectorize 0.20.0 -> 0.21.1

Release: https://github.com/pgsty/pig/releases/tag/v0.2.0

------

## v0.1.4

**New extensions**

- [pg_documentdb_core](https://github.com/microsoft/documentdb/tree/main/pg_documentdb_core) and FerretDB
- [VectorChord-bm25](https://github.com/tensorchord/VectorChord-bm25) (vchord_bm25) 0.1.0
- [pg_tracing](https://github.com/DataDog/pg_tracing) 0.1.2
- [pg_curl](https://github.com/RekGRpth/pg_curl) 2.4
- [pgxicor](https://github.com/Florents-Tselai/pgxicor) 0.1.0
- [pgsparql](https://github.com/lacanoid/pgsparql) 1.0
- [pgjq](https://github.com/Florents-Tselai/pgJQ) 0.1.0
- [hashtypes](https://github.com/adjust/hashtypes/) 0.1.5
- [db_migrator](https://github.com/cybertec-postgresql/db_migrator) 1.0.0
- [pg_cooldown](https://github.com/rbergm/pg_cooldown) 0.1

**Extension updates**

- citus 13.0.0 -> 13.0.1
- pg_mooncake 0.1.0 -> 0.1.1
- timescaledb 2.17.2 -> 2.18.1
- supautils 2.5.0 -> 2.6.0
- VectorChord 0.1.0 -> 0.2.0
- pg_bulkload 3.1.22 (+pg17)
- pg_store_plan 1.8 (+pg17)
- pg_search 0.14 -> 0.15.1
- pg_analytics 0.3.0 -> 0.3.2
- pgroonga 3.2.5 -> 4.0.0
- zhparser 2.2 -> 2.3
- pg_vectorize 0.20.0 -> 0.21.1

Release: https://github.com/pgsty/pig/releases/tag/v0.1.4

------

## v0.1.3

Version v0.1.3 is a routine update with 390 available extensions.

Release: https://github.com/pgsty/pig/releases/tag/v0.1.3

------

## v0.1.2

Includes [**351**](/ext/list) PostgreSQL extensions, including [postgresql-anonymizer 2.0](https://postgresql-anonymizer.readthedocs.io/en/stable/).

Release: https://github.com/pgsty/pig/releases/tag/v0.1.2

------

## v0.1.1

Update Extension List

Release: https://github.com/pgsty/pig/releases/tag/v0.1.1

------


## v0.1.0

pig CLI v0.1 released

Release: https://github.com/pgsty/pig/releases/tag/v0.1.0

------

## v0.0.1

Genesis Release

Release: https://github.com/pgsty/pig/releases/tag/v0.0.1
