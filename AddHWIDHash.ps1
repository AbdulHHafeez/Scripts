$env:Path = "C:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider -Name NuGet -Force
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Script Get-WindowsAutoPilotInfo -Force
Get-WindowsAutoPilotInfo.ps1 -Online
