## Overview
This Bash script automates the process of creating directories, user groups, and user accounts on a Linux-based system. Additionally, it sets appropriate directory permissions and group ownership to ensure proper access control.

## Features
- Creates 4 directories: `/public`, `/adm`, `/ven`, and `/sec`.
- Creates 3 user groups: `GRP_ADM`, `GRP_VEN`, and `GRP_SEC`.
- Adds 9 users with specified usernames and groups, setting a default password (`pass123`).
- Assigns proper directory permissions to each of the directories:
  - `/adm` – accessible only to `GRP_ADM`.
  - `/ven` – accessible only to `GRP_VEN`.
  - `/sec` – accessible only to `GRP_SEC`.
  - `/public` – accessible to all users.
  
## Prerequisites
This script should be run on a Linux-based operating system with the following requirements:
- **sudo** or **root** privileges to execute commands like `mkdir`, `groupadd`, `useradd`, `chown`, and `chmod`.
- The `openssl` package should be installed for password encryption using the `openssl passwd -crypt` command.

## Instructions

### 1. Download the Script
You can copy the provided script or download it onto your Linux system.

### 2. Make the Script Executable
Before running the script, make sure it is executable. To do so, navigate to the directory where the script is located and run the following command:
```bash
chmod +x script_name.sh
```
Replace `script_name.sh` with the actual name of the script file.

### 3. Execute the Script
Run the script using the following command:
```bash
sudo ./script_name.sh
```
This will execute the script with superuser privileges.

### 4. Verify the Changes
Once the script has finished running, you can verify the changes by checking the directories, user groups, and users:
- Use `ls -l /` to see the created directories and their permissions.
- Use `groups <username>` to check if users are added to the correct groups.
- Use `id <username>` to verify user information.

### 5. Directory Permissions
The script sets the following directory permissions:
- `/adm` – only accessible to `GRP_ADM` members with read, write, and execute permissions.
- `/ven` – only accessible to `GRP_VEN` members with read, write, and execute permissions.
- `/sec` – only accessible to `GRP_SEC` members with read, write, and execute permissions.
- `/public` – accessible by all users (with read, write, and execute permissions).

## Security Considerations
- The script uses `openssl passwd -crypt` to generate a password hash for each user, ensuring that passwords are stored securely.
- It is recommended to change the default password (`pass123`) immediately after the script completes, to enhance security.

### Example:
To change the password for a user, use the `passwd` command:
```bash
sudo passwd <username>
```

## Troubleshooting
If you encounter any issues while running the script:
1. Make sure that your user has root privileges.
2. Check the output of the script for any error messages or issues.
3. Verify that the required packages, such as `openssl`, are installed.
