
set nocompatible "required
filetype off     "required

" runtime path to include vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage vundle required
Plugin 'gmarik/Vundle.vim'

" plugins
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"all plugin added before following line
call vundle#end()           "required
filetype plugin indent on   "required


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

"ctrl-p ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"""""""""""""""""
"" Leader key and function
"""""""""""""""""
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>c :! 


" stupid :q popup window
map q: :q


" Enable folding with the spacebar and f
nnoremap <leader>f za

" docstring folded code
let g:SimpylFold_docstring_preview=1

" PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"General indentation
set tabstop=4
set softtabstop=4
set expandtab

set encoding=utf-8

"python autocomplete you complete me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" nerdtree to ctrl n
map <C-n> :NERDTreeToggle<CR>

" solarized
set background=dark
colorscheme solarized

let python_highlight_all=1
syntax on
syntax enable

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
   project_base_dir = os.environ['VIRTUAL_ENV']
   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
   execfile(activate_this, dict(__file__=activate_this))
EOF


""""""""""""""""'
"" custom stuff
""""""""""""""""

" copy paste with mac clipboard
set clipboard=unnamed

"line numbering 
set nu

"mouse support
set mouse=a

"show command
set showcmd

"highlight current
set cursorline

"redraw when we need to
set lazyredraw

"hightlight matching parenthesis/brackets
set showmatch



""""""""""""""""""
"" Searching
""""""""""""""""""
set incsearch
set hlsearch
nnoremap <leader><,> :nohlsearch<CR>






