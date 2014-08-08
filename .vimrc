" color stuffs
syntax on
set t_Co=256
color pychimp
set ignorecase
set tags=./tags;
set ruler
set nowrap

" tab spaces and indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
set expandtab
set smartindent
set cindent

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
