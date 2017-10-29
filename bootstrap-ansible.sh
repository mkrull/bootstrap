#!/bin/bash

function install-ubuntu {
    sudo apt-get update
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt install ansible
}

function install-arch {
    sudo pacman -S ansible
}

# get distribution
eval $(cat /etc/*release|grep ^ID)

if [ "${ID}" ]; then
    case ${ID} in
    arch|antergos) install-arch ;;
    debian|ubuntu) install-ubuntu ;;
    *) echo "Unknown distribution" ;;
    esac
fi

