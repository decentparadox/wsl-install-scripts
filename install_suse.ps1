# Install the Windows Subsystem for Linux feature
Write-Host "Installing Windows subsystem for Linux"
Write-Host "Running Kalsar"
Write-Host "By: Sasank,Arhant,Rishi"
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

# Set the default version of WSL to version 2
wsl --set-default-version 2
Write-Host "You selected Suse"
# Install the Ubuntu distribution
wsl --install -d sles-15


# Restart the computer
Write-Host "Restarting..."
Start-Sleep -Seconds 5
Restart-Computer
