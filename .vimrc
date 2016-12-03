set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"set up Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'Yggdroot/indentLine'
Bundle 'JulesWang/css.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'vim-scripts/closetag.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes'
Bundle 'wincent/Command-T'
Bundle 'mattn/emmet-vim.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree.git'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'rizzatti/dash.vim'
Bundle 'claco/jasmine.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle "othree/javascript-libraries-syntax.vim"
Bundle 'ervandew/supertab'

Bundle 'Quramy/tsuquyomi'
Bundle 'leafgarland/typescript-vim'
Bundle 'jason0x43/vim-js-indent'


" IMPORTANT: this improves performance by 200%
set lazyredraw

" IndentLine config
let g:indentLine_char = '.' "'❘'
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_color_term = 236 
let g:indentLine_indentLevel = 20

" JsDoc config
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
						
"let g:indentLine_leadingSpaceEnabled=1
"'•'

let g:SuperTabMappingForward = '<S-tab>'

set tags=./tags;/

let g:syntastic_javascript_checkers = ['jshint']

filetype plugin indent on     " required!

"Set Visual Selection
"hi Visual guifg=#ffffff guibg=#999999 gui=none


set autoread

" highlight current line
set cursorline

" tmux cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"Toggle fullscreen
set guioptions-=T guioptions-=m

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

"" set pastetoggle=<F2>
"set clipboard=unnamed
set go+=a
if $TMUX == ''
	set clipboard+=unnamed
endif

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" file indent
autocmd Filetype html setlocal ts=4 sts=4 sw=4 expandtab autoindent
autocmd Filetype css setlocal ts=4 sts=4 sw=4 expandtab autoindent
autocmd Filetype scss setlocal ts=4 sts=4 sw=4 expandtab autoindent
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 expandtab autoindent
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab 
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

autocmd BufRead,BufNewFile *.esql set filetype=sql
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <c-f> :Leaderf<cr>

" map 'save'
"noremap <silent> <C-S>          :update<CR>

" map window switch
"noremap <tab> <c-w><c-w> 

" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" spell check
set nospell
"set spell spelllang=en_us

"set default font
set guifont=Inconsolata\ 13

"let g:rehash256 = 1
"highlight Pmenu guibg=SlateGray guifg=White 


" indent guides
" indent guides
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_color_change_percent = 100
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey ctermbg=grey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" Enable syntax highlighting
" You need to reload this file for the change to apply
syntax on

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
"set colorcolumn=40
"highlight ColorColumn ctermbg=233

" Useful settings
set history=700
set undolevels=700

set tabstop=2
set shiftwidth=2

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" NERDtree map
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
map <c-n> :NERDTreeTabsToggle<CR>

" Git tools map
map <c-G> :Gblame<CR>


" Tagbar setup
silent! nmap <F6> :TagbarToggle<CR>

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Remaps
let mapleader="?"
nmap <Leader>h <C-W>h31<C-W>>
nmap <Leader>l <C-W>l31<C-W>>

map ' :call NERDComment(0,"toggle")<CR><CR>
map <C-B> :!php -l %<CR>
map , :tabp<CR>
map . :tabn<CR>
map - dd
"map h :wincmd h<CR>
"map j :wincmd j<CR>
"map k :wincmd k<CR>
"map l :wincmd l<CR>

nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction

function! VisualSelection(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
	elseif a:direction == 'replace'
		call CmdLine("%s" . '/'. l:pattern . '/')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction


set colorcolumn=80


"----------------------Ruby---------------------
let mapleader=""
let ruby_operators = 1
let ruby_space_errors = 1
autocmd FileType ruby compiler ruby

set scrolloff=15

" Color scheme
set t_Co=256
colorscheme	monokain 
hi CursorLine cterm=underline ctermbg=none
highlight LineNr ctermfg=237
