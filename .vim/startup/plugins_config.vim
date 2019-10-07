
" ---------------------- for COC   ---------

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

"--------------------------  Plugin configuration ---------------------------

let g:vimwiki_list = [{'path': '~/Box/Notes/',
                      \ 'syntax': 'default', 'ext': '.md'}]

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
" remove temp HTML file after opening
let vim_markdown_preview_temp_file=1
" markdown preview hotkey 
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'


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


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" ctags
let tlist_objc_settings = 'ObjectiveC;P:protocols;i:interfaces;types(...)'
" airline show buffers  
let g:airline#extensions#tabline#enabled = 1


