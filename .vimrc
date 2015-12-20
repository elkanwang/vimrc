version 0.01

"My Fucking VIM configurations
"

set nocompatible
filetype off 
execute pathogen#infect('~/.vim/bundle/{}')

"my mappings
"map navigation keys to Control-h/j/k/l
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

syntax on 
set ruler
set number
set guifont=Consolas:h12

"set color scheme of the editor
set background=dark
colorscheme gruvbox

"tab settings
"set smarttab
set tabstop=4
set expandtab

"intend settings
"set autoindent

set runtimepath+=~/.vim/bundle/jshint2.vim/

"turn on spelling check
setlocal spell spelllang=en_us

" auto-reload this file (.vimrc)
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"==============================================================
""                       EasyMotion 
"==============================================================
"" /bundle/EasyMotion
nnoremap f H:call EasyMotion#WB(0, 0)<CR>

"==============================================================
""                       Tabular 
"==============================================================
"
"let g:tabular_loaded = 1
