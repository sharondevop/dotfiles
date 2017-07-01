
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Rebind <Leader> - ( comma )
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set clipboard=unnamed
set showmode
" The first line sets a mapping so that pressing F2 in normal mode will invert
" the 'paste' option, and will then show the value of that option. The second
" line allows you to press F2 when in insert mode, to toggle 'paste' on and
" off. The third line enables displaying whether 'paste' is turned on in
" insert mode. 

" Real programmers don't use TABs but spaces
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set autoindent            " the indent of the new line will match that of the previous line
set nowrap                " don't wrap text
 
" Make searching better
" set nohlsearch          " Don't continue to highlight searched phrases.
set ignorecase            " case insensitive searching (unless specified)
set smartcase 
set hlsearch              " highlight all search matches
set incsearch             " But do highlight as you type your search.

" Press ,, to turn off highlighting and clear any message already displayed.
nnoremap <silent> <leader>, :nohlsearch<CR>


" Visual 
" syntax on               " Turn on color syntax highlighting
set t_Co=256              " enable 256-color mode.
set number                " show line numbers
set showmatch             " Show matching brackets.
set laststatus=2          " last window always has a statusline
"colorscheme desert        " set colorscheme

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
filetype off              " filetype detection[OFF] plugin[unchanged] indent[unchanged]
syntax enable             " enable syntax highlighting (previously syntax on).

" Useful settings
set history=700           " Number of things to remember in history.
set undolevels=700

" scriptencoding utf-8            " utf-8 all the way
" set encoding=utf-8

" Easier moving between tabs
map <Leader>p <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/


" Scripts and Plugins
set rtp+=~/.vim/bundle/Vundle.vim/" set the runtime path to include 
call vundle#begin()                " Vundle and initialize


Plugin 'VundleVim/Vundle.vim'  " let Vundle manage Vundle 
" Plugin 'PyChimp'		" Colorscheme specifically for Python

" Plugin 'klen/python-mode'    " Programming  Python


" ============================================================================
" Python IDE Plugin Setup
"
" ============================================================================




" All of your Plugins must be added before the following line
call vundle#end()                " required


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



