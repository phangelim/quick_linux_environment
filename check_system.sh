#!/bin/bash

set -e

# confirm the i3 environment
if [ "$XDG_CURRENT_DESKTOP" = "i3" ]; then
    echo "=>You running i3, the process continue..."
else
    echo "You don't use i3 environment"
    echo "THE PROCESS GOING TO STOP!!!!!"
    exit 1
fi

# confirm the archlinux
if [ ! -f "/etc/arch-release" ]; then
    echo "You don't use ArchLinux"
    echo "THE PROCESS GOING TO STOP!!!!!"
    exit 1 
fi

echo "System validation successful!!!"
exit 0 
    


