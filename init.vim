call plug#begin()
Plug 'kien/rainbow_parentheses.vim'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'wakatime/vim-wakatime'
Plug 'chrisbra/NrrwRgn'
Plug 'sbdchd/neoformat'
Plug 'fszymanski/fzf-gitignore'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
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
Plug 'tmhedberg/matchit'
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php', '*'] }
Plug 'sainnhe/tmux-fzf'
Plug 'junegunn/vim-easy-align'
Plug 'ayu-theme/ayu-vim'



"new
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'machakann/vim-swap'
Plug 'machakann/vim-highlightedyank'
Plug 'chaoren/vim-wordmotion'
Plug 'wellle/targets.vim'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'nishigori/vim-php-dictionary', {'for': 'php'}
Plug 'lumiliet/vim-twig', {'for': 'twig'} " twig
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'} " php refactoring options
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'} " php doc autocompletion
call plug#end()

let g:deoplete#enable_at_startup=1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

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

let ayucolor="mirage"
set termguicolors
set background=dark
syntax on
colorscheme ayu

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

set grepprg=rg\ -H\ --no-heading\ --smart-case\ --vimgrep
set grepformat=%f:%l:%c:%m
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf
set timeoutlen=1000 ttimeoutlen=0
"default clipboard
set clipboard=unnamedplus
