
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'stuartherbert/vim-phix-colors'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'chriskempson/tomorrow-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'godlygeek/tabular'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'bling/vim-airline'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'fatih/vim-go'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------



syntax enable
set synmaxcol=25000
set background=dark
set number
set nocompatible
set autoread
set ruler
set cmdheight=2
set mouse=a
set showcmd
set cursorline
set smarttab
set ai "auto indent
set si "smart indent
set wrap "wrap lines
scriptencoding utf-8
set encoding=utf8
set history=700
set ignorecase
set smartcase
set hlsearch

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" visual autocomplete for command menu
set wildmenu

" set the clipboard on (copy/paste)
set clipboard=unnamedplus

"nnoremap <S-Left> ^
nnoremap <C-a> ^

"nnoremap <S-Right> $
nnoremap <C-e> $
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

" move in vim windows
"nmap <silent> <D-Up> :wincmd k<CR>
"nmap <silent> <D-Down> :wincmd j<CR>
"nmap <silent> <D-Left> :wincmd h<CR>
"nmap <silent> <D-Right> :wincmd l<CR>


colorscheme solarized
colorscheme phix
colorscheme monokai

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
