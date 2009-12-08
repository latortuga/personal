" Use vim defaults, better than vi.
set nocompatible

set guifont=Consolas:h11:cANSI

set lines=50
set columns=180 

" Syntax highlighting
if has("syntax") && (&t_Co > 2 || has("gui_running")) 
    syntax on
    colorscheme desertdrew
    " Remove some menu crap in gui mode
    set guioptions-=m
    set guioptions-=M
    set guioptions-=T
endif

set smartindent
set autoindent " New lines copy the indent of the previous line
set shiftwidth=4
set tabstop=4
set expandtab " expand tabs to spaces
set smarttab " tab and backspace are smrter
set ruler " row,col in the lower right
set showcmd " show command prefixes as they are typed (4dd, etc)
set hlsearch " highlight search items
set incsearch " search as you type
set ignorecase " search case-insensitive...
set smartcase " ...unless there's a capital letter, then make it case sensitive
set showmode " Show --- INSERT --- in insert mode, etc.
set scrolljump=5 " Jump 5 lines when running out of screen
set scrolloff=3 " Jump 3 lines before the end of a screen
set visualbell " don't beep at me all the time, vim!
set wildmenu " show all available commands when hitting tab
set wildmode=list:longest " tab complete to point of ambiguity
set backupdir=~/vimtmp
set backspace=indent,eol,start " In insert mode, backspace over everything
set foldmethod=indent " Code folding set to fold around indent and do so on file open
set foldlevel=100
set nobackup " get rid of temp files!
set nowritebackup

filetype on
filetype plugin on

" swap ' and `, they do the same thing except that ` jumps to column in
" addition to row so it's more useful.
nnoremap ' `
nnoremap ` '

" change <Leader> to comma, from backslash
let mapleader = ","

let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

map <C-T> :FuzzyFinderTextMate<CR>
map <M-b> :FuzzyFinderBuffer<CR>

" Map Control+s to save a file
nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>

" clear current highlighted search items with F1
nnoremap <F1> :let @/ = ""<CR>

" Search for word under cursor using F4
map <F4> :execute "noautocmd vimgrep /" . expand("<cword>") . "/j **/*.js **/*.xul **/*.xml **/*.css" <Bar> cw<CR>
" Search for word selected by visual using F5
vnoremap <F5> y:execute "noautocmd vimgrep /" . escape(@", '\\/') . "/j **/*.js **/*.xul **/*.xml **/*.css" <Bar> cw<CR>
vnoremap <F6> y:execute "noautocmd vimgrep /" . escape(@", '\\/') . "/j app/**/*.rb app/**/*.rhtml" <Bar> cw<CR>

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" if current working directory is my home folder, take me to svn
if getcwd() == "C:\\Users\\Drew"
    cd unabridged software\
endif

" turn on spell check for some files
autocmd BufNewFile,BufRead *.txt,*.html,README,*.textile set spell
