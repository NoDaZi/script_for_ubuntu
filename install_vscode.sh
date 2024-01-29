#!/bin/bash

#Install nesseary dependencies
./update_ubuntu.sh
sudo apt -y install software-properties-common apt-transport-https wget

#install Clang and Clangd
echo "Installing VScode..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)
] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y code

#verify install versions
echo "VScode version:"
code --version
