#! /bin/bash

NVIM=~/.config/nvim

if [ -d $NVIM ];
then
    cp $NVIM ~/.config/nvim_backup
    rm -rf $NVIM
fi
ln -s $(pwd)/nvim $NVIM

