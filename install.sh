#! /bin/bash

install_zshrc() {
    ZSH=~/.zshrc

    if [ -f $ZSH ];
    then
        cp $ZSH ~/.zshrc_backup
        rm -rf $ZSH
    fi
    ln -s $(pwd)/.zshrc $ZSH
}

install_nvim() {
    NVIM=~/.config/nvim

    if [ -d $NVIM ];
    then
        cp $NVIM ~/.config/nvim_backup
        rm -rf $NVIM
    fi
    ln -s $(pwd)/nvim $NVIM
}

install_zshrc
install_nvim

