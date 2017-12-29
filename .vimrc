
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
filetype off " required


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
set nu              " 显示行号  
set go=             " 不要图形按钮   
set guifont=Courier_New:h10:cANSI   " 设置字体  
" set line break
set linebreak

if has("syntax")
  syntax on
endif

"syntax on           " 语法高亮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
"set foldmethod=manual   " 手动折叠  
set background=dark "背景使用黑色 
set hlsearch
set incsearch
set history=200

" indent
set autoindent " 开启自动缩进
set pastetoggle=<F2> " F2 toggle paste mode
"set pastetoggle=<C-e> " F2 toggle paste mode
set cindent    " 开启cindent
set noet     " 关闭expandtab
set sw=4     " shiftwidth=4
set ts=4


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






