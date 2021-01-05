set number
syntax enable
syntax on
set cursorline
set showmatch
set sw=4
set relativenumber
set noshowmode
set clipboard=unnamedplus

"Leader key
let mapleader=" "

call plug#begin('~/.config/nvim/plugged')

"Temas
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'patstockwell/vim-monokai-tasty'

"Syntax
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'

"IDE
Plug 'easymotion/vim-easymotion'
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
Plug 'vim-scripts/taglist.vim'
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

"Problems
"Plug 'frazrepo/vim-rainbow'

call plug#end()

"Themes
    "Gruvbox
    "colorscheme gruvbox
    "let g:gruvbox_contrast_dark = "hard"

    "One Half
    "colorscheme onehalfdark

    "Monokai Tasty
    colorscheme vim-monokai-tasty

"Syntax
let g:python_highlight_all = 1

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

"NerdTree
nmap <Leader>t :w<Enter>:NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"VimRainbow
"Problem with syntax of html
"let g:rainbow_active = 1

"Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ }

"Fzf general code finder in current file mapping
nmap <Leader>f :BLines<CR>

"GoTo definition
nmap gd :w<Enter> <Plug>(coc-definition)

"Leader key
let mapleader=" "

"Tag List
nmap <Leader>l :Tlist<CR>
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

augroup FileTypeSpecificAutocommands
    autocmd FileType cpp set tabstop=4 shiftwidth=4
    autocmd FileType c set tabstop=4 shiftwidth=4
augroup END

"Run C++ Code
nnoremap <C-g> :w <Enter> :!g++ %<Enter> :!./a.out<Enter>

"ShortCuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>zz :wq<Enter>
nmap <Leader>a A
nmap <Leader>i I
nmap <Leader>gg G
nmap <Leader>5 %
nmap <Leader>r :w <Enter> :Files <Enter>
nmap <Leader>n :RnvimrToggle <Enter>
nmap <TAB> :w <Enter> :tabn <Enter>
nmap <Leader>v V
map ff $
imap jj <Esc>
imap ñ <down>
imap ´ <End>
imap f<Enter> <End>
imap -- _
imap 33 #
imap 44 $
imap 77 /
imap 88 (
imap 99 )
imap 00 =
imap << >
