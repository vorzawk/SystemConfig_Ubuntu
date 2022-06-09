" swap files are just more hassle than they are worth since you are usually switching between multiple buffers, saving before each switch.
set noswapfile                
" required to make backspace delete beyond the currently inserted text and over autoindent
set backspace=start,indent     
" Enable file type detection and do language-dependent indenting
filetype plugin indent on 
syntax on               " syntax highlighting
set autoindent          " auto indenting
set expandtab		" expand tabs with spaces
set shiftwidth=3        " set 3 spaces for indentation as suggested by the dacore styleguide

" set line number relative to the current line while showing the absolute number for the current line
set number relativenumber
" visual autocomplete for command menu
set wildmenu
" search as characters are entered
set incsearch

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

" use Ctrl+p to open the fzf file search
nnoremap gp :Files<CR>
" use Ctrl+j to open the fzf buffer search
nnoremap gb :Buffers<CR>

" use Ctrl+u to go one page up instead of Ctrl+b to avoid clashing with tmux
nnoremap <C-u> <C-b>
