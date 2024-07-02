---
title: Removing Packages on Ubuntu/Debian
description: Guide to removing DEB and Snap packages on Ubuntu/Debian, including purging packages, cleaning dependencies, and removing residual files.
---

# Removing Packages on Ubuntu/Debian

## Removing DEB Packages

**Remove or purge a package**:

To remove the package (but keep config files):

```bash
sudo apt remove package_name
```

To purge the package (remove everything, including config files):

```bash
sudo apt purge package_name
```

**Clean up unnecessary dependencies**:

```bash
sudo apt autoremove
```

## Removing Snap Packages

To remove the Snap package

```bash
sudo snap remove package_name
```

To remove and purge all traces

```bash
sudo snap remove --purge package_name
```

## Finding and Removing Residual Files

Search for remaining configuration files:

```bash
sudo find / -type d -iname '*package_name*' 2>/dev/null
```

Manually delete found directories (use with caution):

```bash
sudo rm -rf /path/to/directory
```
