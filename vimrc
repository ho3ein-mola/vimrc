set nocompatible
let g:airline#extensions#tabline#enabled = 1
syntax on
let g:airline_theme='badwolf'
set nocompatible
let g:airline#extensions#tabline#enabled = 1
syntax on
"Color Highligher for plugin Colorizer
let g:colorizer_auto_color =1
let g:colorizer_auto_filetype = 'css,html,php,blade.php'
" Change shell
set shell=bash                  " Vim expects a POSIX-compliant shell, which Fish (my default shell) is not
" Remove help in nerd tree
let NERDTreeMinimalUI=1 
" Color Scheme
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
set background=dark
" Change the mapleader from \ to ,
let mapleader=","
let maplocalleader="\\"

" Editing behaviour {{{
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to
                                "    shiftwidth, not tabstop
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set virtualedit=all             " allow the cursor to go in to "invalid" places
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set gdefault                    " search/replace "globally" (on a line) by default
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

set nolist                      " don't show invisible characters by default,
                                " but it is enabled for some file types (see later)
set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-h> :tabprev
nnoremap <C-l> :tabnext
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does)
set fileformats="unix,dos,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines
                                "    with 1-letter words (looks stupid)

set nrformats=                  " make <C-a> and <C-x> play well with
                                "    zero-padded numbers (i.e. don't consider
                                "    them octal or hex)

set shortmess+=I                " hide the launch screen
set clipboard=unnamed           " normal OS clipboard interaction
set autoread                    " automatically reload files changed outside of Vim

" Toggle show/hide invisible chars
nnoremap <leader>I :set list!<cr>

" Toggle line numbers
nnoremap <F2> :setlocal number!<cr>
 
"Editor layout {{{
set termencoding=utf-8
set encoding=utf-8
set lazyredraw                  " don't update the display while executing macros
set laststatus=2                " tell VIM to always put a status line in, even
                                "    if there is only one window
set cmdheight=2                 " use a status bar that is 2 rows high
" }}}

set title

"Blade Support
let g:blade_custom_directives = ['datetime', 'javascript']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"plugin section
call plug#begin('~/.vim/plugged')
Plug 'hzchirs/vim-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'jwalton512/vim-blade'
Plug 'craigemery/vim-autotag'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'https://github.com/ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
call plug#end()
