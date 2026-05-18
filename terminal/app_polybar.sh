#!/bin/bash

set -e 

yay -S --needed --noconfirm polybar 

mkdir -p ~/.config/polybar

cp config/polybar/config.ini ~/.config/polybar/config.ini

