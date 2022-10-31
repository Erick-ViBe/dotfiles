call plug#begin('~/.config/nvim/plugged')

"Temas
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'patstockwell/vim-monokai-tasty'

"Syntax
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'

"IDES
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'psliwka/vim-smoothie'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'turbio/bracey.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'jdhao/better-escape.vim'
Plug 'Jorengarenar/vim-MvVis'
Plug 'voldikss/vim-floaterm'
Plug 'skamsie/vim-lineletters'
Plug 'metakirby5/codi.vim'

"Plug 'lervag/vimtex'
"Plug 'Konfekt/FastFold'
"Plug 'matze/vim-tex-fold'

call plug#end()
