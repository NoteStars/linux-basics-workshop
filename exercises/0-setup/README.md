
# Repository Permissions Setup

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
