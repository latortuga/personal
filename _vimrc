set guifont=Consolas:h11:cANSI

set lines=50
set columns=180 

" Syntax highlighting
if has("syntax") && (&t_Co > 2 || has("gui_running")) 
    syntax on
    colorscheme desertdrew
endif

set smartindent 
set autoindent " New lines copy the indent of the previous line
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set ruler " row,col in the lower right
set showcmd " show command prefixes as they are typed (4dd, etc)
set hlsearch " highlight search items
set incsearch " search as you type
set ignorecase " search case-insensitive...
set smartcase " ...unless there's a capital letter, then make it case sensitive
set showmode " Show --- INSERT --- in insert mode, etc.

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
vnoremap <F5> y:exe "noautocmd vimgrep /" . escape(@", '\\/') . "/j **/*.js **/*.xul **/*.xml **/*.css" <Bar> cw<CR>

" Code folding set to fold around indent and do so on file open
set foldmethod=indent
set foldlevel=100

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

set scrolljump=5 " Jump 5 lines when running out of screen
set scrolloff=3 " Jump 3 lines before the end of a screen

" if current working directory is my home folder, take me to svn
if getcwd() == "C:\\Users\\Drew"
    cd Documents\svn\
endif

nnoremap <F1> :let @/ = ""
