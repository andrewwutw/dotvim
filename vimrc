set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
"
" original repos on github
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kevinw/pyflakes-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Crapworks/python_fn.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'henrik/vim-indexed-search'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
" vim-scripts repos
Plugin 'AutoComplPop'
Plugin 'Smart-Home-Key'
Plugin 'snipMate'
Plugin 'ack.vim'
Plugin 'matchit.zip'
Plugin 'indent-motion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set incsearch
set hlsearch
"nnoremap <CR> :nohlsearch<CR>
nnoremap <Space> :nohlsearch<CR>
" TAB key to open/close folds.
nnoremap <tab> za

" For YouCompleteMe config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" For CtrlP config
let g:ctrlp_map = '<c-p>'
set wildignore+=*.pyc,*.o,*.obj,*.sys,*.dll

" For buffergator config
let g:buffergator_sort_regime = 'mru'

" For vim-indexed-search
let g:indexed_search_shortmess=1
let g:indexed_search_show_index_mappings=0

" For Smart-Home-Key
map <silent> <Home> :SmartHomeKey <CR>
imap <silent> <Home> <C-O>:SmartHomeKey<CR>

set cursorline
set smartindent
set shiftwidth=2
set expandtab
set showtabline=2
set ruler
set nocompatible
set showcmd
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set backspace=indent,eol,start
set history=200
set hidden
" set visual bell : no beep
set vb

filetype plugin on
filetype indent on

set noswapfile

syntax on

set background=dark
"set background=light
colorscheme solarized

set noimdisable
set iminsert=0
set imsearch=0

set suffixes-=.h

if has("win32")
  let Tlist_Ctags_Cmd = '\ctags\ctags.exe'
endif

au BufRead,BufNewFile SConstruct set filetype=python

set fileencodings-=latin1
set fileencodings+=cp950,sjis,latin1

" No preview window when auto-completion
set completeopt-=preview

" Enable bindings to <M-..> keys.
if has("gui_macvim")
  set macmeta
endif

