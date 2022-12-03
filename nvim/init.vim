set showmatch			    " show matching
set tabstop=4			    " columns per tab
set expandtab			    " convert tabs to white space
set number relativenumber 	" show hybrid line numbering
set wildmode=longest,list	" get bash-like tab completions
set cc=80			        " 80 column border
set verbose=1
filetype plugin indent on	" allow auto-indenting depending on file type
syntax on
set noswapfile
set ttyfast			        " speed up scrolling

" vim-plug: Vim plugin manager
call plug#begin()

" Neoformat is used to format source code. Necessary to install a formatter
" (ex. yapf)

Plug 'sbdchd/neoformat'

" Neomake is used for code checking. Needs linter (ex. pylint)
Plug 'neomake/neomake'

call plug#end()


" Plugin specific settings
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)
