#!/bin/bash

echo "Installing base programs"
sudo apt update 
sudo apt install -y --no-install-recommends chromium kmail telegram-desktop libreoffice-writer kate ansible vagrant


# Install KDE desktop environment and applications
echo "Installing KDE desktop environment and applications..."
sudo apt install -y --no-install-recommends plasma-desktop kwin-x11 sddm konsole plasma-nm systemsettings dolphin kde-spectacle partitionmanager akregator korganizer plasma-pa kscreen gwenview okular systemsettings plasma-discover plasma-discover-backend-flatpak kwalletmanager ark powerdevil

# Install misc programs with minimal dependencies
echo "Installing misc programs..."
sudo apt install -y --no-install-recommends mpv git ntfs-3g mangohood mangohood:i386

# Add proper scaling to chromium 
sudo sh -c 'echo "export CHROMIUM_FLAGS=\"\$CHROMIUM_FLAGS --force-device-scale-factor=1.25\"" >> /etc/chromium.d/default-flags'

# Install Wine
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install --install-recommends winehq-staging

# Install Lutris and its dependencies (Nvidia)
sudo apt install wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 
libdbus-1-3:i386 libsqlite3-0:i386 libvulkan1 libvulkan1:i386

# Add contrib and non-free into /etc/apt/sources.list
sudo sed -i 's/main$/main contrib non-free/g' /etc/apt/sources.list

# Install Lutris
sudo apt update
sudo apt install lutris


# Cleanup
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean
