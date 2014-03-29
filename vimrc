set t_Co=256
syntax on
set background=dark
colorscheme kolor
" numbers
set relativenumber 
set number

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

imap <C-c> <CR><Esc>O

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'Raimondi/delimitMate'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'git://github.com/editorconfig/editorconfig-vim'
Bundle 'scrooloose/nerdtree'
filetype plugin indent on
