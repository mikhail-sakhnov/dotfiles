#!/bin/bash

DOTS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

for DOTFILE in .zshrc .gitconfig 
do
    echo "Installing ${DOTFILE}"
    TGT="${HOME}/${DOTFILE}"
    touch ${TGT}
    mv ${TGT} "${TGT}.old"
    ln -s ${DOTS}/${DOTFILE} $TGT
done


# new shell
zsh
