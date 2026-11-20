

## 0. Choose Your Operating System

<details>
<summary><strong>🐧 Linux</strong></summary>

### 1. Install VirtualBox

Visit the [VirtualBox Linux Downloads](https://www.virtualbox.org/wiki/Linux_Downloads) page.

Alternatively, install using your package manager.

**Ubuntu/Debian:**

```bash
sudo apt update
sudo apt install virtualbox
```

**Fedora/RHEL/Rocky Linux:**

Follow the [official Linux installation guide](https://www.virtualbox.org/wiki/Linux_Downloads).

### 2. Install Vagrant

Visit the [Vagrant Installation Guide](https://developer.hashicorp.com/vagrant/install).

Follow the instructions for your Linux distribution.

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

### 1. Install VirtualBox

1. Visit [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads).
2. Download the Windows installer. (Windows hosts)
3. Open the installer.
4. Follow the installation wizard.
5. Restart your computer if prompted.

### 2. Install Vagrant

1. Visit the [Vagrant Installation Guide](https://developer.hashicorp.com/vagrant/install).
2. Under Windows -> Binary download -> *AMD64 Download for 64 bit-PCs* or *I686 for 32-bit PCs Only*
3. Run the installer.
4. Follow the installation wizard.
5. Restart your terminal if prompted.

</details>

<details>
<summary><strong>🍎 macOS</strong></summary>

### 1. Install VirtualBox

1. Visit [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads).
2. Download the appropriate installer for your Mac:
   - Intel Mac
   - Apple Silicon Mac
3. Open the downloaded installer.
4. Follow the installation instructions.

### 2. Install Vagrant

Using Homebrew:

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/hashicorp-vagrant
```

Alternatively, use the [Vagrant Installation Guide](https://developer.hashicorp.com/vagrant/install).

</details>

---

## 3. Verify Installation

Open your terminal or PowerShell and run:

```bash
vagrant --version
```

If Vagrant displays its installed version, the installation was successful!

You are now ready to start the workshop.


## 4. Repository Permissions Setup

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
