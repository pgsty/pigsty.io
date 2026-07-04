---
title: Release
weight: 40
description: pig — PostgreSQL Package Manager Release Notes
icon: fa-solid fa-clipboard-list
module: [PIG]
categories: [Reference]
---

The latest stable version is [v1.5.0](https://github.com/pgsty/pig/releases/tag/v1.5.0).

|     Version     |    Date    | Summary                                                            |                           GitHub                           |
|:---------------:|:----------:|--------------------------------------------------------------------|:----------------------------------------------------------:|
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
| [v1.1.0](#v110) | 2026-02-12 | 451 extensions, Agent-Native CLI framework                         | [v1.1.0](https://github.com/pgsty/pig/releases/tag/v1.1.0) |
| [v1.0.0](#v100) | 2026-01-26 | New pg/pt/pb/pitr commands, availability matrix                    | [v1.0.0](https://github.com/pgsty/pig/releases/tag/v1.0.0) |
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

## v1.5.0

Pig `v1.5.0` is a PostgreSQL operations release for day-to-day DBA work. It adds local database clone/fork workflows, clarifies the boundaries between `pg`, `pt`, `pb`, and `pitr`, and tightens preview, confirmation, and structured-output behavior for high-risk operations.

**Highlights**

- `pig pg` is now more focused on local PostgreSQL operations. `pig pg clone` creates quick database-level copies, while `pig pg fork` creates disposable physical instance forks for local validation, recovery drills, and isolated experiments.
- Recovery flows are split more clearly: `pig pitr` is the orchestration entry point across Patroni, PostgreSQL, and pgBackRest; `pig pb restore` remains the low-level pgBackRest restore primitive. Restore commands now require an explicit target and provide more concrete plans and post-restore guidance.
- Patroni operations are more predictable: high-risk actions such as `pig pt restart`, `reinit`, `switchover`, and `failover` use Pig-managed confirmation and plan output; `pig pt config pg` points operators to `pig pt restart --pending` when a restart is required.
- Automation is safer: structured output no longer implies confirmation for destructive commands. High-risk execution requires explicit `-y/--yes`, while `--plan` and `next_actions` are more consistent for preview-then-execute workflows.
- Logs and status output are more useful during incidents: `pg`, `pb`, and `pt` log commands now cover common latest / tail / show / grep workflows, and structured log snapshots use JSONL semantics.
- Build and release defaults were refreshed: Pig is `1.5.0`, embedded Pigsty is `4.4.0`, and `pig build pgrx` defaults to `cargo-pgrx 0.19.1`.

**Extension Catalog**

- Available extensions: **524 -> 531**, with no removals.
- New extensions: `pg_ducklake`, `pgdisablelogerror`, `pg_stat_log`, `pg_stat_plans`, `passwordpolicy`, `db2fce`, `plpgsql_wrap`.
- Refreshed a batch of existing extension versions and package metadata, including `timescaledb 2.28.2`, `postgis 3.6.4`, `vector 0.8.4`, `biscuit 2.4.1`, `citus 14.1.0`, `orioledb 1.8`, `documentdb 0.113`, `credcheck 5.0`, and `pgtt 4.5`.
- `orioledb` aliases no longer pin to PG17; they resolve against the requested PostgreSQL major. EL9 ARM64 Patroni aliases now point to noarch packages.

**Compatibility Notes**

- Use `-y/--yes` for destructive operations in automation; structured output mode no longer substitutes for human confirmation.
- `pig pb restore` and `pig pitr` require exactly one explicit recovery target; use `--target-action=promote` for auto-promote behavior.
- Several ambiguous short options were cleaned up. For log commands, `-o json` means a JSONL snapshot and is not used for tail/follow streaming modes.

**Checksums**

```bash
f0f6706fc63b5df3717d932f4d1886ceb0775a5fe38a070e657e2b7dae2cd5e8  pig-1.5.0-1.aarch64.rpm
4d0f2edc22860ebf4559fb823bdda4142807b9c9fd5c0043cff217f14fd3173a  pig-1.5.0-1.x86_64.rpm
3d8a80c6a9c6fa1398bd6b439ea3abb5ceae33ba69c0c8ccc4f00b1d7303dbe9  pig-v1.5.0.darwin-amd64.tar.gz
416aa9f54cec92aca77d648a965bddf6ffe1ac896073020f781cb93dec1d832d  pig-v1.5.0.darwin-arm64.tar.gz
8f9e95db0538d72decb4b06715d9e954aea1d439de0a4921f08ab1db4bcd865c  pig-v1.5.0.linux-amd64.tar.gz
cea0b9e86662064d7ee9249ae510d53f68d041c44d7dfb92f480626e58b33db4  pig-v1.5.0.linux-arm64.tar.gz
1cc2fe2e566d135a02dea1ddb0263c39cb3a3948c1cc16e24fa3ed0df5fbe5f5  pig_1.5.0-1_amd64.deb
6f298185513bbae0292b758a7d5b86f3e640b3a6e99717dd8d290b99e321eee9  pig_1.5.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.5.0


--------

## v1.4.2

- Refresh the built-in extension catalog from **510** to **524** available extensions. This adds 14 extensions: `pg_stl`, `pgmnemo`, `psql_bm25s`, `pg_orca`, `pg_sorted_heap`, `graph`, `pgrdf`, `fsm_core`, `jsonschema`, `pg_durable`, `pg_mockable`, `pg_uuid_v8`, `pg_stat_backtrace`, and `pg_projection`.
- Update package metadata for 48 existing extensions, including `timescaledb 2.28.0`, `timescaledb_toolkit 1.23.0`, `pg_task 2.1.29`, `pg_search 0.24.0`, `pg_clickhouse 0.3.2`, `pg_graphql 1.6.1`, `documentdb 0.112`, `toastinfo 1.7`, `wrappers 0.6.1`, and `pgclone 4.3.2`. No extensions were removed or demoted.
- Add PostgreSQL 19 beta install/build/config support. PG19 is accepted as an explicit installable major, while PostgreSQL 18 remains the stable default for auto-detection, catalog display, and latest-version aliases.
- Add `pg19` package aliases and PG19 category alias resolution. PG19 category aliases borrow the PostgreSQL 18 visibility template and limit beta package expansion to PGDG-origin entries.
- Teach `pig sty conf -v 19` to enable the `beta` repository module when the template supports it, and emit clear warnings when a template is not tuned for PG19 beta or cannot enable the beta repo automatically.
- Fix Patroni cluster operations by passing the resolved `CLUSTER_NAME` to `patronictl restart`, `reinit`, `switchover`, and `failover`; `pig pt list` also accepts an optional cluster name.
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
- Refresh authoritative source bundles for `pig build get`, covering Cloudberry / OrioleDB build inputs and bundled artifacts for RDKit and OneSparse-related packages.
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

Bump total available extensions to **504**.

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

This release is a focused engineering update from `v1.2.0` to `v1.3.0`: 15 commits, 74 files changed, `+1184 / -236` LOC.

It hardens the `pig build` pipeline and extends catalog/alias coverage, increasing total extensions from **451** to **461**.

**Highlights**

- Build source download improvements (`pig build get`):
  - Parse multi-source `Source` fields (whitespace/newline/tab) and deduplicate entries.
  - Add source mappings for `agensgraph` / `agentsgraph`.
  - `pgedge` now downloads both `postgresql-17.9.tar.gz` and `spock-5.0.5.tar.gz`.
- Dependency resolution and install improvements (`pig build dep`):
  - RPM dependencies can infer PG major from `pgmajorversion` in spec files; missing spec/control files now return explicit errors.
  - DEB dependency parsing now covers `Build-Depends` / `Build-Depends-Arch` / `Build-Depends-Indep`, including multiline fields, alternatives, arch qualifiers, and build-profile cleanup.
  - `PGVERSION` placeholders can be expanded from `--pg`, installed PG majors, or extension metadata.
  - Dependency install failures are downgraded to warnings so batch runs continue.
- DEB build result semantics fixed (`pig build ext/pkg`):
  - Successful build command exit code is authoritative; artifact discovery is best-effort warning only.
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
  - Version bumped to `v1.3.0` (including a `v1.2.1` transition commit), copyright year moved to 2026, and README refreshed for 461 extensions and current alias docs.

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
e8409cc8165139028323094bebede495d4b0d0a52616d1aecd8c7ecd3fb7471d  pig-1.3.0-1.aarch64.rpm
73645ea4b9ce27b44b2c7f4587e6218cdbbba045f32dd45c942e03cf9020c61e  pig-1.3.0-1.x86_64.rpm
a2d8a14b11606f4a23ca7b929686ff020fc8ce29e7cec21074f710f981aee6d4  pig-v1.3.0.darwin-amd64.tar.gz
fffb94bfc1808b45d8bef3fb63783c1a8e78057e0315ab5b8752088e2c9a555f  pig-v1.3.0.darwin-arm64.tar.gz
27220509c22d26eb8821ac189b1de9c4745adc0a0d91719df7d0b1fc1176b765  pig-v1.3.0.linux-amd64.tar.gz
d124450333e61a5c7d0ed387b13b4087cfd2a81a3fde018232e6bf9b4db6ba0e  pig-v1.3.0.linux-arm64.tar.gz
54f3e0561286b3c0af122137fd475213eff54bc82c69b8b46d1148112ab45b80  pig_1.3.0-1_amd64.deb
beb8ff31d1e64dbfcf6896115e6d200d835fc28bbac5a5b92d75096ef1e68c80  pig_1.3.0-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v1.3.0


--------

## v1.2.0

- Extension catalog and alias resolution enhancements:
  - Introduce dynamic PG category alias resolution by PG major version.
  - Add OS-level alias overrides (`ansible`/`bootstrap`) and converge unknown distro fallback to PGDG-only.
  - Add aliases such as `node/infra` and `babelfish/cloudberry`, and refresh extension metadata to reduce package resolution ambiguity.
- Plan preview for high-risk operations:
  - Add `pig install --plan` with structured execution plan output.
  - Align preview semantics for `pig pitr` and pgBackRest `repack/expire` under `--plan` / `--dry-run`.
  - Add plan-flag consistency tests to keep subcommand behavior aligned.
- Native `sty` configuration capability:
  - Add `pig sty configure` with full execution flow (preflight, argument handling, execution orchestration).
  - Unify `sty conf/configure` behavior: native implementation by default, with `--raw` fallback retained.
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

## v1.1.0

This version is a planned architecture-level upgrade from `v1.0.0` to `v1.1.0` (79 commits, 193 files changed),
with the core goal of moving pig from a "human-friendly CLI" to an "agent-native orchestratable CLI".

Seven new extensions are added, bringing the total available extensions to 451.

**New Features**

- Land the unified agent-native output framework: introduce global `--output` (`text/yaml/json/json-pretty`), and provide unified `Result` structure, stable status codes, and machine-readable output for `ext/repo/pg/pt/pb/pitr/status/version/context`.
- Introduce ANCS (Agent Native Command Schema) metadata: add semantic fields such as `type/volatility/parallel/risk/confirm/os_user/cost`, and make `help` emit a command capability tree directly in structured mode for agent-side capability and risk discovery.
- Add `pig context` (`pig ctx`) environment snapshot command: aggregate host, PostgreSQL, Patroni, pgBackRest, and extension information in one call for direct agent workflow context injection.
- Expand plan capabilities beyond PITR: add `pig ext add/rm --plan`, `pig pg stop/restart --plan`, `pig pt switchover/failover --plan`, and align with `pig pitr --plan/--dry-run` into a reviewable execution plan format (actions, scope, risks, expected outcomes).
- Further improve structured result coverage: embed native `pgbackrest info` JSON, and unify structured return DTOs across Patroni/PostgreSQL/PITR/Repo/Ext subsystems for automation compatibility.
- Strengthen compatibility layer: add legacy structured wrappers for existing command groups such as `pg_exporter/pg_probe/do/sty`, preserving legacy interaction behavior while exposing structured execution results and output capture.
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
- Build pipeline reliability fixes: correctly propagate errors and return non-zero exit codes in `pig build get/pkg/ext` when download/build fails; fix false failures in DEB builds caused by `pg_ver` mismatch.
- Repo/catalog refresh fixes: support quiet mirror fallback for `ext/repo reload`; make `repo add/set/rm` return proper error status when cache updates fail.
- Extension management fixes: adjust `ext update` to explicit-target updates and fix status drift issues; ensure `ext import` downloads requested DEB resources to the specified repo directory.
- Output/observability fixes: align structured output exit code behavior with text mode rendering; improve permission handling and parsing stability in `pg status`.

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

This release introduces three major new subcommand groups (`pig pg`, `pig pt`, `pig pb`) for managing PostgreSQL, Patroni, and pgBackRest, along with an orchestrated PITR command and enhanced extension availability display.

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
- Added priority for el repo definitions, docker repo skipped when unavailable
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

Use the fixed Aliyun PGDG mirror repository

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
- Update pgdg repo URL, the `extras` now move to parent directory
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
- Fix EL PGDG sysupdate aarch64 repo issue (now aarch64 repo ready)
- Fix EL10.aarch64 PGDG repo renaming issue
- Update extension versions
- Bump Pigsty version to 3.7.0

**Checksums**

```bash
786d72f6b685d6d6abf5f255f0a7de9204988a05630a26a53bfc7631823c0c6f  pig-0.7.3-1.aarch64.rpm
da59e24ef79d1164e348bacc43e3222e8e2778ec0e103e7ffc0c6df064758e8f  pig-0.7.3-1.x86_64.rpm
73062a979749095e89abc07dd583d34d4f57908bb4ee935cf7640f129ca6a2cb  pig-v0.7.3.darwin-amd64.tar.gz
ca5f5576f6d0d9be1d10cad769821be9daa62220b2fb56b94d6e4c0cede6da61  pig-v0.7.3.darwin-arm64.tar.gz
d193b4b87cf9a6e4775b1b07709802d30f0233ccb1b728843a09decb545168d3  pig-v0.7.3.linux-amd64.tar.gz
e7f612df0e8e4d9fac6df3765862b9e491bb50aad651856abf7a6935986e6f99  pig-v0.7.3.linux-arm64.tar.gz
3d5306ce95dcf704dd498b05325d942637564b13115f1e5a5bb9ef6781df1ba6  pig_0.7.3-1_amd64.deb
32e695ba2d49a741d8cd92008f8f2dec29f10754d35b732035f48517b382c30d  pig_0.7.3-1_arm64.deb
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
f303c391fc28bc74832712e0aa58319abe0ebcae4f6c07fdf9a9e542b735d2ec  pig-0.7.2-1.aarch64.rpm
c096a61a4e3a49b1238659664bbe2cd7f29954c43fb6bb8e8e9fb271f95a612e  pig-0.7.2-1.x86_64.rpm
5e037c891dff23b46856485108d6f64bede5216dfbd4f38a481f0d0672ee910b  pig-v0.7.2.darwin-amd64.tar.gz
736b4b47999c543c3c886781f4d8dddbf4276f363c35c7bf50094b6f18d14600  pig-v0.7.2.darwin-arm64.tar.gz
20b13f059efed29dd76f6927b3e8d7b597c0c8d734f9e22ba3d0a2af6dbcd3bf  pig-v0.7.2.linux-amd64.tar.gz
9548b530c05f2ffdc8d73b8f890718d47b74a51eb62852a99c08b1b52e47f014  pig-v0.7.2.linux-arm64.tar.gz
b6faad9f92b926546a10f590274f2cb2afff21b9cea878094cfc5caf09e67d2c  pig_0.7.2-1_amd64.deb
452f73f1fa035e5417ab49fc51d797925550179ffcc023e8f03d80144309212a  pig_0.7.2-1_arm64.deb
```

Release: https://github.com/pgsty/pig/releases/tag/v0.7.2


--------

## v0.7.1

- The brand-new website: /ext/
- Remove unnecessary sudo usage, now can be used inside docker
- Allow using `pg18`, `pg17` arg format in pig ext link command
- Add environment var `PIG_NO_SUDO` to force not using sudo
- [RPM Changelog](/docs/repo/pgsql/rpm#2025-11-10): Add PG 18 support to almost all extensions
- [DEB Changelog](/docs/repo/pgsql/deb#2025-11-10): Add PG 18 support to almost all extensions
- [Infra Changelog](/docs/repo/infra/#2025-11-08): Routine update to the latest version

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
- Massive extension updates to the latest versions with PostgreSQL 18 support
- Almost all Rust extensions now support PG 18 via pgrx 0.16.1
- `pig build` command overhaul
  - `pig build pkg <pkg>` will now download source, prepare deps, and build in one go
  - `pig build pgrx` is now separated from `pig build rust`
  - `pig build pgrx [-v pgrx_version]` can now use existing PG installation directly
  - `pig build dep` will now handle extension dependencies on both EL and Debian systems
  - `pig build ext` now has more compact and elegant output, can build RPM on EL without build script
  - `pig build spec` now supports downloading spec files directly from Pigsty repo
  - `pig build repo` / `pig repo add` / `pig repo set` now use `node,pgsql,infra` as default repo modules instead of `node,pgdg,pigsty`
- Optimized error logging
- Brand new catalog website based on hugo and hextra

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
- Dedicated website: /docs/pig/
- Rebuild with go 1.25 and CI/CD pipeline
- Use PIGSTY PGDG mirror in mainland China
- Remove unused `pgdg-el10fix` repo
- Use Pigsty WiltonDB mirror
- Add EL 10 dedicated epel repo
- pig version output with go build environment

Release: https://github.com/pgsty/pig/releases/tag/v0.6.1


--------

## v0.6.0

- New extension catalog: [https://ext.pgsty.com](https://ext.pgsty.com)
- New subcommand: `pig install` to simplify `pig ext install`
- Add new kernel support: percona with pg_tde
- Add new package: Google GenAI MCP toolbox for databases
- Add new repo: percona repo and clickhouse repo
- Change extension summary info links to https://ext.pgsty.com
- Fix orioledb broken on the Debian/Ubuntu system
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
- Bug fix pgvectorscale debian/ubuntu pg17 failure
- Bump kubernetes repo to 1.33
- Bump default pigsty version to 3.5.0

**Checksums**

```
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

- Updated extension list, available extensions reached **407**
- Added `pig do` subcommand for executing Pigsty playbook tasks
- Added `pig pt` subcommand for wrapping Patroni command-line tools
- Added extension aliases: `openhalo` and `orioledb`
- Added `gitlab-ce` / `gitlab-ee` repository distinction
- Built with the latest Go 1.24.2 and upgraded dependency versions
- Fixed `pig ext status` panic issue under specific conditions
- Fixed `pig ext scan` unable to match several extensions

Release: https://github.com/pgsty/pig/releases/tag/v0.4.0

------

## v0.3.4

```bash
curl https://repo.pigsty.io/pig | bash -s 0.3.4
```

- Routine extension metadata update
- Use aliyun epel mirror instead of broken tsinghua tuna mirror
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

The [`pig`](/docs/pig/) project now has a new [homepage](/docs/pig/), along with the PostgreSQL Extension [Catalog](/ext/list).

Release: https://github.com/pgsty/pig/releases/tag/v0.3.0

------

## v0.2.2

[**404**](/docs/pgsql/ext) Extensions Available in Pig v0.2.2

Release: https://github.com/pgsty/pig/releases/tag/v0.2.2

------

## v0.2.0

Release: https://github.com/pgsty/pig/releases/tag/v0.2.0

------

## v0.1.4

Release: https://github.com/pgsty/pig/releases/tag/v0.1.4

------

## v0.1.3

v0.1.3, routine update, with 390 extensions available now!

Release: https://github.com/pgsty/pig/releases/tag/v0.1.3

------

## v0.1.2

[**351**](/ext/list) PostgreSQL Extensions, including the powerful [postgresql-anonymizer 2.0](https://postgresql-anonymizer.readthedocs.io/en/stable/)

Release: https://github.com/pgsty/pig/releases/tag/v0.1.2

------

## v0.1.0

pig CLI v0.1 released

Release: https://github.com/pgsty/pig/releases/tag/v0.1.0

------

## v0.0.1

Genesis Release

Release: https://github.com/pgsty/pig/releases/tag/v0.0.1
