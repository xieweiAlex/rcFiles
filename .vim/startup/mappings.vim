
"map leader
let mapleader = ";"
noremap . ;
noremap <Space> .


"Action
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
" nmap <Leader>f <Plug>(easymotion-overwin-f)

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
nnoremap <leader>e :e ~/Box/English/English_learning/words/2019/words-Sep.md<CR>

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

noremap - dd p
noremap + ddkP

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Search string with regex of special character '*' 
command! -nargs=1 S let @/ = escape('<args>', '*')
nnoremap <Leader>S :execute(":S " . input('Regex-off: /'))<CR>



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


" ------------------ Tab, Buffer, Window Management ---------------
" Use arrow keys to resize windows
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
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

