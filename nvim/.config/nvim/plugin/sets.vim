set mouse=a
set cursorline
set cursorcolumn
set nohlsearch
set nowrap
set hidden
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
" set noshowmode
set signcolumn=yes
set ls=3 " to set globel status line
"set highlight WinSeparator
set isfname+=@-@
" set ls=0

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80


""" Main Configurations
filetype plugin indent on
set backspace=indent,eol,start
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set smartindent
set incsearch ignorecase smartcase hlsearch
"set wildmode=longest,list,full wildmenu
set ruler laststatus=3 showcmd showmode
set list listchars=trail:»,tab:»-
set backspace=indent,eol,start
set fillchars+=vert:\
set encoding=utf-8
set textwidth=0
set number
set relativenumber
set title


set path+=**

set wildmode=longest,full,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*

set wildignore+=**/.git/*
