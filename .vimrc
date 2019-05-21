syntax enable

set nocompatible              " be iMproved, required
filetype off                  " required

let g:airline_powerline_fonts = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'mbbill/undotree'
Plugin 'othree/html5.vim'
Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'joonty/vdebug.git'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
"Plugin 'moll/vim-node'
Plugin 'mattn/emmet-vim'
"Plugin 'nginx.vim'
Plugin 'chr4/nginx.vim'

Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'ekalinin/Dockerfile.vim'
Plugin 'saltstack/salt-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

"if has('mouse')
"  set mouse=a
"endif

set cursorline
set nofoldenable
set nowrap
set softtabstop=2
set shiftwidth=2
set hlsearch
set ignorecase
set smartcase
set autoindent
"set expandtab

" Sets how many lines of history VIM has to remember
set history=500

set t_Co=256
colorscheme jellybeans

let mapleader=","
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

autocmd Filetype php setlocal ts=4 sw=4 autoindent

