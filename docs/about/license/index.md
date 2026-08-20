# License

> Pigsty's open-source licenses — Apache-2.0 and CC BY 4.0

---

LLMS index: [llms.txt](/llms.txt)

---

## License Summary

Pigsty core uses **Apache-2.0**; documentation uses **CC BY 4.0**.

Official License: [https://github.com/pgsty/pigsty/blob/main/LICENSE](https://github.com/pgsty/pigsty/blob/main/LICENSE)

----------------

## Pigsty Core

The Pigsty core is licensed under [**Apache License 2.0**](#apache-20-license-text).

Apache-2.0 is a permissive open-source license. You may freely use, modify, and distribute the software for commercial purposes without opening your own source code or adopting the same license.

|                  **What This License Grants**                   |                 **What This License Does NOT Grant**                 |                                        **License Conditions**                                        |
|:---------------------------------------------------------------:|:--------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------:|
| <i class="fas fa-circle-check text-primary"></i> Commercial use |    <i class="fas fa-circle-xmark text-danger"></i> Trademark use     | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Include license and copyright notice |
|  <i class="fas fa-circle-check text-primary"></i> Modification  | <i class="fas fa-circle-xmark text-danger"></i> Liability & warranty |            <i class="fa-solid fa-triangle-exclamation text-secondary"></i> State changes             |
|  <i class="fas fa-circle-check text-primary"></i> Distribution  |                                                                      |                                                                                                      |
|  <i class="fas fa-circle-check text-primary"></i> Patent grant  |                                                                      |                                                                                                      |
|  <i class="fas fa-circle-check text-primary"></i> Private use   |                                                                      |                                                                                                      |
{.full-width}

----------------

## Pigsty Documentation

Pigsty documentation sites ([**pigsty.cc**](https://pigsty.cc), [**pigsty.io**](https://pigsty.io), [**pgsty.com**](https://pgsty.com)) use **Creative Commons Attribution 4.0 International (CC BY 4.0)**.

**CC BY 4.0** permits free sharing and adaptation with [**appropriate credit**](https://creativecommons.org/licenses/by/4.0/deed.en#ref-appropriate-credit), a license link, and [**indication of changes**](https://creativecommons.org/licenses/by/4.0/deed.en#ref-indicate-changes).

|                  **What This License Grants**                   |                 **What This License Does NOT Grant**                 |                                **License Conditions**                                |
|:---------------------------------------------------------------:|:--------------------------------------------------------------------:|:------------------------------------------------------------------------------------:|
| <i class="fas fa-circle-check text-primary"></i> Commercial use |    <i class="fas fa-circle-xmark text-danger"></i> Trademark use     |     <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Attribution      |
|  <i class="fas fa-circle-check text-primary"></i> Modification  | <i class="fas fa-circle-xmark text-danger"></i> Liability & warranty |   <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Indicate changes   |
|  <i class="fas fa-circle-check text-primary"></i> Distribution  |     <i class="fas fa-circle-xmark text-danger"></i> Patent grant     | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Provide license link |
|  <i class="fas fa-circle-check text-primary"></i> Private use   |                                                                      |                                                                                      |

----------------

## SBOM Inventory

Open-source software used or related to the Pigsty project.

For 576 PostgreSQL extension plugin licenses, refer to [**PostgreSQL Extension License List**](/ext/license/).

| **Module** | **Software Name**                                                 | **License**                                                                                               | **Purpose & Description**                   |  **Necessity**  |
|:----------:|:------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------|:--------------------------------------------|:---------------:|
|   PGSQL    | [PostgreSQL](https://www.postgresql.org/)                         | [PostgreSQL License](https://www.postgresql.org/about/licence/)                                           | PostgreSQL kernel                           |  **Required**   |
|   PGSQL    | [patroni](https://patroni.readthedocs.io/en/latest/)              | [MIT License](https://github.com/zalando/patroni/blob/master/LICENSE)                                     | PostgreSQL high availability                |  **Required**   |
|    ETCD    | [etcd](https://etcd.io/)                                          | [Apache License 2.0](https://github.com/etcd-io/etcd/blob/main/LICENSE)                                   | HA consensus and distributed config storage |  **Required**   |
|   INFRA    | [Ansible](https://docs.ansible.com/ansible/latest/index.html)     | [GPLv3](https://github.com/ansible/ansible/blob/devel/COPYING)                                            | Executes playbooks and management commands  |  **Required**   |
|   INFRA    | [Nginx](https://github.com/nginx/nginx)                           | [BSD-2](https://github.com/nginx/nginx/blob/master/LICENSE)                                               | Exposes Web UI and serves local repo        | **Recommended** |
|   PGSQL    | [pgbackrest](https://pgbackrest.org/)                             | [MIT License](https://github.com/pgbackrest/pgbackrest/blob/main/LICENSE)                                 | PITR backup/recovery management             | **Recommended** |
|   PGSQL    | [pgbouncer](https://www.pgbouncer.org/community.html)             | [ISC License](https://github.com/pgbouncer/pgbouncer/blob/master/COPYRIGHT)                               | PostgreSQL connection pooling               | **Recommended** |
|   PGSQL    | [vip-manager](https://github.com/cybertec-postgresql/vip-manager) | [BSD 2-Clause License](https://github.com/cybertec-postgresql/vip-manager/blob/master/LICENSE)            | Automatic L2 VIP binding to PG primary      | **Recommended** |
|   PGSQL    | [pg_exporter](https://github.com/pgsty/pg_exporter)               | [Apache License 2.0](https://github.com/pgsty/pg_exporter/blob/master/LICENSE)                            | PostgreSQL and PgBouncer monitoring         | **Recommended** |
|    NODE    | [node_exporter](https://github.com/prometheus/node_exporter)      | [Apache License 2.0](https://github.com/prometheus/node_exporter/blob/master/LICENSE)                     | Host node monitoring metrics                | **Recommended** |
|    NODE    | [haproxy](https://www.haproxy.org/)                               | [HAPROXY's License](https://www.haproxy.org/download/1.3/doc/LICENSE) (GPLv2)                             | Load balancing and service exposure         | **Recommended** |
|   INFRA    | [Grafana](https://grafana.com/)                                   | [AGPLv3](https://github.com/grafana/grafana/blob/main/LICENSE)                                            | Database visualization platform             | **Recommended** |
|   INFRA    | [VictoriaMetrics](https://victoriametrics.com/)                   | [Apache License 2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)              | TSDB, metric collection, alerting           | **Recommended** |
|   INFRA    | [VictoriaLogs](https://victoriametrics.com/)                      | [Apache License 2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)              | Centralized log collection, storage, query  | **Recommended** |
|   INFRA    | [DNSMASQ](https://thekelleys.org.uk/dnsmasq/doc.html)             | [GPLv2](https://thekelleys.org.uk/dnsmasq/doc.html) / [GPLv3](https://thekelleys.org.uk/dnsmasq/doc.html) | DNS resolution and cluster name lookup      | **Recommended** |
|   MINIO    | [Silo](https://github.com/pgsty/silo)                            | [AGPLv3](https://github.com/pgsty/silo/blob/main/LICENSE)                                                 | The only object-storage service supported by the current MINIO module |  **Optional**   |
|   INFRA    | [Historical MinIO branch](https://github.com/pgsty/silo/tree/minio) | [AGPLv3](https://github.com/pgsty/silo/blob/minio/LICENSE)                                              | Historical/repository package; not a v4.5 MINIO backend |  **Optional**   |
|   INFRA    | [RustFS](https://github.com/rustfs/rustfs)                       | [Apache License 2.0](https://github.com/rustfs/rustfs/blob/main/LICENSE)                                  | Repository-retained package; not a v4.5 MINIO backend |  **Optional**   |
|    NODE    | [keepalived](https://www.keepalived.org/)                         | [MIT License](https://github.com/umich-arc/keepalived/blob/master/LICENSE)                                | VIP binding on node clusters                |  **Optional**   |
|   REDIS    | [Redis](https://redis.io/)                                        | [BSD 3-Clause](https://github.com/redis/redis/blob/7.2/COPYING)                                           | Default cache engine, using the Redis 7.2 BSD branch |  **Optional**   |
|   REDIS    | [Valkey](https://valkey.io/)                                      | [BSD 3-Clause](https://github.com/valkey-io/valkey/blob/unstable/COPYING)                                 | Cache engine selected with `redis_type: valkey` |  **Optional**   |
|   REDIS    | [Redis Exporter](https://github.com/oliver006/redis_exporter)     | [MIT License](https://github.com/oliver006/redis_exporter/blob/master/LICENSE)                            | Redis monitoring                            |  **Optional**   |
|   MONGO    | [FerretDB](https://www.ferretdb.io/)                              | [Apache License 2.0](https://github.com/FerretDB/FerretDB/blob/main/LICENSE)                              | MongoDB compatibility over PostgreSQL       |  **Optional**   |
|   DOCKER   | [docker-ce](https://github.com/docker/docker-ce)                  | [Apache License 2.0](https://github.com/docker/docker-ce/blob/master/LICENSE)                             | Container management                        |  **Optional**   |
|   CLOUD    | [SealOS](https://github.com/labring/sealos/blob/main/LICENSE)     | [Apache License 2.0](https://github.com/labring/sealos/blob/main/LICENSE)                                 | Fast K8S cluster deployment and packaging   |  **Optional**   |
|   DUCKDB   | [DuckDB](https://github.com/duckdb/duckdb)                        | [MIT](https://github.com/duckdb/duckdb/blob/main/LICENSE)                                                 | High-performance analytics                  |  **Optional**   |
|  External  | [Vagrant](https://www.vagrantup.com/)                             | [Business Source License 1.1](https://github.com/hashicorp/vagrant/blob/main/LICENSE)                     | Local test environment VMs                  |  **Optional**   |
|  External  | [Terraform](https://www.terraform.io/)                            | [Business Source License 1.1](https://github.com/hashicorp/terraform/blob/main/LICENSE)                   | One-click cloud resource provisioning       |  **Optional**   |
|  External  | [Virtualbox](https://www.virtualbox.org/)                         | [GPLv2](https://www.virtualbox.org/wiki/Licensing_FAQ)                                                    | Virtual machine management software         |  **Optional**   |
{.full-width}

**Necessity Levels:**

* **Required**: Essential core capabilities, no option to disable
* **Recommended**: Enabled by default, can be disabled via configuration
* **Optional**: Not enabled by default, can be enabled via configuration

## Apache-2.0 License Text

```text
                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright (C) 2018-2026  Ruohang Feng, @Vonng (rh@vonng.com)

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```
