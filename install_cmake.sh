#!/bin/bash

#Install nesseary dependencies
./update_ubuntu.sh
sudo apt install -y build-essential

#install Clang and Clangd
echo "Installing Cmake"
sudo apt install -y cmake

#verify install versions
cmake --version
