
" filetype off

" --------------------- Vim Plug Manager ---------
call plug#begin('~/.vim/plugged')

" Nerd tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

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


" Display the indention levels with thin vertical lines
" Plug 'Yggdroot/indentLine'

" An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Yggdroot/LeaderF-marks'

" Scroll smoothly 
Plug 'psliwka/vim-smoothie'

" Git
Plug 'airblade/vim-gitgutter'

" Theme 
" Plug 'morhetz/gruvbox'

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

call plug#end()
" filetype plugin indent on

