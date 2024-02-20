#!/bin/bash

sudo apt update

# check pipx installation
if ! [ -x "$(command -v pipx)" ]
then
    echo "pipx is not installed. Installing pipx..."
    sudo apt install -y pipx
    pipx ensurepath
    pipx completions
else
    echo "pipx is already installed"
fi

# install ansible using pipx
if ! [ -x "$(command -v ansible)" ]
then
    echo "ansible is not installed. Installing ansible..."
    pipx install ansible-core
else
    echo "ansible is already installed"
fi

# restart shell
exec $SHELL

# check ansible installation
if ! [ -x "$(command -v ansible)" ]
then
    echo "ansible is not installed. Please check the installation"
else
    echo "ansible is installed successfully"
fi

ansible-playbook --check playbook.yml
