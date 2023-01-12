#!/bin/zsh

# alacritty
mkdir -p ~/.config/alacritty
ln -sf ~/.dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# vscodium
mkdir -p ~/.config/VSCodium
ln -sf ~/.dotfiles/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json


# zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
source ~/.zshrc
exec zsh
