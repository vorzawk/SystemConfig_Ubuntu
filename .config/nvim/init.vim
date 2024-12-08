" swap files are just more hassle than they are worth since you are usually switching between multiple buffers, saving before each switch.
set noswapfile                
" disable in-built mouse functionality
set mouse:

" Enable file type detection and do language-dependent indenting
filetype plugin indent on 
syntax on               " syntax highlighting
set expandtab		" expand tabs with spaces
"set shiftwidth=2        " set 2 spaces for indentation since this is what works best with webviz
"set shiftwidth=4        " set 4 spaces for indentation since this is what is followed with the momenta code
set shiftwidth=3        " set 3 spaces for indentation since this is what is suggested in the dacore style guide

" show partial command
set showcmd            
" enable line numbers
set number
" Use folds to ensure that you are not bombarded with info as soon as you open a file
set foldmethod=syntax
set foldlevelstart=3

" search as characters are entered
set incsearch
" case insensitive search, search is case sensitive only if the pattern contains uppercase letters
set ignorecase smartcase
" visual autocomplete for commandline mode
set wildmenu

" use vim-plug to manage vim plugins, specify the directory where the plugins should be downloaded.
call plug#begin('~/.vim/plugins')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'neovim/nvim-lspconfig'
call plug#end() 
" Make sure to run :PlugInstall inside vim to install the plugins when you run it the first time

" LSP
lua require('lsp')
" stop LSP for the current buffer
nnoremap <F2> :LspStop<CR>    
" avoid shifting text while receiving lsp diagnostics
set signcolumn=yes

" space as leader
let mapleader=' '

" fzf file search
nnoremap <Leader>k :Files<CR>
" fzf buffer search
nnoremap <Leader>l :Buffers<CR>
