" vim-plug-manager
" -------------------------------
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim' 

call plug#end()

" vim-plug-manager
" -------------------------------

let g:javascript_plugin_jsdoc = 1

set t_Co=256
set background=dark
set nocompatible
set backspace=indent,eol,start
set showcmd
set syntax=on
set ruler
set history=50
set autoindent
set number
set incsearch
set hlsearch
set ignorecase

if has("vms")
	set nobackup
else
	set backup
endif


"my mapping command

map <F5> i{<Esc>ea}<Esc>
map <F4> o<Esc>
