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

# Cleanup
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean

#
