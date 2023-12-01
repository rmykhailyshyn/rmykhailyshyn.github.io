" .vimrc file											|
"														|
" Maintainer:	$cooter									|
" Last change:	2023 11 29
"														|
"-------------------------------------------------------

:set autoindent		" always set autoindenting on
:set history=100		" keep 100 lines of command line history
:set ruler		" show the cursor position all the time
:set showcmd		" display incomplete commands
:set incsearch		" do incremental searching
:set ignorecase
:set number
:set relativenumber

:set background=dark

" show '(' when ')' is inputed
:set showmatch
:set matchtime=3

" don't create '~' files
set nobackup

" indenting
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set si
:set nowrap

" set sessionoptions=curdir,buffers,tabpages


call plug#begin()

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

" React
Plug 'maxmellon/vim-jsx-pretty'

" Codeium Autocomplete tool
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }

" autocomplete close tag
Plug 'alvan/vim-closetag'

" Python formatter - Black
Plug 'ambv/black'

" PHP
Plug 'stanangeloff/php.vim'

" Stagus bar customization https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()

" Codeium show in status bar
:set statusline+=\{…\}%3{codeium#GetStatusString()}
