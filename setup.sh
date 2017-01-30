#!/bin/bash

# Install basic packages
echo "Installing packages"
sudo apt install git vim terminator pylint3 openbox

# Copy configuration files
echo "Copying configuration files"
cp bashrc ~/.bashrc
cp pylintrc ~/.pylintrc
cp vimrc ~/.vimrc
cp -r config/* ~/.config

# Setup vim plugins
echo "Setting up vim plugins pathogen"
mkdir ~/.vim
cp -r vim/* ~/.vim
# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install plugins
echo "Installing vim plugins"
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone --depth=1 https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

