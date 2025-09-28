#!/bin/sh
cp -f inputrc ~/.inputrc
cp -f vimrc ~/.vimrc
sudo apt update
sudo apt -y upgrade
sudo apt -y install build-essential
sudo apt -y install gdb
sudo apt -y install gh
sudo apt -y install valgrind 
sudo apt -y install cmake
sudo apt -y install xutils-dev
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
sudo sysctl -w kernel.core_pattern=core
