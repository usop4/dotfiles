set nocompatible
filetype off        "vundle required

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'ZenCoding.vim'
Bundle 'QuickRun.vim'
Bundle 'ref.vim'

filetype plugin indent on "vundle required

syntax on
set hlsearch

set modeline
set incsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set ignorecase
set smartcase
set wrapscan

set showmatch
set title
set ruler

set cursorline

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set wildmenu
set wildmode=list:longest

set backspace=indent,eol,start

function! RTrim()
let s:cursor = getpos(".")
%s/\s\+$//e
call setpos(".",s:cursor)
endfunction

autocmd BufWritePre * call RTrim()

au BufNewFile,BufRead *.pde setf arduino

"nnoremap <Space> <PageDown>zz
"nnoremap <S-Space> <PageUp>zz
