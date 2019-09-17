call plug#begin()
Plug 'kien/rainbow_parentheses.vim'
Plug 'wakatime/vim-wakatime'
Plug 'sbdchd/neoformat'
Plug 'fszymanski/fzf-gitignore'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'phpactor/phpactor'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary' 
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'slashmili/alchemist.vim'
Plug 'SevereOverfl0w/async-clj-omni'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
  " Deoplete
  let g:deoplete#enable_at_startup=1
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
  inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
Plug 'maxbrunsfeld/vim-yankstack'

call plug#end()

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"clear highlighted
map <esc> :noh<cr>

"enable smartcase (only sensitive if contains upper and lower case)
set ignorecase
set smartcase

"let leader key be space
let mapleader="\<SPACE>"

"map FZF file search on spc f
map <leader>f :FZF<cr>
map <leader>F :FZF~<cr>
map <leader><C-f> :Ag<cr>
map <C-o> :NERDTreeToggle<cr>

"Theme
syntax on
set termguicolors
set breakindent
set formatoptions=l
set lbr
set number
let g:airline_theme='dracula'
" Sane tabs
" - Two spaces wide
set tabstop=2
set softtabstop=2
" - Expand them all
set expandtab
" - Indent by 2 spaces by default
set shiftwidth=2
set encoding=utf-8
set cursorline
set title
color dracula
