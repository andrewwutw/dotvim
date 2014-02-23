set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kevinw/pyflakes-vim'
Bundle 'vim-scripts/indentpython.vim'
Bundle 'Crapworks/python_fn.vim'
Bundle 'altercation/vim-colors-solarized'
" vim-scripts repos
Bundle 'Smart-Home-Key'
Bundle 'snipMate'
Bundle 'AutoComplPop'

set incsearch
set hlsearch
"nnoremap <CR> :nohlsearch<CR>
nnoremap <Space> :nohlsearch<CR>
" TAB key to open/close folds.
nnoremap <tab> za

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

" set fold mode = syntax
set foldmethod=syntax

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

let NERDTreeIgnore=['\.EXE', '\.pyc$', '\.pyo', '\.pyd', '\.o', '\.bin', '\.rom', '\.so', '\~$']
let Tlist_Use_Right_Window = 1

" for minibufexpl :
"let g:Tb_MapWindowNavVim = 1
"let g:Tb_MapCTabSwitchBufs = 1
"let g:Tb_MapCTabSwitchWindows = 1
"let g:Tb_ModSelTarget = 1

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

