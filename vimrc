" ---------------------------------------------------------------------
"
" richardtin
" Project URL: https://github.com/richardtin/vimrc
"
" ---------------------------------------------------------------------

"
" Environment
"
" pathogen (must be placed in the beginning of this file)
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"
" General
"
set nocompatible             " not compatible with the old-fashion vi mode
set history=100              " store 100 lines of history

"
" User Interface
"
set showmode                 " display the current mode
set ruler                    " always show current position
set scrolloff=7              " set scroll offset to 7 lines above/below cursor
set autoread                 " auto read when file is changed from outside
"set nu                       " display line numbers
set clipboard=unnamed        " yank to the system register (*) by default
set hid                      " hide abandon buffers in order to not lose undo history
set showmatch                " cursor shows matching ) and }
set incsearch                " incremental search
set ignorecase               " ignore case when searching
set smartcase                " ignore case if search pattern is all lowercase, case-sensitive otherwise
set wildchar=<TAB>           " start wild expansion in the command line using <TAB>
set wildmenu                 " wild char completion menu

filetype on                  " enable filetype detection
filetype indent on           " enable filetype-specific indenting
filetype plugin on           " enable filetype-specific plugins

" auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"
" Formatting
"
set autoindent               " auto indentation
set copyindent               " copy the previous indentation on autoindenting
set smarttab                 " insert tabs on line start according to context
set expandtab                " replace <TAB> with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType Makefile set noexpandtab
autocmd FileType javascript,jade set tabstop=2|set softtabstop=2|set shiftwidth=2

"
" Colors and Fonts
"
syntax on                    " enable syntax highlighting
set hlsearch                 " highlight search results
" highlight current line in the current window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set background=dark          " set background dark
set t_Co=256                 " 256 color mode

if has("gui_running")
  colorscheme moria
else
  colorscheme grb256
endif

"
" Formatting
"
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>         " toggle paste mode
set ffs=unix,dos,mac         " use unix as standard file format

"
" Files
"
set nobackup                 " no *~ backup files
set nowb
set noswapfile

"
" Encoding
"
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp950,cp936  " cp950: big5, cp936: gb
