
" Plugins {{{ 

" filetype off
" --------------------- Vim Plug Manager ---------
call plug#begin('~/.vim/plugged')

" Nerd tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Git blame 
Plug 'tpope/vim-fugitive'
" File Search 
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
Plug 'itchyny/lightline.vim'
" lightline config {{{
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"}}} 

" show vim marks   
Plug 'kshenoy/vim-signature'
" fuzzy find 
Plug 'mileszs/ack.vim'
" syntax plugin for plain text nodes 
Plug 'junegunn/vim-journal'

" index of vim search 
Plug 'henrik/vim-indexed-search'

" comment 
Plug 'tpope/vim-commentary'

" visually displaying indent levels in code
" Plug 'nathanaelkane/vim-indent-guides'
 
" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'

" vim for ruby 
" Plug 'vim-ruby/vim-ruby'

" Enhance Vim experience in Terminal  
Plug 'wincent/terminus'
" Automatically save changes to disk in Vim
Plug '907th/vim-auto-save'

" Text filtering and alignment  
Plug 'godlygeek/tabular'

" Syntax highlighting for VIM
Plug 'slim-template/vim-slim'

" Syntax for vim 
Plug 'vim-syntastic/syntastic'

" Swift syntax and indention
" Plug 'keith/swift.vim'

" COC 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TagBar 
Plug 'majutsushi/tagbar'


" Markdown support 
Plug 'plasticboy/vim-markdown'
" Markdown preview
Plug 'JamshedVesuna/vim-markdown-preview'

" buffer list select and switch
" Plug 'jeetsukumaran/vim-buffergator'

" Display the indention levels with thin vertical lines
" Plug 'Yggdroot/indentLine'

" An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Yggdroot/LeaderF-marks'

" Scroll smoothly 
Plug 'psliwka/vim-smoothie'

" Git
Plug 'airblade/vim-gitgutter'

" defaults everybody agrees on 
Plug 'tpope/vim-sensible'

" True color support 
Plug 'lifepillar/vim-solarized8'

" handy bracket mapping 
Plug 'tpope/vim-unimpaired'

" provides additional text objects
Plug 'wellle/targets.vim'

" grammer check 
" Plug 'rhysd/vim-grammarous'
" A Deoplete source for TabNine.
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" Vim Latex
Plug 'lervag/vimtex'
" Vim Latex config  {{{
let g:tex_flavor = 'latex'
" }}}

" Lots of snippets 
Plug 'honza/vim-snippets'

" Nord theme in Vim 
Plug 'arcticicestudio/nord-vim'

" Distract free mode 
Plug 'junegunn/goyo.vim'  


" vim plugin to interact with tmux
Plug 'benmills/vimux'
" Vim & Tmux  
Plug 'christoomey/vim-tmux-navigator'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'
let g:javascript_plugin_flow = 1

" Vim debugger 
Plug 'puremourning/vimspector'
" Vim Debugger Config {{{ 
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector

" --- }}}

call plug#end()
" filetype plugin indent on

" }}}

" Mappings  {{{

" ------------- Map Leaders --------------------
let mapleader = ";"
noremap . ;
noremap <Space> .

" ------------- Leader maps ------------------------
"  Normal mode mapping 
" Search and Replace 
nnoremap <leader>r *Ncgn 

" show git blame 
nnoremap <Leader>gb :Gblame<CR>
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
nmap <Leader><leader>f <Plug>(easymotion-bd-f)

" Copy to system clipboard and double star around current word 
nnoremap <leader>* lbve"*yi**<esc>ea**<esc>

" Yank current word to system clipboard
nnoremap <leader>y viw"+y

" Add a colon in the end of line
nnoremap <leader>: A:<esc>
" no highlight search 
nnoremap <leader><space> :nohls<CR>

" open previous file in buffer in a split(current no use) 
nnoremap <localleader>n :execute "rightbelow vsplit " . bufname("#")

cnoreabbrev Ack Ack!
" Ack search in .git directory
nnoremap <Leader>a :Gcd <bar> Ack!<Space>

"Ad

" ------------ Leader numerical -------------     
" Show marks 
noremap <leader>1 :LeaderfMarks<CR>

" toggle sign column
nnoremap <Leader>2 :call ToggleSignColumn()<CR>

" toggle spell check 
nmap <leader>0 :set nospell! <CR>

" toggle and paste system clipboard 
nnoremap <leader>9 <leader>0"*p<leader>0<esc> 
" input Python comments before <leader>9 
nmap <leader>8 i"""<CR>"""<esc>O<esc><leader>9


" previous buffer in stack  
:nnoremap <leader>j :bprevious<CR>
" next buffer in stack 
:nnoremap <leader>k :bnext<CR>

"center after find
nnoremap n nzz
nnoremap N Nzz
nmap <silent> * *zz
nmap <silent> # #zz

nnoremap Q @q
vnoremap Q :norm @q<CR>

nnoremap - dd p
nnoremap + ddkP
" nnoremap Y yg_

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)



" Search string with regex of special character '*' 
command! -nargs=1 S let @/ = escape('<args>', '*')
nnoremap <Leader>S :execute(":S " . input('Regex-off: /'))<CR>

" ----------- inert mode mapping  ------------------
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

" ---------- Terminal mode mapping ----------- 
" terminal in tab
nnoremap <leader>tt :tab term<CR>
" terminal in current window
nnoremap <leader>tc :term++curwin<CR>

" Terminal in horizontal split 
nnoremap <leader>th :term<CR>
" terminal in vertical split
nnoremap <leader>tv :vert term<CR>

" tnoremap <Esc> <C-W>N
tnoremap <Esc> <C-\><C-n>

" set macmeta

" ---------- command line mode mapping ---------------------
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-p> <Up> 
cnoremap <C-n> <Down>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

" ----------- visual line mode mapping -----------------
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

vnoremap <leader>a "ay
vnoremap <leader>A "ad

" quotation selection sentence
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>

" Yank word to system clipboard 
vnoremap <leader>y "+y

" Yank selection to sys clipboard + double star the selection  
vnoremap <leader>* "+yi**<esc>`>ea**<esc>

" search selected text 
vnoremap * y:let @/ = @"<CR>

" ------------------ Tab, Buffer, Window Management ---------------
" Use arrow keys to resize windows
noremap <up> <C-W>+
noremap <down> <C-W>-
noremap <left> 3<C-W><
noremap <right> 3<C-W>>

" left tab 
nnoremap <leader>h gT
" Next tab 
nnoremap <leader>l gt
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

" ---------- Normal mode mapping  ------------------
" " ------ Window management --------
" " Toggle two recent windows 
" nnoremap <Leader>wr :wincmd r<cr>
" " Maximize width for current window 
" nnoremap <Leader>wo :wincmd |<cr>
" " Equalize all windows  
" nnoremap <Leader>w= :wincmd =<CR>
" }}}

" Registers {{{
" ---------- English words workaround ------------
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
let @r = "/\\*\\{2\\}[^*]*\\*\\{2\\}"

" Delete '-' in the word file from word-review file 
let @u = ',a"a"hf-x,q'

" Copy current line to the first line of phrase.md(File mark J)
let @i = "0V\"ay'Jgg\"aP;o"

" ---------- General register customze ------------------
" Amending visual selected text into register A
let @f = "\"Ay"

" Global delete all matched search  
let @c = ':g/a/d'

" Make a copy of current line and comment out current line 
let @j = "Ygccp"
" }}}
 
" Auto Commands {{{

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd InsertEnter * setlocal nocursorline
autocmd InsertLeave * setlocal cursorline
 
" File type recognize 
autocmd BufNewFile,BufRead *.swift set filetype=swift
autocmd BufNewFile,BufRead *.sw set filetype=swift
autocmd BufNewFile,BufRead Fastfile set filetype=ruby

" global ctags for objc files 
" autocmd BufNewFile,BufRead *.h,*.m set tags+=~/Documents/global-objc-tags

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

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" autocmd FileType markdown setlocal spell
" }}}

" Plugin Configs {{{

" ----------- for COC   ---------
" make swap, backup, undodir in ~/.vim not working directory
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
set directory=~/.vim/swap//
set noswapfile
set nowritebackup

set hidden 
" Better display for messages
set cmdheight=1
" You will have bad experience for diagnostic messages when it's default 4000.
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

let g:coc_snippet_next = '<tab>'

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
" nmap <silent> [c <Plug>(coc-diagnostic-prev)
" nmap <silent> ]c <Plug>(coc-diagnostic-next)

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

"--------------------------  LeaderF configuration ---------------------------
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

" ------------- vim-gitgutter    
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

let g:gitgutter_override_sign_column_highlight = 1
" highlight SignColumn guibg=bg
" highlight SignColumn ctermbg=bg

" Update sign column every quarter second
set updatetime=250
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_use_location_list = 1

" Jump between hunks
nmap <Leader>]h <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>[h <Plug>(GitGutterPrevHunk)  " git previous


"--------------------------  Plugin configuration ---------------------------

let g:vimwiki_list = [{'path': '~/Box/Notes/',
                      \ 'syntax': 'default', 'ext': '.md'}]

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

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=0

"--------------------------- Markdown -------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0

" grip for readme with vim markdown 
let vim_markdown_preview_github=1 
let vim_markdown_preview_toggle=1
" remove temp HTML file after opening
let vim_markdown_preview_temp_file=0
" markdown preview hotkey 
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'

" -------------- UltiSnipeet ---------- 
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"----------------------- Autocompletion ----------------------

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


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" }}}

" Custom Functions {{{


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

function! Meow()
  echo "Meow!!.."
  echom "Hulu hulu hulu "
endfunction

" Toggle signcolumn. Works only on vim>=8.0 or NeoVim
function! ToggleSignColumn()
  if !exists("b:signcolumn_on") || b:signcolumn_on
    set signcolumn=no
    let b:signcolumn_on=0
  else
    set signcolumn=auto
    let b:signcolumn_on=1
  endif
endfunction

" lbve"*yi**<ESC>ea**<esc>
" function! StarWord()
"   let word = expand("<cword>")
"   echo word
"   normal eb
"   insert aa
" endfunction

" Format markdown file 
nnoremap <leader>3 :call MdFormat()<CR>

" function! MdFormat() 
"   echo "Format markdown file start.."
"   " normal A11
"   " let g:auto_save = 0
"   " normal gg
  
"   normal ggVG:normal A11
"   " normal :write
"   " let g:auto_save = 1
"   write
"   echo "Format markdown file done."
" endfunction

function! MdFormat() 
  " echo "Format markdown file start.."
  normal mm
  let g:auto_save = 0
  
  let lines = line('$')
  normal gg110@q
  normal 'm
  let g:auto_save = 1
  echo "Format markdown with constant lines done."
endfunction

" function UnscopedDisplayName(name)
"   echom "Hello!  My name is:"
"   echom a:name
" endfunction
" call UnscopedDisplayName("Your Name")
" }}}

" :command Writemode colorscheme nord | setlocal spell | Goyo 70

" Add man page inside vim 
runtime ftplugin/man.vim
let g:ft_man_open_mode = 'tab'

" General Settings {{{

" Folding {{{

" endable folding
set foldenable      
" Generally folding method by indent 
set foldmethod=indent
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
    au FileType javascript setlocal foldlevel=1
augroup END

au FileType vim setlocal foldmethod=marker

" The smaller foldlevel is, the more brackets closes 
set foldlevel=10
autocmd BufReadPost * :if line('$') > 100 | set foldlevel=1 | endif

"toggle foldcolumn
"nnoremap <leader>kf :call FoldColumnToggle()<cr>

function! FoldColumnToggle()
	if &foldcolumn	
		setlocal foldcolumn=0
	else 
		setlocal foldcolumn=4
	endif
endfunction


" }}}

"enable mouse
set mouse=a

" For buffers search
set path+=**
" menu for options while find
set wildmenu  

"set lines=40 columns=155    " set window size 
set number              " show number of lines 
set go=             " no GUI buttons 
" set line break
set linebreak
" buffer screen updates instead of updating all the time
set lazyredraw

" Try to fast vim scroll 
" set synmaxcol=128
" syntax sync minlines=256

if has("syntax")
  syntax on
endif

set ruler           " show ruler
set showcmd         " show command
set scrolloff=3     " 3 line off 
set novisualbell    " no visual bell 

" show sign column 
set signcolumn=auto

set hlsearch  " highlight all search results

set incsearch  " show incremental search results as you type
set wrapscan " wraps around to the beginning and ending when do search  
set history=200

set spelllang=en_us         " set spell language to English
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
au FileType swift set softtabstop=2 tabstop=2 shiftwidth=2

" Automatically change currently directory
set autochdir

" Accept special characters on search terms
set magic
set exrc                " Allow tuning with local .vimrc files
set secure              " and do it securely

set whichwrap+=<,>,h,l,[,]      " Wrap navigation in normal and insert!
" only be a case sensitive search if you have uppercase characters
set ignorecase smartcase


" Collor Scheme  {{{
" True color in terminal 
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

" Spell error type to underline
hi clear SpellBad
hi SpellBad cterm=underline

" colorscheme solarized8
colorscheme toast
augroup toast
  autocmd colorscheme toast hi clear Constant | hi link Constant Type
augroup END

" highlight line and column
" set cursorline
" set cursorcolumn

" high light color (not use)
" highlight CursorLine term=bold cterm=bold guibg=Grey40
" }}}

"---------------- Mis ------------------------
" Save undo even after file close 
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=50         " How many undos
set undoreload=1000        " number of lines to save for undo


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


let g:tagbar_type_yaml = {
    \ 'ctagstype' : 'yaml',
    \ 'kinds' : [
        \ 'h:Name_start'
    \ ]
\ }

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }


" -------------- }}}

iabbrev cc /*<CR><CR>/<Up>

