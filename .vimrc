set nocompatible
set backspace=indent,eol,start
set showcmd
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
