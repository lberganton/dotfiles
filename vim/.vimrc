" General
set nocompatible
set encoding=utf-8
set confirm
set mouse=a
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set shiftround
set expandtab
set undolevels=1000
set title

" Visual
syntax on
set wrap
set number
set relativenumber
set laststatus=2
set scrolloff=4
set sidescrolloff=8
set signcolumn=yes
set showmatch
set cursorline
highlight CursorLine cterm=bold ctermbg=black
set hlsearch
set incsearch

" Netrw
let g:netrw_banner = 0
let g:netrw_winsize = 30

" Maps
let mapleader = " "
augroup netrw
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

" Better Up/Down
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
xnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <Up> v:count == 0 ? 'gk' : 'k'
xnoremap <expr> <Up> v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> <Down> v:count == 0 ? 'gj' : 'j'
xnoremap <expr> <Down> v:count == 0 ? 'gj' : 'j'

" Move to window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize window
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

" Netrw
nnoremap <Leader>e :Lexplore<CR>

" Save file
noremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Quit
nnoremap <Leader>qq :qa<CR>

" Functions
function! NetrwMapping()
  nnoremap <buffer> <C-l> <C-w>l
endfunction
