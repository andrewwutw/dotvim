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
Bundle 'Valloric/YouCompleteMe'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'henrik/vim-indexed-search'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'tpope/vim-fugitive'
" vim-scripts repos
Bundle 'AutoComplPop'
Bundle 'Smart-Home-Key'
Bundle 'snipMate'
Bundle 'ack.vim'
Bundle 'matchit.zip'
Bundle 'indent-motion'

set incsearch
set hlsearch
"nnoremap <CR> :nohlsearch<CR>
nnoremap <Space> :nohlsearch<CR>
" TAB key to open/close folds.
nnoremap <tab> za

" For YouCompleteMe config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" For CtrlP config
let g:ctrlp_map = '<c-p>'

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

" setting modeline for coreboot
" see :
" http://stackoverflow.com/questions/456792/vim-apply-settings-on-files-in-directory#456846
autocmd BufNewFile,BufRead ~/coreboot/* set noexpandtab shiftwidth=8

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

