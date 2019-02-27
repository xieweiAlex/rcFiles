
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

" auto complete  
Bundle 'Valloric/YouCompleteMe'

" Dark powered asynchronous completion framework
" if has('nvim')
"   Bundle 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Bundle 'Shougo/deoplete.nvim'
"   Bundle 'roxma/nvim-yarp'
"   Bundle 'roxma/vim-hug-neovim-rpc'
" endif

" Nerd tree
Bundle 'The-NERD-tree'

" Git blame 
Bundle 'tpope/vim-fugitive'
" Fuzzy find 
Bundle 'ctrlpvim/ctrlp.vim'
" Easy motion
Bundle 'easymotion/vim-easymotion'
" easy surround 
Bundle 'tpope/vim-surround'
" hard time 
Bundle 'takac/vim-hardtime'
" auto pairs 
Bundle 'jiangmiao/auto-pairs'
" vim status bar  
Bundle 'vim-airline/vim-airline'
" Vim markdown syntax highlight
" Bundle 'gabrielelana/vim-markdown'

" Path searching options 
"Bundle 'vim-apathy'

" Asynchronous Lint Engine
" Bundle 'w0rp/ale'

" show vim marks 
Bundle 'kshenoy/vim-signature'
" fuzzy find 
Bundle 'mileszs/ack.vim'
" Fold markdown 
"Bundle 'nelstrom/vim-markdown-folding'
" syntax plugin for plain text nodes 
Bundle 'junegunn/vim-journal'

" index of vim search 
Bundle 'henrik/vim-indexed-search'
" vim plugin to interact with tmux
Bundle 'benmills/vimux'
" comment 
Bundle 'tpope/vim-commentary'
" visually displaying indent levels in code
Bundle 'nathanaelkane/vim-indent-guides'
" The fancy start screen for Vim.
Bundle 'mhinz/vim-startify'
" Syntax highlighting for VIM
Bundle 'slim-template/vim-slim'

" #CTags needed  Vim plugin that displays tags in a window, ordered by scope
" Bundle 'majutsushi/tagbar'

" Enhance Vim experience in Terminal  
Bundle 'wincent/terminus'
" Automatically save changes to disk in Vim
Bundle '907th/vim-auto-save'
" Text outlining and task management for Vim based on Emacs' Org-Mode
" Bundle 'jceb/vim-orgmode'
" Markdown support 
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set lines=40 columns=155    " set window size 
set nu              " show number of lines 
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
set cmdheight=1     " command line height 
set scrolloff=3     " 3 line off 
set novisualbell    " no visual bell 
set foldenable      " fold enable 
set foldmethod=manual   " manual fold 
"set foldmethod=syntax

set background=dark " black background 
set hlsearch

set incsearch  " To move the cursor to the matched string, while typing the search pattern
set wrapscan " wraps around to the beginning and ending when do search  
set history=200

set spell " Open spell check 
set spelllang=en_us         " Language will likely be English
set showmatch "{}()[]
set guitablabel=\[%N\]\ %t\ %M 

" toggle paste mode
set pastetoggle=<leader>p 

set cindent    " open cindent
set tabstop=4 shiftwidth=4 expandtab
set shiftround
set autoindent " auto indent 

" Objective-C identation settings
au FileType objc set softtabstop=4 tabstop=4 shiftwidth=4

" Automatically change currently directory
set autochdir

set magic               " accept special characters on search terms

set undodir=~/.vim/undos      " Where to save undos?
set undofile            " Persistence of undos is a nice feature

set exrc                       " Allow tuning with local .vimrc files
set secure               " and do it securely

set whichwrap+=<,>,h,l,[,]      " Wrap navigation in normal and insert!
" only be a case sensitive search if you have uppercase characters
set ignorecase smartcase


" --------------------------  Appearance ---------------------------
color desert

" highlight line and column
set cursorline
set cursorcolumn

" high light color (not use)
highlight CursorLine term=bold cterm=bold guibg=Grey40

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd InsertEnter * setlocal nocursorline
autocmd InsertLeave * setlocal cursorline

" enable mouse
set mouse=a

" Buffer <Tab> to wildcharm
"set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-z>
nnoremap <Leader>b :buffer <C-z><S-Tab>

" relative number 
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Ignore CamelCase words when spell checking
fun! IgnoreCamelCaseSpell()
  syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
  syn cluster Spell add=CamelCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()



"

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



" ---------------------------------- n,v,c map ----------------------------------

"map leader
let mapleader = ","
" let mapleader = ";"
" let maplocalleader = "\\"

" Leader Mapping from the Gods (I doubt ?)
" noremap . ;
" noremap <space> .

"Action
" delete a row
nnoremap <leader>d dd
" vertical split vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" horizontal split vimrc
nnoremap <leader>eev :sp $MYVIMRC<cr>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" quotation a word 
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Format code
nnoremap <leader>i ==
" save 
nnoremap <leader>s :w<esc>
" save and quit
nnoremap <leader>q :q<esc>
" toggle buffer
nnoremap <leader>o 

" copy the *word to system clipboard
nnoremap <leader>@ mpf*wve"*y`pdmp

" Easy Motion Move to word
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Copy to system clipboard and  double star around current word 
nnoremap <leader>* lbve"*yi**<esc>ea**<esc>
" Yank current word to system clipboard
nnoremap <leader>y viw"*y
" Yank word to system clipboard 
vnoremap <leader>y "*y

" Add a colon in the end of line
nnoremap <leader>: A:<esc>
" no highlight search 
nnoremap <leader><space> :nohls<CR>

" toggle and paste system clipboard 
nnoremap <leader>9 <leader>0"*p<leader>0<esc> 
" input Python comments before <leader>9 
nmap <leader>8 i"""<CR>"""<esc>O<esc><leader>9
" toggle spell check 
nmap <leader>0 :set nospell! <CR>

" quotation selection sentence
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>* <esc>`<i**<esc>`> la**<esc>
" open previous file in buffer in a split(current no use) 
nnoremap <localleader>n :execute "rightbelow vsplit " . bufname("#")

cnoreabbrev Ack Ack!
" Ack search in .git directory
nnoremap <Leader>a :Gcd <bar> Ack!<Space>

" make absolutely j
" nnoremap j gj
" make absolutely k
" nnoremap k gk


"center after find
nnoremap n nzz
nnoremap N Nzz
nmap <silent> * *zz
nmap <silent> # #zz

" Previous tab 
nnoremap <leader>J gT
" Next tab 
nnoremap <leader>K gt
" Move tab left and right 
nnoremap <leader>< :tabm -1<CR>
nnoremap <leader>> :tabm +1<CR>

" Move split buffer
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"map
noremap - dd p
noremap + ddkP
vnoremap \ U
inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwU
inoremap jk <esc>
"inoremap <esc> <nop>

" command line mode mapping
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-p> <Up> 
cnoremap <C-n> <Down>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

" Search visual selected word
vnoremap <leader>a "ay@b  

"---------------- Mis ------------------------
" Save undo even after file close 
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo


"---------------- Registers ------------------------
" add double space to inform markdown's line change 
let @q = '0g_a jkDa  jk0j'  
" search line doesn't have ** keyword 
let @w = '/^\w\(\(.*\*\*.*\)\@!.\)*$'
" add current line to a register a accumulatively
let @r = 'V"Ayj'
" search <<<<< ===== >>> for resolve conflicts 
let @s = '/[<>=]\{5\}'
let @i = '/.*\s-'

" Search word ended in "-"
let @e = "/.*\\s-"
" Show ** words 
let @r = "/\\*\\*.*\\*\\*"

" copy the **word to system clipboard
let @a = 'mpf*wve"*y`pdmp'
let @b = '/a'
" Global delete all matched search  
let @c = ':g/a/d'
" Delete '{' wrapped text  
let @d = 'nf{V%d'

" The below two is for localize 'August-iOS' static text
let @j = 'NSLocalizedString'
let @k = 'f@h"jpa(jkf)xf";a, nil)jk'


" ctags
let tlist_objc_settings = 'ObjectiveC;P:protocols;i:interfaces;types(...)'
" airline show buffers  
let g:airline#extensions#tabline#enabled = 1


"--------------------------  Window manipulation ---------------------------
" Use arrow keys to resize windows
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>

"--------------------------  Plugin configuration ---------------------------

" NERDTree
"call nerdtree#postSourceActions()

" fuzzy find for Vim
set rtp+=/usr/local/opt/fzf
" indent guide 
let g:indent_guides_enable_on_vim_startup = 1
" deoplete.nvim auto completion
" let g:deoplete#enable_at_startup = 1

" YouCompleteMe
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Vim auto save 
let g:auto_save = 1  " enable AutoSave on Vim startup
" save on every change in normal mode and every time you leave insert 
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Vim hard time 
let g:hardtime_timeout = 2000
let g:hardtime_showmsg = 1
let g:hardtime_default_on = 0
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

" Vim markdown 
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0
                 


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" ----------------------------- NerdTree ------------------
" reveal file in NERDTree panel 
nnoremap <leader>n :NERDTreeFind<cr>
" toggle NERDTree 
nnoremap <leader>m :NERDTreeToggle<cr>

"--------------------------- Markdown -------------------------
" Markdown preview(set interactive bash as the default vim shell) 
"au FileType markdown setl shell=bash\ -i

" Make instant markdown render slow 
"let g:instant_markdown_slow = 1
" connect md files 
"let g:instant_markdown_open_to_the_world = 1
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" enable conceal for italic, bold, inline-code and link text
let g:markdown_enable_conceal = 1 



" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"abrev
iabbrev @@ xieweialex@gmail.com
iabbrev ccopy Copyright 2016 Alex xie, all rights reserved.
iabbrev py_note #!/usr/bin/env python3    # -*- coding: utf-8 -*-
iabbrev py_split print('------------------------------------------------------------')


" ------------------------------- Autocmd -----------------------------------
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType java nnoremap <buffer> <localleader>c I// <esc>
autocmd FileType py nnoremap <buffer> <leader>c I#<esc>
autocmd FileType shell nnoremap <buffer> <leader>c I# <esc>
autocmd FileType java :iabbrev <buffer> iff if ()<left>
autocmd FileType md :set tabstop=2 shiftwidth=2 expandtab

" auto write when text change in normal/insert mode 
" autocmd TextChanged,TextChangedI <buffer> silent write
:au FocusLost * silent! wa


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


" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


"funtion
"toggle foldcolumn
"nnoremap <leader>kf :call FoldColumnToggle()<cr>

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




