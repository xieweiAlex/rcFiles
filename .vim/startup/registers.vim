
"---------------- Registers ------------------------

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

" copy the **word to system clipboard
let @a = 'mpf*wve"*y`pdmp'
let @b = '/a'
" Global delete all matched search  
let @c = ':g/a/d'
" Delete '{' wrapped text  
let @d = 'nf{V%d'

" Delete '-' in the word file from word-review file 
let @u = ',a"a"hf-x,q'

" Make a copy of current line and comment out current line 
let @j = "Ygccp"

