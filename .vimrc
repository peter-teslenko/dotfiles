let mapleader=","

set nocompatible              " be iMproved, required
filetype off                  " required

let g:airline_powerline_fonts = 1
"let g:syntastic_enable_signs=0

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" Common
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-unimpaired'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" UI
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'

Plugin 'mbbill/undotree'
" Dev
"Plugin 'sxirver/UltiSnips' " Need py3 support int vim
Plugin 'saltstack/salt-vim'
Plugin 'othree/html5.vim'
Plugin 'chr4/nginx.vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
"Plugin 'elzr/vim-json'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'vim-syntastic/syntastic'

"Plugin 'wincent/command-t' " Mac only

" Golang
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required


syntax enable " vim-sensible 
"set encoding=utf-8 " vim-sensible
set laststatus=2
set number
set cursorline
set nofoldenable
set nowrap
"set colorcolumn=80
set noscrollbind
"set autoindent " vim-sensible
"set ruler " vim-sensible  
"set wildmenu " vim-sensible
set hlsearch
set ignorecase
set smartcase

" Configure backspace so it acts as it should act
"set backspace=eol,start,indent  " vim-sensible

" https://habr.com/ru/post/64224/
set softtabstop=2
set shiftwidth=2
"set tabstop=4
"set shiftwidth=4
set expandtab

"set clipboard=unnamed " vim --version | grep clipboard. If you see +clipboard or +xterm_clipboard, you are good to go.
"set autochdir

set fileencodings=ucs-bom,utf-8,cp1251,default,latin1

set t_Co=256
colorscheme jellybeans

if $TERM=="screen"
  set term=xterm
endif

"if has('mouse')
"  set mouse=a
"endif

nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nnoremap - :Explore<CR>

" Map ctrl-movement keys to window switching
"map <C-k> <C-w><Up>
"map <C-j> <C-w><Down>
"map <C-l> <C-w><Right>
"map <C-h> <C-w><Left>

" upper/lower word
"nmap <leader>u mQviwU`Q
"nmap <leader>l mQviwu`Q

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"-- vim-go specific configuration

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>t <Plug>(go-test)

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

autocmd FileType go setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*'.&commentstring[0]

let g:go_list_type = "quickfix"    " error lists are of type quickfix
let g:go_fmt_command = "goimports" " automatically format and rewrite imports
"let g:go_auto_sameids = 1          " highlight matching identifiers

"-- vim-go specific configuration (END)

" golang lint
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

autocmd Filetype php setlocal ts=4 sw=4 autoindent
"autocmd CmdlineEnter * redraws
"autocmd CmdlineChanged * redraws

