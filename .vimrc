call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe'
"Plug 'marijnh/tern_for_vim'
Plug 'wookiehangover/jshint.vim', { 'for': 'javascript' }
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }
Plug 'altercation/vim-colors-solarized'
call plug#end()

"jshint check on wrtie only
"let JSHintUpdateWriteOnly=1

"seoul color scheme
let g:seoul256_background = 233
colo seoul256

"solarized color scheme
"set background=dark
"colorscheme solarized

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType javascript,json setlocal shiftwidth=2 tabstop=2

"show line numbers
set number

"auto remove whitespace
autocmd FileType json,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

"set list
"set listchars=eol:¬,tab:▸\
