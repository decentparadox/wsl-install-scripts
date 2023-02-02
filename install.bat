@echo off
echo Installing Windows subsystem for Linux



dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
wsl --install -d ubuntu


echo Restarting.....
timeout 5
timeout 5

shutdown.exe /r /t 00