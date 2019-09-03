call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf'
call plug#end()
map <esc> :noh<cr>
set ignorecase
set smartcase
let mapleader="\<SPACE>"
map <leader>f :FZF<cr>
map <leader>F :FZF~<cr>
