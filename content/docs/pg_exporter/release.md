---
title: Release Notes
weight: 5660
icon: fa-solid fa-scroll
module: [PG_EXPORTER]
category: [Reference]
---

The latest stable version of `pg_exporter` is [v1.5.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.5.0)

|     Version     |    Date    | Summary                                                    |                               GitHub                               |
|:---------------:|:----------:|------------------------------------------------------------|:------------------------------------------------------------------:|
| [v1.5.0](#v150) | 2026-10-23 | Connection safety, discovery, health and replication fixes; Go 1.27.3 | [v1.5.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.5.0) |
| [v1.4.1](#v141) | 2026-07-29 | Subscription count and label validation fixes; RPM rename  | [v1.4.1](https://github.com/pgsty/pg_exporter/releases/tag/v1.4.1) |
| [v1.4.0](#v140) | 2026-07-18 | Snapshot histograms, pg_xact_age collector, HTTP hardening | [v1.4.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.4.0) |
| [v1.3.0](#v130) | 2026-06-24 | PostgreSQL 19 support, new PG19 collectors and branches    | [v1.3.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.3.0) |
| [v1.2.2](#v122) | 2026-04-14 | Routine Go 1.26.2 refresh, no functional changes           | [v1.2.2](https://github.com/pgsty/pg_exporter/releases/tag/v1.2.2) |
| [v1.2.1](#v121) | 2026-03-21 | Config style cleanup, Go 1.26.1 refresh                    | [v1.2.1](https://github.com/pgsty/pg_exporter/releases/tag/v1.2.1) |
| [v1.2.0](#v120) | 2026-02-12 | Hot reload, non-blocking startup, PG9.x legacy support     | [v1.2.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.2.0) |
| [v1.1.2](#v112) | 2026-01-16 | fix pg_timeline conf issue, build with latest deps         | [v1.1.2](https://github.com/pgsty/pg_exporter/releases/tag/v1.1.2) |
| [v1.1.1](#v111) | 2025-12-30 | New pg_timeline collector, pg_sub_16 branch, bug fixes     | [v1.1.1](https://github.com/pgsty/pg_exporter/releases/tag/v1.1.1) |
| [v1.1.0](#v110) | 2025-12-15 | Update default metrics collectors, bump to go 1.25.5       | [v1.1.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.1.0) |
| [v1.0.3](#v103) | 2025-11-20 | Routine update on 1.25.4, fix unsupported libpq env        | [v1.0.3](https://github.com/pgsty/pg_exporter/releases/tag/v1.0.3) |
| [v1.0.2](#v102) | 2025-08-14 | Build for more os arch with goreleaser                     | [v1.0.2](https://github.com/pgsty/pg_exporter/releases/tag/v1.0.2) |
| [v1.0.1](#v101) | 2025-07-17 | DockerHub images, Go 1.24.5, disable pg_tsdb_hypertable    | [v1.0.1](https://github.com/pgsty/pg_exporter/releases/tag/v1.0.1) |
| [v1.0.0](#v100) | 2025-05-06 | PostgreSQL 18 support, new WAL/checkpointer/I/O metrics    | [v1.0.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.0.0) |
| [v0.9.0](#v090) | 2025-04-26 | TimescaleDB, Citus, pg_wait_sampling collectors            | [v0.9.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.9.0) |
| [v0.8.1](#v081) | 2025-02-14 | Dependencies update, docker image tags                     | [v0.8.1](https://github.com/pgsty/pg_exporter/releases/tag/v0.8.1) |
| [v0.8.0](#v080) | 2025-02-14 | PgBouncer 1.24 support, Go 1.24, logging refactor          | [v0.8.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.8.0) |
| [v0.7.1](#v071) | 2024-12-29 | Routine update, configuration as Reader support            | [v0.7.1](https://github.com/pgsty/pg_exporter/releases/tag/v0.7.1) |
| [v0.7.0](#v070) | 2024-08-13 | PostgreSQL 17 support, predicate queries feature           | [v0.7.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.7.0) |
| [v0.6.0](#v060) | 2023-10-18 | PostgreSQL 16 support, ARM64 packages, security fixes      | [v0.6.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.6.0) |
| [v0.5.0](#v050) | 2022-04-27 | RPM/DEB builds, column scaling, metrics enhancements       | [v0.5.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.5.0) |
| [v0.4.1](#v041) | 2022-03-08 | Collector updates, connect-timeout parameter               | [v0.4.1](https://github.com/pgsty/pg_exporter/releases/tag/v0.4.1) |
| [v0.4.0](#v040) | 2021-07-12 | PostgreSQL 14 support, auto-discovery feature              | [v0.4.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.4.0) |
| [v0.3.2](#v032) | 2021-02-01 | Shadow DSN fixes, documentation updates                    | [v0.3.2](https://github.com/pgsty/pg_exporter/releases/tag/v0.3.2) |
| [v0.3.1](#v031) | 2020-12-04 | Configuration fixes for older PostgreSQL versions          | [v0.3.1](https://github.com/pgsty/pg_exporter/releases/tag/v0.3.1) |
| [v0.3.0](#v030) | 2020-10-29 | PostgreSQL 13 support, REST APIs, dummy server             | [v0.3.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.3.0) |
| [v0.2.0](#v020) | 2020-03-21 | YUM packages, configuration reload support                 | [v0.2.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.2.0) |
| [v0.1.2](#v012) | 2020-02-20 | Dynamic configuration reload, bulky mode                   | [v0.1.2](https://github.com/pgsty/pg_exporter/releases/tag/v0.1.2) |
| [v0.1.1](#v011) | 2020-01-10 | Startup hang bug fix                                       | [v0.1.1](https://github.com/pgsty/pg_exporter/releases/tag/v0.1.1) |
| [v0.1.0](#v010) | 2020-01-08 | Initial stable release                                     | [v0.1.0](https://github.com/pgsty/pg_exporter/releases/tag/v0.1.0) |
| [v0.0.4](#v004) | 2019-12-20 | Production tested release                                  | [v0.0.4](https://github.com/pgsty/pg_exporter/releases/tag/v0.0.4) |
| [v0.0.3](#v003) | 2019-12-14 | Production environment testing                             | [v0.0.3](https://github.com/pgsty/pg_exporter/releases/tag/v0.0.3) |
| [v0.0.2](#v002) | 2019-12-09 | Early testing release                                      | [v0.0.2](https://github.com/pgsty/pg_exporter/releases/tag/v0.0.2) |
| [v0.0.1](#v001) | 2019-12-06 | Initial release with PgBouncer mode                        | [v0.0.1](https://github.com/pgsty/pg_exporter/releases/tag/v0.0.1) |


## v1.5.0

Release date: 2026-10-23. This release improves connection security, collection accuracy, and runtime state consistency, and upgrades the build toolchain to **Go 1.27.3**.

### Fixes and Improvements

- Validate PostgreSQL URLs and query parameters strictly. Reject malformed escapes and parameter names containing whitespace or `=`. Safe diagnostics prevent malformed connection strings from leaking passwords into logs or silently discarding explicit TLS settings. An empty or whitespace-only file selected through `PG_EXPORTER_URL_FILE` now prevents startup.
- Resolve database identities with `lib/pq`. Auto-discovery removes conflicting `dbname` / `database` query parameters when replacing a database name and preserves special characters, fixing duplicate collection and HTTP 500 responses caused by duplicate metrics.
- Generate each health response's HTTP status and body from one atomic state snapshot, fixing contradictory responses during concurrent state transitions. Health checks still use background cached state.
- Replan after a successful precheck detects changes to the username, schemas, or extensions. Unchanged metadata preserves plans and caches. Adding or removing a schema or extension no longer requires manual reload.
- Reject NaN, infinities, and overflowing TTLs or positive timeouts during configuration loading. Preserve the existing meanings of zero TTL (disable caching), zero timeout (use the default), and finite negative timeout (disable the deadline).
- Verify at startup that the active HTTP mux routes the metrics path to the metrics handler. Reject escaped paths that would return the landing page or a redirect under the legacy mux.
- Add the owning database's `datname` label to `pg_sub_*`, preventing collisions between identically named subscriptions in different databases. Correct `pg_recv_state` codes in the current and legacy bundles, and fix receiver address extraction on PostgreSQL 9.6.
- Clarify `pg_origin` permissions, the table scope of `pg_pubrel_count`, synchronization states and PostgreSQL 19 sequence semantics in `pg_subrel_count`, and the `pg_backend` description.

### Upgrade Notes

- On PostgreSQL 10–13, an administrator must run `GRANT SELECT (oid) ON pg_catalog.pg_subscription TO monitor;` in the exporter's **main connection database**, substituting the actual monitoring role. This does not expose `subconninfo`. PostgreSQL 14+ needs no extra grant under standard catalog ACLs.
- The new `datname` label on `pg_sub_*` creates new time series. Review PromQL joins, aggregations, and alerts that match these labels. The `pg_sub_id` gauge is retained.
- `pg_recv_state` uses the following codes; 1–3 remain reserved. No receiver row means no sample. PostgreSQL 9.6 still hides receiver details from ordinary monitoring roles, resulting in an unknown state; the exporter does not expand database privileges.

| State | Code | State | Code |
|:---|---:|:---|---:|
| streaming | 0 | starting | 6 |
| stopping | 4 | waiting | 7 |
| connecting (PG19+) | 5 | restarting | 8 |
| unknown / NULL | -1 | stopped | 9 |
{.full-width}

- Upgrade both the binary and collector configuration. Packages preserve local configuration changes: merge the new `pg_exporter.yml`, then check query error counters in `/metrics`. HTTP 200 alone does not establish a successful scrape.
- Reloading empty YAML still clears collectors, and directory loading still permits valid files to load when others fail. SIGTERM retains immediate process termination; it does not wait for active scrapes to complete.

### Toolchain and Validation

Retain `lib/pq` 1.12.3 and upgrade Prometheus client_golang to 1.25.0, common to 0.72.1, and exporter-toolkit to 0.20.0. YAML uses `go.yaml.in/yaml/v3` 3.0.5. The PostgreSQL driver remains `lib/pq`.

The default bundle still contains 58 YAML files, 96 branches, 59 namespaces, and 460 distinct metric definitions, including two unexpanded histograms. Validation covered non-superuser collection on PostgreSQL 9.1–9.6, 10–18, 19 RC1, and PgBouncer 1.26.1; physical standby promotion, reloads, disconnect recovery, races, both HTTP mux modes, six-platform builds, ARM64 RPM/DEB installation, and Docker images. PostgreSQL 19 testing used RC1; this does not cover every extension or production workload.

### Go and Dependency Security Updates

**Go 1.27.3** adds a blocklist for untrusted intermediate certificates in `crypto/x509`, addressing [CVE-2026-111943](https://pkg.go.dev/vuln/GO-2026-6809). It also includes security fixes accumulated since the previous Go 1.26.5 build, including TLS issues [CVE-2026-56862](https://pkg.go.dev/vuln/GO-2026-6090) and [CVE-2026-97031](https://pkg.go.dev/vuln/GO-2026-6607), HTTP issues [CVE-2026-56853](https://pkg.go.dev/vuln/GO-2026-6089) and [CVE-2026-94439](https://pkg.go.dev/vuln/GO-2026-6613), and template, ASN.1, and multipart fixes. See the complete upstream scope in the [Go 1.26.6](https://groups.google.com/g/golang-announce/c/94pEornpRlI), [Go 1.27.2](https://groups.google.com/g/golang-announce/c/U2fTuyDJznI), and [Go 1.27.3](https://groups.google.com/g/golang-announce/c/66pojueaQek) announcements.

`golang.org/x/net` moves from 0.57.0 to **0.61.0**, including five HTTP/2 fixes introduced in 0.60.0:

| CVE | Fix |
|:---|:---|
| [CVE-2026-78659](https://pkg.go.dev/vuln/GO-2026-6603) | Memory amplification through Trailer headers |
| [CVE-2026-78669](https://pkg.go.dev/vuln/GO-2026-6611) | CPU consumption through window updates |
| [CVE-2026-78663](https://pkg.go.dev/vuln/GO-2026-6612) | Duplicate flow-control credit refunds |
| [CVE-2026-97032](https://pkg.go.dev/vuln/GO-2026-6617) | HPACK encoder race and crash |
| [CVE-2026-78660](https://pkg.go.dev/vuln/GO-2026-6610) | Malformed framing response headers |
{.full-width}

`x/crypto` 0.58.0 also crosses the fixes for SSH issues [CVE-2026-56854](https://pkg.go.dev/vuln/GO-2026-6303), [CVE-2026-56855](https://pkg.go.dev/vuln/GO-2026-6355), and [CVE-2026-78662](https://pkg.go.dev/vuln/GO-2026-6354). `x/text` 0.43.0 includes the precis fix [CVE-2026-56851](https://pkg.go.dev/vuln/GO-2026-6629). The exporter does not import these SSH/precis packages; these are dependency-version updates, not confirmed exporter runtime vulnerabilities.

Comparative `govulncheck` runs on 2026-10-23 found no known symbol-level or imported-package-level vulnerabilities in the new candidate for Darwin, Linux, or Windows. The unimported OpenPGP package retains a module-level advisory, [GO-2026-5932](https://pkg.go.dev/vuln/GO-2026-5932). Static symbol matches are not exploit reproductions, and including upstream fixes does not establish that every issue was exploitable in the exporter. Other dependency upgrades are maintenance updates. Install the rebuilt release binary; upgrading Go on the host does not change an existing binary.


For the full CVE table, first fixed versions, and scan levels, see the [security update verification](https://exp.pgsty.com/release/v1.5.0/#security-updates).

[GitHub release](https://github.com/pgsty/pg_exporter/releases/tag/v1.5.0) · [SHA256 checksums](https://github.com/pgsty/pg_exporter/releases/download/v1.5.0/checksums.txt) · [Full changelog](https://github.com/pgsty/pg_exporter/compare/v1.4.1...v1.5.0) · [Complete collector reference](https://exp.pgsty.com/collectors/)

## v1.4.1

`v1.4.1` is a maintenance release focused on metric accuracy and RPM upgrade compatibility.

**Highlights:**

- Fix `pg_subrel_count` overcounting with parallel logical replication apply workers. Deduplicate `pg_stat_subscription` by subscription ID and name before aggregating subscription relation states.
- If a query result omits a configured `LABEL` column, fail the entire collector scrape. Do not emit an empty label or keep stale results. Other non-fatal collectors continue normally.
- Rename the official RPM package and artifact prefix from `pg_exporter` to `pg-exporter`. The new package provides and obsoletes the legacy name to support direct upgrades.
- Update version and standalone package metadata. Add regression tests for missing labels. Validate RPM configuration, artifact names, and compatibility metadata in CI.

**Upgrade Notes:**

- Custom collector SQL must return every `LABEL` column. The result schema must be complete even if the query returns zero rows.
- If automation matches GitHub RPM file names directly, change `pg_exporter-*.rpm` to `pg-exporter-*.rpm`.

https://github.com/pgsty/pg_exporter/releases/tag/v1.4.1


## v1.4.0

`v1.4.0` adds Snapshot Histogram metrics and the `pg_xact_age` transaction age collector.
It also improves HTTP routing, packaging, and the build toolchain.

**New Features:**

- Add the `HISTOGRAM` column type. It aggregates SQL snapshots by label group into classic Prometheus histograms with `_bucket` / `_count` / `_sum` series. Configuration loading validates finite bucket bounds in strictly increasing order and appends `+Inf` automatically. The `le` label is reserved. Hot reload is supported.
- Add the `pg_xact_age` collector. It returns open transaction age (`pg_xact_age_seconds`) and idle-in-transaction age (`pg_xact_age_idle_seconds`) as histograms. It collects cluster-level data from client backends only, with a 10s TTL.
- Increase the default bundle from **57** to **58** definition files. Assign `pg_xact_age` to slot `0450`. Renumber `pg_lock` / `pg_lock_stat` / `pg_query` to `0460` / `0470` / `0480` without content changes.

**Fixes & Improvements:**

- Register HTTP routes in a private ServeMux instead of the global `DefaultServeMux`. This prevents accidental exposure of endpoints from third-party libraries.
- Validate `--web.telemetry-path` at startup. Reject empty paths, paths without a leading `/`, paths with `?` `#` `{` `}`, and conflicts with built-in endpoints. Also reject non-canonical paths such as `//metrics`, which cannot match requests. Each failure returns a clear error immediately.
- Escape the telemetry path in the landing page HTML.
- Close the primary connection pool if the `--fail-fast` pre-check fails.
- Fix RPM / DEB packaging ([#105](https://github.com/pgsty/pg_exporter/issues/105)). Set the `prometheus` user's HOME to `/var/lib/prometheus`, where libpq looks for `~/.pgpass`. Add `/postgres` to the packaged default URL. This prevents libpq from using a database named after the OS user.
- Use the `v` version prefix consistently. Official release binaries report `v1.4.0` in `--version`, `/version`, and `pg_exporter_build_info{version=...}`. GoReleaser artifacts previously reported `1.3.0` without the prefix. Artifact file names, package versions, and Docker image tag conventions do not change.
- Apply the same value conversion rules to histograms and scalar columns. Exclude timestamps and booleans from `scale`.
- Correct GoReleaser package metadata to show support for PostgreSQL `9.x - 19+` and pgBouncer `1.8 - 1.25+`.
- Restore `GOPROXY` / `GOSUMDB` build-argument passthrough in `make docker`.

**Engineering & Build:**

- Update the build toolchain to Go `1.26.5`, exporter-toolkit `v0.17.1`, and prometheus/common `v0.70.0`.
- Add regular CI checks for module tidy, generated configuration, race tests, and six-platform cross-builds. The `make conf` output must match `config/*.yml`.
- Remove the `docker/` scripts and `make docker-release`. Use GoReleaser to build multi-architecture release images.
- Remove assumptions about specific collectors from configuration coverage tests. This makes smaller custom bundles easier to maintain.

**Upgrade Notes:**

- A non-canonical telemetry path, such as `//metrics`, now prevents startup. Previously, the process started but the metrics endpoint was unreachable.
- Update automation that parses the `version` label of `pg_exporter_build_info` or the `--version` output to accept the `v` prefix.
- If any collector uses `HISTOGRAM`, do not use `le` as a constant label.

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.4.0/checksums.txt

```bash
9874191591567ede87ae1d5820f06e781f27c664a7f4a6365211f9e042fd8199  checksums.txt
c6af4ae62e13f518539a6d0b3ce86ff9f7acdb567a4f0f86c6f47563574da724  pg-exporter_1.4.0-1_amd64.deb
ff0360f61982ed627d1b1f93281a0ba66da9d077672f0c214e19522df01e40d6  pg-exporter_1.4.0-1_arm64.deb
4fbadd4e9d918c9bc8e63975378e49375b0ff897d6b8a0f78799538b13dd68a1  pg-exporter_1.4.0-1_ppc64le.deb
5ce106d27fffa77c39fea9bf7cbc60f4328df3d926fef025bfdd082eb6d743fd  pg_exporter-1.4.0-1.aarch64.rpm
870b434e802e0039f10e1e3583c28a1fd83db4363a4608e1fab7f375f6d30600  pg_exporter-1.4.0-1.ppc64le.rpm
c550d16ce3f9276948a4d44174e11716fc5e85e31e8788ea106a57cfbabd8488  pg_exporter-1.4.0-1.x86_64.rpm
11a34e531ac5d6d378b91e768f575525389141a6860afabd0cc9f2d853f06749  pg_exporter-1.4.0.darwin-amd64.tar.gz
49d8d3a5932602f433c4ef681ed12007da1cbc11b5ee0f9d7b4dc2d0dff8e26e  pg_exporter-1.4.0.darwin-arm64.tar.gz
113dfe70d4f780a456c05ca6b731f96c1013bf35ecb87d75c443fe2bac7e333b  pg_exporter-1.4.0.linux-amd64.tar.gz
68b4630ab39943658a8aff135990896a5ccf56c8a992e5982d572c78ef822e18  pg_exporter-1.4.0.linux-arm64.tar.gz
72710625e5658c941b48f7becba9a86491852cea5469240328292838d9ed0979  pg_exporter-1.4.0.linux-ppc64le.tar.gz
14a0cf6ffa04c7e54c1d5aa5b37fe4bea1429c1d1e7cce89e9dd805c4a29db0b  pg_exporter-1.4.0.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.4.0


--------

## v1.3.0

`v1.3.0` adds PostgreSQL 19 support.
It also updates the default collectors, build toolchain, and configuration coverage tests.

**Highlights:**

- Default support range extended from **PostgreSQL 10-18+** to **10-19+**
- Default config bundle includes **57** `config/*.yml` definition files
- Build dependencies updated to Go `1.26.4`, `lib/pq v1.12.3`, Prometheus client `v1.23.2`, and exporter-toolkit `v0.16.0`
- `pg_recovery_state`: collect `pg_stat_recovery` on recovery nodes, exposing promotion trigger status, replay LSN, timeline, recovery transaction time, and pause state
- `pg_lock_stat`: collect PG19 `pg_stat_lock`, exposing waits, wait time, and fast-path overflow counts by `locktype`
- `pg_vacuum_score`: collect the current-database summary from `pg_stat_autovacuum_scores`, exposing max autovacuum score and candidate table count
- `pg_wal_19`: expose `wal_fpi_bytes` on PG19 as `pg_wal_fpi_bytes`
- `pg_sub_19`: adapt sequence sync and logical replication conflict stats from `pg_stat_subscription_stats`, while keeping `sync_error_count` for legacy dashboards
- `pg_recv`: recognize the PG13+ WAL receiver `connecting` state on PG19
- `pg_slot`: recognize the PG19 replication slot invalidation reason `idle_timeout`
- `pg_db_confl`: switch to an explicit column list to avoid accidentally exporting future view columns
- `pg_backup`, `pg_vacuuming`, and `pg_clustering` continue reusing stable existing branches instead of changing the metric surface for low-value PG19 fields

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.3.0/checksums.txt

```bash
c88c4ad7cde10531d75ec98fa536b2e7f531639f55c3b3c9866ee76934a4e2b2  checksums.txt
dfc6d517300687a382557e6d77af1ecb513bdde2e961d01ca46efa008ae15569  pg-exporter_1.3.0-1_amd64.deb
3d2ff642d0bb3657b28eb7c4b30bacc8ef9e4cbd057c870e6ec6817b47ac8092  pg-exporter_1.3.0-1_arm64.deb
4cfe043eb193780515a1e00ab93250dd44ca0728b35cb037ed165c70c89b6b5a  pg-exporter_1.3.0-1_ppc64le.deb
3ae4f8c554242ae52c4ba0fa07a9d95b702f72938ce55e8456dd97242cc46faf  pg_exporter-1.3.0-1.aarch64.rpm
71a0023383170b4ef3c243d9bf08d530b819fa891fa784e87c74b2a55cb426ec  pg_exporter-1.3.0-1.ppc64le.rpm
316a97ccb2df9a02de99dda33826857ec32bbd6fd874ffb950625bc064d62496  pg_exporter-1.3.0-1.x86_64.rpm
4ab312f27f0ded7f0ff5591866a86311d13041fef3a015e92f44fcf4a2284ccd  pg_exporter-1.3.0.darwin-amd64.tar.gz
2b20eb7b46c0790a8524f1c00a22ab57739bd60fd89ee947f6c2ba14e6a0d6bb  pg_exporter-1.3.0.darwin-arm64.tar.gz
7a2a8ce818f30260d1e7267d0b9e1fd5b3cbd569d55ad184fc9d6fb3801f3ad7  pg_exporter-1.3.0.linux-amd64.tar.gz
696619d19efbcf33f4afbae9748e72897289d2b7f772509cd6d465c9e818066d  pg_exporter-1.3.0.linux-arm64.tar.gz
0c16ac4a912f328be90e973b5123a272c2747759be9f56bacb5542653226475e  pg_exporter-1.3.0.linux-ppc64le.tar.gz
aa3724f4e8aeb732de18b7cb416283cbc2e94b9f511ec4b94e703792e8e8b10d  pg_exporter-1.3.0.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.3.0


## v1.2.2

`v1.2.2` updates the release toolchain to Go `1.26.2`.
This maintenance release has no changes to collectors, configuration behavior, or runtime behavior.

**Highlights**

- Refresh the release toolchain: bump release builds to Go `1.26.2`
- No functional changes: collector behavior, default configs, metric definitions, and runtime semantics remain unchanged

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.2.2/checksums.txt

```bash
273dfd45ac367f71044998d19171ee27d7deb094ec9410d4b31aef7caacfdcc6  pg-exporter_1.2.2-1_amd64.deb
5e83c8448ee6350bec96ab95550df439a129c6700e5c9c7d0f9411aa9c2e7f40  pg-exporter_1.2.2-1_arm64.deb
97bb804bd1018c111708df9118561421d2cc51bd47d031b6d1f12cf1c988a3b2  pg-exporter_1.2.2-1_ppc64le.deb
b2f76799b21aba02b6bf5b6e71bf7ae2cf4487ad8817d53aad92f1d710c00120  pg_exporter-1.2.2-1.aarch64.rpm
f0ab38907bc87a9634c22911d8a0501634d58ce34020c0952dd49281a06787e6  pg_exporter-1.2.2-1.ppc64le.rpm
2000593d9d6732f3e03a43e291bc4e2368d2ecea125a2744dc533a030f51c800  pg_exporter-1.2.2-1.x86_64.rpm
e8a71704eb6957beaebd8ecaf83479e44db4a09bd9dc95c32f7b617f141b0386  pg_exporter-1.2.2.darwin-amd64.tar.gz
e648d9444f9a5f3ee49b82bcbbb459eefd73307c789f24f0d5238dbe1bcfec9c  pg_exporter-1.2.2.darwin-arm64.tar.gz
f278aba93d09b2a47aeef66898e770cacfdbc046eab0ba02de29f7c0261d9ede  pg_exporter-1.2.2.linux-amd64.tar.gz
bbeef56452643b8eb6bf9bb5baf113ab2c38177c06f8e1d008e63cce82260801  pg_exporter-1.2.2.linux-arm64.tar.gz
ad2385278ec6060fef2f7db7873c025f56f5c55048b51815cb4195486ca9dbe2  pg_exporter-1.2.2.linux-ppc64le.tar.gz
2ac53298058f09c5569464f918396f13d3a9efebec00296d89497e97ea74caf4  pg_exporter-1.2.2.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.2.2


## v1.2.1

`v1.2.1` is a maintenance release for release engineering, configuration package consistency, documentation, and metadata.
It has no changes to collector or runtime behavior.

**Highlights**

- Refresh the build toolchain: bump both release workflows and Docker build images to Go `1.26.1`
- Standardize config style: switch inline `description` values in both current and legacy configs to double-quoted form, and regenerate merged `pg_exporter.yml` / `legacy/pg_exporter.yml`
- Add config consistency tests: verify split and merged configs remain equivalent, and check inline metric description style to reduce configuration drift
- Refresh packaging metadata: update RPM / DEB support descriptions to PostgreSQL `9.x - 18+` and pgBouncer `1.8 - 1.25+`, and refresh Pigsty documentation links

**Checksums**

```bash
2cbe7a78a0dde8a6155a543232af883de6623531c9f6ea0951ddc30dc7514649  pg-exporter_1.2.1-1_amd64.deb
e70e09974ad52ba607b176b63c300610e37f44fe67d249aa9ef364bd58352585  pg-exporter_1.2.1-1_arm64.deb
4e6c7fae85e7fe2e62c3d66c388b5f3db57b5e95e85f43ce648d21b792d83d87  pg-exporter_1.2.1-1_ppc64le.deb
30103629e8c5c1ee5589addadb37fcb07b43179c8a19f80c016a0ed8d7ac2a47  pg_exporter-1.2.1-1.aarch64.rpm
01b4dd32b20bca8612f71f0edf3557dfa92fc85f669d3260f627d34ce102b517  pg_exporter-1.2.1-1.ppc64le.rpm
5afb4f14aa71b256cdfc93d6cc6da8a7052427d6f1c1b71900bf2593b196de50  pg_exporter-1.2.1-1.x86_64.rpm
45e71c6017beffabf2873841d374b5de40eb499dd768d6db1208d7cc6295bcf5  pg_exporter-1.2.1.darwin-amd64.tar.gz
d3035cc6a023fe1bad5443a7c1d5c8189b3d807d165f131f88566b5c35476259  pg_exporter-1.2.1.darwin-arm64.tar.gz
14d3f83de4377e5363611d2ae4eef9470a85d7518784c06b8a8c0f63b6e0a340  pg_exporter-1.2.1.linux-amd64.tar.gz
71082081e7aaf1cf15c941c310d03da49cf9971205274aad7dae21a126bc4fe1  pg_exporter-1.2.1.linux-arm64.tar.gz
cba30919b8d2945be199a4a346eb2891c88fd7a1d6c3482c1006442f4f6109e7  pg_exporter-1.2.1.linux-ppc64le.tar.gz
6fe528a242f0bbd3b89cd8b2697f48905b5c4b1398abfb3305193808c01738e9  pg_exporter-1.2.1.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.2.1


## v1.2.0

`v1.2.0` improves stability and compatibility for startup, hot reload, health probes, configuration validation, and legacy support.

**New Features:**

- Improve hot reload. Support platform-specific signals (`SIGHUP` / `SIGUSR1`) and improve `POST /reload` to update configuration and query plans without a restart.
- Use non-blocking startup. HTTP endpoints start even if the target precheck fails. This improves recovery and monitoring integration.
- Add a legacy configuration bundle for PostgreSQL 9.1-9.6. Use `legacy/` and the `make conf9` target to configure monitoring for EOL versions.
- Use cached health snapshots with periodic probes. This improves consistency for role-based health endpoints and reloads.
- Add `go test` and `go vet` to release workflows. Update the build toolchain to Go 1.26.0.

**Bug Fixes:**

- Fix configuration parsing cases. Reject malformed metric entries, return explicit errors if a configuration directory has no valid YAML, and improve runtime fallbacks.
- Fix CLI boolean parsing for arguments such as `--flag=false`.
- Fix `/explain` output with corrected content types and safer template rendering.
- Improve predicate queries and PG URL handling. Improve BOOL/BOOLEAN support, row resource handling, and `dbname` query-parameter parsing and redaction.
- Close connections asynchronously when auto-discovery removes a target.
- Fix metric and label validation. Check constant-label conflicts, scaled default values, and Prometheus naming rules.

**Checksums**

```bash
26e7a052e730b412bbbe5f49846f951b89650f1f95c2466d5d486923f0825f64  pg-exporter_1.2.0-1_amd64.deb
4ec219135c49708d010af7b8a7553b8008f630574e1d4cfc7642fbf951eefafe  pg-exporter_1.2.0-1_arm64.deb
5b2cc00e2c3e2ffd9eb0ab1a4f5e937dd68f3a69a14423a74d4de3d7cf29283e  pg-exporter_1.2.0-1_ppc64le.deb
d536d41a92e8aa85ae3935715d1bf0463208b1e614eae73543f1472ca8a7e0d4  pg_exporter-1.2.0-1.aarch64.rpm
b7a1daa225f8ca4de6d227e6004330589295d924accd221892ebe14f191fe35c  pg_exporter-1.2.0-1.ppc64le.rpm
28bf7d85862510675c64ff5181d216c6a068a23ffa56dc4bb9e6b82165ff99b5  pg_exporter-1.2.0-1.x86_64.rpm
51c3b3d18089d888a54a6b3e7ecb0620dc0da04c81471a0b7aaa88c1677ddb8c  pg_exporter-1.2.0.darwin-amd64.tar.gz
3ba1c7adea9c926afd3054ba18cc43e665e420a495bfcfd2248242c49a67b077  pg_exporter-1.2.0.darwin-arm64.tar.gz
9e1ec6c15e6b2aaadbe27a27053ee1ec289bdd012c19ca6371de738fa5f8843e  pg_exporter-1.2.0.linux-amd64.tar.gz
9e18849693ccda313979db0a230cb81acfe4199364feb6ce3e72d1a89fbfb809  pg_exporter-1.2.0.linux-arm64.tar.gz
6e28489685d0bd1fdabcb71474f64f559ade199b871666954323bae9dc01465f  pg_exporter-1.2.0.linux-ppc64le.tar.gz
9e9beac619fe2c614a77bc3334bc4b80df9db355bf95845eb4b11674ddad52d9  pg_exporter-1.2.0.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.2.0


## v1.1.2

This minor release fixes the pg_timeline configuration and builds with the latest Go dependencies.

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.1.2/checksums.txt

```bash
8cddd57a843914a3145a80a3220bc875047b9bcac0664357c01ba86485436236  pg-exporter_1.1.2-1_amd64.deb
f5b25a8ae5c022867a54c17ba1c6493eba20dcb292340460390289336df24f04  pg-exporter_1.1.2-1_arm64.deb
4da2c287f6717681b25befda0d59a89b9d1b258281ce94f3a6bc21d02f70c83c  pg-exporter_1.1.2-1_ppc64le.deb
b26355f3c1a5b8a147291a51e2d7ada204deed6d52877c146a8b3e499defa5e8  pg_exporter-1.1.2-1.aarch64.rpm
42ef89716ba99dd918b0e9c77ef3236129d613f68bb8ae5929668a5a2596cca5  pg_exporter-1.1.2-1.ppc64le.rpm
a8f4a2d5c7b6701c7bac788a7ed7183b6c4b74a334326cd389f3a695fb77675d  pg_exporter-1.1.2-1.x86_64.rpm
775f5ea3188a6acb1327c001c4ba9a0651424c3bb37d800e6f67972c904c4750  pg_exporter-1.1.2.darwin-amd64.tar.gz
7f2bbcc2db1e16dc78c3edd8e67e20e4ec81f2972c8c37135cba6f6afbf91003  pg_exporter-1.1.2.darwin-arm64.tar.gz
33c34b1f9ef6b6e7615f241a95059a8137a2337a454930b668180a9329d12b98  pg_exporter-1.1.2.linux-amd64.tar.gz
2b91a5818d780e38692ab6446cacb496695e67388676c18012be582e8ddfbdd8  pg_exporter-1.1.2.linux-arm64.tar.gz
adcb5f229f4a5d641f6430b9a2dfb0377a2e4310efad242730867d6cdf5e27ee  pg_exporter-1.1.2.linux-ppc64le.tar.gz
90b7c7e4b2b94936b5faa3cf2d35509b62ebc0d60b3afe1abaaf03efcd415a4a  pg_exporter-1.1.2.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.1.2




## v1.1.1

Minor release with new collectors and bug fixes.

**New Features:**

- New `pg_timeline` collector for timeline monitoring
- New `pg_sub_16` collector branch to exclude parallel operations in subscriptions (PostgreSQL 16+ compatibility)

**Bug Fixes:**

- Fix: Add coalesce for slotname in `pg_recv` collector to handle NULL values

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.1.1/checksums.txt

```bash
fd5ee96511676fc11b975115a4870ed0c811056519f79ad7f24ab7ec538fa278  pg-exporter_1.1.1-1_amd64.deb
b90a08d16a6e4707d82f8f3ae282cb76acb331de607e7544532fd0b774b7aa27  pg-exporter_1.1.1-1_arm64.deb
163955f59a71da48901ffa26bb2f2db0712d31d8aeb1ab3fa463683f719a6d3a  pg-exporter_1.1.1-1_ppc64le.deb
cf4f8bc12bb8a2d1e55553f891fd31c43324e4348249727972eb44f82cd4e6c8  pg_exporter-1.1.1-1.aarch64.rpm
5a425b2f61f308b32f2d107372830c34eb685bfb312ee787f11877a20f1c4a2e  pg_exporter-1.1.1-1.ppc64le.rpm
23606ccea565368971ac2e7f39766455b507021f09457bcf61db13cb10501a16  pg_exporter-1.1.1-1.x86_64.rpm
ce74624eba92573318f50764cee4f355fa1f35697d209f70a4240f8f9d976188  pg_exporter-1.1.1.darwin-amd64.tar.gz
35fba12521dbdcc54a3792278ed4822e4ca9e951665b5e53dff7c2a0f7014ae3  pg_exporter-1.1.1.darwin-arm64.tar.gz
7699bdef15dd306289645beee8d40a123ca75dc988e46d89cdd75a1c1f650bef  pg_exporter-1.1.1.linux-amd64.tar.gz
f4baba59d27a8eb67f0c5209fed7b9f00f78db796e583cc3487701e7803671c6  pg_exporter-1.1.1.linux-arm64.tar.gz
810c3817c27358fa667714f8bfe8d52840a7ea010035e29547919ccb7c9fa781  pg_exporter-1.1.1.linux-ppc64le.tar.gz
3f6df693b3eb92fdaeaeccf99ea7e5977b2c65028a4f00bdfabbc0405b9f5f93  pg_exporter-1.1.1.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.1.1



## v1.1.0

Build with Go 1.25.5 and latest dependencies, collector updates:

**Collector Changes:**

- `pg_setting`: update PG10-18 compatibility and add `missing_ok` support.
  - Add 13 new metrics: `max_parallel_workers`, `max_parallel_workers_per_gather`, `max_parallel_maintenance_workers`, `shared_buffers`, `maintenance_work_mem`, `effective_cache_size`, `fsync`, `full_page_writes`, `autovacuum`, `autovacuum_max_workers`, `checkpoint_timeout`, `checkpoint_completion_target`, `hot_standby`, `synchronous_commit`, `io_method`.
  - Rename `work_memory_size` to `work_mem`.
  - Change min_version from 9.6 to 10. Use explicit `::int` type conversion.
- `pg_size`: fix log directory size detection. Check `logging_collector` instead of matching path patterns.
- `pg_table`: replace LATERAL subqueries with JOIN to improve performance. Change `tuples` and `frozenxid` from COUNTER to GAUGE. Increase the timeout from 1s to 2s.
- `pg_vacuuming`: add a PG17 branch with `indexes_total`, `indexes_processed`, and `dead_tuple_bytes` to track index vacuum progress.
- `pg_query`: increase the timeout from 1s to 2s for high-load conditions.
- `pg_io`: correct the `reuses` description from "in reused" to "is reused".
- `pg_checkpointer`: correct the pg_checkpointer_10 description from "9.4+" to "9.4-17".
- `pg_db_confl`: correct the pg_db_confl_15 description from "9.1 - 16" to "9.1 - 15".
- Correct format alignment for `pg_db`, `pg_indexing`, `pg_clustering`, and `pg_backup`.

**Other Changes:**

- Fix release year by [@anayrat](https://github.com/anayrat)

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.1.0/checksums.txt

```bash
9c65f43e76213bb8a49d1eab2c76a27d9ab694e67bc79f0ad12769ea362b5ca2  pg-exporter_1.1.0-1_amd64.deb
bcd2cacb4febc5fb92f9eda8e733c161c8c6721416e16ec91a773503241c972d  pg-exporter_1.1.0-1_arm64.deb
2c9d4a9cb06d07af0b6dd9dd6e568af073dc9f6775abde63b45f0aae34d171b1  pg-exporter_1.1.0-1_ppc64le.deb
2934ab5b0fb16dca5a96ec1e8f230e32c72b30ca076b5e5ddf8ec553c821f7b8  pg_exporter-1.1.0-1.aarch64.rpm
3c9955f31ba93532cc7f95ff60b0658f4b6eca6a827710e2f70c0716b34eab43  pg_exporter-1.1.0-1.ppc64le.rpm
9fdefbd8e7660dcb130207901a27762e0a381857ba8cf12b63184744f92dea05  pg_exporter-1.1.0-1.x86_64.rpm
7159002016754309e0ed625a9a48049d21177883fa11d1e448eb7655ceb690cc  pg_exporter-1.1.0.darwin-amd64.tar.gz
7d55ac5cda0b1fd8ffbd5e76b9c1c1784ac8e353104a206caaadce89adda6d65  pg_exporter-1.1.0.darwin-arm64.tar.gz
8211ec24277554b9b1a36920d7865153e21c2621031d3d08f22d94cdd2ddf02f  pg_exporter-1.1.0.linux-amd64.tar.gz
d17ab7f9bf04442e642483d432d005d25bb62e0c9caa73cb7e69ee19eb89b3ae  pg_exporter-1.1.0.linux-arm64.tar.gz
c074aeb345cc30f7b6e16aa153ae3d9a12789e4425987590c3fd77c4e68a40b6  pg_exporter-1.1.0.linux-ppc64le.tar.gz
13d653e2abb023ce9526bdc2815135b82f49c044d237030f3f56b09fb016fcb7  pg_exporter-1.1.0.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.1.0



## v1.0.3

- Build with Go 1.25.4 and latest dependencies
- Fix [#80](https://github.com/pgsty/pg_exporter/issues/80) Conflict with libpq env variables
- Change default value of `auto-discovery` to `true` by [@kadaffy](https://github.com/kadaffy)

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.0.3/checksums.txt

```bash
7efa1a77dfd5b94813c32c7ac015b1d479b1f04fb958f6b1ed5af333e354d015  pg-exporter_1.0.3-1_amd64.deb
41e18bf18eba2ab90ac371bfb46e9152da9fe628ebd8e26766cac08325eb3b07  pg-exporter_1.0.3-1_arm64.deb
7da8ed738d254c120d42aa51d6137f84e7f4e3188bc764d4f9a1438220363a43  pg-exporter_1.0.3-1_ppc64le.deb
a214b555981156da7b7d248b1f728f8ac88a07ac8f77a66c5d8e43b40670d6b4  pg_exporter-1.0.3-1.aarch64.rpm
d876fc66e208612ebffe3c43dabce88b088d915f92584260d710b85a3a131413  pg_exporter-1.0.3-1.ppc64le.rpm
75f62d314fec50c836c534996c884d25ecea77810ab33e7ba0e9c4b783e775b4  pg_exporter-1.0.3-1.x86_64.rpm
47829a19707284bcee1b8dc47cc7d0172398bb533e6b4043950f787486712769  pg_exporter-1.0.3.darwin-amd64.tar.gz
38b6ccb72315cadea542b1f2a7b7022d0e8d48ffd4ab177bb69a0a909b99af6b  pg_exporter-1.0.3.darwin-arm64.tar.gz
36e8dff84d61a7593ff1fcec567ca4ffeaecd0be2f9eabd227ceac71b12a919a  pg_exporter-1.0.3.linux-amd64.tar.gz
6477e8ef873773a09c4f39a29444f21b5b2c71e717e52ca425bcc8e8e5448791  pg_exporter-1.0.3.linux-arm64.tar.gz
a083b51ebed2b280e2eaa0f19558494e7fa6f122a0a86a1d117206fcd090820c  pg_exporter-1.0.3.linux-ppc64le.tar.gz
a1f9b27b7190f478726d96f270a72d9dc4d3f2bcc3b0326b7c4a2607e62ea588  pg_exporter-1.0.3.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.0.3



## v1.0.2

- Build with Go 1.25.0 and the latest dependencies.
- Add a dedicated website and homepage: https://exp.pgsty.com
- Use GoReleaser and CI/CD to release for more operating systems and architectures:
  - Add Windows amd64 support.
  - Add Linux ppc64le support.

**Checksums**

https://github.com/pgsty/pg_exporter/releases/download/v1.0.2/checksums.txt

```bash
683bf97f22173f2f2ec319a88e136939c2958a1f5ced4f4aa09a1357fc1c44c5  pg-exporter_1.0.2-1_amd64.deb
f62d479a92be2d03211c162b8419f968cea87ceef5b1f25f2bcd390e0b72ccb5  pg-exporter_1.0.2-1_arm64.deb
e1bbfc5a4c1b93e6f92bc7adcb4364583ab763e76e156aa5c979d6d1040f4c7a  pg-exporter_1.0.2-1_ppc64le.deb
f51d5b45448e6bbec3467d1d1dc049b1e16976f723af713c4262541ac55a039c  pg_exporter-1.0.2-1.aarch64.rpm
18380011543674e4c48b2410266b41165974d780cbc8918fc562152ba623939e  pg_exporter-1.0.2-1.ppc64le.rpm
198372d894b9598c166a0e91ca36d3c9271cb65298415f63dbffcf6da611f2bb  pg_exporter-1.0.2-1.x86_64.rpm
cbe7e07df6d180507c830cdab4cf86d40ccd62774723946307b5331d4270477d  pg_exporter-1.0.2.darwin-amd64.tar.gz
20c4a35fa244287766c1d1a19cd2e393b3fa451a96a81e5635401e69bef04b97  pg_exporter-1.0.2.darwin-arm64.tar.gz
d742111185f6a89fff34bfd304b851c8eb7a8e38444f0220786e11ed1934eff1  pg_exporter-1.0.2.linux-amd64.tar.gz
0b1f4c97c1089c4767d92eb22419b8f29c9f46fb90ddfd1e8514cc42dc41054f  pg_exporter-1.0.2.linux-arm64.tar.gz
895083fd2c7fc5409cc1a2dbaaef1e47ac7aa6a3fd5db2359012922d90bcdcc3  pg_exporter-1.0.2.linux-ppc64le.tar.gz
5f751228e7120604af9a482fb70197489fa633c38a0f2b6a3489393fbc6a10aa  pg_exporter-1.0.2.windows-amd64.tar.gz
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.0.2



## v1.0.1

- Add dockerhub images: [pgsty/pg_exporter](https://hub.docker.com/r/pgsty/pg_exporter)
- Update Go dependencies to the latest version. Build with Go 1.24.5
- Disable `pg_tsdb_hypertable` by default because the `timescaledb` catalog has changed.

**Checksums**

```bash
d5e2d6a656eef0ae1b29cd49695f9773  pg_exporter-1.0.1-1.aarch64.rpm
cb01bb78d7b216a235363e9342803cb3  pg_exporter-1.0.1-1.x86_64.rpm
67093a756b04845f69ad333b6d458e81  pg_exporter-v1.0.1.darwin-amd64.tar.gz
2d3fdc10045d1cf494b9c1ee7f94f127  pg_exporter-v1.0.1.darwin-arm64.tar.gz
e242314461becfa99c3978ae72838ab0  pg_exporter-v1.0.1.linux-amd64.tar.gz
63de91da9ef711a53718bc60b89c82a6  pg_exporter-v1.0.1.linux-arm64.tar.gz
718f6afc004089f12c1ca6553f9b9ba5  pg-exporter_1.0.1_amd64.deb
57da7a8005cdf91ba8c1fb348e0d7367  pg-exporter_1.0.1_arm64.deb
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.0.1




## v1.0.0

Add PostgreSQL 18 metrics support

- new collector branch `pg_wal_18`:
- remove `write`, `sync`, `write_time`, `sync_time` metrics
- move to `pg_stat_io`
- new collector branch `pg_checkpointer_18`:
- new metric `num_done`
- new metric `slru_written`
- new collector branch `pg_db_18`:
- new metric `parallel_workers_to_launch`
- new metric `parallel_workers_launched`
- new collector branch `pg_table_18`:
- `table_parallel_workers_to_launch`
- `table_parallel_workers_launched`
- new collector branch `pg_io_18`:
- new series about WAL statistics
- new metric `read_bytes`
- new metric `write_bytes`
- new metric `extend_bytes`
- remove `op_bytes` due to fixed value
- new collector branch `pg_vacuuming_18`
- new metric `delay_time`

```bash
8637bc1a05b93eedfbfd3816cca468dd  pg_exporter-1.0.0-1.aarch64.rpm
a28c4c0dcdd3bf412268a2dbff79f5b9  pg_exporter-1.0.0-1.x86_64.rpm
229129209b8e6bc356c28043c7c22359  pg_exporter-v1.0.0.darwin-amd64.tar.gz
d941c2c28301269e62a8853c93facf12  pg_exporter-v1.0.0.darwin-arm64.tar.gz
5bbb94db46cacca4075d4c341c54db37  pg_exporter-v1.0.0.linux-amd64.tar.gz
da9ad428a50546a507a542d808f1c0fa  pg_exporter-v1.0.0.linux-arm64.tar.gz
0fa2395d9d7a43ab87e5c87e5b06ffcc  pg-exporter_1.0.0_amd64.deb
fed56f8a37e30cc59e85f03c81fce3f5  pg-exporter_1.0.0_arm64.deb
```

https://github.com/pgsty/pg_exporter/releases/tag/v1.0.0




## v0.9.0

**Default Collectors**

* new metrics collector for `timescaledb` hypertable
* new metrics collector for `citus` dist node
* new metrics collector for `pg_wait_sampling` wait event profile
* `pg_slot` overhaul: Add 16/17 pg_replication_slot metrics
* allow `pg_slot` collector run on replica since 16/17
* refactor `pg_wait` collector to agg from all processes
* restrict pg_clustering, pg_indexing, pg_vacuuming run on primary
* mark all `reset_time` as `GAUGE` rather than `COUNTER`
* fix `pg_recovery_prefetch_skip_fpw` type from `GAUGE` to `COUNTER`
* fix `pg_recv.state` type from `LABEL` to `GAUGE`
* Format collector in compact mode
* new default metric `pg_exporter_build_info` / `pgbouncer_exporter_build_info`
* add `server_encoding` to `pg_meta` collector
* add 12 new setting metrics to `pg_setting` collector
- wal_block_size
- segment_size
- wal_segment_size
- wal_level
- wal_log_hints
- work_mem
- hugepage_count
- hugepage_status
- max_wal_size
- min_wal_size
- max_slot_wal_keep_size

**Exporter Codebase**

* normalize collector branch name with min pg ver suffix
* Add license file to binary packages
* move `pgsty/pg_exporter` repo to `pgsty/pg_exporter`
* refactor `server.go` to reduce `Compatible` and `PostgresPrecheck` complexity
* rename metrics collector with extra number prefix for better sorting
* bump dependencies to the latest version
* execute fatal collectors ahead of all non-fatal collectors, and fail fast

https://github.com/pgsty/pg_exporter/releases/tag/v0.9.0





## v0.8.1

* Bump dependencies to the latest version
* [Bump golang.org/x/net from 0.35.0 to 0.36.0 #67](https://github.com/pgsty/pg_exporter/pull/67)
* Update docker images building tags

https://github.com/pgsty/pg_exporter/releases/tag/v0.8.1






## v0.8.0

* Add PgBouncer 1.24 new metrics support (stat, pool, database)
* Fix: `310-pg_size.yml` fails if log dir not set properly [#64](https://github.com/pgsty/pg_exporter/issues/64) by [@Süleyman Vurucu](https://github.com/suikast42)
* Build with the latest Go 1.24 and bump all dependencies
* Refactor logging with the standard `log/slog` instead of `go-kit`
* **Full Changelog**: https://github.com/pgsty/pg_exporter/compare/v0.7.1...v0.8.0

https://github.com/pgsty/pg_exporter/releases/tag/v0.8.0





## v0.7.1

Routine update with dependabot

* Feat: support specifying configuration as Reader by [@ringerc](https://github.com/ringerc) in [#62](https://github.com/pgsty/pg_exporter/pull/62)
* Bump golang.org/x/crypto from 0.21.0 to 0.31.0 by [@dependabot](https://github.com/dependabot) in [#63](https://github.com/pgsty/pg_exporter/pull/63)
* Fix some typos
* **Full Changelog**: https://github.com/pgsty/pg_exporter/compare/v0.7.0...v0.7.1

https://github.com/pgsty/pg_exporter/releases/tag/v0.7.1





## v0.7.0

Refactor the codebase for the latest Go version.

- [PostgreSQL 17 Metrics Support](https://github.com/pgsty/pg_exporter/issues/53) by @Vonng
- [pg_exporter: predicate queries feature](https://github.com/pgsty/pg_exporter/pull/47) by [@ringerc](https://github.com/ringerc)
- [Do a clean build in the dockerfile](https://github.com/pgsty/pg_exporter/pull/54) by [@ringerc](https://github.com/ringerc) by [@ringerc](https://github.com/ringerc)
- [pg_exporter: don't panic after "bind: address already in use"](https://github.com/pgsty/pg_exporter/pull/46) by [@ringerc](https://github.com/ringerc)
- [pg_exporter: fix /stat endpoint formatting](https://github.com/pgsty/pg_exporter/pull/48) by [@ringerc](https://github.com/ringerc)
- [pg_exporter: omit default query properties on yaml export](https://github.com/pgsty/pg_exporter/pull/49) by [@ringerc](https://github.com/ringerc)
- [Exclude template DBs from discovery and schema-qualify discovery query](https://github.com/pgsty/pg_exporter/pull/50) by [@ringerc](https://github.com/ringerc)
- [Fix some typos and some metric description mistakes](https://github.com/pgsty/pg_exporter/pull/51) by [@ringerc](https://github.com/ringerc)
- [Switch from unmaintained lib/pq driver to pgx with stdlib wrapper](https://github.com/pgsty/pg_exporter/pull/52) by [@ringerc](https://github.com/ringerc)

https://github.com/pgsty/pg_exporter/releases/tag/v0.7.0




## v0.6.0

- Fix Dependabot [security](https://github.com/pgsty/pg_exporter/security/dependabot?q=is%3Aclosed) issues.
- Add pg16 collectors.
- Add `arm64` & `aarch64` packages.
- Remove the `monitor` schema requirement for `pg_query` collectors. Set search_path to find `pg_stat_statements`, or install it in the default `public` schema.
- Change the pgBouncer version parsing message level from info to debug.
- Fix the missing `relid` in the `pg_table_10_12` collector.

- [Recognize the files with yml suffix in config directory](https://github.com/pgsty/pg_exporter/pull/34) by [@Japin Li](https://github.com/japinli)
- [Support PostgreSQL 15 and higher](https://github.com/pgsty/pg_exporter/pull/35) by [@Japin Li](https://github.com/japinli)
- [Fix connect-timeout propagation](https://github.com/pgsty/pg_exporter/pull/37/files) by [@mouchar](https://github.com/mouchar)

https://github.com/pgsty/pg_exporter/releases/tag/v0.6.0





## v0.5.0

**Exporter Enhancement**

- Build rpm & deb with `nfpm`
- Add `column.default`, replace when metric value is NULL
- Add `column.scale` to multiply float/int values by a scale factor, such as conversion from µs to seconds
- Fix `/stat` endpoint output
- Add docker container [`pgsty/pg_exporter`](https://hub.docker.com/r/pgsty/pg_exporter)

**Metrics Collector**

- scale bgwriter & pg_wal time unit to second
- remove pg_class collector and move it to pg_table & pg_inex
- add pg_class metrics to pg_table
- add pg_class metrics to pg_index
- enable pg_table_size by default
- scale pg_query pg_db pg_bgwriter pg_ssl pgbouncer_stat time metrics to second

https://github.com/pgsty/pg_exporter/releases/tag/v0.5.0








## v0.4.1

- Update default collectors:
    - Exclude citus & timescaledb schemas from object monitoring.
    - Prevent duplicate pg_statio tuples.
    - Support pgBouncer v1.16.
    - Fix overlapping `pg_repl` collectors on pg 12.
- Add the `-T` `connect-timeout` `PG_EXPORTER_CONNECT_TIMEOUT` parameter for remote PostgreSQL monitoring.
- Rename `pg_exporter.yaml` to `pg_exporter.yml` in the RPM package.

https://github.com/pgsty/pg_exporter/releases/tag/v0.4.1








## v0.4.0

- Add PG 14 support
- Update the default metrics configuration. The old configuration remains supported
- add `auto-discovery` , `include-database` and `exclude-database` option
- Add multiple database monitoring implementations (with `auto-discovery = on`)

https://github.com/pgsty/pg_exporter/releases/tag/v0.4.0







## v0.3.2

- fix shadow DSN corner case
- fix typo & docs

https://github.com/pgsty/pg_exporter/releases/tag/v0.3.2







## v0.3.1

Fix default configuration errors, particularly for versions before 13.

- Account for the `primary_conninfo` setting being available only from PG13.
- Add the `funcid` label to `pg_func` to prevent duplicate labels from function names.
- Fix the version string to `pg_exporter`.

https://github.com/pgsty/pg_exporter/releases/tag/v0.3.1








## v0.3.0

https://github.com/pgsty/pg_exporter/releases/tag/v0.3.0

- Update the default configuration to support PostgreSQL 13 metrics, including `pg_slru`, `pg_shmem`, `pg_query13`, and `pg_backup`.
- Add REST APIs for health and recovery status checks.
- Add a dummy server that returns `pg_up 0` before PgExporter initialization.
- Add `sslmode=disable` to the URL if `sslmode` is absent.
- Fix typos and bugs.



## v0.2.0

- add yum package and linux service definition
- add a 'skip' flag into query config
- fix `pgbouncer_up` metrics
- add conf reload support

https://github.com/pgsty/pg_exporter/releases/tag/v0.2.0








## v0.1.2

* fix pgbouncer_up metrics
* add dynamic configuration reload
* remove 'shard' related logic
* add a 'bulky' mode to default settings

https://github.com/pgsty/pg_exporter/releases/tag/v0.1.2






## v0.1.1

Fix a startup hang that occurs if any query fails.

https://github.com/pgsty/pg_exporter/releases/tag/v0.1.1





## v0.1.0

This is the first stable release.

https://github.com/pgsty/pg_exporter/releases/tag/v0.1.0




## v0.0.4

This release passed production tests on 200+ nodes for about 2 weeks.

https://github.com/pgsty/pg_exporter/releases/tag/v0.0.4





## v0.0.3

v0.0.3 passed production tests.

This version is already tested in a production environment.

The project changes rapidly. Use this version with caution in production.

https://github.com/pgsty/pg_exporter/releases/tag/v0.0.3





## v0.0.2

This version is ready for testing.

https://github.com/pgsty/pg_exporter/releases/tag/v0.0.2





## v0.0.1

Add pgBouncer mode

https://github.com/pgsty/pg_exporter/releases/tag/v0.0.1
