" Basics {
  set nocompatible " explicitly get out of vi-compatible mode
  set noexrc " don't use local version of .(g)vimrc, .exrc
 " set background=dark " we plan to use a dark background

  syntax on
  colo elflord
" }

" General {
  filetype plugin indent on " load filetype plugins/indent settings
  set fileformats=unix,dos,mac " support all three, in this order
"  set mouse=a " use mouse everywhere
  set noerrorbells " don't make noise
  set whichwrap=b,s,<,>,[,]
  set wildmenu " turn on command line completion wild style
  " ignore these list file extensions
  set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                 \*.jpg,*.gif,*.png
  set wildmode=list:longest " turn on wild mode huge list
" }

" Vim UI {
"  set cursorcolumn " highlight the current column
  set cursorline " highlight current line
  set incsearch " BUT do highlight as you type you
                 " search phrase
  set laststatus=2 " always show the status line
  set lazyredraw " do not redraw while running macros
  set linespace=0 " don't insert any extra pixel lines
                  " betweens rows
  "set list " we do what to show tabs, to ensure we get them
           " out of my files
  "set listchars=tab:>-,trail:- " show tabs and trailing
  set matchtime=5 " how many tenths of a second to blink
                  " matching brackets for
  "set nohlsearch " do not highlight searched for phrases
  set nostartofline " leave my cursor where it was
  set novisualbell " don't blink
  set number " turn on line numbers
  set numberwidth=5 " We are good up to 99999 lines
  set report=0 " tell us when anything is changed via :...
  set ruler " Always show current positions along the bottom
  set scrolloff=10 " Keep 10 lines (top/bottom) for scope
  set shortmess=aOstT " shortens messages to avoid
                      " 'press a key' prompt
  set showcmd " show the command being typed
  set showmatch " show matching brackets
  set sidescrolloff=10 " Keep 5 lines at the size
  set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
  "              | | | | |  |   |      |  |     |    |
  "              | | | | |  |   |      |  |     |    + current
  "              | | | | |  |   |      |  |     |       column
  "              | | | | |  |   |      |  |     +-- current line
  "              | | | | |  |   |      |  +-- current % into file
  "              | | | | |  |   |      +-- current syntax in
  "              | | | | |  |   |          square brackets
  "              | | | | |  |   +-- current fileformat
  "              | | | | |  +-- number of lines
  "              | | | | +-- preview flag in square brackets
  "              | | | +-- help flag in square brackets
  "              | | +-- readonly flag in square brackets
  "              | +-- rodified flag in square brackets
  "              +-- full path to file in the buffer
" }

" Text Formatting/Layout {
  set completeopt= " don't use a pop up menu for completions
  set expandtab " no real tabs please!
  set formatoptions=rq " Automatically insert comment leader on return,
                       " and let gq format comments
  set ignorecase " case insensitive by default
  set infercase " case inferred by default
  set nowrap " do not wrap line
  set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
  set smartcase " if there are caps, go case-sensitive
  set shiftwidth=4 " auto-indent amount when using cindent,
                   " >>, << and stuff like that
  set softtabstop=4 " when hitting tab or backspace, how many spaces
                    "should a tab be (see expandtab)
  set tabstop=4 " real tabs should be 8, and they will show with
                    " set list on
 " }

" Tab related
set autoindent
set smartindent

" GUI Settings {
if has("gui_running")
  " Basics {
      colorscheme metacosm " my color scheme (only works in GUI)
      set columns=180 " perfect size for me
      set guifont=Consolas:h10 " My favorite font
      set guioptions=ce 
      "              ||
      "              |+-- use simple dialogs rather than pop-ups
      "              +  use GUI tabs, not console style tabs
      set lines=55 " perfect size for me
      set mousehide " hide the mouse cursor when typing
  " }

  " Font Switching Binds {
      map <F8> <ESC>:set guifont=Consolas:h8<CR>
      map <F9> <ESC>:set guifont=Consolas:h10<CR>
      map <F10> <ESC>:set guifont=Consolas:h12<CR>
      map <F11> <ESC>:set guifont=Consolas:h16<CR>
      map <F12> <ESC>:set guifont=Consolas:h20<CR>
  " }
endif
" }
