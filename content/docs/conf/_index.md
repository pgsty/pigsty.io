---
title: Configuration Templates
linkTitle: "Conf Sample"
weight: 600
description: Batteries-included configuration templates for specific scenarios, with detailed explanations.
icon: fa-solid fa-sliders
module: [PIGSTY]
categories: [Reference]
main_menu: True
---

Use `-c` with [**`configure`**](/docs/concept/iac/configure) to select a template; the default is [**`meta`**](/docs/conf/meta/).
Current development sources accept bare names such as `full` and search `conf/ → ha/ → fork/ → app/ → demo/ → build/`,
with every subdirectory under `conf/`. The first matching file wins. An explicit path such as `ha/full` selects only that template.
Leading `./`, the `conf/` prefix, and the `.yml` suffix are optional.

For example, `-c full` and `-c ha/full` select `conf/ha/full.yml`; `-c pgsql` and `-c fork/pgsql` select `conf/fork/pgsql.yml`.
OpenHalo uses `halo` / `fork/halo`; the native MySQL example uses `mysql` / `demo/mysql`.
Older release packages use their own scripts and template layout; the v4.5.0 OpenHalo template is still named `mysql`.
Unreleased application changes are noted on each template page.

| Category         | Templates                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Solo Templates   | [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/), [`fat`](/docs/conf/fat/), [`slim`](/docs/conf/slim/), [`infra`](/docs/conf/infra/), [`vibe`](/docs/conf/vibe/), [`docker`](/docs/conf/docker/)                                                                                                                                                                                                                                                                                                                  |
| Kernel Templates | [`pgsql`](/docs/conf/pgsql/), [`pg19`](/docs/conf/pg19/), [`mssql`](/docs/conf/mssql/), [`polar`](/docs/conf/polar/), [`ivory`](/docs/conf/ivory/), [`agens`](/docs/conf/agens/), [`pgedge`](/docs/conf/pgedge/), [`halo` (OpenHalo)](/docs/conf/mysql/), [`mongo`](/docs/conf/mongo/), [`pgtde`](/docs/conf/pgtde/), [`oriole`](/docs/conf/oriole/)                                                                                                                                                                  |
| HA Templates     | [`ha/simu`](/docs/conf/simu/), [`ha/octo`](/docs/conf/octo/), [`ha/citus`](/docs/conf/citus/), [`ha/full`](/docs/conf/full/), [`ha/safe`](/docs/conf/safe/), [`ha/trio`](/docs/conf/trio/), [`ha/dual`](/docs/conf/dual/)                                                                                                                                                                                                                                                                                                  |
| App Templates    | [`supabase`](/docs/conf/supabase/), [`app/odoo`](/docs/conf/odoo/), [`app/dify`](/docs/conf/dify/), [`app/insforge`](/docs/conf/insforge/), [`app/hindsight`](/docs/conf/hindsight/), [`app/electric`](/docs/conf/electric/), [`app/maybe`](/docs/conf/maybe/), [`app/teable`](/docs/conf/teable/), [`app/mattermost`](/docs/conf/mattermost/), [`app/registry`](/docs/conf/registry/), [`app/immich`](/docs/conf/immich/), [`app/jumpserver`](/docs/conf/jumpserver/) |
| Misc Templates   | [`demo/bare`](/docs/conf/bare/), [`demo/el`](/docs/conf/el/), [`demo/debian`](/docs/conf/debian/), [`demo/demo`](/docs/conf/demo/), [`demo/kernel`](/docs/conf/kernel/), [`demo/redis`](/docs/conf/redis/), [`demo/minio`](/docs/conf/minio/), [`demo/kafka`](/docs/conf/kafka/), [`demo/mysql` (native MySQL pilot)](/docs/conf/mysql84/), [`demo/remote`](/docs/conf/remote/), [`demo/saas`](/docs/conf/saas/), [`demo/wool`](/docs/conf/wool/), [`build/oss`](/docs/conf/oss/), [`build/dev`](/docs/conf/dev/) |
{.full-width}
