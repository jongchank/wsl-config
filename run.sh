#!/bin/sh

cp -f inputrc ~/.inputrc
cp -f vimrc ~/.vimrc
sudo apt update
sudo apt -y install build-essential
sudo sysctl -w kernel.core_pattern=core
