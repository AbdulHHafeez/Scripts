$env:Path = "C:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider NuGet -force
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Script Get-WindowsAutoPilotInfo -force
Get-WindowsAutoPilotInfo.ps1 -Online
