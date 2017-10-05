""" COMMON
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set number
set hidden
syntax on
"""" VUNDLE INIT

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"
" PLUGINS LIST
Plugin 'powerline/powerline'
Plugin 'scrooloose/syntastic'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'yegappan/mru'
call vundle#end()            " required
filetype plugin indent on    " required

""" END OF PLUGINS

""" POWERLINE
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set ls=2


""" Synstatic


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
