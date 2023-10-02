#!/bin/bash

# Install essential apps
sudo apt update 
sudo apt install -y --no-install-recommends firefox-esr telegram-desktop kate ansible vagrant

# Install KDE related apps
echo "Installing KDE desktop environment and applications..."
sudo apt install -y --no-install-recommends plasma-desktop kwin-x11 sddm konsole plasma-nm systemsettings dolphin kde-spectacle partitionmanager akregator korganizer plasma-pa kscreen gwenview okular systemsettings plasma-discover plasma-discover-backend-flatpak kwalletmanager ark powerdevil bluedevil plasma-systemmonitor

# Install misc programs with minimal dependencies
echo "Installing misc programs..."
sudo apt install -y --no-install-recommends mpv git streamlink ntfs-3g libblockdev-crypto2 gamemode gamemode:i386 mangohud mangohud:i386

# Add 32-bit app support
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install --install-recommends wine

# Install lutris dependencies (Nvidia)
sudo apt install wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386
libdbus-1-3:i386 libsqlite3-0:i386 nvidia-vulkan-icd libvulkan1 libvulkan1:i386 nvidia-driver-libs:i386

# Install Lutris
sudo apt update
sudo apt install lutris

# Cleanup
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean
