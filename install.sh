#!/bin/zsh

# alacritty
mkdir ~/.config/alacritty
ln -sf ~/.dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
source ~/.zshrc
exec zsh
