#!/bin/bash

set -e

#install neovim
yay -S --needed --noconfirm neovim

if [ -d "$HOME/.config/nvim" ]; then
  echo "=>Creating a backup for neovim"
  mv ~/.config/nvim ~/.config/nvim.backup
fi

# lazyvim install
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
