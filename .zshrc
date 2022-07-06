DOTFILES_DIR=${HOME}/.dotfiles
source ${DOTFILES_DIR}/zshrcincludes/default
source ${DOTFILES_DIR}/zshrcincludes/ohmyzsh

SETTINGS=(export alias)
for FILE in ${SETTINGS}
do 
    source ${DOTFILES_DIR}/zshrcincludes/${FILE}
    # also add some platform specific things
    PLATFORM_FILE=${DOTFILES_DIR}/zshrcincludes/${FILE}_`uname | tr '[:upper:]' '[:lower:]'`
    if test -f "${PLATFORM_FILE}"; then
        source ${PLATFORM_FILE}
    fi
done;

# os specific
# source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
