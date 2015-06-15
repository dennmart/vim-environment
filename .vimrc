syntax on
filetype plugin indent on
set nocompatible
set encoding=utf-8
set ruler
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoread
set expandtab
set backspace=indent,eol,start
set t_Co=256
set nobackup
set writebackup
set backupdir=/tmp
set directory=/tmp
set tags=tags,./tags,tmp/tags,/tmp/tags
set history=100
set ignorecase
set smartcase
set incsearch
set hlsearch
set scrolloff=3
set sidescrolloff=3
set showmatch
set showcmd
set wildmenu
set wildmode=longest,full
set list
set listchars=trail:.,tab:▸\ 

" Pathogen plugin
execute pathogen#infect()

"colorscheme gruvbox
colorscheme molokai
set background=dark
hi Normal ctermbg=none
hi NonText ctermbg=none

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" For displaying status line in vim-airline
set laststatus=2

" Save cursor last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:airline_theme='light'

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.slimstache set filetype=slim
