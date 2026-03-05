# Install Tailscale MSI
$tsUrl = "https://https://dl.tailscale.com/stable/tailscale-setup-1.94.2-arm64.msi"
$installerPath = "$env:TEMP\tailscale.msi"
Invoke-WebRequest -Uri $tsUrl -OutFile $installerPath
Start-Process msiexec.exe -ArgumentList "/i","`"$installerPath`"","/quiet","/norestart" -Wait
Remove-Item $installerPath -Force
