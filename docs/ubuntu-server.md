# Ubuntu Server

## Setting Up Ubuntu Server

### 1. Accessing the Server

Access the server using an SSH client, substituting `server_ip` with the server IP address:

```bash
ssh root@server_ip
```

### 2. Updating the Server

Update the server to ensure all packages are up to date:

```bash
apt update && apt upgrade -y
```

### 3. Creating a New User

Create a new user with sudo privileges to avoid using the root account:

```bash
adduser newuser
usermod -aG sudo newuser
```

### 4. Configuring SSH Access

Configure SSH access by copying SSH keys from the root user to the new user:

```bash
rsync --archive --chown=newuser:newuser ~/.ssh /home/newuser
```

Update SSH configuration to disable root login and password authentication:

```bash
nano /etc/ssh/sshd_config
```

Make the following changes:

```plaintext
PermitRootLogin no
PasswordAuthentication no
```

???+ note

    In Ubuntu 22.04.1 LTS, the `/etc/ssh/sshd_config.d/50-cloud-init.conf` file might override settings from `sshd_config`, including the `PasswordAuthentication` setting. To ensure that `PasswordAuthentication` is disabled, review and adjust the settings in this file.

Restart the SSH service:

```bash
systemctl restart ssh
```

### 5. Setting Up a Firewall

Configure the firewall to allow essential services:

```bash
ufw allow OpenSSH
ufw enable
```

### 6. Disabling Root Login

Disable root login for additional security:

```bash
passwd -l root
```

### 7. Fail2ban

Install Fail2ban to protect the server from brute-force attacks:

```bash
apt install fail2ban -y
```

Start and enable Fail2ban:

```bash
systemctl start fail2ban
systemctl enable fail2ban
```

Check the status of Fail2ban to ensure it is running correctly:

```bash
fail2ban-client status
```

???+ note

    If SSH protection is not enabled, follow these steps:

    Create and edit the `jail.local` file:

    ```bash
    nano /etc/fail2ban/jail.local
    ```

    Add the following lines:

    ```plaintext
    [sshd]
    enabled = true
    ```

    Restart and check the status of Fail2ban:

    ```bash
    systemctl restart fail2ban
    fail2ban-client status
    ```
