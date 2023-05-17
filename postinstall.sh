#!/bin/bash

# Install Chromium with minimal dependencies
echo "Installing Chromium..."
sudo apt update
sudo apt install -y --no-install-recommends chromium-browser

# Install Kmail with minimal dependencies
echo "Installing Kmail..."
sudo apt install -y --no-install-recommends kmail

# Install Telegram with minimal dependencies
echo "Installing Telegram..."
sudo apt install -y --no-install-recommends telegram-desktop

# Install LibreOffice with minimal dependencies
echo "Installing LibreOffice..."
sudo apt install -y --no-install-recommends libreoffice-writer

# Install Kate with minimal dependencies
echo "Installing Kate..."
sudo apt install -y --no-install-recommends kate

# Install Docker with minimal dependencies
echo "Installing Docker..."
sudo apt install -y --no-install-recommends docker.io

# Install Ansible with minimal dependencies
echo "Installing Ansible..."
sudo apt install -y --no-install-recommends ansible

# Install Vagrant with minimal dependencies
echo "Installing Vagrant..."
sudo apt install -y --no-install-recommends vagrant

# Install KDE desktop environment and applications
echo "Installing KDE desktop environment and applications..."
sudo apt install -y --no-install-recommends plasma-desktop kwin-x11 sddm konsole plasma-nm systemsettings dolphin kde-spectacle partitionmanager akregator korganizer plasma-pa kscreen gwenview okular systemsettings plasma-discover plasma-discover-backend-flatpak kwalletmanager ark

# Install misc programs with minimal dependencies
echo "Installing misc programs..."
sudo apt install -y --no-install-recommends mpv git

# Install Wine and Lutris properly


# Install Wine
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key 
https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ 
https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install --install-recommends winehq-staging

# Install Lutris and its dependencies (Nvidia)
sudo apt install wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 
libdbus-1-3:i386 libsqlite3-0:i386 libvulkan1 libvulkan1:i386

# Add contrib into /etc/apt/sources.list.d/debian.sources
echo "deb http://deb.debian.org/debian/ bookworm contrib" | sudo tee 
/etc/apt/sources.list.d/debian.sources

# Install Lutris
sudo apt update
sudo apt install lutris


# Cleanup
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean

#
