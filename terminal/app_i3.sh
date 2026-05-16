#!/bin/bash

set -e

yay -S --needed --noconfirm i3-wm i3status i3lock polybar feh

# create the directory
mkdir -p ~/.config/i3

# copy the config
cp config/i3/config ~/.config/i3/config
