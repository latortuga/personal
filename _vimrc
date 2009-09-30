set guifont=Consolas:h11:cANSI

set lines=50
set columns=180 

syntax on
colorscheme desertdrew
set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set ruler
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmode

let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

map <C-T> :FuzzyFinderTextMate<CR>
map <M-b> :FuzzyFinderBuffer<CR>

set backspace=indent,eol,start
set guioptions-=m
set guioptions-=M
set guioptions-=T

filetype on
filetype plugin on

" Map Control+s to save a file
nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>

" Map search for word under cursor to F4
map <F4> :execute "noautocmd vimgrep /" . expand("<cword>") . "/j **/*.js **/*.xul **/*.xml **/*.css" <Bar> cw<CR>

" Code folding set to fold around indent and do so on file open
set foldmethod=indent
set foldlevel=4

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

