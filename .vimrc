set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'Valloric/YouCompleteMe'
" Plugin 'davidhalter/jedi-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color stuffs
syntax on
set t_Co=256
color molokai
set ignorecase
set tags=./tags;~/auction_fraud_detection
set ruler
set nowrap

" tab spaces and indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set expandtab
set smartindent
set nocindent

filetype on
set hidden

" get rid of tmp files...
set noswapfile

noremap <C-j> :bprev<CR>
noremap <C-k> :bnext<CR> 

if has("gui_macvim")
  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif


au BufRead,BufNewFile *.ros set filetype=php
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source ~/.vim/ftplugin/json.vim
