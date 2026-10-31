# Parameters

> INFRA module provides 10 sections with 70+ configurable parameters

---

LLMS index: [llms.txt](/llms.txt)

---

The INFRA module deploys Pigsty infrastructure. This includes the local software repository, Nginx, DNSMasq, VictoriaMetrics, VictoriaLogs, Grafana, Alertmanager, and Blackbox Exporter. It also deploys other monitoring and alerting components.

> Pigsty v4.x replaces Prometheus with VictoriaMetrics and Loki with VictoriaLogs for observability.


| Section                           | Description                                                 |
|:----------------------------------|:------------------------------------------------------------|
| [`META`](#meta)                   | Pigsty metadata: version, admin IP, region, language, proxy |
| [`CA`](#ca)                       | Self-signed CA certificate management                       |
| [`INFRA_ID`](#infra_id)           | Infrastructure node identity and service portal             |
| [`REPO`](#repo)                   | Local software repository configuration                     |
| [`INFRA_PACKAGE`](#infra_package) | Infrastructure node package installation                    |
| [`NGINX`](#nginx)                 | Nginx web server and reverse proxy configuration            |
| [`DNS`](#dns)                     | DNSMasq DNS server configuration                            |
| [`VICTORIA`](#victoria)           | VictoriaMetrics/Logs/Traces observability stack             |
| [`PROMETHEUS`](#prometheus)       | Alertmanager and Blackbox Exporter                          |
| [`GRAFANA`](#grafana)             | Grafana visualization platform configuration                |


----------------

## Parameter Overview

[`META`](#meta) parameters define Pigsty metadata, including version string, admin node IP, repository mirror region, default language, and proxy settings.

| Parameter                 |   Type   | Level | Description                                  |
|:--------------------------|:--------:|:-----:|:---------------------------------------------|
| [`version`](#version)     | `string` |  `G`  | Pigsty version string                        |
| [`admin_ip`](#admin_ip)   |   `ip`   |  `G`  | Admin node IP address                        |
| [`region`](#region)       |  `enum`  |  `G`  | Upstream mirror region: default,china,europe |
| [`language`](#language)   |  `enum`  |  `G`  | Default language: en or zh                   |
| [`proxy_env`](#proxy_env) |  `dict`  |  `G`  | Global proxy environment variables           |

[`CA`](#ca) parameters configure Pigsty's self-signed CA certificate management, including CA creation, CA name, and certificate validity.

| Parameter                         |    Type    | Level | Description                            |
|:----------------------------------|:----------:|:-----:|:---------------------------------------|
| [`ca_create`](#ca_create)         |   `bool`   |  `G`  | Allow creation if the CA private key is missing? Default true |
| [`ca_cn`](#ca_cn)                 |  `string`  |  `G`  | CA CN name, fixed as pigsty-ca         |
| [`cert_validity`](#cert_validity) | `interval` |  `G`  | Certificate validity, default 20 years |

[`INFRA_ID`](#infra_id) parameters define infrastructure node identity, including node sequence number, service portal configuration, and data directory.

| Parameter                       |  Type  | Level | Description                                        |
|:--------------------------------|:------:|:-----:|:---------------------------------------------------|
| [`infra_seq`](#infra_seq)       | `int`  |  `I`  | Infrastructure node sequence, REQUIRED             |
| [`infra_portal`](#infra_portal) | `dict` |  `G`  | Infrastructure services exposed via Nginx portal   |
| [`infra_data`](#infra_data)     | `path` |  `G`  | Infrastructure data directory, default /data/infra |
| [`infra_services`](#infra_services) | `service[]` | `G` | Built-in home navigation entries |
| [`infra_extra_services`](#infra_extra_services) | `service[]` | `G` | Additional home navigation entries, default `[]` |

[`REPO`](#repo) parameters configure the local software repository, including repository enable switch, directory paths, upstream source definitions, and packages to download.

| Parameter                                     |     Type     |  Level  | Description                                    |
|:----------------------------------------------|:------------:|:-------:|:-----------------------------------------------|
| [`repo_enabled`](#repo_enabled)               |    `bool`    |  `G/I`  | Create local repo on this infra node?          |
| [`repo_home`](#repo_home)                     |    `path`    |   `G`   | Repo home directory, default `/www`            |
| [`repo_name`](#repo_name)                     |   `string`   |   `G`   | Repo name, default `pigsty`                    |
| [`repo_endpoint`](#repo_endpoint)             |    `url`     |   `G`   | Repo access endpoint: domain or `ip:port`      |
| [`repo_remove`](#repo_remove)                 |    `bool`    |  `G/A`  | Remove existing upstream repo definitions?     |
| [`repo_modules`](#repo_modules)               |   `string`   |  `G/A`  | Enabled upstream repo modules, comma separated |
| [`repo_upstream`](#repo_upstream)             | `upstream[]` |   `G`   | Upstream repo definitions                      |
| [`repo_packages`](#repo_packages)             |  `string[]`  |   `G`   | Packages to download from upstream             |
| [`repo_extra_packages`](#repo_extra_packages) |  `string[]`  | `G/C/I` | Extra packages to download                     |
| [`repo_url_packages`](#repo_url_packages)     |  `string[]`  |   `G`   | Extra packages downloaded via URL              |

[`INFRA_PACKAGE`](#infra_package) parameters define RPM/DEB packages to install on infrastructure nodes.

| Parameter                           |    Type    | Level | Description                        |
|:------------------------------------|:----------:|:-----:|:-----------------------------------|
| [`infra_packages`](#infra_packages) | `string[]` |  `G`  | Packages to install on infra nodes |

[`NGINX`](#nginx) parameters configure Nginx web server and reverse proxy, including enable switch, ports, SSL mode, certificates, and basic authentication.

| Parameter                                           |    Type    | Level | Description                                              |
|:----------------------------------------------------|:----------:|:-----:|:---------------------------------------------------------|
| [`nginx_enabled`](#nginx_enabled)                   |   `bool`   | `G/I` | Enable Nginx on this infra node?                         |
| [`nginx_clean`](#nginx_clean)                       |   `bool`   | `G/A` | Clean existing Nginx config during init?                 |
| [`nginx_exporter_enabled`](#nginx_exporter_enabled) |   `bool`   | `G/I` | Enable nginx_exporter on this infra node?                |
| [`nginx_exporter_port`](#nginx_exporter_port)       |   `port`   |  `G`  | nginx_exporter listen port, default 9113                 |
| [`nginx_sslmode`](#nginx_sslmode)                   |   `enum`   |  `G`  | Nginx SSL mode: disable,enable,enforce                   |
| [`nginx_cert_validity`](#nginx_cert_validity)       | `duration` |  `G`  | Nginx self-signed cert validity, default 397d            |
| [`nginx_home`](#nginx_home)                         |   `path`   |  `G`  | Nginx content dir, default `/www`, symlink to nginx_data |
| [`nginx_data`](#nginx_data)                         |   `path`   |  `G`  | Nginx actual data dir, default /data/nginx               |
| [`nginx_users`](#nginx_users)                       |   `dict`   |  `G`  | Nginx basic auth users: username-password dict           |
| [`nginx_port`](#nginx_port)                         |   `port`   |  `G`  | Nginx listen port, default 80                            |
| [`nginx_ssl_port`](#nginx_ssl_port)                 |   `port`   |  `G`  | Nginx SSL listen port, default 443                       |
| [`certbot_sign`](#certbot_sign)                     |   `bool`   | `G/A` | Sign cert with certbot?                                  |
| [`certbot_email`](#certbot_email)                   |  `string`  | `G/A` | Certbot notification email address                       |
| [`certbot_options`](#certbot_options)               |  `string`  | `G/A` | Certbot extra command line options                       |

[`DNS`](#dns) parameters configure DNSMasq DNS server, including enable switch, listen port, and dynamic DNS records.

| Parameter                     |    Type    | Level | Description                             |
|:------------------------------|:----------:|:-----:|:----------------------------------------|
| [`dns_enabled`](#dns_enabled) |   `bool`   | `G/I` | Setup dnsmasq on this infra node?       |
| [`dns_port`](#dns_port)       |   `port`   |  `G`  | DNS server listen port, default 53      |
| [`dns_records`](#dns_records) | `string[]` |  `G`  | Dynamic DNS records resolved by dnsmasq |

[`VICTORIA`](#victoria) parameters configure the VictoriaMetrics/Logs/Traces observability stack, including enable switches, ports, and data retention policies.

| Parameter                                               |    Type    | Level | Description                                |
|:--------------------------------------------------------|:----------:|:-----:|:-------------------------------------------|
| [`vmetrics_enabled`](#vmetrics_enabled)                 |   `bool`   | `G/I` | Enable VictoriaMetrics on this infra node? |
| [`vmetrics_clean`](#vmetrics_clean)                     |   `bool`   | `G/A` | Clean VictoriaMetrics data during init?    |
| [`vmetrics_port`](#vmetrics_port)                       |   `port`   |  `G`  | VictoriaMetrics listen port, default 8428  |
| [`vmetrics_scrape_interval`](#vmetrics_scrape_interval) | `interval` |  `G`  | Global scrape interval, default 10s        |
| [`vmetrics_scrape_timeout`](#vmetrics_scrape_timeout)   | `interval` |  `G`  | Global scrape timeout, default 8s          |
| [`vmetrics_options`](#vmetrics_options)                 |   `arg`    |  `G`  | VictoriaMetrics extra CLI options          |
| [`vlogs_enabled`](#vlogs_enabled)                       |   `bool`   | `G/I` | Enable VictoriaLogs on this infra node?    |
| [`vlogs_clean`](#vlogs_clean)                           |   `bool`   | `G/A` | Clean VictoriaLogs data during init?       |
| [`vlogs_port`](#vlogs_port)                             |   `port`   |  `G`  | VictoriaLogs listen port, default 9428     |
| [`vlogs_options`](#vlogs_options)                       |   `arg`    |  `G`  | VictoriaLogs extra CLI options             |
| [`vtraces_enabled`](#vtraces_enabled)                   |   `bool`   | `G/I` | Enable VictoriaTraces on this infra node?  |
| [`vtraces_clean`](#vtraces_clean)                       |   `bool`   | `G/A` | Clean VictoriaTraces data during init?     |
| [`vtraces_port`](#vtraces_port)                         |   `port`   |  `G`  | VictoriaTraces listen port, default 10428  |
| [`vtraces_options`](#vtraces_options)                   |   `arg`    |  `G`  | VictoriaTraces extra CLI options           |
| [`vmalert_enabled`](#vmalert_enabled)                   |   `bool`   | `G/I` | Enable VMAlert on this infra node?         |
| [`vmalert_port`](#vmalert_port)                         |   `port`   |  `G`  | VMAlert listen port, default 8880          |
| [`vmalert_options`](#vmalert_options)                   |   `arg`    |  `G`  | VMAlert extra CLI options                  |

[`PROMETHEUS`](#prometheus) parameters configure Alertmanager and Blackbox Exporter, providing alert management and network probing capabilities.

| Parameter                                         |  Type  | Level | Description                                 |
|:--------------------------------------------------|:------:|:-----:|:--------------------------------------------|
| [`blackbox_enabled`](#blackbox_enabled)           | `bool` | `G/I` | Setup blackbox_exporter on this infra node? |
| [`blackbox_port`](#blackbox_port)                 | `port` |  `G`  | blackbox_exporter listen port, default 9115 |
| [`blackbox_options`](#blackbox_options)           | `arg`  |  `G`  | blackbox_exporter extra CLI options         |
| [`alertmanager_enabled`](#alertmanager_enabled)   | `bool` | `G/I` | Setup alertmanager on this infra node?      |
| [`alertmanager_port`](#alertmanager_port)         | `port` |  `G`  | AlertManager listen port, default 9059      |
| [`alertmanager_options`](#alertmanager_options)   | `arg`  |  `G`  | alertmanager extra CLI options              |
| [`exporter_metrics_path`](#exporter_metrics_path) | `path` |  `G`  | Exporter metrics path, default /metrics     |

[`GRAFANA`](#grafana) parameters configure the Grafana visualization platform, including enable switch, port, admin credentials, and data source configuration.

| Parameter                                           |    Type    | Level | Description                                     |
|:----------------------------------------------------|:----------:|:-----:|:------------------------------------------------|
| [`grafana_enabled`](#grafana_enabled)               |   `bool`   | `G/I` | Enable Grafana on this infra node?              |
| [`grafana_port`](#grafana_port)                     |   `port`   |  `G`  | Grafana listen port, default 3000               |
| [`grafana_clean`](#grafana_clean)                   |   `bool`   | `G/A` | Clean Grafana data during init?                 |
| [`grafana_admin_username`](#grafana_admin_username) | `username` |  `G`  | Grafana admin username, default `admin`         |
| [`grafana_admin_password`](#grafana_admin_password) | `password` |  `G`  | Grafana admin password, default `pigsty`        |
| [`grafana_auth_proxy`](#grafana_auth_proxy)         |   `bool`   |  `G`  | Enable Grafana auth proxy?                      |
| [`grafana_pgurl`](#grafana_pgurl)                   |   `url`    |  `G`  | External PostgreSQL URL for Grafana persistence |
| [`grafana_view_password`](#grafana_view_password)   | `password` |  `G`  | Grafana metadb PG datasource password           |


------------------------------

## `META`

This section defines Pigsty deployment metadata: version string, admin node IP address, repository mirror [`region`](#region), default language, and HTTP(S) proxy for downloading packages.

```yaml
version: v4.5.0                   # pigsty version string
admin_ip: 10.10.10.10             # admin node ip address
region: default                   # upstream mirror region: default,china,europe
language: en                      # default language: en or zh
proxy_env:                        # global proxy env when downloading packages
  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.myqcloud.com,*.tsinghua.edu.cn"
  # http_proxy:  # set your proxy here: e.g http://user:pass@proxy.xxx.com
  # https_proxy: # set your proxy here: e.g http://user:pass@proxy.xxx.com
  # all_proxy:   # set your proxy here: e.g http://user:pass@proxy.xxx.com
```




### `version`

name: `version`, type: `string`, level: `G`

Pigsty version string. The current source default is `v4.5.0`.

Pigsty uses this version string internally for feature control and content rendering. Do not modify this parameter arbitrarily.

Pigsty uses semantic versioning, and the version string typically starts with the character `v`, e.g., `v4.5.0`.






### `admin_ip`

name: `admin_ip`, type: `ip`, level: `G`

Admin node IP address, default is the placeholder IP address: `10.10.10.10`

This parameter identifies the admin node. It usually points to the first Pigsty node, which is the control node.

The default value `10.10.10.10` is a placeholder that will be replaced with the actual admin node IP address during [configure](/docs/setup/install#configure).

Many parameters reference this parameter, such as:

- [`infra_portal`](#infra_portal)
- [`repo_endpoint`](#repo_endpoint)
- [`repo_upstream`](#repo_upstream)
- [`dns_records`](#dns_records)
- [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts)
- [`node_etc_hosts`](/docs/node/param#node_etc_hosts)

Pigsty replaces `${admin_ip}` in these parameters with the actual `admin_ip` value. This lets you specify different admin nodes for different nodes.





### `region`

name: `region`, type: `enum`, level: `G`

Upstream mirror region. The options are `default`, `china`, and `europe`. The default is `default`.

If you select another region, Pigsty looks for its matching `baseurl` in [`repo_upstream`](#repo_upstream). If found, it uses that URL instead of the `default` baseurl.

If the region is `china`, Pigsty tries Chinese mirrors to accelerate downloads. If a repository has no China mirror, Pigsty uses its default upstream mirror.

For [`repo_url_packages`](#repo_url_packages), Pigsty also changes `repo.pigsty.io` to `repo.pigsty.cc` to use domestic mirrors.






### `language`

name: `language`, type: `enum`, level: `G`

Default language. The options are `en` (English) and `zh` (Chinese). The default is `en`.

This parameter affects the language preference of some Pigsty-generated configurations and content, such as the initial language setting of Grafana dashboards.

For Chinese content, we recommend that you set this parameter to `zh`.




### `proxy_env`

name: `proxy_env`, type: `dict`, level: `G`

Global proxy environment variables for package downloads. The default sets `no_proxy`, which lists addresses that should bypass the proxy:

```yaml
proxy_env:
  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.myqcloud.com,*.tsinghua.edu.cn"
  #http_proxy: 'http://username:password@proxy.address.com'
  #https_proxy: 'http://username:password@proxy.address.com'
  #all_proxy: 'http://username:password@proxy.address.com'
```

When installing from the Internet in mainland China, certain packages may be blocked. You can use a proxy to solve this problem.

If you use the Docker module, Pigsty also writes these proxy settings to the Docker Daemon configuration file.

If you run `./configure` with `-x`, Pigsty reads the proxy settings from the current environment. It writes them to the generated `pigsty.yaml` file.





------------------------------

## `CA`

Pigsty uses self-signed CA certificates to support advanced security features such as HTTPS access, PostgreSQL SSL connections, etc.

```yaml
ca_create: true                   # allow creation if CA private key is missing? default true
ca_cn: pigsty-ca                  # CA CN name, fixed as pigsty-ca
cert_validity: 7300d              # certificate validity, default 20 years
```


### `ca_create`

name: `ca_create`, type: `bool`, level: `G`

Specifies whether to create a CA private key if it is missing. The default is `true`.

When set to `true`, Pigsty creates a new CA private key if `files/pki/ca/ca.key` is absent. If `ca.crt` is absent, it uses the existing or newly created private key to issue the CA certificate.

If you already have a CA public-private key pair, you can copy them to the `files/pki/ca` directory:

- `files/pki/ca/ca.crt`: CA public key certificate
- `files/pki/ca/ca.key`: CA private key file

Pigsty reuses an existing CA key pair. If the private key is absent and this parameter is `false`, deployment stops with an error. If only `ca.crt` is missing, Pigsty still reissues it with the existing private key. Always back up and restore the matching `ca.key` and `ca.crt` together to avoid a certificate/key mismatch.

**Keep and back up the new CA private key during deployment. You need it to issue certificates later.**

> Note: Pigsty v3.x used `ca_method` with values `create`/`recreate`/`copy`. Version v4.x replaces it with the boolean `ca_create`.





### `ca_cn`

name: `ca_cn`, type: `string`, level: `G`

CA CN (Common Name). It is fixed at `pigsty-ca`. We do not recommend changes.

You can use the following command to view the Pigsty CA certificate details on a node:

```bash
openssl x509 -text -in /etc/pki/ca.crt
```





### `cert_validity`

name: `cert_validity`, type: `interval`, level: `G`

Validity period for issued certificates. The default is `7300d`, or 20 years. This is sufficient for most scenarios.

This parameter affects the validity of all certificates issued by the [**Pigsty CA**](/docs/concept/sec/ca), including:

- PostgreSQL server certificates
- Patroni API certificates
- etcd server/client certificates
- Other internal service certificates

Note: [`nginx_cert_validity`](#nginx_cert_validity) separately controls the validity of Nginx HTTPS certificates. Modern browsers impose stricter website certificate limits: a maximum of 397 days.







------------------------------

## `INFRA_ID`

Infrastructure identity and portal definition.

```yaml
#infra_seq: 1                     # infra node sequence, REQUIRED identity parameter
infra_portal:                     # infrastructure services exposed via Nginx portal
  home : { domain: i.pigsty }     # default home server definition
infra_data: /data/infra           # infrastructure default data directory
infra_services: [...]             # built-in home navigation entries
infra_extra_services: []          # additional home navigation entries
```



### `infra_seq`

name: `infra_seq`, type: `int`, level: `I`

Infrastructure node sequence number. This identity parameter is REQUIRED and has no default. Set it explicitly on each infrastructure node.

This parameter uniquely identifies each infrastructure node. Typically, use positive integers starting at 1.

Example configuration:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
```




### `infra_portal`

name: `infra_portal`, type: `dict`, level: `G`

Infrastructure services exposed via Nginx portal. The v4.x default value is very concise:

```yaml
infra_portal:
  home : { domain: i.pigsty }     # default home server definition
```

Pigsty configures reverse proxies for the enabled components automatically. Usually, you only need to define the home domain name.

Each record has a key and a value dictionary. The key, `name`, identifies the component. The value defines these parameters:

- `name`: **REQUIRED**, specifies the name of the Nginx server
  - Default record: `home` is a fixed name, please do not modify it.
  - Used as part of the Nginx configuration file name, corresponding to: `/etc/nginx/conf.d/<name>.conf`
  - Nginx servers without a `domain` field will not generate configuration files but will be used as references.
- `domain`: **OPTIONAL** for a reference-only entry. It is **REQUIRED** to expose a service through Nginx and specifies its domain name.
  - In Pigsty self-signed Nginx HTTPS certificates, the domain will be added to the SAN field of the Nginx SSL certificate
  - Pigsty web page cross-references will use the default domain name here
- `endpoint`: Upstream server address for a reverse proxy. Usually, use it as an alternative to `path`.
  - `${admin_ip}` can be used as a placeholder in the configuration and will be dynamically replaced with [`admin_ip`](#admin_ip) during deployment
  - Default reverse proxy servers use [endpoint.conf](https://github.com/pgsty/pigsty/blob/main/roles/infra/templates/nginx/endpoint.conf) as the configuration template
  - Reverse proxy servers can also configure `websocket` and `schema` parameters
- `path`: Local directory for a file server. Usually, use it as an alternative to `endpoint`.
  - Local web servers use [path.conf](https://github.com/pgsty/pigsty/blob/main/roles/infra/templates/nginx/path.conf) as the configuration template
  - Local web servers can also configure the `index` parameter to enable file index pages
- `certbot`: Certbot certificate name; if configured, Certbot will be used to apply for certificates
  - If servers share a certbot value, Pigsty combines their certificate requests. This value becomes the certificate name.
- `cert`: Certificate file path; if configured, will override the default certificate path
- `key`: Certificate key file path; if configured, will override the default certificate key path
- `websocket`: Whether to enable WebSocket support
  - Only reverse proxies can use this parameter. If enabled, it permits upstream WebSocket connections.
- `schema`: Protocol used by the upstream server; if configured, will override the default protocol
  - Default is http; if configured as https, it will force HTTPS connections to the upstream server
- `index`: Whether to enable file index pages
  - Only local file servers can use this parameter. If enabled, autoindex generates directory index pages.
- `log`: Nginx log file path
  - If specified, Nginx writes access logs to this file. Otherwise, the server type determines the default log file.
  - Reverse proxy servers use `/var/log/nginx/<name>.log` as the default log file path
  - Local web servers use the default Access log
- `conf`: Nginx template filename
  - Specifies a configuration template in [roles/infra/templates/nginx](https://github.com/pgsty/pigsty/tree/main/roles/infra/templates/nginx) or [templates/nginx](https://github.com/pgsty/pigsty/tree/main/templates/nginx).
  - Takes precedence over automatic selection by `home` / `path` / `endpoint`. Development sources also have specialized site templates such as `repo.conf`, `beta.conf`, `demo.conf`, `pgext.conf`, and `pgweb.conf`; see [Development Maintenance Reference](/docs/infra/admin/portal#development-maintenance-reference).
  - If this parameter is not specified, the default configuration template will be used
- `cache_dir`: Portal cache directory. When nonempty, the role creates it with owner `nginx:nginx` and mode `0750`. Directory management was added to development sources on 2026-09-01 and is absent from the `v4.5.0` release.
- `domains`: Additional domain list included in Certbot's domain set. Development sources since 2026-09-01 also include it in SANs when issuing new self-signed certificates. Whether the template listens for these aliases still depends on its `server_name`.
- `config`: Nginx configuration code block
  - Configuration text directly injected into the Nginx Server configuration block
- `enforce_https`: Redirect HTTP to HTTPS
  - Global configuration can be specified via nginx_sslmode: enforce
  - This setting does not affect the default home server. For compatibility, that server always listens on both ports 80 and 443.




### `infra_data`

name: `infra_data`, type: `path`, level: `G`

Infrastructure data directory, default value is `/data/infra`.

This directory is used to store data files for infrastructure components, including:

- VictoriaMetrics time series database data
- VictoriaLogs log data
- VictoriaTraces trace data
- Other infrastructure component persistent data

We recommend a separate data disk for this directory. This simplifies management and expansion.



### `infra_services`

name: `infra_services`, type: `service[]`, level: `G`

Built-in navigation entries on the Pigsty home page. Current defaults include Metrics, Logs, Traces, Monitor Targets, Alert Rules, Alert Manager, CA Certificate, Software Repo, and Explain Visualizer.

Each item can use `name`, `url`, `desc`, and `icon`, plus the Chinese display fields `name_cn` and `desc_cn`. This parameter replaces the entire default list. To append entries, use [`infra_extra_services`](#infra_extra_services).



### `infra_extra_services`

name: `infra_extra_services`, type: `service[]`, level: `G`

Navigation entries appended to [`infra_services`](#infra_services). The default is `[]`, and each item uses the same structure as `infra_services`. For example:

```yaml
infra_extra_services:
  - { name: My Service, url: 'https://example.com', desc: 'External Service', icon: 'database' }
```



------------------------------

## `REPO`


This section is about local software repository configuration. Pigsty enables a local software repository (APT/YUM) on infrastructure nodes by default.

During initialization, Pigsty downloads packages and dependencies from the internet. [`repo_packages`](#repo_packages) specifies the packages, and [`repo_upstream`](#repo_upstream) specifies the upstream repositories. The destination is [`{{ nginx_home }}`](#nginx_home) / [`{{ repo_name }}`](#repo_name), which defaults to `/www/pigsty`. The total software and dependency size is approximately 1GB.

The current package candidate is SOW 0.3.0. The source uses SOW to generate RPM/APT metadata. After a successful build, `repo_complete` is both a SHA-256 manifest and a completion marker. When it is present, Pigsty skips downloading and rebuilding by default and uses the existing repository. Force a rebuild with `./infra.yml -t repo_build -e repo_build=true`.

Both `repo_create` and `cache_create` run `sow create --pigsty` directly. They do not fall back to `createrepo_c` or `dpkg-scanpackages`.

Older offline bundles or local repositories might lack SOW. First, refresh the media or install SOW from the Pigsty INFRA repository.

If package downloads are too slow, set a proxy with [`proxy_env`](#proxy_env) for the initial download. You can also download a prebuilt [offline package](/docs/setup/offline). This is a local repository built on the same operating system.


```yaml
repo_enabled: true                # create local repo on this infra node?
repo_home: /www                   # repo home directory, default /www
repo_name: pigsty                 # repo name, default pigsty
repo_endpoint: http://${admin_ip}:80 # repo access endpoint
repo_remove: true                 # remove existing upstream repo definitions
repo_modules: infra,node,pgsql    # enabled upstream repo modules
#repo_upstream: []                # upstream repo definitions (inherited from OS variables)
#repo_packages: []                # packages to download (inherited from OS variables)
#repo_extra_packages: []          # extra packages to download
repo_url_packages: []             # extra packages downloaded via URL
```




### `repo_enabled`

name: `repo_enabled`, type: `bool`, level: `G/I`

Specifies whether to create a local repository on this infrastructure node. The default is `true`, which creates a repository on every Infra node.

With multiple infrastructure nodes, you can keep repositories on only 1-2 nodes. Set this parameter to `false` elsewhere to avoid duplicate downloads and builds.





### `repo_home`

name: `repo_home`, type: `path`, level: `G`

Local software repository home directory, defaults to Nginx's root directory: `/www`.

On a fresh installation, if this path does not exist, the role creates a symlink to [`nginx_data`](#nginx_data). Existing directories and symlinks are preserved unchanged. We generally recommend that you preserve this value. If you change it, keep it consistent with [`nginx_home`](#nginx_home).




### `repo_name`

name: `repo_name`, type: `string`, level: `G`

Local repository name, default is `pigsty`. Changing this repository name is not recommended.

The final repository path is `{{ repo_home }}/{{ repo_name }}`, defaulting to `/www/pigsty`.





### `repo_endpoint`

name: `repo_endpoint`, type: `url`, level: `G`

Endpoint used by other nodes to access this repository, default value: `http://${admin_ip}:80`.

Pigsty starts Nginx on infrastructure nodes at ports 80/443 by default, providing local software repository (static files) service.

Adjust this parameter after changes to [`nginx_port`](#nginx_port) or [`nginx_ssl_port`](#nginx_ssl_port). Also adjust it if the infrastructure node differs from the control node.

If you use a domain name, you can add resolution in [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts), [`node_etc_hosts`](/docs/node/param#node_etc_hosts), or [`dns_records`](#dns_records).





### `repo_remove`

name: `repo_remove`, type: `bool`, level: `G/A`

Specifies whether to remove existing upstream repository definitions during a local repository build. The default is `true`.

When this parameter is enabled, all existing repository files in `/etc/yum.repos.d` will be moved and backed up to `/etc/yum.repos.d/backup`. On Debian systems, `/etc/apt/sources.list` and `/etc/apt/sources.list.d` are removed and backed up to `/etc/apt/backup`.

Pigsty does not control the content of existing operating-system sources. Pigsty-validated upstream sources can improve package download speed and success rate.

Some EL/Deb-compatible variants use private sources for many packages. If you need to preserve existing upstream repository definitions, set this parameter to `false`.






### `repo_modules`

name: `repo_modules`, type: `string`, level: `G/A`

Which upstream repository modules will be added to the local software source, default value: `infra,node,pgsql`

When Pigsty attempts to add upstream repositories, it filters entries in [`repo_upstream`](#repo_upstream) based on this parameter's value. Only entries whose `module` field matches this parameter's value will be added to the local software source.

During the build stage, `infra` is automatically added to the effective module list so SOW can be installed. This bootstrap dependency is restored even if a user overrides `repo_modules` without `infra`.

Modules are comma-separated. Available module lists can be found in the `repo_upstream` definitions; common modules include:

- `local`: Local Pigsty repository
- `infra`: Infrastructure packages (Nginx, Docker, etc.)
- `node`: OS base packages
- `pgsql`: PostgreSQL-related packages
- `extra`: Extra PostgreSQL extensions
- `docker`: Docker-related
- `redis`: Redis-related
- `mongo`: MongoDB-related
- `mysql`: MySQL-related
- etc...





### `repo_upstream`

name: `repo_upstream`, type: `upstream[]`, level: `G`

Upstream package sources for the local repository build. This parameter has no direct default. If unset, Pigsty loads `repo_upstream_default` from [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/). It selects the definition for the current node's operating-system family.

Pigsty provides complete upstream repository definitions for currently supported OS versions (EL 8/9/10, Debian 12/13, Ubuntu 22/24/26), including:

- OS base repositories (BaseOS, AppStream, EPEL, etc.)
- PostgreSQL official PGDG repository
- Pigsty extension repository
- Various third-party software repositories (Docker, Nginx, Grafana, etc.)

Each upstream repository definition contains the following fields:

```yaml
- name: pigsty-pgsql              # repository name
  description: 'Pigsty PGSQL'     # repository description
  module: pgsql                   # module it belongs to
  releases: [8,9,10]              # supported OS versions
  arch: [x86_64, aarch64]         # supported CPU architectures
  baseurl:                        # repository URL, configured by region
    default: 'https://repo.pigsty.io/yum/pgsql/el$releasever.$basearch'
    china: 'https://repo.pigsty.cc/yum/pgsql/el$releasever.$basearch'
  # meta: { module_hotfixes: 1 } # enable only when explicitly replacing an EL module stream
```

RPM upstream repositories retain native DNF module filtering by default. Set `meta.module_hotfixes` only on a repository that must actually replace an EL module stream. Clients use `module_hotfixes=1` for Pigsty's aggregated local repository. Pigsty no longer generates artificial `modules.yaml` / ModuleMD metadata.

Users typically don't need to modify this parameter unless they have special repository requirements. For detailed repository definitions, refer to the configuration files for corresponding operating systems in the [`roles/node_id/vars/`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/) directory.




### `repo_packages`

name: `repo_packages`, type: `string[]`, level: `G`

String array of packages to download with their dependencies. Each entry is a **space-separated** package list. Downloads use `repotrack` or `apt download`.

This parameter has no direct default. If unset, Pigsty loads `repo_packages_default` from [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/):

```yaml
[ node-bootstrap, infra-package, infra-addons, node-package1, node-package2, node-package3, pgsql-utility, extra-modules ]
```

Each element in this parameter will be translated according to the `package_map` in the above files, based on the specific OS distro major version. For example, on EL systems it translates to:

```yaml
node-bootstrap:          "ansible python3 python3-requests python3-jmespath python3-cryptography dnf-utils sow sshpass"
infra-package:           "nginx dnsmasq etcd haproxy vip-manager node-exporter keepalived-exporter pg-exporter pgbackrest-exporter redis-exporter redis valkey silo mcli sow pig"
infra-addons:            "grafana grafana-plugins grafana-victoriametrics-ds grafana-victorialogs-ds victoria-metrics victoria-logs victoria-traces vlogscli vmutils vector alertmanager"
```

By convention, `repo_packages` contains packages independent of the PostgreSQL major version, including Infra, Node, and PGDG Common packages. Put version-specific kernels and extensions in `repo_extra_packages`. This simplifies PostgreSQL major-version changes.







### `repo_extra_packages`

name: `repo_extra_packages`, type: `string[]`, level: `G/C/I`

Additional packages to download without changing [`repo_packages`](#repo_packages). These are typically specific to a PostgreSQL major version. The default is an empty list.

If not explicitly defined, Pigsty will load the default from the `repo_extra_packages_default` variable defined in [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/):

```yaml
[ pgsql-main ]
```

Pigsty translates these package names. It replaces `$v` with [`pg_version`](/docs/pgsql/param#pg_version), the current PostgreSQL major version. The default version is `18`.

The `pgsql-main` here translates on EL systems to:

```yaml
postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl pg_repack_$v wal2json_$v pgvector_$v
```

Users can typically specify PostgreSQL major version-related packages here without affecting the other PG version-independent packages defined in `repo_packages`.






### `repo_url_packages`

name: `repo_url_packages`, type: `object[] | string[]`, level: `G`

Packages downloaded directly from the Internet using URLs, default is an empty array: `[]`

You can use URL strings directly as array elements in this parameter, or use object structures to explicitly specify URLs and filenames.

The [`region`](#region) variable affects this parameter. For mainland China, Pigsty automatically changes `repo.pigsty.io` URLs to `repo.pigsty.cc`.





------------------------------

## `INFRA_PACKAGE`

These RPM/DEB packages are installed only on INFRA nodes.



### `infra_packages`

name: `infra_packages`, type: `string[]`, level: `G`

Packages to install on Infra nodes. Each array entry is a **space-separated** package list.

The default varies by platform. If unset, Pigsty loads `infra_packages_default` from the matching file under [`roles/node_id/vars`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars). It selects the file by operating-system version and CPU architecture.

For example, the current mapping for `EL 9 x86_64` is:

```yaml
infra_packages_default:
  - grafana,grafana-plugins,grafana-victorialogs-ds,grafana-victoriametrics-ds,victoria-metrics,victoria-logs,victoria-traces,vmutils,vlogscli,alertmanager
  - node-exporter,blackbox-exporter,nginx-exporter,pg-exporter,pev2,nginx,dnsmasq,ansible,etcd,python3-requests,redis,mcli,restic,certbot,python3-certbot-nginx
```

The current mapping for `Debian 13 x86_64` is:

```yaml
infra_packages_default:
  - grafana,grafana-plugins,grafana-victorialogs-ds,grafana-victoriametrics-ds,victoria-metrics,victoria-logs,victoria-traces,vmutils,vlogscli,alertmanager
  - node-exporter,blackbox-exporter,nginx-exporter,pg-exporter,pev2,nginx,dnsmasq,ansible,etcd,python3-requests,redis,mcli,restic,certbot,python3-certbot-nginx
```

> Note: v4.x uses the VictoriaMetrics suite to replace Prometheus and Loki, so the package list differs significantly from v3.x.

------------------------------

## `NGINX`

Nginx proxies Pigsty web services, including the Home Page, Grafana, and VictoriaMetrics. It also proxies optional tools such as PGWeb, Jupyter Lab, Pgadmin, and Bytebase. It serves static resources and reports, including `pev`, `schemaspy`, and `pgbadger`.

Nginx also serves the local Yum/Apt repository, which stores and distributes Pigsty packages.

```yaml
nginx_enabled: true               # enable Nginx on this infra node?
nginx_clean: false                # clean existing Nginx config during init?
nginx_exporter_enabled: true      # enable nginx_exporter?
nginx_exporter_port: 9113         # nginx_exporter listen port
nginx_sslmode: enable             # SSL mode: disable,enable,enforce
nginx_cert_validity: 397d         # self-signed cert validity
nginx_home: /www                  # Nginx content directory (symlink)
nginx_data: /data/nginx           # Nginx actual data directory
nginx_users: {}                   # basic auth users dictionary
nginx_port: 80                    # HTTP port
nginx_ssl_port: 443               # HTTPS port
certbot_sign: false               # sign cert with certbot?
certbot_email: your@email.com     # certbot email
certbot_options: ''               # certbot extra options
```



### `nginx_enabled`

name: `nginx_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable Nginx on this Infra node. The default is `true`.

Nginx is a core component of Pigsty infrastructure, responsible for:
- Providing local software repository service
- Reverse proxying Grafana, VictoriaMetrics, and other web services
- Hosting static files and reports





### `nginx_clean`

name: `nginx_clean`, type: `bool`, level: `G/A`

Specifies whether to delete existing Nginx configuration during initialization. The default is `false`.

If set to `true`, Pigsty deletes all configuration files under `/etc/nginx/conf.d/` during Nginx initialization. This starts with an empty configuration directory.

If you're deploying for the first time or want to completely rebuild Nginx configuration, you can set this parameter to `true`.




### `nginx_exporter_enabled`

name: `nginx_exporter_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable nginx_exporter on this infrastructure node. The default is `true`.

If this option is disabled, the `/nginx` health check stub will also be disabled. Consider disabling this when your Nginx version doesn't support this feature.




### `nginx_exporter_port`

name: `nginx_exporter_port`, type: `port`, level: `G`

nginx_exporter listen port, default value is `9113`.

nginx_exporter is used to collect Nginx operational metrics for VictoriaMetrics to scrape and monitor.





### `nginx_sslmode`

name: `nginx_sslmode`, type: `enum`, level: `G`

Nginx SSL operating mode. The options are `disable`, `enable`, and `enforce`. The default, `enable`, enables SSL but does not require it.

* `disable`: Only listen on the port specified by [`nginx_port`](#nginx_port) to serve HTTP requests.
* `enable`: Also listen on the port specified by [`nginx_ssl_port`](#nginx_ssl_port) to serve HTTPS requests.
* `enforce`: All links will be rendered to use `https://` by default
  * Also redirect port 80 to port 443 for non-default servers in [`infra_portal`](#infra_portal)




### `nginx_cert_validity`

name: `nginx_cert_validity`, type: `duration`, level: `G`

Nginx self-signed certificate validity, default value is `397d` (approximately 13 months).

The default follows the modern browser limit of 397 days for website certificates. We do not recommend longer validity because browsers can reject these certificates.




### `nginx_home`

name: `nginx_home`, type: `path`, level: `G`

Nginx server static content directory, default: `/www`

This is a symlink that actually points to the [`nginx_data`](#nginx_data) directory. This directory contains static resources and software repository files.

Avoid unnecessary changes to this parameter. If changed, keep it consistent with [`repo_home`](#repo_home).




### `nginx_data`

name: `nginx_data`, type: `path`, level: `G`

Nginx actual data directory, default is `/data/nginx`.

This directory stores Nginx static files. The [`nginx_home`](#nginx_home) symlink points to it.

We recommend a data disk for this directory to simplify management of large package files.




### `nginx_users`

name: `nginx_users`, type: `dict`, level: `G`

Nginx Basic Authentication user dictionary, default is an empty dictionary `{}`.

Format is `{ username: password }` key-value pairs, for example:

```yaml
nginx_users:
  admin: pigsty
  viewer: readonly
```

These users can be used to protect certain Nginx endpoints that require authentication.




### `nginx_port`

name: `nginx_port`, type: `port`, level: `G`

Nginx HTTP listen port. The default is `80`. We recommend that you keep the default.

If port 80 is occupied, you can use another port. Also update [`repo_endpoint`](#repo_endpoint) to match the new port.






### `nginx_ssl_port`

name: `nginx_ssl_port`, type: `port`, level: `G`

Nginx SSL listen port. The default is `443`. We recommend that you keep the default.




### `certbot_sign`

name: `certbot_sign`, type: `bool`, level: `G/A`

Specifies whether Certbot signs Nginx certificates during installation. The default is `false`.

If set to `true`, Pigsty uses Certbot to request free Let's Encrypt SSL certificates automatically. The `nginx` role does this during `infra.yml` and `deploy.yml`.

For an [`infra_portal`](#infra_portal) entry with `certbot` set, Pigsty requests a certificate for its `domain`. The `certbot` value becomes the certificate name.

If multiple servers or domains share the same `certbot` value, Pigsty combines them in one request. It uses that value as the certificate name.

Enabling this option requires:

- A public domain resolves to the current node's public IP and provides access to the node.
- The current node can access the Let's Encrypt API interface

This option is disabled by default. After installation, run `make cert` manually if needed. It calls the generated `/etc/nginx/sign-cert` script to request or update certificates with Certbot.




### `certbot_email`

name: `certbot_email`, type: `string`, level: `G/A`

Email address for receiving certificate expiration reminder emails, default value is `your@email.com`.

When `certbot_sign` is set to `true`, it's recommended to provide this parameter. Let's Encrypt will send reminder emails to this address when certificates are about to expire.




### `certbot_options`

name: `certbot_options`, type: `string`, level: `G/A`

Additional configuration parameters passed to certbot, default value is an empty string.

Use this parameter for extra Certbot command-line options. For example, `--dry-run` previews and tests the operation without requesting actual certificates.





------------------------------

## `DNS`

Pigsty enables DNSMASQ on Infra nodes by default. It resolves auxiliary names such as `i.pigsty`, `m.pigsty`, and `api.pigsty`. The optional `sss.pigsty` name can provide the Silo endpoint.

Resolution records are stored in the `/etc/dnsmasq.d/pigsty/default` file on Infra nodes. To use this DNS server, you must add `nameserver <ip>` to `/etc/resolv.conf`. The [`node_dns_servers`](/docs/node/param#node_dns_servers) parameter handles this.

```yaml
dns_enabled: true                 # setup dnsmasq on this infra node?
dns_port: 53                      # DNS server listen port
dns_records:                      # dynamic DNS records
  - "${admin_ip} i.pigsty"
  - "${admin_ip} m.pigsty supa.pigsty api.pigsty adm.pigsty cli.pigsty ddl.pigsty"
```



### `dns_enabled`

name: `dns_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable DNSMASQ on this Infra node. The default is `true`.

Set this value to `false` if you do not need the default DNS server. For example, you might have an external server or a provider that prohibits DNS servers. Use static records in [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts) and [`node_etc_hosts`](/docs/node/param#node_etc_hosts) instead.




### `dns_port`

name: `dns_port`, type: `port`, level: `G`

DNSMASQ default listening port, default is `53`. It's not recommended to modify the default DNS service port.





### `dns_records`

name: `dns_records`, type: `string[]`, level: `G`

Dynamic DNS records resolved by dnsmasq, generally used to resolve auxiliary domain names to the admin node. These records are written to the `/etc/dnsmasq.d/pigsty/default` file on infrastructure nodes.

v4.x default value:

```yaml
dns_records:
  - "${admin_ip} i.pigsty"
  - "${admin_ip} m.pigsty supa.pigsty api.pigsty adm.pigsty cli.pigsty ddl.pigsty"
```

The `${admin_ip}` placeholder is used here and will be replaced with the actual [`admin_ip`](#admin_ip) value during deployment.

Common domain name purposes:

- `i.pigsty`: Pigsty home page
- `m.pigsty`: Commonly used for the Silo console (optional)
- `p.pigsty`: Commonly used for the VictoriaMetrics Web UI when explicitly configured in `infra_portal`
- `api.pigsty`: API service
- `adm.pigsty`: Admin service
- Others customized based on actual deployment needs



------------------------------

## `VICTORIA`

Pigsty v4.x uses the VictoriaMetrics suite for observability in place of Prometheus and Loki:

- **VictoriaMetrics**: Replaces Prometheus as the time series database for storing monitoring metrics
- **VictoriaLogs**: Replaces Loki as the log aggregation storage
- **VictoriaTraces**: Distributed trace storage
- **VMAlert**: Replaces Prometheus Alerting for alert rule evaluation

```yaml
vmetrics_enabled: true            # enable VictoriaMetrics?
vmetrics_clean: false             # clean data during init?
vmetrics_port: 8428               # listen port
vmetrics_scrape_interval: 10s     # global scrape interval
vmetrics_scrape_timeout: 8s       # global scrape timeout
vmetrics_options: >-
  -retentionPeriod=15d
  -promscrape.fileSDCheckInterval=5s
vlogs_enabled: true               # enable VictoriaLogs?
vlogs_clean: false                # clean data during init?
vlogs_port: 9428                  # listen port
vlogs_options: >-
  -retentionPeriod=15d
  -retention.maxDiskSpaceUsageBytes=50GiB
  -insert.maxLineSizeBytes=1MB
  -search.maxQueryDuration=120s
vtraces_enabled: true             # enable VictoriaTraces?
vtraces_clean: false              # clean data during init?
vtraces_port: 10428               # listen port
vtraces_options: >-
  -retentionPeriod=15d
  -retention.maxDiskSpaceUsageBytes=50GiB
vmalert_enabled: true             # enable VMAlert?
vmalert_port: 8880                # listen port
vmalert_options: ''               # extra CLI options
```


### `vmetrics_enabled`

name: `vmetrics_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable VictoriaMetrics on this Infra node. The default is `true`.

VictoriaMetrics is the core monitoring component in Pigsty v4.x, replacing Prometheus as the time series database, responsible for:

- Scraping monitoring metrics from various exporters
- Storing time series data
- Providing PromQL-compatible query interface
- Supporting Grafana data sources


### `vmetrics_clean`

name: `vmetrics_clean`, type: `bool`, level: `G/A`

Specifies whether to delete existing VictoriaMetrics data during initialization. The default is `false`.

When set to `true`, existing time series data will be deleted during initialization. Use this option carefully unless you're sure you want to rebuild monitoring data.


### `vmetrics_port`

name: `vmetrics_port`, type: `port`, level: `G`

VictoriaMetrics listen port, default value is `8428`.

This port is used for:
- HTTP API access
- Web UI access
- Prometheus-compatible remote write/read
- Grafana data source connections


### `vmetrics_scrape_interval`

name: `vmetrics_scrape_interval`, type: `interval`, level: `G`

VictoriaMetrics global metrics scrape interval, default value is `10s`.

A 10-30 second scrape interval is suitable for production. A shorter interval gives more detailed monitoring data but increases storage and CPU overhead.


### `vmetrics_scrape_timeout`

name: `vmetrics_scrape_timeout`, type: `interval`, level: `G`

VictoriaMetrics global scrape timeout, default is `8s`.

A scrape timeout helps prevent monitoring queries from accumulating. Set it below and close to [`vmetrics_scrape_interval`](#vmetrics_scrape_interval). This keeps each scrape shorter than the interval.


### `vmetrics_options`

name: `vmetrics_options`, type: `arg`, level: `G`

VictoriaMetrics extra command line options, default value:

```yaml
vmetrics_options: >-
  -retentionPeriod=15d
  -promscrape.fileSDCheckInterval=5s
```

Common parameter descriptions:

- `-retentionPeriod=15d`: Data retention period, default 15 days
- `-promscrape.fileSDCheckInterval=5s`: File service discovery refresh interval

You can add other VictoriaMetrics-supported parameters as needed.


### `vlogs_enabled`

name: `vlogs_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable VictoriaLogs on this Infra node. The default is `true`.

VictoriaLogs replaces Loki as the log aggregation storage, responsible for:

- Receiving log data from Vector
- Storing and indexing logs
- Providing log query interface
- Supporting Grafana VictoriaLogs data source


### `vlogs_clean`

name: `vlogs_clean`, type: `bool`, level: `G/A`

Specifies whether to delete existing VictoriaLogs data during initialization. The default is `false`.


### `vlogs_port`

name: `vlogs_port`, type: `port`, level: `G`

VictoriaLogs listen port, default value is `9428`.


### `vlogs_options`

name: `vlogs_options`, type: `arg`, level: `G`

VictoriaLogs extra command line options, default value:

```yaml
vlogs_options: >-
  -retentionPeriod=15d
  -retention.maxDiskSpaceUsageBytes=50GiB
  -insert.maxLineSizeBytes=1MB
  -search.maxQueryDuration=120s
```

Common parameter descriptions:

- `-retentionPeriod=15d`: Log retention period, default 15 days
- `-retention.maxDiskSpaceUsageBytes=50GiB`: Maximum disk usage
- `-insert.maxLineSizeBytes=1MB`: Maximum single log line size
- `-search.maxQueryDuration=120s`: Maximum query execution time


### `vtraces_enabled`

name: `vtraces_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable VictoriaTraces on this Infra node. The default is `true`.

VictoriaTraces stores and queries distributed trace data. It supports Jaeger, Zipkin, and other trace protocols.


### `vtraces_clean`

name: `vtraces_clean`, type: `bool`, level: `G/A`

Specifies whether to delete existing VictoriaTraces data during initialization. The default is `false`.


### `vtraces_port`

name: `vtraces_port`, type: `port`, level: `G`

VictoriaTraces listen port, default value is `10428`.


### `vtraces_options`

name: `vtraces_options`, type: `arg`, level: `G`

VictoriaTraces extra command line options, default value:

```yaml
vtraces_options: >-
  -retentionPeriod=15d
  -retention.maxDiskSpaceUsageBytes=50GiB
```


### `vmalert_enabled`

name: `vmalert_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable VMAlert on this Infra node. The default is `true`.

VMAlert evaluates alert rules and works with Alertmanager. It replaces Prometheus Alerting.


### `vmalert_port`

name: `vmalert_port`, type: `port`, level: `G`

VMAlert listen port, default value is `8880`.


### `vmalert_options`

name: `vmalert_options`, type: `arg`, level: `G`

VMAlert extra command line options, default value is an empty string.





------------------------------

## `PROMETHEUS`

This section now primarily contains Blackbox Exporter and Alertmanager configuration.

> Note: Pigsty v4.x uses VictoriaMetrics instead of Prometheus. The current interface no longer includes `prometheus_*` and `pushgateway_*`. Use `vmetrics_*` and `vmalert_*` under [`VICTORIA`](#victoria) for metric storage and rule evaluation.

```yaml
blackbox_enabled: true            # enable blackbox_exporter?
blackbox_port: 9115               # blackbox_exporter listen port
blackbox_options: ''              # extra CLI options
alertmanager_enabled: true        # enable alertmanager?
alertmanager_port: 9059           # alertmanager listen port
alertmanager_options: ''          # extra CLI options
exporter_metrics_path: /metrics   # exporter metrics path
```


### `blackbox_enabled`

name: `blackbox_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable BlackboxExporter on this Infra node. The default is `true`.

BlackboxExporter sends ICMP packets to node IP addresses, VIP addresses, and PostgreSQL VIP addresses to test network connectivity. It can also perform HTTP, TCP, DNS, and other probes.


### `blackbox_port`

name: `blackbox_port`, type: `port`, level: `G`

Blackbox Exporter listen port, default value is `9115`.


### `blackbox_options`

name: `blackbox_options`, type: `arg`, level: `G`

BlackboxExporter extra command line options, default value: empty string.



### `alertmanager_enabled`

name: `alertmanager_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable AlertManager on this Infra node. The default is `true`.

AlertManager receives alerts from VMAlert. It groups, inhibits, silences, routes, and otherwise processes these alerts.


### `alertmanager_port`

name: `alertmanager_port`, type: `port`, level: `G`

AlertManager listen port, default value is `9059`.

If you modify this port, ensure you update the alertmanager entry's `endpoint` configuration in [`infra_portal`](#infra_portal) accordingly (if defined).


### `alertmanager_options`

name: `alertmanager_options`, type: `arg`, level: `G`

AlertManager extra command line options, default value: empty string.


### `exporter_metrics_path`

name: `exporter_metrics_path`, type: `path`, level: `G`

HTTP endpoint path where monitoring exporters expose metrics, default: `/metrics`. Not recommended to modify this parameter.

This parameter defines the standard path for all exporters to expose monitoring metrics.





------------------------------

## `GRAFANA`

Grafana provides the monitoring system frontend. It also supports data analysis, visualization, low-code data application development, and application prototyping.


```yaml
grafana_enabled: true             # enable Grafana?
grafana_port: 3000                # Grafana listen port
grafana_clean: false              # clean data during init?
grafana_admin_username: admin     # admin username
grafana_admin_password: pigsty    # admin password
grafana_auth_proxy: false         # enable auth proxy?
grafana_pgurl: ''                 # external PostgreSQL URL
grafana_view_password: DBUser.Viewer  # PG datasource password
```



### `grafana_enabled`

name: `grafana_enabled`, type: `bool`, level: `G/I`

Specifies whether to enable Grafana on this Infra node. The default is `true`, which installs and enables Grafana on all infrastructure nodes.




### `grafana_port`

name: `grafana_port`, type: `port`, level: `G`

Grafana listen port, default value is `3000`.

If you need to access Grafana directly (not through Nginx reverse proxy), you can use this port.



### `grafana_clean`

name: `grafana_clean`, type: `bool`, level: `G/A`

Specifies whether to delete Grafana data files during initialization. The default is `false`.

This operation removes `/var/lib/grafana/grafana.db`, ensuring a fresh Grafana installation.

If you want to preserve existing Grafana configuration (such as dashboards, users, data sources, etc.), set this parameter to `false`.





### `grafana_admin_username`

name: `grafana_admin_username`, type: `username`, level: `G`

Grafana admin username, default is `admin`.





### `grafana_admin_password`

name: `grafana_admin_password`, type: `password`, level: `G`

Grafana admin password, default is `pigsty`.

> **IMPORTANT: Change this password before production deployment.**




### `grafana_auth_proxy`

name: `grafana_auth_proxy`, type: `bool`, level: `G`

Specifies whether to enable the Grafana authentication proxy. The default is `false`.

If enabled, Grafana trusts user identity information from the Nginx reverse proxy. This supports single sign-on (SSO).

This is typically used for integration with external identity authentication systems.



### `grafana_pgurl`

name: `grafana_pgurl`, type: `url`, level: `G`

External PostgreSQL database URL for Grafana persistence storage. Default is an empty string.

If specified, Grafana will use this PostgreSQL database instead of the default SQLite database to store its configuration data.

Format example: `postgres://grafana:password@pg-meta:5432/grafana?sslmode=disable`

This is useful for scenarios requiring Grafana high availability deployment or data persistence.



### `grafana_view_password`

name: `grafana_view_password`, type: `password`, level: `G`

Read-only user password used by Grafana metadb PG data source, default is `DBUser.Viewer`.

This password is used for Grafana to connect to the PostgreSQL CMDB data source to query metadata in read-only mode.
