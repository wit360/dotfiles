" Vundle Start
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
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
" Plugin 'Valloric/YouCompleteMe' require Vim7.3
" Plugin 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'bling/vim-bufferline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle End


" color
set background=dark
color Tomorrow-Night

syntax on
set ignorecase
set tags=tags;
set ruler
set nowrap
set mouse=a
set number

"toggle shortcuts
nnoremap <SPACE> <Nop>
nnoremap <tab>1 :color PaperColor<cr>
nnoremap <tab>4 :color seoul256-light<cr>
nnoremap <tab>6 :color gruvbox<cr>
nnoremap <tab>7 :color seoul256<cr>
nnoremap <tab>8 :color obsidian<cr>
nnoremap <tab>9 :color wombat256<cr>
nnoremap <tab>0 :color Tomorrow-Night<cr>
nnoremap <tab>v :e ~/.vimrc<cr>
nnoremap <tab>V :so ~/.vimrc<cr>
nnoremap <tab>n :set number!<cr>
nnoremap <tab>N :NERDTree<cr>
nnoremap <tab>h :set hlsearch!<cr>
nnoremap <tab>s :if exists("g:syntax_on")<Bar>syntax off<Bar>else<Bar>syntax enable<Bar>endif<cr>
nnoremap <tab>p :CtrlP ~/

" tab spaces and indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
let mapleader = "\<space>"

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

set laststatus=2
" let g:airline#extensions#tabline#enabled=1
" let g:airline_theme='bubblegum'
let g:airline_section_x = ''
let g:airline_section_y = ''

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = ' '
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:bufferline_echo = 0
au BufRead,BufNewFile *.ros set filetype=php
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.pig set filetype=pig syntax=pig
au BufRead,BufNewFile *.hive set filetype=hive syntax=hive

" make Esc happen without waiting for timeoutlen
" fixes Powerline delay
augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
augroup END
set t_Co=256
