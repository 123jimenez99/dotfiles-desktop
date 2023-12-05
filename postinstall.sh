#!/bin/bash

echo "Installing misc programs..."
sudo apt install -y --no-install-recommends mpv git streamlink ntfs-3g libblockdev-crypto2

# Add 32-bit app support
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install --install-recommends wine

# Install lutris dependencies (Nvidia)
sudo apt install wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386
libdbus-1-3:i386 libsqlite3-0:i386 nvidia-vulkan-icd libvulkan1 libvulkan1:i386 nvidia-driver-libs:i386
gamemode gamemode:i386 mangohud mangohud:i386

# Install Lutris
sudo apt update
sudo apt install lutris

# Cleanup
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean
