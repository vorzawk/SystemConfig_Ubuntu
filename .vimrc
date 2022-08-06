" swap files are just more hassle than they are worth since you are usually switching between multiple buffers, saving before each switch.
set noswapfile                
" required to make backspace delete beyond the currently inserted text and over autoindent
set backspace=start,indent     
" Enable file type detection and do language-dependent indenting
filetype plugin indent on 
syntax on               " syntax highlighting
set autoindent          " auto indenting
set expandtab		" expand tabs with spaces
set shiftwidth=2        " set 2 spaces for indentation since this is what works best with webviz

" set line number relative to the current line
set relativenumber

" search as characters are entered
set incsearch
" case insensitive search, search is case sensitive only if the pattern contains uppercase letters
set ignorecase smartcase
" visual autocomplete for commandline mode
set wildmenu

" use vim-plug to manage vim plugins, specify the directory where the plugins should be downloaded.
call plug#begin('~/.vim/plugins')
" Add all your plugins here 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" A nice colorscheme
Plug 'morhetz/gruvbox'

call plug#end() 
" Make sure to run :PlugInstall inside vim to install the plugins when you run it the first time

" insert a single character
nnoremap <Space> i_<Esc>r

" use g followed by p to open the fzf file search
nnoremap gp :Files<CR>
" use g followed by b to open the fzf buffer search
nnoremap gb :Buffers<CR>

" use Ctrl+u to go one page up instead of Ctrl+b to avoid clashing with tmux
nnoremap <C-u> <C-b>
