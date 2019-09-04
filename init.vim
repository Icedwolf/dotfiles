call plug#begin()

	Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'junegunn/fzf'

	" UI related
	Plug 'chriskempson/base16-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Better Visual Guide
	Plug 'Yggdroot/indentLine'
	" Dracula
	Plug 'dracula/vim', {'as': 'dracula'}

	Plug 'terryma/vim-multiple-cursors'

	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/nerdtree'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'mattn/emmet-vim'
	Plug 'w0rp/ale'
	Plug 'airblade/vim-gitgutter'
	Plug 'mxw/vim-jsx'
	Plug 'pangloss/vim-javascript'

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

map <C-o> :NERDTreeToggle<cr>

"Theme
syntax on
color dracula
set termguicolors

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

set breakindent
set formatoptions=l
set lbr
