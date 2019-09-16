
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
" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

