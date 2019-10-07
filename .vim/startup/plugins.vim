
" filetype off

" --------------------- Vim Plug Manager ---------
call plug#begin('~/.vim/plugged')

" Display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" Vim wiki 
" Plug 'vimwiki/vimwiki'

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
" Plug 'nathanaelkane/vim-indent-guides'
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
" filetype plugin indent on

