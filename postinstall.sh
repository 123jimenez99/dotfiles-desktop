#!/bin/bash

# Disable APT's bad habit of install 'god's know how many' "recommended" packages by when installing programs
sudo sh -c 'echo "APT::Install-Recommends \"false\";" > /etc/apt/apt.conf.d/99no-install-recommends'

# Install the required packages
sudo apt update
sudo apt install -y sway swaylock swayidle slurp grim wofi alacritty wlsunset pulseaudio mpv feh xwayland fonts-font-awesome
# Download and install the PixelOperator font
sudo mkdir -p /usr/share/fonts/truetype/PixelOperator
sudo wget -O /usr/share/fonts/truetype/PixelOperator/PixelOperator.ttf https://github.com/ericoporto/pixel-utf8-fonts/raw/main/pixeloperator/PixelOperator.ttf
sudo fc-cache -f -v

# Clone the dotfiles and place the basic ones 
git clone https://github.com/123jimenez99/dotfiles-desktop /tmp/dotfiles-desktop
mv /tmp/dotfiles-desktop/{alacritty,sway,wofi,waybar} "$HOME/.config/"

# Detect the GPU and install hardware-video-decoding packages 
check_gpu_vendor() {

    # Check if lspci is available
    if ! command -v lspci &>/dev/null; then
        echo "Error: lspci command not found. You might have more important issues than not having hardware-accelerated video decoding."
        exit 1
    fi

    # Check lspci output
    if lspci | grep -i -E 'vga|3d' | grep -qi 'intel'; then
        echo "Intel GPU detected."
        GPU_VENDOR="intel"
    elif lspci | grep -i -E 'vga|3d' | grep -qi 'amd\|ati'; then
        echo "AMD GPU detected."
        GPU_VENDOR="amd"
    elif lspci | grep -i -E 'vga|3d' | grep -qi 'nvidia'; then
        echo "GTFO with your proprietary drivers!"
        GPU_VENDOR="nvidia"
    else
        echo "Unable to determine GPU vendor."
        exit 1
    fi
}

# Call check_gpu_vendor
check_gpu_vendor

# Install the required package if an Intel GPU is detected
if [ "$GPU_VENDOR" = "intel" ]; then
    echo "Installing intel-media-va-driver package."
    sudo apt install -y intel-media-va-driver
fi

# Install the required package if an AMD GPU is detected
if [ "$GPU_VENDOR" = "amd" ]; then
    echo "Installing mesa-va-drivers package."
    sudo apt install -y mesa-va-drivers
fi

