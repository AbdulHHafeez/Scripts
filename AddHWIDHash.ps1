<#
Info:
  This script can be used at OOBE screen of Windows 10 to add it as a Windows Autopilot device.
How to use this script:
  1. Open an Administrator PowerShell window
  2. Type the following comands:
     - iex (irm bit.ly/addhwidhash)
  3. Enter credentials
#>
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force  | Out-Null
$env:Path = "C:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider -Name NuGet -Force | Out-Null
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Script Get-WindowsAutoPilotInfo -Force | Out-Null
Get-WindowsAutoPilotInfo.ps1 -Online
