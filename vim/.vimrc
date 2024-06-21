" File: .vimrc
" Author: Lucas Berganton
" Created: 03/26/24

" Plugins
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

" Basic Configurations
	set nocompatible		" Disable VI compatibility.
	filetype on             " Try detect the file type.
	filetype plugin on      " Enable plugins for a specific file format.
	filetype indent on      " Enable identatiob for a specific file format.
    set autoindent          " Enable automatic identation.
    set smartindent         " Enable smart indentation.
    set undolevels=1000     " Sets the undo limit to 1000. 
    set title			    " Makes the terminal title the file name.
    set encoding=utf-8	    " Configures the encode.
    set backspace=2 	    " Enable backspace.
    set tabstop=4		    " TAB size.
    set softtabstop=4       " Erase a TAB size.
    set shiftwidth=4	    " Identation size.
    set expandtab  		    " Convert TABS to SPACES.

" Configurações Visuais
    set noshowmode                      " Disable the default status bar.
    set laststatus=2                    " Enable LightLine status bar.
    set cursorline                      " Highlights the cursor row.
    let NERDTreeMinimalUI=1             " Disable the help message of file tree.
    
	syntax on
    set number                                                  " Enable row numbers.
    set relativenumber                                          " Enable relatibe row numbers.
    set termguicolors                                           " Enable terminal colors.
    set background=dark                                         " Set the background to dark.
    execute 'colorscheme ' . 'catppuccin_mocha'                 | " Sets the colorscheme.
    let g:lightline = {'colorscheme': 'catppuccin_mocha'}       " LightLone color.

" Binds
    let mapleader=' '                       " Set the leader key.

    noremap <A-Up> :<C-u>mov-2<CR>==        |" Alt + Up Move the current row up.
	noremap <A-Down> :<C-u>move+<CR>==      |" Alt + Down Move the current row down.
    noremap <Leader>a ggVG                  |" Select all.
    noremap <Leader>t :tabnew<CR>           |" Create a new tab.
    noremap <Leader>. :tabnext<CR>          |" Go to the next tab.
    noremap <Leader>, :tabprev<CR>          |" Go to the previous tab.
    noremap <C-h> :wincmd h<CR>             |" Go to the left window.
    noremap <C-j> :wincmd j<CR>             |" Go to the bottom window.
    noremap <C-k> :wincmd k<CR>             |" Go to the top window.
    noremap <C-l> :wincmd l<CR>             |" Go to the rigth window.

    noremap <Leader>b :NERDTreeToggle<CR>   |" Switch beetween file tree.

" Auto Commands
    "autocmd VimEnter * NERDTree | wincmd p
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" Switchable Binds

    " Enable and disable the mouse
    function ToggleMouse()
        if &mouse=='a'
            set mouse=
            echo "Mouse: DISABLE"
        else
            set mouse=a
            echo "Mouse: ENABLE"
        endif
    endfunction
    noremap <Leader>m :call ToggleMouse()<CR>
