#!/bin/bash

# get .vimrc file
cp ~/.vimrc vimrc
echo -n "✓ "
echo ".vimrc copied"

# get init.vim of neovim
cp ~/.config/nvim/init.vim nvim_init.vim
echo -n "✓ "
echo "init.vim of neovim copied"

# get .bashrc
cp ~/.bashrc bashrc
echo -n "✓ "
echo "bashrc copied"

# get .bashrc_aliases
cp ~/.bash_aliases bash_aliases
echo -n "✓ "
echo "bash_aliases copied"

