
" --------------------- Vim Plug Manager ---------
call plug#begin('~/.vim/plugged')

" Nerd tree
Plug 'scrooloose/nerdtree'

" Git blame 
Plug 'tpope/vim-fugitive'
" Fuzzy find 
Plug 'ctrlpvim/ctrlp.vim'
" Easy motion
Plug 'easymotion/vim-easymotion'
" easy surround 
Plug 'tpope/vim-surround'
" hard time 
Plug 'takac/vim-hardtime'
" auto pairs 
Plug 'jiangmiao/auto-pairs'
" vim status bar  
Plug 'vim-airline/vim-airline'

" Path searching options 
"Plug 'vim-apathy'

" Asynchronous Lint Engine
" Bundle 'w0rp/ale'

" show vim marks 
Plug 'kshenoy/vim-signature'
" fuzzy find 
Plug 'mileszs/ack.vim'
" syntax plugin for plain text nodes 
Plug 'junegunn/vim-journal'

" index of vim search 
Plug 'henrik/vim-indexed-search'
" vim plugin to interact with tmux
Plug 'benmills/vimux'
" comment 
Plug 'tpope/vim-commentary'
" visually displaying indent levels in code
Plug 'nathanaelkane/vim-indent-guides'
" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'
" Syntax highlighting for VIM
Plug 'slim-template/vim-slim'
" vim for ruby 
Plug 'vim-ruby/vim-ruby'

" #CTags needed  Vim plugin that displays tags in a window, ordered by scope
" Plug 'majutsushi/tagbar'

" Enhance Vim experience in Terminal  
Plug 'wincent/terminus'
" Automatically save changes to disk in Vim
Plug '907th/vim-auto-save'

" Text filtering and alignment  
Plug 'godlygeek/tabular'
" Markdown support 
Plug 'plasticboy/vim-markdown'

" Syntax for vim 
Plug 'vim-syntastic/syntastic'

" Swift syntax and indention
Plug 'keith/swift.vim'
" COC 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" TagBar 
Plug 'majutsushi/tagbar'
" Markdown preview
Plug 'JamshedVesuna/vim-markdown-preview'
" buffer list select and switch
Plug 'jeetsukumaran/vim-buffergator'

" tags for objc
" Plug 'xolox/vim-easytags'


call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ---------------------- for COC   ---------

" make swap, backup, undodir in ~/.vim not working directory
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
set directory=~/.vim/swap//
set noswapfile

set hidden 
set nowritebackup
" Better display for messages
set cmdheight=1
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" ----------  General -------------

set nocompatible  "not compatible with Vi

" enable mouse
set mouse=a

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
set pastetoggle=<leader>P 

set cindent    " open cindent
set tabstop=2 shiftwidth=2 expandtab
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
 
" File type recognize 
autocmd BufNewFile,BufRead *.swift set filetype=swift
autocmd BufNewFile,BufRead *.sw set filetype=swift
autocmd BufNewFile,BufRead Fastfile set filetype=ruby

" global ctags for objc files 
autocmd BufNewFile,BufRead *.h,*.m set tags+=~/Documents/global-objc-tags

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
" \() in swift   
" nnoremap <leader>/ i(<esc>i\<esc>f(a
nnoremap <leader>/ i()<esc>F(<esc>i\<esc>f(a

" copy the *word to system clipboard
nnoremap <leader>@ mpf*wve"*y`pdmp

" Easy Motion Move to word
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Copy to system clipboard and  double star around current word 
nnoremap <leader>* lbve"*yi**<esc>ea**<esc>
" Yank current word to system clipboard
nnoremap <leader>y viw"+y
" Yank word to system clipboard 
vnoremap <leader>yy "+y

" Add a colon in the end of line
nnoremap <leader>: A:<esc>
" no highlight search 
nnoremap <leader><space> :nohls<CR>

" toggle and paste system clipboard 
nnoremap <leader>9 <leader>0"*p<leader>0<esc> 

" for quick edit English words file 
nnoremap <leader>E :e ~/Box/English/English_learning/words/2019/words-Sep.md<CR>

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


"center after find
nnoremap n nzz
nnoremap N Nzz
nmap <silent> * *zz
nmap <silent> # #zz

nnoremap Q @q
vnoremap Q :norm @q<CR>

noremap - dd p
noremap + ddkP

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)


" ------------------ Tab, Buffer, Window Management ---------------

" Previous tab 
nnoremap <S-l> gT
" Next tab 
nnoremap <S-h> gt
" Move tab left and right 
nnoremap <leader>< :tabm -1<CR>
nnoremap <leader>> :tabm +1<CR>

" Move split buffer
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tag bar trigger
nmap <leader>p :TagbarToggle<CR>


" ---------- inert mode mapping  ------------------

inoremap jk <esc>
" Mimic Emacs Line Editing in Insert Mode Only
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
" â is <Alt-B>
inoremap â <C-Left>
" æ is <Alt-F>
inoremap æ <C-Right>
inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>Pa
inoremap <C-X><C-S> <Esc>:w<CR>a


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
" 
" let @1 = "f*i\jkl@1"
let @1 = "f*i\jkl@1"

" add double space to inform markdown file's line break 
let @q = '0g_a jkDa  jk0j'  
" search line doesn't have ** keyword 
let @w = '/^\w\(\(.*\*\*.*\)\@!.\)*$'
" add current line to a register a accumulatively
" search <<<<< ===== >>>>> for resolve conflicts 
let @s = '/[<>=]\{5\}'

" Search word ended in "-"
let @e = "/.*\\s-\\{1,3\\}\\W\\{0,10\\}$"
" Search emphasized word wrapped with `**`
let @r = "/\\*\\*.\\{-\} "

" Reverse uncheck the "-" mark from word-review.md
" let @f = "0mavt-"ayggOjk"ap0:1,2s/\*/\\*/gvg$h"ayVd'a,a"a"f-x,of-x0 q"

" reverse delete the '-' in words file from words-reivew  
let @t = '0vt*"ay?.md0g_0vg_"bymcbrbgg/af-x0,of-x0'

" copy the **word to system clipboard
let @a = 'mpf*wve"*y`pdmp'
let @b = '/a'
" Global delete all matched search  
let @c = ':g/a/d'
" Delete '{' wrapped text  
let @d = 'nf{V%d'

" Delete '-' in the word file from word-review file 
let @u = ',a"a"hf-x,q'

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


" Vim auto save 
let g:auto_save = 1  " enable AutoSave on Vim startup
" save on every change in normal mode and every time you leave insert 
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Vim hard time 
let g:hardtime_timeout = 3000
let g:hardtime_showmsg = 1
let g:hardtime_default_on = 0
let g:list_of_normal_keys = ["h", "j", "k", "l"]

                 


" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

" ruby for tag bar (not sure it works?)
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }


" ----------------------------- NerdTree ------------------
" reveal file in NERDTree panel 
nnoremap <leader>n :NERDTreeFind<cr>
" toggle NERDTree 
nnoremap <leader>m :NERDTreeToggle<cr>

"--------------------------- Markdown -------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0

" grip for readme with vim markdown 
let vim_markdown_preview_github=1 
let vim_markdown_preview_toggle=1
" markdown preview hotkey 
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"abrev
iabbrev @@ xieweialex@gmail.com
iabbrev ccopy Copyright 2016 Alex xie, all rights reserved.
iabbrev py_note #!/usr/bin/env python3    # -*- coding: utf-8 -*-
iabbrev py_split print('------------------------------------------------------------')
" --------------------- English auto-complete --------
" in progress 


" ------------------------------- Autocmd -----------------------------------
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType java nnoremap <buffer> <localleader>c I// <esc>
autocmd FileType py nnoremap <buffer> <leader>c I#<esc>
autocmd FileType shell nnoremap <buffer> <leader>c I# <esc>
autocmd FileType java :iabbrev <buffer> iff if ()<left>
autocmd FileType md :set tabstop=2 shiftwidth=2 expandtab
autocmd FileType ruby compiler ruby

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




