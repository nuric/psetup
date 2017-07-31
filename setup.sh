#!/bin/bash

# Install basic packages
echo "Installing packages"
sudo apt install git vim tree terminator openbox python3-pip

# Install python packages
echo "Installing python packages"
sudo pip3 install pylint

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
wget -O ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install plugins
echo "Installing vim plugins"
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone --depth=1 https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone --depth=1 https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
git clone --depth=1 https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone --depth=1 https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
