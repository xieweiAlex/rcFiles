
source ~/.vim/startup/plugins.vim 
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/registers.vim
source ~/.vim/startup/auto_cmd.vim 
source ~/.vim/startup/plugins_config.vim
source ~/.vim/startup/functions.vim

" ----------  General -------------
" enable mouse
set mouse=a

" For buffers search
set path+=**
set wildmenu  

"set lines=40 columns=155    " set window size 
set number              " show number of lines 
set go=             " no GUI buttons 
" set line break
set linebreak
" buffer screen updates instead of updating all the time
set lazyredraw

if has("syntax")
  syntax on
endif

set ruler           " show ruler
set showcmd         " show command
set scrolloff=3     " 3 line off 
set novisualbell    " no visual bell 
set foldenable      " fold enable 
set foldmethod=manual   " manual fold 
"set foldmethod=syntax

" show sign column 
set signcolumn=auto

set hlsearch

set incsearch  " To move the cursor to the matched string, while typing the search pattern
set wrapscan " wraps around to the beginning and ending when do search  
set history=200

set spelllang=en_us         " Language will likely be English
set showmatch "{}()[]
set guitablabel=\[%N\]\ %t\ %M 

" toggle paste mode
set pastetoggle=<leader>P 

set cindent    " open cindent
set tabstop=2 shiftwidth=2 expandtab
set shiftround
set autoindent " auto indent 

" Objective-C identation settings
au FileType objc set softtabstop=4 tabstop=4 shiftwidth=4

" Automatically change currently directory
set autochdir

" Accept special characters on search terms
set magic
set exrc                " Allow tuning with local .vimrc files
set secure              " and do it securely

set whichwrap+=<,>,h,l,[,]      " Wrap navigation in normal and insert!
" only be a case sensitive search if you have uppercase characters
set ignorecase smartcase


" --------------------------  Appearance ---------------------------

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
colorscheme solarized8

" highlight line and column
" set cursorline
" set cursorcolumn

" high light color (not use)
" highlight CursorLine term=bold cterm=bold guibg=Grey40

"---------------- Mis ------------------------
" Save undo even after file close 
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

"abrev
iabbrev @@ email
iabbrev ccopy Copyright 2016 Alex xie, all rights reserved.
iabbrev py_note #!/usr/bin/env python3    # -*- coding: utf-8 -*-
iabbrev py_split print('------------------------------------------------------------')


"" operatior-pending map -------------------- {{{
"" operator in ()
"onoremap p i(
"" xxx delete until return 
""onoremap b /return<cr>
"" inside next parentheses
"onoremap in( :<c-u>normal! f(vi(<cr> 
"" inside last parentheses
"onoremap an( :<c-u>normal! f(va(<cr>
"" inside next curl parenthesis ps: xxx failed  555555
"onoremap in{ :<c-u>normal! /}<cr><cr> V%jok<cr>
" }}}



