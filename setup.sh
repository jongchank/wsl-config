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

# Enabling core 
sudo sysctl -w kernel.core_pattern=core

# Installing lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

# Installing coding agents
#curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
#sudo apt install nodejs
#mkdir ~/.npm-global
#npm config set prefix '~/.npm-global'
#echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
#npm install -g @anthropic-ai/claude-code
#npm install -g @google/gemini-cli
#npm install -g @openai/codex
#echo "Please $source ~/.bashrc"
