""" COMMON
let mapleader = ','
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set number
set hidden
set autowrite
syntax on
"""" VUNDLE INIT

set nocompatible              
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"
" PLUGINS LIST
Plugin 'powerline/powerline'
Plugin 'scrooloose/syntastic'
Plugin 'yegappan/mru'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

call vundle#end()            " required
filetype plugin indent on    " required

""" END OF PLUGINS

""" NERDTREE
map <F4> :NERDTreeToggle<CR>


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



""" COMMENTS
map <^-/> :NERDComToggleComment<cr>
