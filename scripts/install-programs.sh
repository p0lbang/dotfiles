#!/bin/zsh

sudo pacman -S --needed base-devel alacritty unzip git rustup
rustup toolchain install stable

# install paru
git clone https://aur.archlinux.org/paru.git /tmp/paru
cd /tmp/paru
makepkg -si