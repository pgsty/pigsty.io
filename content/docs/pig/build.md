---
title: "CMD: pig build"
linkTitle: "CMD: pig build"
description: "Build PostgreSQL extensions from source with pig build subcommand"
weight: 5300
icon: fas fa-hammer
module: [PIG]
categories: [Admin]
---

The `pig build` command is a powerful tool that simplifies the entire workflow of building PostgreSQL extensions from source. It provides a complete build infrastructure setup, dependency management, and compilation environment for both standard and custom PostgreSQL extensions across different operating systems.


## Subcommands

| Command | Description | Notes |
|:---|:---|:---|
| `build spec` | Initialize building spec repo | |
| `build repo` | Initialize required repos | Requires sudo or root |
| `build tool` | Initialize build tools | Requires sudo or root |
| `build rust` | Install Rust toolchain | Requires sudo or root |
| `build pgrx` | Install and initialize pgrx | Requires sudo or root |
| `build pkg` | Complete build pipeline | Requires sudo or root |
| `build get` | Download source code tarball | |
| `build dep` | Install extension build dependencies | Requires sudo or root |
| `build ext` | Build extension package | Requires sudo or root |


## Quick Start

```bash
# Setup build environment
pig build spec                   # Initialize build specs
pig build repo                   # Setup repositories
pig build tool                   # Install build tools

# Install Rust (for Rust extensions)
pig build rust -y                # Install Rust
pig build pgrx                   # Install PGRX framework

# Build extensions
pig build pkg citus              # Complete build pipeline
```


## build spec

Initialize build specification files.

```bash
pig build spec                   # Create default spec files
pig build spec -f                # Force overwrite existing files
```


## build repo

Setup repositories required for building.

```bash
pig build repo                   # Setup repositories
```


## build tool

Install build toolchain (gcc, make, cmake, etc.).

```bash
pig build tool                   # Install build tools
pig build tool -y                # Auto-confirm
```


## build rust

Install Rust toolchain (for building Rust extensions).

```bash
pig build rust                   # Install Rust
pig build rust -y                # Auto-confirm
```


## build pgrx

Install PGRX framework (for building PGRX extensions).

```bash
pig build pgrx                   # Install PGRX
pig build pgrx -v 17             # Install for PG 17
```


## build pkg

Complete build pipeline: download source, install dependencies, build extension.

```bash
pig build pkg citus              # Build citus
pig build pkg citus -v 17        # Build for PG 17
pig build pkg citus -y           # Auto-confirm
```


## build get

Download extension source code.

```bash
pig build get citus              # Download citus source
```


## build dep

Install extension build dependencies.

```bash
pig build dep citus              # Install citus dependencies
pig build dep citus -y           # Auto-confirm
```


## build ext

Build extension package from source.

```bash
pig build ext citus              # Build citus
pig build ext citus -v 17        # Build for PG 17
```


--------

## Build Infrastructure

### Build Specifications

The build system uses specification files that define how each extension should be built. These specs include:
- Source code location and version
- Build dependencies
- Compilation flags
- PostgreSQL version compatibility
- Platform-specific build instructions

### Directory Structure

```
~/ext/                           # Default build spec directory
├── Makefile                     # Master build makefile
├── <extension>/                 # Per-extension directory
│   ├── Makefile                # Extension-specific makefile
│   ├── <extension>.spec        # RPM spec file (EL)
│   └── debian/                 # Debian packaging files
│       ├── control
│       ├── rules
│       └── ...
```

Build output locations:
- **EL Systems**: `~/rpmbuild/RPMS/<arch>/`
- **Debian Systems**: `~/` (deb files)


--------

## Common Workflows

### Workflow 1: Building Standard Extension

```bash
# 1. Setup build environment (once)
pig build spec
pig build repo
pig build tool

# 2. Build extension
pig build pkg pg_partman

# 3. Install built package
sudo rpm -ivh ~/rpmbuild/RPMS/x86_64/pg_partman*.rpm  # EL
sudo dpkg -i ~/pg_partman*.deb                         # Debian
```

### Workflow 2: Building Rust Extension

```bash
# 1. Setup Rust environment
pig build spec
pig build tool
pig build rust -y
pig build pgrx

# 2. Build Rust extension
pig build pkg pgmq

# 3. Install
sudo pig ext add pgmq
```

### Workflow 3: Building Multiple Versions

```bash
# Build extension for multiple PostgreSQL versions
pig build pkg citus --pg 15,16,17

# Results in packages for each version:
# citus_15-*.rpm
# citus_16-*.rpm
# citus_17-*.rpm
```


--------

## Troubleshooting

### Build Tools Not Found

```bash
# Install build tools
pig build tool

# For specific compiler
sudo dnf groupinstall "Development Tools"  # EL
sudo apt install build-essential          # Debian
```

### Missing Dependencies

```bash
# Install extension dependencies
pig build dep <extension>

# Check error messages for specific packages
# Install manually if needed
sudo dnf install <package>  # EL
sudo apt install <package>  # Debian
```

### PostgreSQL Headers Not Found

```bash
# Install PostgreSQL development package
sudo pig ext install pg17-devel

# Or specify pg_config path
export PG_CONFIG=/usr/pgsql-17/bin/pg_config
```

### Rust/PGRX Issues

```bash
# Reinstall Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Update PGRX
cargo install cargo-pgrx --force

# Reinitialize PGRX
cargo pgrx init
```

