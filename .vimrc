
set showmode
set showmatch
set ruler
set nojoinspaces
set cpo+=$
set whichwrap=""
set modelines=0
set nobackup
set encoding=utf-8
set wildmenu
set cursorline
set scrolloff=5

" bells
set noerrorbells
set visualbell

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

nore ; :

" ================ Tabs ======================

nmap tj  :tabnext<CR>
nmap tk  :tabprev<CR>
nmap tt  :tabedit<Space>
nmap td  :tabclose<CR>


set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

call plug#begin('~/.vim/plugged')

" javascript syntax highlighting and indentation
Plug 'pangloss/vim-javascript'

" jsx syntax highlighting and indentation
Plug 'mxw/vim-jsx'

" graphql file detection, syntax highlighting, and indentation
Plug 'jparise/vim-graphql'

Plug 'scrooloose/syntastic'

" Search everything in the current dir via :Ack
Plug 'mileszs/ack.vim'

" Enable Markdown Preview + GitHub flavored markdown
Plug 'jtratner/vim-flavored-markdown.git'
Plug 'nelstrom/vim-markdown-preview'

" fuzzy finding
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

syntax enable
" ===== SYNTASTIC 
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Support for github flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown
" with .md extensions
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
