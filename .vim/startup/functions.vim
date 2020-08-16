
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

