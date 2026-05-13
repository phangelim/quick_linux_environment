#!/bin/bash

set -e

logo_ascii='  /$$$$$$            /$$           /$$             /$$       /$$                                             
 /$$__  $$          |__/          | $$            | $$      |__/                                             
| $$  \ $$ /$$   /$$ /$$  /$$$$$$$| $$   /$$      | $$       /$$ /$$$$$$$  /$$   /$$ /$$   /$$               
| $$  | $$| $$  | $$| $$ /$$_____/| $$  /$$/      | $$      | $$| $$__  $$| $$  | $$|  $$ /$$/               
| $$  | $$| $$  | $$| $$| $$      | $$$$$$/       | $$      | $$| $$  \ $$| $$  | $$ \  $$$$/                
| $$/$$ $$| $$  | $$| $$| $$      | $$_  $$       | $$      | $$| $$  | $$| $$  | $$  >$$  $$                
|  $$$$$$/|  $$$$$$/| $$|  $$$$$$$| $$ \  $$      | $$$$$$$$| $$| $$  | $$|  $$$$$$/ /$$/\  $$               
 \____ $$$ \______/ |__/ \_______/|__/  \__/      |________/|__/|__/  |__/ \______/ |__/  \__/               
      \__/                                                                                                   
                                                                                                             
                                                                                                             
 /$$$$$$$$                      /$$                                                                   /$$    
| $$_____/                     |__/                                                                  | $$    
| $$       /$$$$$$$  /$$    /$$ /$$  /$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$/$$$$   /$$$$$$  /$$$$$$$  /$$$$$$  
| $$$$$   | $$__  $$|  $$  /$$/| $$ /$$__  $$ /$$__  $$| $$__  $$| $$_  $$_  $$ /$$__  $$| $$__  $$|_  $$_/  
| $$__/   | $$  \ $$ \  $$/$$/ | $$| $$  \__/| $$  \ $$| $$  \ $$| $$ \ $$ \ $$| $$$$$$$$| $$  \ $$  | $$    
| $$      | $$  | $$  \  $$$/  | $$| $$      | $$  | $$| $$  | $$| $$ | $$ | $$| $$_____/| $$  | $$  | $$ /$$
| $$$$$$$$| $$  | $$   \  $/   | $$| $$      |  $$$$$$/| $$  | $$| $$ | $$ | $$|  $$$$$$$| $$  | $$  |  $$$$/
|________/|__/  |__/    \_/    |__/|__/       \______/ |__/  |__/|__/ |__/ |__/ \_______/|__/  |__/   \___/  
                                                                                                             
                                                                                                             
                                                                                                             '

echo "$logo_ascii"
echo "=>START THE PROCESS!!!"
echo "=>If need to finish the process use CTRL+C"

#check the system
if [ -x "./check_system.sh" ]; then
  echo "=>The System is Check / Continue..."
  ./check_system.sh
else
  echo "=>Error: ./check_system.sh not found or not executable"
  exit 1
fi

# Confirm that system have a YAY installed
if ! command -v yay &>/dev/null; then
  echo "=>Yay don't Installed yet => Installing YAY..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
else
  echo "=>Yay Already Installed!!!"
fi

# Update the all system
echo "=>Update the all system!!!"
sudo pacman --noconfirm -Syu

# run the ./installation
if [ -x "./installation.sh" ]; then
  echo "=>Everything is ready / Starting the installation..."
  ./installation.sh
else
  echo "=>Error: ./installation.sh not found or not executable"
  exit 1
fi
