set nocompatible              " required
set encoding=utf-8            " its a good idea to use UTF-8 these days
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
" Make sure to run :PluginInstall inside vim to install the plugins when you run it the first time
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on   
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=140
" This is not a good textwidth for code since you'll often need to open multiple files at once.
set autoindent
set lbr
" Makefiles need tabs
autocmd FileType make set noexpandtab
" enable syntax highlighting
let python_highlight_all=1
syntax on 
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
"Youcompleteme fix, make sure to include the file in ~
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" YCM even while writing comments
let g:ycm_complete_in_comments = 1
" Fix annoying 'do you want to load this file?' msg, just remember that ycm
" starts with the current folder and looks for .ycm_extra_config.py
" recursively till ~
let g:ycm_confirm_extra_conf = 0
au FileType perl set filetype=prolog
" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"insert a single character
:nnoremap <Space> i_<Esc>r
