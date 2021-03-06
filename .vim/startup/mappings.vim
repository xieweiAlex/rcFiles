
" ------------- Map Leaders --------------------
let mapleader = ";"
noremap . ;
noremap <Space> .

" ------------- Leader maps ------------------------
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
vnoremap <leader>a "ay@b  

" quotation selection sentence
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>

" Yank word to system clipboard 
vnoremap <leader>y "+y

" Yank selection to sys clipboard + double star the selection  
vnoremap <leader>* "+yi**<esc>`>ea**<esc>

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

