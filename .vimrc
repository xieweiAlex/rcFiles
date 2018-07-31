
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
"Bundle 'vim-syntastic/syntastic'
" Obj-Indention
"Bundle "b4winckler/vim-objc"
" vim toglle .h .m
Bundle 'eraserhd/vim-ios.git'
" auto complete
Bundle 'guns/ultisnips'
" Git
Bundle 'tpope/vim-fugitive'
" Fuzzy find
"set rtp+=/usr/local/opt/fzf
" Fuzzy find 
Bundle 'ctrlpvim/ctrlp.vim'
" Easy motion
Bundle 'easymotion/vim-easymotion'
" easy surround 
Bundle 'tpope/vim-surround'
" hard mode 
Bundle 'wikitopian/hardmode'

" Path searching options 
"Bundle 'vim-apathy'

" Asynchronous Lint Engine
" Bundle 'w0rp/ale'

" Markdown real time preview 
"Bundle 'kannokanno/previm'
" show vim marks 
Bundle 'kshenoy/vim-signature'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Mis
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Markdown preview with browser 
"let g:previm_open_cmd = 'open -a Safari'
"let g:previm_enable_realtime = 0

"augroup PrevimSettings
"	autocmd!
"	autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
"augroup END



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set lines=40 columns=155    " 设定窗口大小  
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
set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " no visual bell 
set foldenable      " fold enable 
"set foldmethod=manual   " manual fold 
set background=dark " black background 
set hlsearch
set incsearch
set history=200

" status line 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2    " status line: 1 show in launch, 2 always 

    
set spell " Open spell check 
set spelllang=en_us         " Language will likely be English
set showmatch "{}()[]
"set relativenumber " Automatic line numbering
set guitablabel=\[%N\]\ %t\ %M 

" toggle paste mode
set pastetoggle=<leader>0 " toggle paste mode

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
" set clipboard=unnamed        " Yank will go to mac's clipboard
" ignore case when search
set ignorecase

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



" ---------------------------------- map ----------------------------------

"map leader
let mapleader = ","
let maplocalleader = "\\"

"Action
" delete a row
nnoremap <leader>d dd
" vertical split vimrc
nnoremap <leader>eev :vsplit $MYVIMRC<cr>
" horizontal split vimrc
nnoremap <leader>ev :sp $MYVIMRC<cr>
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

" Easy Motion Move to word
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Copy to system clipboard and  double star around current word 
nnoremap <leader>* lbve"*yi**<esc>ea**<esc>
" Yank current word to OS clipboard
nnoremap <leader>y lbve"*y

" Add a colon in the end of line
nnoremap <leader>: A:<esc>
" no highlight search 
nnoremap <leader><space> :nohls<CR>

" toggle and paste system clipboard 
nnoremap <leader>9 <leader>0"*p<leader>0<esc> 


" quotation selection sentence
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>* <esc>`<i**<esc>`> la**<esc>
" open previous file in buffer in a split(current no use) 
nnoremap <localleader>n :execute "rightbelow vsplit " . bufname("#")
" make absolutely j
nnoremap j gj
" make absolutely k
nnoremap k gk
" copy text to clipboard 
vnoremap <leader>y :w !pbcopy


"center after find
nnoremap n nzz
nnoremap N Nzz
nmap <silent> * *zz
nmap <silent> # #zz


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
" command line mode c-p/c-n map
cnoremap <C-p> <Up> 
cnoremap <C-n> <Down>

"Register
"let @+=@"
map <silent> <Leader>c :let @+ = expand("%")<cr>
vnoremap <leader>yo "*y


" Macro
let @q = '0g_a jkDa  jk0j'
let @e = '$F/lvg_"ay0f.vg_"byDa[]jkh"apla()jkh"bpj'

" ctags
let tlist_objc_settings = 'ObjectiveC;P:protocols;i:interfaces;types(...)'



" Plugin configuration
" NERDTree
"call nerdtree#postSourceActions()
"
" reveal file in NERDTree panel 
nnoremap <leader>n :NERDTreeFind<cr>
" toggle NERDTree 
nnoremap <leader>m :NERDTreeToggle<cr>
" Markdown preview(set interactive bash as the default vim shell) 
"au FileType markdown setl shell=bash\ -i

" Make instant markdown render slow 
"let g:instant_markdown_slow = 1
" connect md files 
"let g:instant_markdown_open_to_the_world = 1


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


"abrev
iabbrev @@ xieweialex@gmail.com
iabbrev ccopy Copyright 2016 Alex xie, all rights reserved.
iabbrev py_note #!/usr/bin/env python3    # -*- coding: utf-8 -*-
iabbrev py_split print('------------------------------------------------------------')


"autocmd
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType java nnoremap <buffer> <localleader>c I// <esc>
autocmd FileType py nnoremap <buffer> <leader>c I#<esc>
autocmd FileType shell nnoremap <buffer> <leader>c I# <esc>
autocmd FileType java :iabbrev <buffer> iff if ()<left>
autocmd FileType md :set tabstop=2 shiftwidth=2 expandtab

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
"nnoremap <leader>f :call FoldColumnToggle()<cr>

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






