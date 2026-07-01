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

Pigsty provides various ready-to-use configuration templates for different deployment scenarios.

You can specify a configuration template with the `-c` option during `configure`. If no template is specified, the default [**`meta`**](/docs/conf/meta/) template is used.

| Category         | Templates                                                                                                                                                                                                                                                                                                                                          |
|:-----------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Solo Templates   | [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/), [`fat`](/docs/conf/fat/), [`slim`](/docs/conf/slim/), [`infra`](/docs/conf/infra/), [`vibe`](/docs/conf/vibe/), [`docker`](/docs/conf/docker/)                                                                                                                                             |
| Kernel Templates | [`pgsql`](/docs/conf/pgsql/), [`mssql`](/docs/conf/mssql/), [`polar`](/docs/conf/polar/), [`ivory`](/docs/conf/ivory/), [`agens`](/docs/conf/agens/), [`pgedge`](/docs/conf/pgedge/), [`mysql`](/docs/conf/mysql/), [`mongo`](/docs/conf/mongo/), [`pgtde`](/docs/conf/pgtde/), [`oriole`](/docs/conf/oriole/), [`supabase`](/docs/conf/supabase/) |
| HA Templates     | [`ha/simu`](/docs/conf/simu/), [`ha/citus`](/docs/conf/citus/), [`ha/full`](/docs/conf/full/), [`ha/safe`](/docs/conf/safe/), [`ha/trio`](/docs/conf/trio/), [`ha/dual`](/docs/conf/dual/)                                                                                                                                                         |
| App Templates    | [`app/odoo`](/docs/conf/odoo/), [`app/dify`](/docs/conf/dify/), [`app/insforge`](/docs/conf/insforge/), [`app/hindsight`](/docs/conf/hindsight/), [`app/electric`](/docs/conf/electric/), [`app/maybe`](/docs/conf/maybe/), [`app/teable`](/docs/conf/teable/), [`app/mattermost`](/docs/conf/mattermost/), [`app/registry`](/docs/conf/registry/) |
| Misc Templates   | [`demo/el`](/docs/conf/el/), [`demo/debian`](/docs/conf/debian/), [`demo/demo`](/docs/conf/demo/), [`demo/kernel`](/docs/conf/kernel/), [`demo/minio`](/docs/conf/minio/), [`build/oss`](/docs/conf/oss/), [`build/dev`](/docs/conf/dev/)                                                                                                          |
{.full-width}
