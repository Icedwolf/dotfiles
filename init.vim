call plug#begin()
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'mmozuras/vim-whitespace'
Plug 'kien/rainbow_parentheses.vim'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'wakatime/vim-wakatime'
Plug 'chrisbra/NrrwRgn'
Plug 'fszymanski/fzf-gitignore'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim', {'options': '--no-preview'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'tmhedberg/matchit'
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php', '*'] }
Plug 'sainnhe/tmux-fzf'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-signify'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'machakann/vim-swap'
Plug 'machakann/vim-highlightedyank'
Plug 'chaoren/vim-wordmotion'
Plug 'wellle/targets.vim'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv', {'for': 'php'}
Plug 'sbdchd/neoformat'
call plug#end()
map <leader>g :GFiles<cr>
map <leader>f :FZF<cr>
map <leader>F :FZF~<cr>
map <leader><C-f> :Rg<cr>
map <C-o> :NERDTreeToggle<cr>
nmap <leader>o :NERDTreeFind<CR>
nnoremap <SPACE> <Nop>
map <Space> <Leader>

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
let g:python3_host_prog = '/usr/sbin/python3'

set termguicolors
syntax on
colorscheme palenight

map <esc> :noh<cr>

set ignorecase
set smartcase

let NERDTreeShowHidden=1
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

set noshowmode

set grepprg=rg\ -H\ --no-heading\ --smart-case\ --vimgrep
set grepformat=%f:%l:%c:%m
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf
set timeoutlen=5 ttimeoutlen=0
"default clipboard
set clipboard=unnamedplus

"autoformat on save
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
autocmd BufWritePre *.js Neoformat
"Paste in visual mode without copying
xnoremap p pgvy
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
