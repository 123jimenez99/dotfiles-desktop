#!/bin/bash

# Install essential apps
sudo apt update 
sudo apt install -y --no-install-recommends firefox-esr telegram-desktop

# Install GNOME related apps
echo "Installing GNOME desktop environment and applications..."
sudo apt install -y --no-install-recommends gnome-shell gdm3 gnome-terminal gnome-control-center nautilus gnome-tweaks gnome-calculator gnome-screenshot gnome-system-monitor gnome-music network-manager-gnome gnome-software flatpak gnome-software-plugin-flatpak gnome-shell-extension-manager gnome-shell-extension-tiling-assistant

# Install misc programs with minimal dependencies
echo "Installing misc programs..."
sudo apt install -y --no-install-recommends mpv git streamlink ntfs-3g libblockdev-crypto2 intel-media-va-driver mesa-vulkan-drivers

# Cleanup
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean

