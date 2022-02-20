$env:Path = "C:\Program Files\WindowsPowerShell\Scripts"
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-PackageProvider NuGet
Install-Script Get-WindowsAutoPilotInfo
Get-WindowsAutoPilotInfo.ps1 -Online
