yay -S --needed --noconfirm zsh

#copy my config
cp config/zshrc/.zshrc ~/.zshrc

# set zsh as default
sudo chsh -s $(which zsh) $USER
