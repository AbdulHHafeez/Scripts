$env:Path = "C:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider NuGet
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Script Get-WindowsAutoPilotInfo
Get-WindowsAutoPilotInfo.ps1 -Online
