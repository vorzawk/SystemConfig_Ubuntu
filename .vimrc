set nocompatible              " required
set encoding=utf-8            " its a good idea to use UTF-8 these days
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'captbaritone/better-indent-support-for-php-with-html'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on   
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set lbr
" Makefiles need tabs
autocmd FileType make set noexpandtab
" enable syntax highlighting
let python_highlight_all=1
syntax on 
colorscheme CandyPaper
" turn line numbers on
set number
" highlight matching [{()}]
set showmatch
" visual autocomplete for command menu
set wildmenu
" search as characters are entered
set incsearch

" Close autocomplete window oncw you are done with it
let g:ycm_autoclose_preview_window_after_completion=1
au FileType perl set filetype=prolog
" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"insert a single character
:nnoremap <Space> i_<Esc>r
