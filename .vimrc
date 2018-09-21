" plugins
""" installed manually .vim/pack/plugins/start/plugin_here
" buftabline

" General setup
set number

set ts=4

set autoindent

set expandtab

set shiftwidth=4

set cursorline

set showmatch

set showcmd

set ruler

syntax on

set lazyredraw

" searching
set ignorecase
set incsearch
set hlsearch

" NAVIGATION
nnoremap B ^
nnoremap E $

nnoremap $ <nop>
nnoremap ^ <nop>

" vim scroll maybe unnecessary
set mouse=a

" navigate by visual line
nnoremap <up> g<up>
nnoremap <down> g<down>

" highlight last inserted text
nnoremap gV `[v`]

" Enable folding 
set foldmethod=indent " fold based on indent
set foldlevel=99 " folds always open
nnoremap <leader>f za

" Facilitate buffers
set hidden
set confirm

" wildcard menu
set wildchar=<Tab> wildmenu wildmode=full

" leader
let mapleader = "\<Space>""

" buffer moving
nnoremap <leader>t :enew<CR>

nnoremap <leader>l :bnext<CR>
nnoremap <leader>k :bprevious<CR>
nnoremap <leader>q :bp <BAR> bd #<CR>

" Nerd Tree
nnoremap <C-n> :NERDTreeToggle<CR>

" Nerd Commenter
filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Save session
nnoremap <leader>s :mksession<CR>

