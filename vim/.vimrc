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
colorscheme slate

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
nnoremap <C-Up> :resize +2<cr>
nnoremap <C-Down> :resize -2<cr>
nnoremap <C-Left> :vertical resize -2<cr>
nnoremap <C-Right> :vertical resize -2<cr>

" Move lines
nnoremap <A-j> :execute 'move .+' . v:count1<cr>==
nnoremap <A-k> :execute 'move .-' . (v:count1 + 1)<cr>==
inoremap <A-j> <esc>:m .+1<cr>==gi
inoremap <A-k> <esc>:m .-2<cr>==gi
vnoremap <A-j> :<C-u>execute "'<,'>move '>+" . v:count1<cr>gv=gv
vnoremap <A-k> :<C-u>execute "'<,'>move '<-" . (v:count1 + 1)<cr>gv=gv

" Buffers
nnoremap <S-h> :bprevious<cr>
nnoremap <S-l> :bnext<cr>
nnoremap <leader>bd :bdelete<cr>

" Netrw
nnoremap <Leader>e :Lexplore!<cr>

" Save file
noremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>

" Windows
nnoremap <leader>- <C-W>s
nnoremap <leader>\| <C-W>v
nnoremap <leader>wd <C-W>c

" Quit
nnoremap <Leader>qq :qa<cr>

" Functions
function! NetrwMapping()
  nnoremap <buffer> <C-l> <C-w>l
endfunction
