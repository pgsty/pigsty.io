# Installation

> How to download and install the pg_exporter

---

LLMS index: [llms.txt](/llms.txt)

---

Install `pg_exporter` with Pigsty, YUM/APT repositories, GitHub release packages (RPM/DEB/Tarball), or Docker images. You can also build it from source.




## Pigsty

Use [Pigsty](https://pigsty.io) for the simplest installation.
Pigsty is a complete PostgreSQL distribution with monitoring based on `pg_exporter`, Prometheus, and Grafana.
It configures the metrics and dashboard panels for you. You do not need to configure `pg_exporter` separately.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
```


## Release

Download a `pg_exporter` package (`RPM`/`DEB`/Tarball) from the [Latest GitHub Release Page](https://github.com/pgsty/pg_exporter/releases/latest):

**v1.4.1 Release Files:**

| Type                    | File                                                                                                                                           |
|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| DEB (amd64)             | [pg-exporter_1.4.1-1_amd64.deb](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg-exporter_1.4.1-1_amd64.deb)                   |
| DEB (arm64)             | [pg-exporter_1.4.1-1_arm64.deb](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg-exporter_1.4.1-1_arm64.deb)                   |
| DEB (ppc64le)           | [pg-exporter_1.4.1-1_ppc64le.deb](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg-exporter_1.4.1-1_ppc64le.deb)               |
| RPM (aarch64)           | [pg-exporter-1.4.1-1.aarch64.rpm](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg-exporter-1.4.1-1.aarch64.rpm)               |
| RPM (x86_64)            | [pg-exporter-1.4.1-1.x86_64.rpm](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg-exporter-1.4.1-1.x86_64.rpm)                 |
| RPM (ppc64le)           | [pg-exporter-1.4.1-1.ppc64le.rpm](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg-exporter-1.4.1-1.ppc64le.rpm)               |
| Tarball (Linux amd64)   | [pg_exporter-1.4.1.linux-amd64.tar.gz](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg_exporter-1.4.1.linux-amd64.tar.gz)     |
| Tarball (Linux arm64)   | [pg_exporter-1.4.1.linux-arm64.tar.gz](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg_exporter-1.4.1.linux-arm64.tar.gz)     |
| Tarball (Linux ppc64le) | [pg_exporter-1.4.1.linux-ppc64le.tar.gz](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg_exporter-1.4.1.linux-ppc64le.tar.gz) |
| Tarball (macOS amd64)   | [pg_exporter-1.4.1.darwin-amd64.tar.gz](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg_exporter-1.4.1.darwin-amd64.tar.gz)   |
| Tarball (macOS arm64)   | [pg_exporter-1.4.1.darwin-arm64.tar.gz](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg_exporter-1.4.1.darwin-arm64.tar.gz)   |
| Tarball (Windows amd64) | [pg_exporter-1.4.1.windows-amd64.tar.gz](https://github.com/pgsty/pg_exporter/releases/download/v1.4.1/pg_exporter-1.4.1.windows-amd64.tar.gz) |

Install the package with your OS package manager (`rpm`/`dpkg`), or put the binary in your `$PATH`.
Current tarballs also include `pg_exporter.yml`, `package/pg_exporter.default`, `package/pg_exporter.service`, and `LICENSE` for manual deployments.

> [!NOTE] RPM package rename
> From `v1.4.1`, the official RPM package name and artifact prefix are `pg-exporter`, instead of `pg_exporter`.
> This name matches the DEB package and repository installation commands.
> The new RPM provides and obsoletes the legacy `pg_exporter` package name. You can upgrade directly from earlier releases.

The release page contains full SHA256 checksums in `checksums.txt`.
The [release notes](/docs/pg_exporter/release/) also contain checksums for each version.


## Repository

The [`pigsty-infra`](https://ext.pgsty.com/repo/infra) repository also contains the `pg_exporter` package.
Add the repository to your system. Then install the package with your OS package manager:

### YUM

For EL distributions such as RHEL, Rocky Linux, CentOS, AlmaLinux, and Oracle Linux:

```bash
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
enabled = 1
gpgcheck = 0
module_hotfixes=1
EOF

sudo yum makecache;
sudo yum install -y pg_exporter
```

### APT

For Debian, Ubuntu and compatible Linux Distributions:

```bash
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [trusted=yes] https://repo.pigsty.io/apt/infra generic main
EOF

sudo apt update;
sudo apt install -y pg-exporter
```


## Docker

Docker Hub provides prebuilt images for the `amd64` and `arm64` architectures: [pgsty/pg_exporter](https://hub.docker.com/r/pgsty/pg_exporter).

```bash
# Basic usage
docker run -d \
  --name pg_exporter \
  -p 9630:9630 \
  -e PG_EXPORTER_URL="postgres://user:password@host:5432/postgres" \
  pgsty/pg_exporter:latest

# With custom configuration
docker run -d \
  --name pg_exporter \
  -p 9630:9630 \
  -v /path/to/pg_exporter.yml:/etc/pg_exporter.yml:ro \
  -e PG_EXPORTER_CONFIG="/etc/pg_exporter.yml" \
  -e PG_EXPORTER_URL="postgres://user:password@host:5432/postgres" \
  pgsty/pg_exporter:latest

# With auto-discovery enabled
docker run -d \
  --name pg_exporter \
  -p 9630:9630 \
  -e PG_EXPORTER_URL="postgres://user:password@host:5432/postgres" \
  -e PG_EXPORTER_AUTO_DISCOVERY="true" \
  -e PG_EXPORTER_EXCLUDE_DATABASE="template0,template1" \
  pgsty/pg_exporter:latest
```

> [!WARNING] Warning
> The current Docker image is built from `scratch`.
> To connect to remote PostgreSQL with `sslmode=verify-ca` or `verify-full`, mount a CA certificate explicitly.
> Use `sslrootcert` or a system CA bundle. Without this certificate, TLS verification can fail.


## Compatibility

The default configuration supports PostgreSQL 10-19+.
For PostgreSQL versions that have reached EOL, use the bundled `legacy/` configuration package.

| PostgreSQL Version | Support Status                  |
|--------------------|---------------------------------|
| 10 ~ 19+           | ✅ Full Support (default config) |
| 9.1 ~ 9.6          | ⚠️ Use `legacy/pg_exporter.yml` |
| 9.0 and earlier    | ❌ Unsupported                   |

Legacy config example:

```bash
make conf9
PG_EXPORTER_CONFIG=legacy/pg_exporter.yml pg_exporter
```

pg_exporter supports pgBouncer 1.8+.
Version `v1.8` is the first pgBouncer version with `SHOW` command support.

| pgBouncer Version | Support Status |
|-------------------|----------------|
| 1.8.x ~ 1.25+     | ✅ Full Support |
| before 1.8.x      | ⚠️ No Metrics  |
