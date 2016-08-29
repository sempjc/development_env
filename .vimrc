set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'


 " plugin on GitHub repo
 Plugin 'scrooloose/nerdtree'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required



 filetype plugin indent on    " required


 " To ignore plugin indent changes, instead use:
 filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cac0he
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line






"*******************************************************************
"*                             My setting
"*
"
"
"
"
" switch syntax highlighting on, when the terminal has colors
syntax on

" use vim, not vi api
set nocompatible

" no backup files
set nobackup

" no write backup
set nowritebackup

" no swap file
set noswapfile

" command history
set history=100

" always show cursor
set ruler

" show incomplete commands
set showcmd

" incremental searching
set incsearch

" highlight search
set hlsearch

" ignore case in search
set smartcase

" clear search buffer
:nnoremap § :nohlsearch<cr>

" make sure undo history is kept for files in buffer.
set hidden

" turn indentation on
filetype indent on

" enable filetype plugins
filetype plugin on

" disable folding because it is evil
set nofoldenable

" turn word wrap off
set nowrap

" scroll with more context
set scrolloff=10

" allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" convert tabs to spaces
set expandtab

" set tab size
set tabstop=4

" the number of spaces inserted for a tab
set shiftwidth=4

" turn on line numbers
set number

" highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" always show status bar
set laststatus=2

" set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" hide the toolbar
set guioptions-=T

" utf encoding
set encoding=utf-8

" autoload files that have changed outside of vim
set autoread

" jump to last cursor
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" set-up ctrlp to include hidden files in its search
let g:ctrlp_show_hidden=1

" disable ctrlp's feature where it tries to intelligently work out the current working directory to search within
let g:ctrlp_working_path_mode=0

" don't let ctrlp take over the screen!
let g:ctrlp_max_height=30

" lets make sure we don't show these files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store

" allows us to more easily work with markdown files
"Bundle 'tpope/vim-markdown'

" allows us to comment/uncomment lines and content
"Bundle 'tpope/vim-commentary.git'

" remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"Set backtick as Esc
:imap ` <Esc>

"Color Scheme
colorscheme elflord

