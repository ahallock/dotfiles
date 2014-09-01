set t_Co=256
syntax on
set background=dark
colorscheme gruvbox
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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
set runtimepath^=~/.vim/bundle/ctrlp.vim
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
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Bundle 'https://github.com/digitaltoad/vim-jade.git'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'laurentgoudet/vim-howdoi.git'
filetype plugin indent on

" magic to turn off auto-indenting on paste
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" highlight trailing whitespace
match ErrorMsg '\s\+$'
