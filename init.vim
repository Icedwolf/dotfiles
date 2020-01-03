call plug#begin()
Plug 'kien/rainbow_parentheses.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'wakatime/vim-wakatime'
Plug 'chrisbra/NrrwRgn'
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
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary' 
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup=1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php'] }

call plug#end()

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

set termguicolors
set background=dark
syntax on
colorscheme dracula

map <esc> :noh<cr>

set ignorecase
set smartcase

let mapleader="\<SPACE>"

map <leader>f :FZF<cr>
map <leader>F :FZF~<cr>
map <leader><C-f> :Rg<cr>
map <C-o> :NERDTreeToggle<cr>
nmap <leader>o :NERDTreeFind<CR>

set breakindent
set formatoptions=l
set lbr

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set tabstop=2
set softtabstop=2

set expandtab

set shiftwidth=2
set encoding=utf-8
set cursorline
set title

let g:airline_theme='dracula'

set noshowmode
