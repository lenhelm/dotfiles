" Remap ESC key to jk
inoremap jk <ESC>

" Change the leader key (activation key for shortcuts
let mapleader = ""

" highlight syntax
syntax on

" show line numbers
set number

" disable the swapfile
set noswapfile

" highlight all results
set hlsearch

" ignore case in search
set ignorecase

" show search results as you type
set incsearch

" spellchecking
set spell spelllang=en_us

" enable vim-plug 
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'morhetz/gruvbox'
call plug#end()

" gruvbox setting
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
