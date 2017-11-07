" this line goes first because pathogen needs bash (not csh, zsh, fish, etc)
set shell=bash
execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set relativenumber
set nocompatible

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set undofile

"set leader key to a comma (,)
let mapleader = ","

"alias ESC with jj
inoremap jj <ESC>
inoremap jk <ESC>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

autocmd BufWritePre * :%s/\s\+$//e

"tame vim search
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault

"highlight search results
set incsearch
set showmatch
set hlsearch

"remove highlight
nnoremap <leader><space> :noh<cr>

"use tab instead of % in looking for bracket pairs
nnoremap <tab> %
vnoremap <tab> %

"use ,w and ,s for split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

"user ,a for :Ack
nnoremap <leader>a :Ack

"map ctrl p to fzf"
nnoremap <leader>p :Files<CR>

"easier window navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" Window resizing
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap } <C-w>>
nnoremap { <C-w><lt>

" Vim Rspec
map <Leader>cs :call RunCurrentSpecFile()<CR>
map <Leader>ns :call RunNearestSpec()<CR>
map <Leader>ls :call RunLastSpec()<CR>
map <Leader>as :call RunAllSpecs()<CR>

"""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" RainbowParentheses
nnoremap <leader>r :RainbowParenthesesToggle<CR>

" Slime.vim
let g:slime_target = "tmux"

" Fugitive.vim

" Ack.vim
nnoremap <leader>a :Ack
let g:ackprg="ag --vimgrep"

"set colorscheme
"colorscheme ir_black

nnoremap <leader>z :ZoomWin<CR>

"indent guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|bower_components|dist|tmp)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" ES6 support
autocmd BufRead, BufNewFile *.es6 setfiletype javascript

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['jscs']
let g:airline_theme='badwolf'

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-dispatch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()
