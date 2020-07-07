set number
syntax enable
set cursorline
set showmatch
set sw=4
set relativenumber
set noshowmode

"Leader key
let mapleader=" "

call plug#begin('~/.config/nvim/plugged')

"Temas
Plug 'morhetz/gruvbox'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/taglist.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"Gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

"NerdTree
nmap <Leader>t :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

"VimRainbow
let g:rainbow_active = 1

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

"Leader key
let mapleader=" "

"Tag List
nmap <Leader>l :Tlist<CR>
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"ShortCuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>zz :wq<Enter>
nmap <Leader>ep :!python
nmap <Leader>a A
nmap <Leader>i I
nmap <Leader>gg G
nmap <Leader>5 %
nmap ff $
imap jj <Esc>
imap ñ <down>
imap -- _
imap 22 "
imap 77 /
imap 88 (
imap 99 )
imap 00 =
imap .. :
imap {{ [
imap }} ]
