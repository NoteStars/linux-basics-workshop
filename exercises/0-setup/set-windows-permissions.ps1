# Stop execution if a command encounters an error
$ErrorActionPreference = "Stop"

# Get the currently logged-in Windows user
$CurrentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Get the directory where this script is located
$ScriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path

# Navigate two directories up to find the repository root
$RepoDirectory = (Resolve-Path (Join-Path $ScriptDirectory "..\..")).Path

# Display the repository and user information
Write-Host "Repository: $RepoDirectory"
Write-Host "Current User: $CurrentUser"

# Grant the current user full control over the repository
# /T applies permissions recursively to files and subdirectories
# /C continues even if individual files encounter errors
# /Q suppresses success messages
icacls $RepoDirectory /grant "${CurrentUser}:(OI)(CI)F" /T /C /Q

# Check whether the permissions command succeeded
if ($LASTEXITCODE -ne 0) {
    throw "Failed to update repository permissions."
}

# Display completion message
Write-Host "Repository permissions updated successfully!" -ForegroundColor Green
