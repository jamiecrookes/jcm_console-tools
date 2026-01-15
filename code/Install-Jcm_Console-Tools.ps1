# Windows Installation Procedure
if ($isWindows) {
    ## Create the destination directory if it doesn't exist
    if (!(Test-Path "$HOME\Documents\PowerShell\Modules\Jcm_Console-Tools")) {
        Write-Host "Creating Destination Directory"
        New-Item -ItemType Directory -Path $HOME\Documents\PowerShell\Modules\Jcm_Console-Tools | Out-Null
    }
    ## Copy module files
    try {
        Write-Host "Copying Module Files"
        Copy-Item Jcm_Console-Tools.psm1 $HOME\Documents\PowerShell\Modules\Jcm_Console-Tools -ErrorAction Stop
    } catch {
        Write-Host "Error Copying Module Files $_.ExceptionMessage"
    }
}

# Linux Installation Procedure
if ($isLinux) {
    ## Create the destination directory if it doesn't exist
    if (!(Test-Path "$home/.local/share/powershell/Modules/Jcm_Console-Tools")) {
        Write-Host "Creating Destination Directory"
        New-Item -ItemType Directory -Path "$home/.local/share/powershell/Modules/Jcm_Console-Tools" | Out-Null
    }
}

# macOS Installation Procedure
if ($isMacos) {
    Write-Host "macOS Operating System Detected"
    ## Create the destination directory if it doesn't exist
    if (!(Test-Path "$home/.local/share/powershell/Modules/Jcm_Console-Tools")) {
        Write-Host "..Creating Destination Directory"
        New-Item -ItemType Directory -Path "$home/.local/share/powershell/Modules/Jcm_Console-Tools" | Out-Null
    }
    ## Copy module files
    try {
        Write-Host "..Copying Module Files"
        Copy-Item Jcm_Console-Tools.psm1 "$home/.local/share/powershell/Modules/Jcm_Console-Tools" -ErrorAction Stop
    } catch {
        Write-Host "..Error Copying Module Files $_.ExceptionMessage"
    }
}