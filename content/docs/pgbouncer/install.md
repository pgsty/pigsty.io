---
title: "PgBouncer compilation and installation"
linkTitle: "Install"
weight: 40
description: "PgBouncer compilation and installation instructions"
icon: fa-solid fa-cloud-arrow-down
module: [PGBOUNCER]
categories: [Tutorial]
---

> Source: <https://www.pgbouncer.org/install.html> · [1.26.0 source](https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_0/README.md)

--------

## Building

Build PgBouncer with Autoconf or the newer, experimental [Meson] build system. Autoconf is currently recommended for production builds and packages. Meson is expected to become the default, and a future release is expected to remove Autoconf. Test Meson and report problems. Compilation requires:

* [Libevent] 2.0+
* [pkg-config]
* [OpenSSL] 1.0.1+ for TLS support
* a C11-capable C compiler
* (optional) [c-ares] as alternative to Libevent's evdns
* (optional) LDAP libraries
* (optional) PAM libraries

The Meson build additionally needs [Meson] 0.58+ and [Ninja]; the Autoconf
build needs [GNU Make] 3.81+.

[Meson]: https://mesonbuild.com/
[Ninja]: https://ninja-build.org/
[GNU Make]: https://www.gnu.org/software/make/
[Libevent]: http://libevent.org/
[pkg-config]: https://www.freedesktop.org/wiki/Software/pkg-config/
[OpenSSL]: https://www.openssl.org/
[c-ares]: http://c-ares.haxx.se/

When dependencies are installed, build with Autoconf:

    $ ./configure --prefix=/usr/local
    $ make
    $ make install

or with Meson (experimental):

    $ meson setup build --prefix=/usr/local
    $ meson compile -C build
    $ meson install -C build

For Git or Windows builds, see the specific instructions below.

--------

## DNS lookup support

PgBouncer looks up host names when it connects, not only when it loads configuration. This requires asynchronous DNS. The table lists supported backends in probing order:

| backend                    | parallel | EDNS0 (1) | /etc/hosts | SOA lookup (2) | note                                  |
|----------------------------|----------|-----------|------------|----------------|---------------------------------------|
| c-ares                     | yes      | yes       | yes        | yes            | IPv6+CNAME buggy in <=1.10            |
| evdns, libevent 2.x        | yes      | no        | yes        | no             | does not check /etc/hosts updates     |
| getaddrinfo_a, glibc 2.9+  | yes      | yes (3)   | yes        | no             | N/A on non-glibc                      |
| getaddrinfo, libc          | no       | yes (3)   | yes        | no             | requires pthreads                     |

1. EDNS0 is required to have more than 8 addresses behind one host name.
2. SOA lookup is needed to re-check host names on zone serial change.
3. To enable EDNS0, add `options edns0` to `/etc/resolv.conf`.

c-ares has the most features. We recommend it for most uses and binary packages when a sufficiently recent version is available. Libevent evdns also works for many uses, subject to the restrictions above. The other backends are mainly legacy options and receive little testing.

PgBouncer uses c-ares by default when available. Force it with `-Dcares=enabled` (configure: `--with-cares`) or disable it with `-Dcares=disabled` (configure: `--without-cares`). If c-ares is absent or disabled, PgBouncer uses Libevent. To disable Libevent evdns and use libc, set `-Devdns=false` (configure: `--disable-evdns`).

--------

## Optional features

Meson detects PAM, LDAP, and systemd libraries automatically. The `-Dpam`, `-Dldap`, and `-Dsystemd` options default to `auto`. Each feature builds when its libraries are present. Force a feature on with `-D<feature>=enabled` or off with `-D<feature>=disabled`. Autoconf requires explicit options: `--with-pam`, `--with-ldap`, or `--with-systemd`. It does not detect these features automatically.

--------

## PAM authentication

A build with PAM support provides the global authentication type `pam` to validate users through PAM.

--------

## LDAP authentication

A build with LDAP support provides the global authentication type `ldap` to validate users through LDAP.

--------

## systemd integration

systemd support enables socket activation and `Type=notify`. With systemd 253 or later, it also supports `Type=notify-reload`. See `etc/pgbouncer.service` and `etc/pgbouncer.socket` for examples.

--------

## Building from Git

For an Autoconf build, generate the header and configuration files before you run `configure`:

	$ git clone --branch pgbouncer_1_26_0 https://github.com/pgbouncer/pgbouncer.git
	$ cd pgbouncer
	$ ./autogen.sh
	$ ./configure
	$ make
	$ make install

The default installation directory is `/usr/local`. Pass command-line options to `configure` to customize it. Run `./configure --help` to list options and configuration environment variables.

Additional packages required for the Autoconf build from Git: autoconf,
automake, libtool, pandoc

Meson builds directly from a checkout. It requires pandoc to build man pages:

	$ meson setup build
	$ meson compile -C build
	$ meson install -C build

Run `meson configure build` to list the available `-D` options.

--------

## Testing

See the [`README.md` file in the test directory][1] on how to run the tests.

[1]: https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_0/test/README.md

--------

## Building on Windows

MinGW is the only supported Windows build environment. Cygwin and Visual $ANYTHING are not supported.

To build on MinGW, do the usual Autoconf build:

	$ ./configure
	$ make

or the experimental Meson build:

	$ meson setup build
	$ meson compile -C build

If cross-compiling from Unix with Autoconf:

	$ ./configure --host=i586-mingw32msvc

The LDAP build option is currently not supported on Windows.

--------

## Running on Windows

Command-line operation works as usual, but `-d` (daemonize) and `-u` (switch user) do not work.

To run PgBouncer as a Windows service, set `service_name`. Then register the service:

	$ pgbouncer -regservice config.ini

To uninstall the service:

	$ pgbouncer -unregservice config.ini

To use the Windows event log, first register `pgbevent.dll` as shown below. Then set `syslog = 1` in the configuration file:

	$ regsvr32 pgbevent.dll

To unregister it, do:

	$ regsvr32 /u pgbevent.dll
