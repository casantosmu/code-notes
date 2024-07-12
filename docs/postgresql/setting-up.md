---
title: "Setting Up PostgreSQL: Installation & Configuration"
description: "Guide to securely setting up PostgreSQL: download, install, configure access, create databases and users, and manage schema security for robust data protection."
---

# Setting Up PostgreSQL

## Installation

First [download PostgreSQL](https://www.postgresql.org/download/) on your operating system.

## Secure Database Configuration

To ensure your database configuration is secure, do not allow access from all internet sources. Avoid settings such as `0.0.0.0/0` in `pg_hba.conf` and `listen_addresses='*'` in `postgresql.conf`.

For remote connections, use an SSH tunnel.

**Example**:

```bash
ssh -L 5432:localhost:5432 user@remote_host
```

## Creating Database and User

Create a new database and user by executing the following commands:

```bash
sudo -u postgres psql
```

```sql
CREATE USER <name> WITH PASSWORD 'securepassword';
CREATE DATABASE <name> OWNER <name>;
```

## Secure Schema Usage

To enhance security, constrain ordinary users to user-private schemas. Ensure that no schemas have public CREATE privileges. For each user who needs to create non-temporary objects, create a schema with the same name as the user.

**Example**:

```sql
CREATE SCHEMA <name> AUTHORIZATION <name>;
```

This setup ensures that users access their own schemas by default.

!!! info "PostgreSQL 14 or earlier"

    For PostgreSQL 14, earlier versions or upgraded databases to PostgreSQL 15 and later, remove the public CREATE privilege from the public schema:

    ```sql
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;
    ```

**Documentation**:

> [PostgreSQL Documentation on Schemas Patterns](https://www.postgresql.org/docs/16/ddl-schemas.html#DDL-SCHEMAS-PATTERNS)
