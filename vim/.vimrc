" Basic
set nocompatible
filetype on
filetype plugin on
set title
set undolevels=1000
set encoding=utf-8
set mouse=a

" Identation
filetype indent on
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Visual
syntax on
set number
set relativenumber
set hlsearch
set incsearch

" Bindings
let mapleader=' '

noremap <C-s> :w<CR>
noremap <Leader>s :w<CR>
noremap <Leader>qq :q<CR>

" Move trought the windows
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <esc>:m .+1<CR>==gi
inoremap <A-k> <esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<cr>gv=gv
vnoremap <A-k> :m '<-2<cr>gv=gv

" Buffers
nnoremap <S-h> :bprevious<CR>
nnoremap <S-l> :bnext<CR>
nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>bD :bdelete!<CR>
