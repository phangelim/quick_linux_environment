#!/bin/bash

set -e

#install zsh and the powerlevel10k
yay -S --needed --noconfirm zsh ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k

#copy my config
echo "=>Copy zsh dotfiles"
cp config/zsh/.zshrc ~/.zshrc

# set zsh as default
echo "=>Setting the zsh as the default shell"
sudo chsh -s $(which zsh) $USER
