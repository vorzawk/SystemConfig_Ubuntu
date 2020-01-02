set nocompatible              " required
set encoding=utf-8            " its a good idea to use UTF-8 these days
filetype off                  " required

set backspace=indent,start,eol
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim'
" Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'

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
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Makefiles need tabs
autocmd FileType make set noexpandtab
" enable syntax highlighting
let python_highlight_all=1
syntax on 
colorscheme Revolution
" turn line numbers on
set number
" highlight matching [{()}]
set showmatch
" visual autocomplete for command menu
set wildmenu
" search as characters are entered
set incsearch

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
