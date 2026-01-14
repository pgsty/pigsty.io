---
title: Parameters
description: INFRA module provides 10 sections with 70+ configurable parameters
weight: 3030
icon: fa-solid fa-sliders
categories: [Reference]
---


The INFRA module is responsible for deploying Pigsty's infrastructure components: local software repository, Nginx, DNSMasq, VictoriaMetrics, VictoriaLogs, Grafana, Alertmanager, Blackbox Exporter, and other monitoring and alerting infrastructure.

> Pigsty v4.0 uses VictoriaMetrics to replace Prometheus and VictoriaLogs to replace Loki, providing a superior observability solution.


| Section                           | Description                                          |
|:----------------------------------|:-----------------------------------------------------|
| [`META`](#meta)                   | Pigsty metadata: version, admin IP, region, language, proxy |
| [`CA`](#ca)                       | Self-signed CA certificate management               |
| [`INFRA_ID`](#infra_id)           | Infrastructure node identity and service portal     |
| [`REPO`](#repo)                   | Local software repository configuration             |
| [`INFRA_PACKAGE`](#infra_package) | Infrastructure node package installation            |
| [`NGINX`](#nginx)                 | Nginx web server and reverse proxy configuration    |
| [`DNS`](#dns)                     | DNSMasq DNS server configuration                    |
| [`VICTORIA`](#victoria)           | VictoriaMetrics/Logs/Traces observability stack     |
| [`PROMETHEUS`](#prometheus)       | Alertmanager and Blackbox Exporter                  |
| [`GRAFANA`](#grafana)             | Grafana visualization platform configuration        |


----------------

## Parameter Overview

[`META`](#meta) parameters define Pigsty metadata, including version string, admin node IP, repository mirror region, default language, and proxy settings.

| Parameter                       | Type         | Level | Description                              |
|:--------------------------------|:------------:|:-----:|:-----------------------------------------|
| [`version`](#version)           | `string`     | `G`   | Pigsty version string                    |
| [`admin_ip`](#admin_ip)         | `ip`         | `G`   | Admin node IP address                    |
| [`region`](#region)             | `enum`       | `G`   | Upstream mirror region: default,china,europe |
| [`language`](#language)         | `enum`       | `G`   | Default language: en or zh               |
| [`proxy_env`](#proxy_env)       | `dict`       | `G`   | Global proxy environment variables       |

[`CA`](#ca) parameters configure Pigsty's self-signed CA certificate management, including CA creation, CA name, and certificate validity.

| Parameter                           | Type        | Level | Description                          |
|:------------------------------------|:-----------:|:-----:|:-------------------------------------|
| [`ca_create`](#ca_create)           | `bool`      | `G`   | Create CA if not exists? Default true |
| [`ca_cn`](#ca_cn)                   | `string`    | `G`   | CA CN name, fixed as pigsty-ca       |
| [`cert_validity`](#cert_validity)   | `interval`  | `G`   | Certificate validity, default 20 years |

[`INFRA_ID`](#infra_id) parameters define infrastructure node identity, including node sequence number, service portal configuration, and data directory.

| Parameter                         | Type     | Level | Description                              |
|:----------------------------------|:--------:|:-----:|:-----------------------------------------|
| [`infra_seq`](#infra_seq)         | `int`    | `I`   | Infrastructure node sequence, REQUIRED  |
| [`infra_portal`](#infra_portal)   | `dict`   | `G`   | Infrastructure services exposed via Nginx portal |
| [`infra_data`](#infra_data)       | `path`   | `G`   | Infrastructure data directory, default /data/infra |

[`REPO`](#repo) parameters configure the local software repository, including repository enable switch, directory paths, upstream source definitions, and packages to download.

| Parameter                                     | Type          | Level   | Description                            |
|:----------------------------------------------|:-------------:|:-------:|:---------------------------------------|
| [`repo_enabled`](#repo_enabled)               | `bool`        | `G/I`   | Create local repo on this infra node?  |
| [`repo_home`](#repo_home)                     | `path`        | `G`     | Repo home directory, default `/www`    |
| [`repo_name`](#repo_name)                     | `string`      | `G`     | Repo name, default `pigsty`            |
| [`repo_endpoint`](#repo_endpoint)             | `url`         | `G`     | Repo access endpoint: domain or `ip:port` |
| [`repo_remove`](#repo_remove)                 | `bool`        | `G/A`   | Remove existing upstream repo definitions? |
| [`repo_modules`](#repo_modules)               | `string`      | `G/A`   | Enabled upstream repo modules, comma separated |
| [`repo_upstream`](#repo_upstream)             | `upstream[]`  | `G`     | Upstream repo definitions              |
| [`repo_packages`](#repo_packages)             | `string[]`    | `G`     | Packages to download from upstream     |
| [`repo_extra_packages`](#repo_extra_packages) | `string[]`    | `G/C/I` | Extra packages to download             |
| [`repo_url_packages`](#repo_url_packages)     | `string[]`    | `G`     | Extra packages downloaded via URL      |

[`INFRA_PACKAGE`](#infra_package) parameters define packages to install on infrastructure nodes, including RPM/DEB packages and PIP packages.

| Parameter                                   | Type        | Level | Description                          |
|:--------------------------------------------|:-----------:|:-----:|:-------------------------------------|
| [`infra_packages`](#infra_packages)         | `string[]`  | `G`   | Packages to install on infra nodes   |
| [`infra_packages_pip`](#infra_packages_pip) | `string`    | `G`   | Pip packages to install on infra nodes |

[`NGINX`](#nginx) parameters configure Nginx web server and reverse proxy, including enable switch, ports, SSL mode, certificates, and basic authentication.

| Parameter                                       | Type       | Level  | Description                              |
|:------------------------------------------------|:----------:|:------:|:-----------------------------------------|
| [`nginx_enabled`](#nginx_enabled)               | `bool`     | `G/I`  | Enable Nginx on this infra node?         |
| [`nginx_clean`](#nginx_clean)                   | `bool`     | `G/A`  | Clean existing Nginx config during init? |
| [`nginx_exporter_enabled`](#nginx_exporter_enabled) | `bool` | `G/I`  | Enable nginx_exporter on this infra node? |
| [`nginx_exporter_port`](#nginx_exporter_port)   | `port`     | `G`    | nginx_exporter listen port, default 9113 |
| [`nginx_sslmode`](#nginx_sslmode)               | `enum`     | `G`    | Nginx SSL mode: disable,enable,enforce   |
| [`nginx_cert_validity`](#nginx_cert_validity)   | `duration` | `G`    | Nginx self-signed cert validity, default 397d |
| [`nginx_home`](#nginx_home)                     | `path`     | `G`    | Nginx content dir, default `/www`, symlink to nginx_data |
| [`nginx_data`](#nginx_data)                     | `path`     | `G`    | Nginx actual data dir, default /data/nginx |
| [`nginx_users`](#nginx_users)                   | `dict`     | `G`    | Nginx basic auth users: username-password dict |
| [`nginx_port`](#nginx_port)                     | `port`     | `G`    | Nginx listen port, default 80            |
| [`nginx_ssl_port`](#nginx_ssl_port)             | `port`     | `G`    | Nginx SSL listen port, default 443       |
| [`certbot_sign`](#certbot_sign)                 | `bool`     | `G/A`  | Sign cert with certbot?                  |
| [`certbot_email`](#certbot_email)               | `string`   | `G/A`  | Certbot notification email address       |
| [`certbot_options`](#certbot_options)           | `string`   | `G/A`  | Certbot extra command line options       |

[`DNS`](#dns) parameters configure DNSMasq DNS server, including enable switch, listen port, and dynamic DNS records.

| Parameter                     | Type        | Level  | Description                          |
|:------------------------------|:-----------:|:------:|:-------------------------------------|
| [`dns_enabled`](#dns_enabled) | `bool`      | `G/I`  | Setup dnsmasq on this infra node?    |
| [`dns_port`](#dns_port)       | `port`      | `G`    | DNS server listen port, default 53   |
| [`dns_records`](#dns_records) | `string[]`  | `G`    | Dynamic DNS records resolved by dnsmasq |

[`VICTORIA`](#victoria) parameters configure the VictoriaMetrics/Logs/Traces observability stack, including enable switches, ports, and data retention policies.

| Parameter                                                   | Type       | Level  | Description                              |
|:------------------------------------------------------------|:----------:|:------:|:-----------------------------------------|
| [`vmetrics_enabled`](#vmetrics_enabled)                     | `bool`     | `G/I`  | Enable VictoriaMetrics on this infra node? |
| [`vmetrics_clean`](#vmetrics_clean)                         | `bool`     | `G/A`  | Clean VictoriaMetrics data during init?  |
| [`vmetrics_port`](#vmetrics_port)                           | `port`     | `G`    | VictoriaMetrics listen port, default 8428 |
| [`vmetrics_scrape_interval`](#vmetrics_scrape_interval)     | `interval` | `G`    | Global scrape interval, default 10s      |
| [`vmetrics_scrape_timeout`](#vmetrics_scrape_timeout)       | `interval` | `G`    | Global scrape timeout, default 8s        |
| [`vmetrics_options`](#vmetrics_options)                     | `arg`      | `G`    | VictoriaMetrics extra CLI options        |
| [`vlogs_enabled`](#vlogs_enabled)                           | `bool`     | `G/I`  | Enable VictoriaLogs on this infra node?  |
| [`vlogs_clean`](#vlogs_clean)                               | `bool`     | `G/A`  | Clean VictoriaLogs data during init?     |
| [`vlogs_port`](#vlogs_port)                                 | `port`     | `G`    | VictoriaLogs listen port, default 9428   |
| [`vlogs_options`](#vlogs_options)                           | `arg`      | `G`    | VictoriaLogs extra CLI options           |
| [`vtraces_enabled`](#vtraces_enabled)                       | `bool`     | `G/I`  | Enable VictoriaTraces on this infra node? |
| [`vtraces_clean`](#vtraces_clean)                           | `bool`     | `G/A`  | Clean VictoriaTraces data during init?   |
| [`vtraces_port`](#vtraces_port)                             | `port`     | `G`    | VictoriaTraces listen port, default 10428 |
| [`vtraces_options`](#vtraces_options)                       | `arg`      | `G`    | VictoriaTraces extra CLI options         |
| [`vmalert_enabled`](#vmalert_enabled)                       | `bool`     | `G/I`  | Enable VMAlert on this infra node?       |
| [`vmalert_port`](#vmalert_port)                             | `port`     | `G`    | VMAlert listen port, default 8880        |
| [`vmalert_options`](#vmalert_options)                       | `arg`      | `G`    | VMAlert extra CLI options                |

[`PROMETHEUS`](#prometheus) parameters configure Alertmanager and Blackbox Exporter, providing alert management and network probing capabilities.

| Parameter                                       | Type     | Level  | Description                              |
|:------------------------------------------------|:--------:|:------:|:-----------------------------------------|
| [`blackbox_enabled`](#blackbox_enabled)         | `bool`   | `G/I`  | Setup blackbox_exporter on this infra node? |
| [`blackbox_port`](#blackbox_port)               | `port`   | `G`    | blackbox_exporter listen port, default 9115 |
| [`blackbox_options`](#blackbox_options)         | `arg`    | `G`    | blackbox_exporter extra CLI options      |
| [`alertmanager_enabled`](#alertmanager_enabled) | `bool`   | `G/I`  | Setup alertmanager on this infra node?   |
| [`alertmanager_port`](#alertmanager_port)       | `port`   | `G`    | AlertManager listen port, default 9059   |
| [`alertmanager_options`](#alertmanager_options) | `arg`    | `G`    | alertmanager extra CLI options           |
| [`exporter_metrics_path`](#exporter_metrics_path) | `path` | `G`    | Exporter metrics path, default /metrics  |

[`GRAFANA`](#grafana) parameters configure the Grafana visualization platform, including enable switch, port, admin credentials, and data source configuration.

| Parameter                                           | Type       | Level  | Description                              |
|:----------------------------------------------------|:----------:|:------:|:-----------------------------------------|
| [`grafana_enabled`](#grafana_enabled)               | `bool`     | `G/I`  | Enable Grafana on this infra node?       |
| [`grafana_port`](#grafana_port)                     | `port`     | `G`    | Grafana listen port, default 3000        |
| [`grafana_clean`](#grafana_clean)                   | `bool`     | `G/A`  | Clean Grafana data during init?          |
| [`grafana_admin_username`](#grafana_admin_username) | `username` | `G`    | Grafana admin username, default `admin`  |
| [`grafana_admin_password`](#grafana_admin_password) | `password` | `G`    | Grafana admin password, default `pigsty` |
| [`grafana_auth_proxy`](#grafana_auth_proxy)         | `bool`     | `G`    | Enable Grafana auth proxy?               |
| [`grafana_pgurl`](#grafana_pgurl)                   | `url`      | `G`    | External PostgreSQL URL for Grafana persistence |
| [`grafana_view_password`](#grafana_view_password)   | `password` | `G`    | Grafana metadb PG datasource password    |


------------------------------

## `META`

This section defines Pigsty deployment metadata: version string, admin node IP address, repository mirror [`region`](#region), default language, and HTTP(S) proxy for downloading packages.

```yaml
version: v4.0.0                   # pigsty version string
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

Pigsty version string, default value is the current version: `v4.0.0`.

Pigsty uses this version string internally for feature control and content rendering. Do not modify this parameter arbitrarily.

Pigsty uses semantic versioning, and the version string typically starts with the character `v`, e.g., `v4.0.0`.






### `admin_ip`

name: `admin_ip`, type: `ip`, level: `G`

Admin node IP address, default is the placeholder IP address: `10.10.10.10`

The node specified by this parameter will be treated as the admin node, typically pointing to the first node where Pigsty is installed, i.e., the control node.

The default value `10.10.10.10` is a placeholder that will be replaced with the actual admin node IP address during [configure](/docs/setup/install#configure).

Many parameters reference this parameter, such as:

- [`infra_portal`](#infra_portal)
- [`repo_endpoint`](#repo_endpoint)
- [`repo_upstream`](#repo_upstream)
- [`dns_records`](#dns_records)
- [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts)
- [`node_etc_hosts`](/docs/node/param#node_etc_hosts)

In these parameters, the string `${admin_ip}` will be replaced with the actual value of `admin_ip`. Using this mechanism, you can specify different admin nodes for different nodes.





### `region`

name: `region`, type: `enum`, level: `G`

Upstream mirror region, available options: `default`, `china`, `europe`, default is `default`

If a region other than `default` is set, and there's a corresponding entry in [`repo_upstream`](#repo_upstream) with a matching `baseurl`, it will be used instead of the `default` baseurl.

For example, if your region is set to `china`, Pigsty will attempt to use Chinese mirror sites to accelerate downloads. If an upstream repository doesn't have a corresponding China region mirror, the default upstream mirror site will be used instead.
Additionally, URLs defined in [`repo_url_packages`](#repo_url_packages) will be replaced from `repo.pigsty.io` to `repo.pigsty.cc` to use domestic mirrors.






### `language`

name: `language`, type: `enum`, level: `G`

Default language setting, options are `en` (English) or `zh` (Chinese), default is `en`.

This parameter affects the language preference of some Pigsty-generated configurations and content, such as the initial language setting of Grafana dashboards.

If you are a Chinese user, it is recommended to set this parameter to `zh` for a better Chinese support experience.




### `proxy_env`

name: `proxy_env`, type: `dict`, level: `G`

Global proxy environment variables used when downloading packages, default value specifies `no_proxy`, which is the list of addresses that should not use a proxy:

```yaml
proxy_env:
  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.aliyuncs.com,mirrors.tuna.tsinghua.edu.cn,mirrors.zju.edu.cn"
  #http_proxy: 'http://username:password@proxy.address.com'
  #https_proxy: 'http://username:password@proxy.address.com'
  #all_proxy: 'http://username:password@proxy.address.com'
```

When installing from the Internet in mainland China, certain packages may be blocked. You can use a proxy to solve this problem.

Note that if the Docker module is used, the proxy server configuration here will also be written to the Docker Daemon configuration file.

Note that if the `-x` parameter is specified during `./configure`, the proxy configuration information in the current environment will be automatically filled into the generated `pigsty.yaml` file.





------------------------------

## `CA`

Pigsty uses self-signed CA certificates to support advanced security features such as HTTPS access, PostgreSQL SSL connections, etc.

```yaml
ca_create: true                   # create CA if not exists? default true
ca_cn: pigsty-ca                  # CA CN name, fixed as pigsty-ca
cert_validity: 7300d              # certificate validity, default 20 years
```


### `ca_create`

name: `ca_create`, type: `bool`, level: `G`

Create CA if not exists? Default value is `true`.

When set to `true`, if the CA public-private key pair does not exist in the `files/pki/ca` directory, Pigsty will automatically create a new CA.

If you already have a CA public-private key pair, you can copy them to the `files/pki/ca` directory:

- `files/pki/ca/ca.crt`: CA public key certificate
- `files/pki/ca/ca.key`: CA private key file

Pigsty will use the existing CA key pair instead of creating a new one. If the CA does not exist and this parameter is set to `false`, an error will occur.

**Be sure to retain and backup the newly generated CA private key file during deployment, as it is crucial for issuing new certificates later.**

> Note: Pigsty v3.x used the `ca_method` parameter (with values `create`/`recreate`/`copy`), v4.0 simplifies this to the boolean `ca_create`.





### `ca_cn`

name: `ca_cn`, type: `string`, level: `G`

CA CN (Common Name), fixed as `pigsty-ca`, not recommended to modify.

You can use the following command to view the Pigsty CA certificate details on a node:

```bash
openssl x509 -text -in /etc/pki/ca.crt
```





### `cert_validity`

name: `cert_validity`, type: `interval`, level: `G`

Certificate validity period for issued certificates, default is 20 years, sufficient for most scenarios. Default value: `7300d`

This parameter affects the validity of all certificates issued by the Pigsty CA, including:

- PostgreSQL server certificates
- Patroni API certificates
- etcd server/client certificates
- Other internal service certificates

Note: The validity of HTTPS certificates used by Nginx is controlled separately by [`nginx_cert_validity`](#nginx_cert_validity), because modern browsers have stricter requirements for website certificate validity (maximum 397 days).







------------------------------

## `INFRA_ID`

Infrastructure identity and portal definition.

```yaml
#infra_seq: 1                     # infra node sequence, REQUIRED identity parameter
infra_portal:                     # infrastructure services exposed via Nginx portal
  home : { domain: i.pigsty }     # default home server definition
infra_data: /data/infra           # infrastructure default data directory
```



### `infra_seq`

name: `infra_seq`, type: `int`, level: `I`

Infrastructure node sequence number, REQUIRED identity parameter that must be explicitly specified on infrastructure nodes, so no default value is provided.

This parameter is used to uniquely identify each node in multi-infrastructure node deployments, typically using positive integers starting from 1.

Example configuration:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
```




### `infra_portal`

name: `infra_portal`, type: `dict`, level: `G`

Infrastructure services exposed via Nginx portal. The v4.0 default value is very concise:

```yaml
infra_portal:
  home : { domain: i.pigsty }     # default home server definition
```

Pigsty will automatically configure the corresponding reverse proxies based on the actually enabled components. Users typically only need to define the home domain name.

Each record consists of a Key and a Value dictionary, where `name` is the key representing the component name, and the value is an object that can configure the following parameters:

- `name`: **REQUIRED**, specifies the name of the Nginx server
  - Default record: `home` is a fixed name, please do not modify it.
  - Used as part of the Nginx configuration file name, corresponding to: `/etc/nginx/conf.d/<name>.conf`
  - Nginx servers without a `domain` field will not generate configuration files but will be used as references.
- `domain`: **OPTIONAL**, when the service needs to be exposed via Nginx, this is a **REQUIRED** field specifying the domain name to use
  - In Pigsty self-signed Nginx HTTPS certificates, the domain will be added to the SAN field of the Nginx SSL certificate
  - Pigsty web page cross-references will use the default domain name here
- `endpoint`: Usually used as an alternative to `path`, specifies the upstream server address. Setting endpoint indicates this is a reverse proxy server
  - `${admin_ip}` can be used as a placeholder in the configuration and will be dynamically replaced with [`admin_ip`](#admin_ip) during deployment
  - Default reverse proxy servers use [endpoint.conf](https://github.com/pgsty/pigsty/blob/main/roles/infra/templates/nginx/endpoint.conf) as the configuration template
  - Reverse proxy servers can also configure `websocket` and `schema` parameters
- `path`: Usually used as an alternative to `endpoint`, specifies the local file server path. Setting path indicates this is a local web server
  - Local web servers use [path.conf](https://github.com/pgsty/pigsty/blob/main/roles/infra/templates/nginx/path.conf) as the configuration template
  - Local web servers can also configure the `index` parameter to enable file index pages
- `certbot`: Certbot certificate name; if configured, Certbot will be used to apply for certificates
  - If multiple servers specify the same certbot, Pigsty will merge certificate applications; the final certificate name will be this certbot value
- `cert`: Certificate file path; if configured, will override the default certificate path
- `key`: Certificate key file path; if configured, will override the default certificate key path
- `websocket`: Whether to enable WebSocket support
  - Only reverse proxy servers can configure this parameter; if enabled, upstream WebSocket connections will be allowed
- `schema`: Protocol used by the upstream server; if configured, will override the default protocol
  - Default is http; if configured as https, it will force HTTPS connections to the upstream server
- `index`: Whether to enable file index pages
  - Only local web servers can configure this parameter; if enabled, autoindex configuration will be enabled to automatically generate directory index pages
- `log`: Nginx log file path
  - If specified, access logs will be written to this file; otherwise, the default log file will be used based on server type
  - Reverse proxy servers use `/var/log/nginx/<name>.log` as the default log file path
  - Local web servers use the default Access log
- `conf`: Nginx configuration file path
  - Explicitly specifies the configuration template file to use, located in [roles/infra/templates/nginx](https://github.com/pgsty/pigsty/tree/main/roles/infra/templates/nginx) or [templates/nginx](https://github.com/pgsty/pigsty/tree/main/templates/nginx) directory
  - If this parameter is not specified, the default configuration template will be used
- `config`: Nginx configuration code block
  - Configuration text directly injected into the Nginx Server configuration block
- `enforce_https`: Redirect HTTP to HTTPS
  - Global configuration can be specified via nginx_sslmode: enforce
  - This configuration does not affect the default home server, which will always listen on both ports 80 and 443 to ensure compatibility




### `infra_data`

name: `infra_data`, type: `path`, level: `G`

Infrastructure data directory, default value is `/data/infra`.

This directory is used to store data files for infrastructure components, including:

- VictoriaMetrics time series database data
- VictoriaLogs log data
- VictoriaTraces trace data
- Other infrastructure component persistent data

It is recommended to place this directory on a separate data disk for easier management and expansion.





------------------------------

## `REPO`


This section is about local software repository configuration. Pigsty enables a local software repository (APT/YUM) on infrastructure nodes by default.

During initialization, Pigsty downloads all packages and their dependencies (specified by [`repo_packages`](#repo_packages)) from the Internet upstream repository (specified by [`repo_upstream`](#repo_upstream)) to [`{{ nginx_home }}`](#nginx_home) / [`{{ repo_name }}`](#repo_name) (default `/www/pigsty`). The total size of all software and dependencies is approximately 1GB.

When creating the local repository, if it already exists (determined by the presence of a marker file named `repo_complete` in the repository directory), Pigsty will consider the repository already built, skip the software download phase, and directly use the built repository.

If some packages download too slowly, you can set a download proxy using the [`proxy_env`](#proxy_env) configuration to complete the initial download, or directly download the pre-packaged [offline package](/docs/setup/offline), which is essentially a local software repository built on the same operating system.


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

Create a local software repository on this infrastructure node? Default is `true`, meaning all Infra nodes will set up a local software repository.

If you have multiple infrastructure nodes, you can keep only 1-2 nodes as software repositories; other nodes can set this parameter to `false` to avoid duplicate software download builds.





### `repo_home`

name: `repo_home`, type: `path`, level: `G`

Local software repository home directory, defaults to Nginx's root directory: `/www`.

This directory is actually a symlink pointing to [`nginx_data`](#nginx_data). It's not recommended to modify this directory. If modified, it should be consistent with [`nginx_home`](#nginx_home).




### `repo_name`

name: `repo_name`, type: `string`, level: `G`

Local repository name, default is `pigsty`. Changing this repository name is not recommended.

The final repository path is `{{ repo_home }}/{{ repo_name }}`, defaulting to `/www/pigsty`.





### `repo_endpoint`

name: `repo_endpoint`, type: `url`, level: `G`

Endpoint used by other nodes to access this repository, default value: `http://${admin_ip}:80`.

Pigsty starts Nginx on infrastructure nodes at ports 80/443 by default, providing local software repository (static files) service.

If you modify [`nginx_port`](#nginx_port) or [`nginx_ssl_port`](#nginx_ssl_port), or use a different infrastructure node from the control node, adjust this parameter accordingly.

If you use a domain name, you can add resolution in [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts), [`node_etc_hosts`](/docs/node/param#node_etc_hosts), or [`dns_records`](#dns_records).





### `repo_remove`

name: `repo_remove`, type: `bool`, level: `G/A`

Remove existing upstream repository definitions when building the local repository? Default value: `true`.

When this parameter is enabled, all existing repository files in `/etc/yum.repos.d` will be moved and backed up to `/etc/yum.repos.d/backup`. On Debian systems, `/etc/apt/sources.list` and `/etc/apt/sources.list.d` are removed and backed up to `/etc/apt/backup`.

Since existing OS sources have uncontrollable content, using Pigsty-validated upstream software sources can improve the success rate and speed of downloading packages from the Internet.

In certain situations (e.g., your OS is some EL/Deb compatible variant that uses private sources for many packages), you may need to keep existing upstream repository definitions. In such cases, set this parameter to `false`.






### `repo_modules`

name: `repo_modules`, type: `string`, level: `G/A`

Which upstream repository modules will be added to the local software source, default value: `infra,node,pgsql`

When Pigsty attempts to add upstream repositories, it filters entries in [`repo_upstream`](#repo_upstream) based on this parameter's value. Only entries whose `module` field matches this parameter's value will be added to the local software source.

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

Where to download upstream packages when building the local repository? This parameter has no default value. If not explicitly specified by the user in the configuration file, it will be loaded from the `repo_upstream_default` variable defined in [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/) based on the current node's OS family.

Pigsty provides complete upstream repository definitions for different OS versions (EL8/9/10, Debian 11/12/13, Ubuntu 22/24), including:

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
```

Users typically don't need to modify this parameter unless they have special repository requirements. For detailed repository definitions, refer to the configuration files for corresponding operating systems in the [`roles/node_id/vars/`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/) directory.




### `repo_packages`

name: `repo_packages`, type: `string[]`, level: `G`

String array type, where each line is a **space-separated** list of software packages, specifying packages (and their dependencies) to download using `repotrack` or `apt download`.

This parameter has no default value, meaning its default state is undefined. If not explicitly defined, Pigsty will load the default from the `repo_packages_default` variable defined in [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/):

```yaml
[ node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-utility, extra-modules ]
```

Each element in this parameter will be translated according to the `package_map` in the above files, based on the specific OS distro major version. For example, on EL systems it translates to:

```yaml
node-bootstrap:          "ansible python3 python3-pip python3-virtualenv python3-requests python3-jmespath python3-cryptography dnf-utils modulemd-tools createrepo_c sshpass"
infra-package:           "nginx dnsmasq etcd haproxy vip-manager node_exporter keepalived_exporter pg_exporter pgbackrest_exporter redis_exporter redis minio mcli pig"
infra-addons:            "grafana grafana-plugins grafana-victoriametrics-ds grafana-victorialogs-ds victoria-metrics victoria-logs victoria-traces vlogscli vmutils vector alertmanager"
```

As a convention, `repo_packages` typically includes packages unrelated to the PostgreSQL major version (such as Infra, Node, and PGDG Common parts), while PostgreSQL major version-related packages (kernel, extensions) are usually specified in `repo_extra_packages` to facilitate switching PG major versions.







### `repo_extra_packages`

name: `repo_extra_packages`, type: `string[]`, level: `G/C/I`

Used to specify additional packages to download without modifying [`repo_packages`](#repo_packages) (typically PG major version-related packages), default value is an empty list.

If not explicitly defined, Pigsty will load the default from the `repo_extra_packages_default` variable defined in [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/):

```yaml
[ pgsql-main ]
```

Elements in this parameter undergo package name translation, where `$v` will be replaced with [`pg_version`](/docs/pgsql/param#pg_version), i.e., the current PG major version (default `18`).

The `pgsql-main` here translates on EL systems to:

```yaml
postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit pg_repack_$v* wal2json_$v* pgvector_$v*
```

Users can typically specify PostgreSQL major version-related packages here without affecting the other PG version-independent packages defined in `repo_packages`.






### `repo_url_packages`

name: `repo_url_packages`, type: `object[] | string[]`, level: `G`

Packages downloaded directly from the Internet using URLs, default is an empty array: `[]`

You can use URL strings directly as array elements in this parameter, or use object structures to explicitly specify URLs and filenames.

Note that this parameter is affected by the [`region`](#region) variable. If you're in mainland China, Pigsty will automatically replace URLs, changing `repo.pigsty.io` to `repo.pigsty.cc`.





------------------------------

## `INFRA_PACKAGE`

These packages are installed only on INFRA nodes, including regular RPM/DEB packages and PIP packages.



### `infra_packages`

name: `infra_packages`, type: `string[]`, level: `G`

String array type, where each line is a **space-separated** list of software packages, specifying packages to install on Infra nodes.

This parameter has no default value, meaning its default state is undefined. If not explicitly specified by the user in the configuration file, Pigsty will load the default from the `infra_packages_default` variable defined in [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/) based on the current node's OS family.

v4.0 default value (EL operating systems):

```yaml
infra_packages_default:
  - grafana,grafana-plugins,grafana-victorialogs-ds,grafana-victoriametrics-ds,victoria-metrics,victoria-logs,victoria-traces,vmutils,vlogscli,alertmanager
  - node_exporter,blackbox_exporter,nginx_exporter,pg_exporter,pev2,nginx,dnsmasq,ansible,etcd,python3-requests,redis,mcli,restic,certbot,python3-certbot-nginx
```

Default value (Debian/Ubuntu):

```yaml
infra_packages_default:
  - grafana,grafana-plugins,grafana-victorialogs-ds,grafana-victoriametrics-ds,victoria-metrics,victoria-logs,victoria-traces,vmutils,vlogscli,alertmanager
  - node-exporter,blackbox-exporter,nginx-exporter,pg-exporter,pev2,nginx,dnsmasq,ansible,etcd,python3-requests,redis,mcli,restic,certbot,python3-certbot-nginx
```

> Note: v4.0 uses the VictoriaMetrics suite to replace Prometheus and Loki, so the package list differs significantly from v3.x.




### `infra_packages_pip`

name: `infra_packages_pip`, type: `string`, level: `G`

Additional packages to install using `pip` on Infra nodes, package names separated by commas. Default value is an empty string, meaning no additional python packages are installed.

Example:

```yaml
infra_packages_pip: 'requests,boto3,awscli'
```







------------------------------

## `NGINX`

Pigsty proxies all web service access through Nginx: Home Page, Grafana, VictoriaMetrics, etc., as well as other optional tools like PGWeb, Jupyter Lab, Pgadmin, Bytebase, and static resources and reports like `pev`, `schemaspy`, and `pgbadger`.

Most importantly, Nginx also serves as the web server for the local software repository (Yum/Apt), used to store and distribute Pigsty packages.

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

Enable Nginx on this Infra node? Default value: `true`.

Nginx is a core component of Pigsty infrastructure, responsible for:
- Providing local software repository service
- Reverse proxying Grafana, VictoriaMetrics, and other web services
- Hosting static files and reports





### `nginx_clean`

name: `nginx_clean`, type: `bool`, level: `G/A`

Clean existing Nginx configuration during initialization? Default value: `false`.

When set to `true`, all existing configuration files under `/etc/nginx/conf.d/` will be deleted during Nginx initialization, ensuring a clean start.

If you're deploying for the first time or want to completely rebuild Nginx configuration, you can set this parameter to `true`.




### `nginx_exporter_enabled`

name: `nginx_exporter_enabled`, type: `bool`, level: `G/I`

Enable nginx_exporter on this infrastructure node? Default value: `true`.

If this option is disabled, the `/nginx` health check stub will also be disabled. Consider disabling this when your Nginx version doesn't support this feature.




### `nginx_exporter_port`

name: `nginx_exporter_port`, type: `port`, level: `G`

nginx_exporter listen port, default value is `9113`.

nginx_exporter is used to collect Nginx operational metrics for VictoriaMetrics to scrape and monitor.





### `nginx_sslmode`

name: `nginx_sslmode`, type: `enum`, level: `G`

Nginx SSL operating mode. Three options: `disable`, `enable`, `enforce`, default value is `enable`, meaning SSL is enabled but not enforced.

* `disable`: Only listen on the port specified by [`nginx_port`](#nginx_port) to serve HTTP requests.
* `enable`: Also listen on the port specified by [`nginx_ssl_port`](#nginx_ssl_port) to serve HTTPS requests.
* `enforce`: All links will be rendered to use `https://` by default
  * Also redirect port 80 to port 443 for non-default servers in [`infra_portal`](#infra_portal)




### `nginx_cert_validity`

name: `nginx_cert_validity`, type: `duration`, level: `G`

Nginx self-signed certificate validity, default value is `397d` (approximately 13 months).

Modern browsers require website certificate validity to be at most 397 days, hence this default value. Setting a longer validity is not recommended, as browsers may refuse to trust such certificates.




### `nginx_home`

name: `nginx_home`, type: `path`, level: `G`

Nginx server static content directory, default: `/www`

This is a symlink that actually points to the [`nginx_data`](#nginx_data) directory. This directory contains static resources and software repository files.

It's best not to modify this parameter arbitrarily. If modified, it should be consistent with the [`repo_home`](#repo_home) parameter.




### `nginx_data`

name: `nginx_data`, type: `path`, level: `G`

Nginx actual data directory, default is `/data/nginx`.

This is the actual storage location for Nginx static files; [`nginx_home`](#nginx_home) is a symlink pointing to this directory.

It's recommended to place this directory on a data disk for easier management of large package files.




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

Nginx default listening port (serving HTTP), default is port `80`. It's best not to modify this parameter.

When your server's port 80 is occupied, you can consider using another port, but you need to also modify [`repo_endpoint`](#repo_endpoint) and keep [`node_repo_local_urls`](/docs/node/param#node_repo_local_urls) consistent with the port used here.






### `nginx_ssl_port`

name: `nginx_ssl_port`, type: `port`, level: `G`

Nginx SSL default listening port, default is `443`. It's best not to modify this parameter.




### `certbot_sign`

name: `certbot_sign`, type: `bool`, level: `G/A`

Use certbot to sign Nginx certificates during installation? Default value is `false`.

When set to `true`, Pigsty will use certbot to automatically apply for free SSL certificates from Let's Encrypt during the execution of `infra.yml` and `deploy.yml` playbooks (in the `nginx` role).

For domains defined in [`infra_portal`](#infra_portal), if a `certbot` parameter is defined, Pigsty will use certbot to apply for a certificate for that `domain`. The certificate name will be the value of the `certbot` parameter. If multiple servers/domains specify the same `certbot` parameter, Pigsty will merge and apply for certificates for these domains, using the `certbot` parameter value as the certificate name.

Enabling this option requires:

- The current node can be accessed through a public domain name, and DNS resolution is correctly pointed to the current node's public IP
- The current node can access the Let's Encrypt API interface

This option is disabled by default. You can manually execute the `make cert` command after installation, which actually calls the rendered `/etc/nginx/sign-cert` script to update or apply for certificates using certbot.




### `certbot_email`

name: `certbot_email`, type: `string`, level: `G/A`

Email address for receiving certificate expiration reminder emails, default value is `your@email.com`.

When `certbot_sign` is set to `true`, it's recommended to provide this parameter. Let's Encrypt will send reminder emails to this address when certificates are about to expire.




### `certbot_options`

name: `certbot_options`, type: `string`, level: `G/A`

Additional configuration parameters passed to certbot, default value is an empty string.

You can pass additional command-line options to certbot through this parameter, for example `--dry-run`, which makes certbot perform a preview and test without actually applying for certificates.





------------------------------

## `DNS`

Pigsty enables DNSMASQ service on Infra nodes by default to resolve auxiliary domain names such as `i.pigsty`, `m.pigsty`, `api.pigsty`, etc., and optionally `sss.pigsty` for MinIO.

Resolution records are stored in the `/etc/hosts.d/default` file on Infra nodes. To use this DNS server, you must add `nameserver <ip>` to `/etc/resolv.conf`. The [`node_dns_servers`](/docs/node/param#node_dns_servers) parameter handles this.

```yaml
dns_enabled: true                 # setup dnsmasq on this infra node?
dns_port: 53                      # DNS server listen port
dns_records:                      # dynamic DNS records
  - "${admin_ip} i.pigsty"
  - "${admin_ip} m.pigsty supa.pigsty api.pigsty adm.pigsty cli.pigsty ddl.pigsty"
```



### `dns_enabled`

name: `dns_enabled`, type: `bool`, level: `G/I`

Enable DNSMASQ service on this Infra node? Default value: `true`.

If you don't want to use the default DNS server (e.g., you already have an external DNS server, or your provider doesn't allow you to use a DNS server), you can set this value to `false` to disable it, and use [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts) and [`node_etc_hosts`](/docs/node/param#node_etc_hosts) static resolution records instead.




### `dns_port`

name: `dns_port`, type: `port`, level: `G`

DNSMASQ default listening port, default is `53`. It's not recommended to modify the default DNS service port.





### `dns_records`

name: `dns_records`, type: `string[]`, level: `G`

Dynamic DNS records resolved by dnsmasq, generally used to resolve auxiliary domain names to the admin node. These records are written to the `/etc/hosts.d/default` file on infrastructure nodes.

v4.0 default value:

```yaml
dns_records:
  - "${admin_ip} i.pigsty"
  - "${admin_ip} m.pigsty supa.pigsty api.pigsty adm.pigsty cli.pigsty ddl.pigsty"
```

The `${admin_ip}` placeholder is used here and will be replaced with the actual [`admin_ip`](#admin_ip) value during deployment.

Common domain name purposes:

- `i.pigsty`: Pigsty home page
- `m.pigsty`: VictoriaMetrics Web UI
- `api.pigsty`: API service
- `adm.pigsty`: Admin service
- Others customized based on actual deployment needs



------------------------------

## `VICTORIA`

Pigsty v4.0 uses the VictoriaMetrics suite to replace Prometheus and Loki, providing a superior observability solution:

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

Enable VictoriaMetrics on this Infra node? Default value is `true`.

VictoriaMetrics is the core monitoring component in Pigsty v4.0, replacing Prometheus as the time series database, responsible for:

- Scraping monitoring metrics from various exporters
- Storing time series data
- Providing PromQL-compatible query interface
- Supporting Grafana data sources


### `vmetrics_clean`

name: `vmetrics_clean`, type: `bool`, level: `G/A`

Clean existing VictoriaMetrics data during initialization? Default value is `false`.

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

In production environments, 10-30 seconds is a suitable scrape interval. If you need finer monitoring data granularity, you can adjust this parameter, but it will increase storage and CPU overhead.


### `vmetrics_scrape_timeout`

name: `vmetrics_scrape_timeout`, type: `interval`, level: `G`

VictoriaMetrics global scrape timeout, default is `8s`.

Setting a scrape timeout can effectively prevent avalanches caused by monitoring system queries. The principle is that this parameter must be less than and close to [`vmetrics_scrape_interval`](#vmetrics_scrape_interval) to ensure each scrape duration doesn't exceed the scrape interval.


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

Enable VictoriaLogs on this Infra node? Default value is `true`.

VictoriaLogs replaces Loki as the log aggregation storage, responsible for:

- Receiving log data from Vector
- Storing and indexing logs
- Providing log query interface
- Supporting Grafana VictoriaLogs data source


### `vlogs_clean`

name: `vlogs_clean`, type: `bool`, level: `G/A`

Clean existing VictoriaLogs data during initialization? Default value is `false`.


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

Enable VictoriaTraces on this Infra node? Default value is `true`.

VictoriaTraces is used for distributed trace data storage and query, supporting Jaeger, Zipkin, and other trace protocols.


### `vtraces_clean`

name: `vtraces_clean`, type: `bool`, level: `G/A`

Clean existing VictoriaTraces data during initialization? Default value is `false`.


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

Enable VMAlert on this Infra node? Default value is `true`.

VMAlert is responsible for alert rule evaluation, replacing Prometheus Alerting functionality, working with Alertmanager.


### `vmalert_port`

name: `vmalert_port`, type: `port`, level: `G`

VMAlert listen port, default value is `8880`.


### `vmalert_options`

name: `vmalert_options`, type: `arg`, level: `G`

VMAlert extra command line options, default value is an empty string.





------------------------------

## `PROMETHEUS`

This section now primarily contains Blackbox Exporter and Alertmanager configuration.

> Note: Pigsty v4.0 uses VictoriaMetrics to replace Prometheus. The original `prometheus_*` and `pushgateway_*` parameters have been moved to the [`VICTORIA`](#victoria) section.

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

Enable BlackboxExporter on this Infra node? Default value is `true`.

BlackboxExporter sends ICMP packets to node IP addresses, VIP addresses, and PostgreSQL VIP addresses to test network connectivity. It can also perform HTTP, TCP, DNS, and other probes.


### `blackbox_port`

name: `blackbox_port`, type: `port`, level: `G`

Blackbox Exporter listen port, default value is `9115`.


### `blackbox_options`

name: `blackbox_options`, type: `arg`, level: `G`

BlackboxExporter extra command line options, default value: empty string.



### `alertmanager_enabled`

name: `alertmanager_enabled`, type: `bool`, level: `G/I`

Enable AlertManager on this Infra node? Default value is `true`.

AlertManager is responsible for receiving alert notifications from VMAlert and performing alert grouping, inhibition, silencing, routing, and other processing.


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

Pigsty uses Grafana as the monitoring system frontend. It can also serve as a data analysis and visualization platform, or for low-code data application development and data application prototyping.


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

Enable Grafana on Infra node? Default value: `true`, meaning all infrastructure nodes will install and enable Grafana by default.




### `grafana_port`

name: `grafana_port`, type: `port`, level: `G`

Grafana listen port, default value is `3000`.

If you need to access Grafana directly (not through Nginx reverse proxy), you can use this port.



### `grafana_clean`

name: `grafana_clean`, type: `bool`, level: `G/A`

Clean Grafana data files during initialization? Default: `false`.

This operation removes `/var/lib/grafana/grafana.db`, ensuring a fresh Grafana installation.

If you want to preserve existing Grafana configuration (such as dashboards, users, data sources, etc.), set this parameter to `false`.





### `grafana_admin_username`

name: `grafana_admin_username`, type: `username`, level: `G`

Grafana admin username, default is `admin`.





### `grafana_admin_password`

name: `grafana_admin_password`, type: `password`, level: `G`

Grafana admin password, default is `pigsty`.

> **IMPORTANT: Be sure to change this password parameter before deploying to production!**




### `grafana_auth_proxy`

name: `grafana_auth_proxy`, type: `bool`, level: `G`

Enable Grafana auth proxy? Default is `false`.

When enabled, Grafana will trust user identity information passed by the reverse proxy (Nginx), enabling single sign-on (SSO) functionality.

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


