
# 0 - Environment Setup

Before starting the workshop, install the following software:

1. [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads) - Creates and runs virtual machines.
2. [HashiCorp Vagrant](https://developer.hashicorp.com/vagrant/install) - Automates virtual machine setup and configuration.

Install VirtualBox first, followed by Vagrant.

---

## Linux

### 1. Install VirtualBox

Download VirtualBox for your Linux distribution:

https://www.virtualbox.org/wiki/Linux_Downloads

Alternatively, use your distribution's package manager.

For Ubuntu/Debian:

```bash
sudo apt update
sudo apt install virtualbox
```

For Fedora/RHEL/Rocky Linux:

```bash
sudo dnf install VirtualBox
```

### 2. Install Vagrant

Follow the official installation instructions:

https://developer.hashicorp.com/vagrant/install

For Ubuntu/Debian, use the HashiCorp APT repository instructions.

For Fedora/RHEL, use the HashiCorp RPM repository instructions.

---

## Windows

### 1. Install VirtualBox

1. Visit https://www.virtualbox.org/wiki/Downloads
2. Download the Windows installer.
3. Open the downloaded installer.
4. Follow the installation wizard.
5. Restart your computer if prompted.

### 2. Install Vagrant

1. Visit https://developer.hashicorp.com/vagrant/install
2. Download the Windows installer.
3. Run the installer.
4. Follow the installation wizard.
5. Restart your terminal or computer if prompted.

---

## macOS

### 1. Install VirtualBox

1. Visit https://www.virtualbox.org/wiki/Downloads
2. Download the appropriate installer for your Mac:
   - Intel Mac
   - Apple Silicon Mac (M1, M2, M3, M4, etc.)
3. Open the downloaded `.dmg` file.
4. Run the VirtualBox installer.
5. Follow the installation instructions.

### 2. Install Vagrant

Using Homebrew:

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/hashicorp-vagrant
```

Alternatively, download the installer from:

https://developer.hashicorp.com/vagrant/install

---

## Verify Installation

Open your terminal (PowerShell on Windows) and run:

```bash
virtualbox --help
```

```bash
vagrant --version
```

If Vagrant displays its installed version, the installation was successful.

You are now ready to start the workshop!


## Repository Permissions Setup

These scripts configure repository permissions for your operating system.

## Available Scripts

| Script | Operating System |
|---|---|
| `repo-permissions-linux-macos.sh` | Linux / macOS |
| `set-windows-permissions.ps1` | Windows |

## Usage

### Linux / macOS

```bash
chmod +x repo-permissions-linux-macos.sh
./repo-permissions-linux-macos.sh
```

### Windows (PowerShell)

```powershell
.\set-windows-permissions.ps1
```

**Note:** Linux/macOS uses `chown` to change ownership, while Windows uses `icacls` to configure file permissions.
