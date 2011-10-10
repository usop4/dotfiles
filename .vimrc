set nocompatible
filetype off        "vundle required

set encoding=utf-8

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'ZenCoding.vim'
Bundle 'QuickRun.vim'
Bundle 'ref.vim'
Bundle 'fugitive.vim'
Bundle 'neocomplcache'
let g:neocomplcache_enable_at_startup = 1

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

nnoremap <Space> <PageDown>zz
nnoremap <S-Space> <PageUp>zz

" 
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PmenuSbar ctermbg=4


" show whitespace
" http://d.hatena.ne.jp/kasahi/20070902/1188744907
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /s+$/

" show git branch on status line
" http://d.hatena.ne.jp/ruedap/20110712
set laststatus=2
set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=%{fugitive#statusline()}%l,%c%V%8P

