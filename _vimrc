colorscheme desert
set guifont=Consolas:h11:cANSI

set lines=50
set columns=180 

syntax on
set smartindent
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
filetype indent on

" Map Control+s to save a file
nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>
