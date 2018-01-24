
set nocompatible  "not compatible with Vi
filetype off " required by Vundle? 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'
"plugin 'SirVer/ultisnips'  
"Plugin 'othree/vim-autocomplpop'
"
Bundle 'Valloric/YouCompleteMe'
Bundle 'msanders/cocoa.vim'
Bundle 'The-NERD-tree'
"Bundle 'kien/ctrlp.vim'
"Obj-Syntax
Bundle 'terhechte/syntastic'
" Obj-Indention
Bundle "b4winckler/vim-objc"
" vim toglle .h .m
Bundle 'eraserhd/vim-ios.git'
" auto complete
Bundle 'guns/ultisnips'
" Git
Bundle 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Mis
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set lines=40 columns=155    " 设定窗口大小  
set nu              " show number of lines 
set go=             " no GUI buttons 
set guifont=Courier_New:h10:cANSI   " font whichi I don't like!! 
" set line break
set linebreak

if has("syntax")
  syntax on
endif

autocmd InsertLeave * se nocul  " 用浅色高亮当前行  


set ruler           " show ruler
set showcmd         " show command
set cmdheight=1     " command line height 
set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " fold enable 
"set foldmethod=manual   " 手动折叠  
set background=dark " black background 
set hlsearch
set incsearch
set history=200

set spell " Open spell check 
set spelllang=en_us         " Language will likely be English
set showmatch "{}()[]
set relativenumber " Automatic line numbering


" indent
set autoindent " auto indent 
set pastetoggle=<F2> " F2 toggle paste mode
set cindent    " open cindent
set noexpandtab " Tab is the new Tab ;)
set tabstop=2 softtabstop=2            " 8 is too much for my eyes     
set ts=2

" Automatically change currently directory
set autochdir

set magic               " accept special characters on search terms

set undodir=~/.vim/undos      " Where to save undos?
set undofile            " Persistence of undos is a nice feature

set exrc                       " Allow tuning with local .vimrc files
set secure               " and do it securely

set whichwrap+=<,>,h,l,[,]      " Wrap navigation in normal and insert!
set clipboard=unnamed        " Yank will go to mac's clipboard

color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                10) Autocompletion
"                                """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildmenu            " Autocompletion rulez
set wildignore+=*.a,*.o        " Leave out files from completion
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
set wildmode=list:longest,full
set completeopt=menu,longest,preview
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1
"let g:SuperTabMappingForward = <Tab>
""let g:SuperTabMappingBackward = <S-Tab>



" ---------------------------------- map ----------------------------------

"map leader
let mapleader = ","
let maplocalleader = "\\"

"Action
" delete a row
nnoremap <leader>d dd
" vertical split vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" quotation a word 
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" formate code
nnoremap <leader>i ==
" save 
nnoremap <leader>s :w<esc>
" save and quit
nnoremap <leader>q :q<esc>
" quotation selection sentence
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>* <esc>`<i**<esc>`> la**<esc>
" open previous file in buffer in a split(current no use) 
nnoremap <localleader>n :execute "rightbelow vsplit " . bufname("#")
" make absolutely j
nnoremap j gj
" make absolutely k
nnoremap k gk
" reveal file in NERDTree panel 
nnoremap <leader>n :NERDTreeFind<cr>
" toggle NERDTree 
nnoremap <leader>m :NERDTreeToggle<cr>

"enter after find
nnoremap n nzz
nnoremap N Nzz
nmap <silent> * *zz
nmap <silent> # #zz

"map
noremap - dd p
noremap + ddkP
vnoremap \ U
inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwU
inoremap jk <esc>
inoremap <esc> <nop>
" command line mode c-p/c-n map
cnoremap <C-p> <Up> 
cnoremap <C-n> <Down>


" Macro
let @q = '0g_a jkDa  jk0j'


"abrev
iabbrev @@ xieweialex@gmail.com
iabbrev ccopy Copyright 2016 Alex xie, all rights reserved.
iabbrev py_note #!/usr/bin/env python3    # -*- coding: utf-8 -*-
iabbrev py_split print('------------------------------------------------------------')


"autocmd
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType java nnoremap <buffer> <localleader>c I// <esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
" autocmd FileType shell nnoremap <buffer> <leader>c I#<esc>
autocmd FileType shell nnoremap <buffer> <leader>c I# <esc>
autocmd FileType java :iabbrev <buffer> iff if ()<left>

" operatior-pending map -------------------- {{{
" operator in ()
onoremap p i(
" xxx delete until return 
"onoremap b /return<cr>
" inside next parentheses
onoremap in( :<c-u>normal! f(vi(<cr> 
" inside last parentheses
onoremap an( :<c-u>normal! f(va(<cr>
" inside next curl parenthesis ps: xxx failed  555555
onoremap in{ :<c-u>normal! /}<cr><cr> V%jok<cr>


" }}}

"status-line
set statusline=%f\ -\ FileType:\ %y

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


"funtion
"toggle foldcolumn
nnoremap <leader>f :call FoldColumnToggle()<cr>

function! FoldColumnToggle()
	if &foldcolumn	
		setlocal foldcolumn=0
	else 
		setlocal foldcolumn=4
	endif
endfunction

"toggle quick fix 
"nnoremap <leader>q :call QuickfixToggle()<cr>
"let g:quickfix_is_open = 0

function! QuickfixToggle()
	if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
    else
        copen
        let g:quickfix_is_open = 1
    endif
endfunction






