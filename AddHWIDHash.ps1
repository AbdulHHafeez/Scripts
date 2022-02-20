<#
How to use this script:
  1. Open an Administrator PowerShell window
  2. Type the following comands:
     - Set-ExecutionPolicyBypass
     - Invoke-WebRequest -Uri bit.ly/addhwidhash -OutFile .\script.ps1; .\script.ps1
#>
$env:Path = "C:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider -Name NuGet -Force
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Script Get-WindowsAutoPilotInfo -Force
Get-WindowsAutoPilotInfo.ps1 -Online
