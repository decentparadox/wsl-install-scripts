#!/bin/bash
echo "Welcome to the Windows Subsystem for Linux (WSL) setup guide!"
echo "WSL allows you to run Linux distributions on your Windows machine."
echo "Please select your preferred distro:"
echo "1. Ubuntu"
echo "2. Debian"
echo "3. Kali Linux"
echo "4. OpenSUSE"
echo "5. Others"

read -p "Enter your choice: " choice

case $choice in
    1)
        echo "You have selected Ubuntu."
        # Download the script from GitHub
        curl -o install_ubuntu.ps1 https://raw.githubusercontent.com/decentparadox/Kalser/main/install_ubuntu.ps1
        # Run the script
        powershell.exe -ExecutionPolicy Bypass -File install_ubuntu.ps1
        ;;
    2)
        echo "You have selected Debian."
        curl -o install_debian.ps1 https://raw.githubusercontent.com/decentparadox/Kalser/main/install_debian.ps1
        powershell.exe -ExecutionPolicy Bypass -File install_debian.ps1
        ;;
    3)
        echo "You have selected Kali Linux."
        curl -o install_kali.ps1 https://raw.githubusercontent.com/decentparadox/Kalser/main/install_kali.ps1
        powershell.exe -ExecutionPolicy Bypass -File install_kali.ps1
        ;;
    4)
        echo "You have selected OpenSUSE."
          curl -o install_kali.ps1 https://raw.githubusercontent.com/decentparadox/Kalser/main/install_suse.ps1
        powershell.exe -ExecutionPolicy Bypass -File install_suse.ps1
        ;;
    5)
        echo "You have selected Others."
        echo "Please check the Microsoft Store for other Linux distributions available for WSL."
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 5."
esac


