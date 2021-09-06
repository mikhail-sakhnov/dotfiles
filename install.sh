#!/bin/bash
DOTS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
MODULES=(.gitconfig\ .zshrc)
for DOTFILE in ${MODULES}
do
    TGT="${HOME}/${DOTFILE}"
    if test -f "${TGT}"; then
        echo "Skipping ${TGT}"
    else 
        echo "Installing ${DOTFILE} as ${TGT}"
        ln -s ${DOTS}/${DOTFILE} $TGT
    fi
done


# new shell
zsh
