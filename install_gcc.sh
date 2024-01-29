#!/bin/bash

#Install nesseary dependencies
./update_ubuntu.sh
sudo apt install -y build-essential

#install Clang and Clangd
echo "Installing GCC ..."
sudo apt install -y gcc

#verify install versions
echo "GCC version:"
gcc --version
