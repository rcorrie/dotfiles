""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN MANAGEMENT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/shared/nvim/plugged')

" Lets you align objects and variables
Plug 'junegunn/vim-easy-align'

" Sometimes you need nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" theme
Plug 'flazz/vim-colorschemes'

" javascript syntax
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

" jsx syntax
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

" close tags automatically
Plug 'jiangmiao/auto-pairs'

" tab completion helper
Plug 'ervandew/supertab'

" vim git tools
Plug 'tpope/vim-fugitive'

" vim indent guides
Plug 'nathanaelkane/vim-indent-guides'

" commenter tool
Plug 'scrooloose/nerdcommenter'

Plug 'Valloric/YouCompleteMe'

Plug 'vim-airline/vim-airline'

Plug 'leafgarland/typescript-vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIG 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set up minimalist theme
set t_Co=256
set background=dark
syntax on
colorscheme jellyx 

" set ruler (for col and row num)
set ruler

" indent guide setup
hi IndentGuidesOdd  ctermbg=234
hi IndentGuidesEven  ctermbg=235
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1

" javascript supported libraries
let g:used_javascript_libs='underscore,react,flux'

" maps Esc key to blur out of terminal session
tnoremap <Esc> <C-\><C-n>

" maps C-n to :NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>

" vim-jsx config
let g:jsx_ext_required = 0

" fugitive blame map
map <c-G> :Gblame<CR>

" commenter setup
let g:NERDSpaceDelims = 1

map <Leader>a :EasyAlign 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NVIM CONFIG 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" improves performance
set lazyredraw

" set tab indent spacing
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 expandtab autoindent
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab autoindent
autocmd Filetype sh setlocal ts=4 sts=4 sw=4 expandtab autoindent
set ts=4 sts=4 sw=4 expandtab autoindent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" map keys for navigating tabs
map , :tabp<CR>
map . :tabn<CR>

" show line numbers
set number

" disable swap file creation
set noswapfile

" set the columnline 80 marker
set colorcolumn=80

" line number
highlight LineNr ctermfg=237

" customize the highlighted text colors
hi Search cterm=NONE ctermfg=black ctermbg=green
hi Visual cterm=NONE ctermfg=black ctermbg=green

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" folding config
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" remap the leader to SPACE key
let mapleader="\<Space>"

" will keep a buffer of 15 lines from top/bottom while scrolling
set scrolloff=15

let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'jsx': ['eslint']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint']
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
