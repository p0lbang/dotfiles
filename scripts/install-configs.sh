#!/bin/zsh

# download firacode
curl -fSL https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip --output /tmp/FiraCode.zip
sudo unzip FiraCode.zip -d /usr/share/fonts/firacode

# download powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Downloaded powerlevel10k"

# force copy .config folder to Home directory as symbolink link
cp -rsf ~/.dotfiles/.config ~/
echo "Finished creating symlinks for .config files"

# zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
source ~/.zshrc
exec zsh
