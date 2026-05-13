#!/bin/bash

set -e

# Install the packages of terminal/
for script in terminal/*.sh; do
  if [ -x "$script" ]; then
    echo "Installing ${script}"
    "$script"
  else
    echo "Error!!!"
    echo "The file $script does not have execution permissions"
    exit 1
  fi
done

echo "=>Terminal softwares Installed!!!"

# install the packages of desktop/
for packages in desktop/*.sh; do
  if [ -x "$packages" ]; then
    echo "Installing ${packages}"
    "$packages"
  else
    echo "Error!!!"
    echo "The file $packages does not have execution permissions"
    exit 1
  fi
done

echo "=>Desktop apps Installed!!!"
