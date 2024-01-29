#!/bin/bash

#Install nesseary dependencies
./update_ubuntu.sh
sudo apt install -y build-essential

#install Clang and Clangd
echo "Installing Clang and Clangd..."
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 14
sudo apt install -y clang clangd

#verify install versions
echo "Clang version:"
clang --version
echo "Clangd version:"
clangd --version

