set nocompatible              " required
set encoding=utf-8            " its a good idea to use UTF-8 these days
filetype off                  " required

set backspace=indent,start,eol

" use vim-plug to manage vim plugins, specify the directory where the plugins should be downloaded.
call plug#begin('~/.vim/plugins')

" Add all your plugins here 
" coc provides intellisense using the Language Server concept and provides all
" of the features that VSCode (the popular IDE) offers.
" It is also really easy to set up and has a ton of really neat extensions
" which provide formatting and LSP support.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" A nice colorscheme
Plug 'morhetz/gruvbox'

call plug#end() 
" Make sure to run :PlugInstall inside vim to install the plugins when you run it the first time

" configure grovbox
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" Use tab for trigger completion and navigate suggestions.
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
" turn line numbers on
set number
" visual autocomplete for command menu
set wildmenu
" search as characters are entered
set incsearch

" use :Prettier to format current buffer.
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Enhanced keyboard mappings
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert and save the file
imap <F2> <ESC>:w<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"insert a single character
nnoremap <Space> i_<Esc>r
