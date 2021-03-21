set number
syntax enable
syntax on
set cursorline
set showmatch
set sw=4
set relativenumber
set noshowmode
set clipboard=unnamedplus

call plug#begin('~/.config/nvim/plugged')

"Temas
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'patstockwell/vim-monokai-tasty'

"Syntax
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'

"IDE
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
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

call plug#end()

"Themes
    "Gruvbox
    colorscheme gruvbox
    let g:gruvbox_contrast_dark = "hard"

    "One Half
    "colorscheme onehalfdark

    "Monokai Tasty
    "colorscheme vim-monokai-tasty

"Leader key
let mapleader=" "

"Syntax
let g:python_highlight_all = 1

"CloseTag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.tsx'

"Bracey
"let g:

"EasyMotion
map <Leader>s <Plug>LineLetters

"NerdTree
nmap <C-t> :w<Enter>:NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'kitestatus' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'kitestatus': 'kite#statusline'
      \ },
      \ }


"Fzf general code finder in current file mapping
nmap <C-f> :BLines<CR>

"GoTo definition
nmap gd :w<Enter> <Plug>(coc-definition)

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

augroup FileTypeSpecificAutocommands
    autocmd FileType cpp set tabstop=4 shiftwidth=4
    autocmd FileType c set tabstop=4 shiftwidth=4
augroup END

" use jj to escape insert mode.
let g:better_escape_shortcut = 'jj'
let g:better_escape_interval = 225

"Run C++ Code
nnoremap <Leader>g :w <Enter> :!g++ %<Enter> :!./a.out<Enter>

"Run JavaScript Code
"nnoremap <C-x> :w <Enter> :!node %<Enter>
nnoremap <C-x> :w <Enter> :!deno run %<Enter>

"Floaterm
let g:floaterm_keymap_toggle = '<C-y>'


"ShortCuts
nmap <C-w> :w<CR>
nmap <C-q> :q<CR>
nmap <C-s> :wq<CR>
nmap <Leader>a A
nmap <Leader>i I
nmap <C-g> G
map <C-e> <plug>NERDCommenterToggle
nmap <Leader>r :w <Enter> :Files <Enter>
nmap <Leader>n :RnvimrToggle <Enter>
nmap <TAB> :w <Enter> :tabn <Enter>
nmap <Leader>v V
map ff $
imap f<Enter> <End>
