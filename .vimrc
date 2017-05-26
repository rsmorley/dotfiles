call plug#begin('~/.vim/plugged')
"Plug 'fatih/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe'
Plug 'Shutnik/jshint2.vim'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
"Plug 'marijnh/tern_for_vim'
"Plug 'wookiehangover/jshint.vim', { 'for': 'javascript' }
"Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }
call plug#end()

"jshint2 check on write
let jshint2_save=1

" jshint validation
nnoremap <silent><F10> :JSHint<CR>
inoremap <silent><F10> <C-O>:JSHint<CR>
vnoremap <silent><F10> :JSHint<CR>

" show next jshint error
nnoremap <silent><F11> :lnext<CR>
inoremap <silent><F11> <C-O>:lnext<CR>
vnoremap <silent><F11> :lnext<CR>

" show previous jshint error
nnoremap <silent><F12> :lprevious<CR>
inoremap <silent><F12> <C-O>:lprevious<CR>
vnoremap <silent><F12> :lprevious<CR>

"seoul color scheme
let g:seoul256_background = 233
colo seoul256
"colo molokai

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType javascript,json,yaml,scss,jsx,html setlocal shiftwidth=2 tabstop=2

"show line numbers
set number

"auto remove whitespace
autocmd FileType json,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

inoremap jj <ESC>

"this is freezing :(
"let g:go_fmt_command = "goimports"

"set clipboard=unnamedplus
"set list
"set listchars=eol:¬,tab:▸\
