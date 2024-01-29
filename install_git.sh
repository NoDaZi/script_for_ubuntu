#!/bin/bash

#Install nesseary dependencies
./update_ubuntu.sh
sudo apt install -y curl

#install Clang and Clangd
echo "Installing Git ..."
sudo apt install -y git

#verify install versions
echo "Installing Git CLI ..."
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keying.gpg | sudo dd
of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture)
 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable mai " | sudo
tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y


#Vertifty installed versions
echo "Git version:"
git --version

echo "Git CLI version:"
gh --version

#Log in to Github
gh auth login
