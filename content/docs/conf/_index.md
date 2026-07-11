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

Pigsty v4.4.0 provides 48 ready-to-use YAML templates under `conf/` for deployment, testing, and package-build scenarios.

Use `-c` with [**`configure`**](/docs/concept/iac/configure) to select a template. Its value is a path relative to `conf/` without the `.yml` suffix. If omitted, Pigsty uses the default [**`meta`**](/docs/conf/meta/) template.

| Category         | Templates                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Solo Templates   | [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/), [`fat`](/docs/conf/fat/), [`slim`](/docs/conf/slim/), [`infra`](/docs/conf/infra/), [`vibe`](/docs/conf/vibe/), [`docker`](/docs/conf/docker/)                                                                                                                                                                                                                                                                                                                  |
| Kernel Templates | [`pgsql`](/docs/conf/pgsql/), [`pg19`](/docs/conf/pg19/), [`mssql`](/docs/conf/mssql/), [`polar`](/docs/conf/polar/), [`ivory`](/docs/conf/ivory/), [`agens`](/docs/conf/agens/), [`pgedge`](/docs/conf/pgedge/), [`mysql`](/docs/conf/mysql/), [`mongo`](/docs/conf/mongo/), [`pgtde`](/docs/conf/pgtde/), [`oriole`](/docs/conf/oriole/)                                                                                                                                                                             |
| HA Templates     | [`ha/simu`](/docs/conf/simu/), [`ha/citus`](/docs/conf/citus/), [`ha/full`](/docs/conf/full/), [`ha/safe`](/docs/conf/safe/), [`ha/trio`](/docs/conf/trio/), [`ha/dual`](/docs/conf/dual/)                                                                                                                                                                                                                                                                                                                              |
| App Templates    | [`supabase`](/docs/conf/supabase/), [`app/odoo`](/docs/conf/odoo/), [`app/dify`](/docs/conf/dify/), [`app/insforge`](/docs/conf/insforge/), [`app/hindsight`](/docs/conf/hindsight/), [`app/electric`](/docs/conf/electric/), [`app/maybe`](/docs/conf/maybe/), [`app/teable`](/docs/conf/teable/), [`app/mattermost`](/docs/conf/mattermost/), [`app/registry`](/docs/conf/registry/), [`app/immich`](/docs/conf/immich/), [`app/jumpserver`](/docs/conf/jumpserver/) |
| Misc Templates   | [`demo/bare`](/docs/conf/bare/), [`demo/el`](/docs/conf/el/), [`demo/debian`](/docs/conf/debian/), [`demo/demo`](/docs/conf/demo/), [`demo/kernel`](/docs/conf/kernel/), [`demo/redis`](/docs/conf/redis/), [`demo/minio`](/docs/conf/minio/), [`demo/remote`](/docs/conf/remote/), [`demo/saas`](/docs/conf/saas/), [`demo/wool`](/docs/conf/wool/), [`build/oss`](/docs/conf/oss/), [`build/dev`](/docs/conf/dev/)                                                                                                                    |
{.full-width}
