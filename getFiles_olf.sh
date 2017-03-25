#!/usr/bin/env bash

# To get all the neccesary files given

# creating the file list
read -d '' filelist <<-"_EOF_"
/home/gurdit/.vimrc
/home/gurdit/.bashrc
/home/gurdit/.bash_aliases
/home/gurdit/youtube-dl.conf
_EOF_

for filee in  $filelist; do
    if [ -e "$filee" ]; then
        cp -vf $filee .
    fi
done

#file specific work renaming files
mv -vf .vimrc vimrc
mv -vf .bashrc bashrc
mv -vf .bash_aliases bash_aliases
