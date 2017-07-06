
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

syntax enable             " enable syntax highlighting (previously syntax on).

" Scripts and Plugins

" set the runtime path to include Vundle and initialize
filetype off              " filetype detection[OFF] plugin[unchanged] indent[unchanged]
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()                " Vundle and initialize

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'nvie/vim-flake8'
Plugin 'bronson/vim-trailing-whitespace'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()                " required
filetype plugin indent on        " required  filetype detection[ON] plugin[ON] indent[ON]

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Rebind <Leader> - ( comma )
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Visual
" syntax on               " Turn on color syntax highlighting
set term=screen-256color  " enable 256-color mode.
colorscheme PaperColor    " set colorscheme
"colorscheme desert        " set colorscheme

let python_highlight_all=1

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
if $TMUX == ''
        set clipboard+=unnamed
endif
" The first line sets a mapping so that pressing F2 in normal mode will invert
" the 'paste' option, and will then show the value of that option. The second
" line allows you to press F2 when in insert mode, to toggle 'paste' on and
" off. The third line enables displaying whether 'paste' is turned on in
" insert mode.

" don't use TABs but spaces
set autoindent            " the indent of the new line will match that of the previous line
set bg=dark
set expandtab             " use spaces instead of tabs
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set textwidth=79
set shiftround            " always indent/outdent to the nearest tabstop
set smarttab              " use tabs at the start of a line, spaces elsewhere
set fileformat=unix
set laststatus=2          " last window always has a statusline
set linebreak
set nobackup
set noerrorbells
set nolist
set novb
set nowrap                " don't wrap text
set number
" set relativenumber
set ruler
set scrolloff=8
set showmatch             " Show matching brackets.
set showcmd
set showmode

highlight ColorColumn ctermbg=black
set colorcolumn=80

"CtrlP
let g:ctrlp_map = '<c-p>'

"Airline
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

"NERDTree
map <leader>t :NERDTreeToggle<CR>

" Make searching better
set ignorecase            " case insensitive searching (unless specified)
set smartcase
set hlsearch              " highlight all search matches
set incsearch             " But do highlight as you type your search.

" Press ,, to turn off highlighting and clear any message already displayed.
nnoremap <silent> <leader>, :nohlsearch<CR>


" Useful settings
set history=700           " Number of things to remember in history.
set undolevels=700
set encoding=utf-8

" scriptencoding utf-8            " utf-8 all the way

" split navigations quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Easier moving between tabs
map <Leader>p <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Save file
inoremap <leader>w <esc>:w<cr>
nnoremap <leader>w <esc>:w<cr>

" Quit without save
inoremap <leader>q <esc>:q<cr>
nnoremap <leader>q <esc>:q<cr>

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/



"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

