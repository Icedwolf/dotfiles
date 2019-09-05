call plug#begin()
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
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
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
  inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
  inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
Plug 'ctrlpvim/ctrlp.vim'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'phpactor/phpactor'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary' 
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
call plug#end()

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
color dracula
set termguicolors
set breakindent
set formatoptions=l
set lbr
set shiftwidth=2 expandtab
set number
let g:deoplete#enable_at_startup=1
