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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/taglist.vim'

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

"Autocompletion
    " Disable autocompletion (using deoplete instead)
    let g:jedi#completions_enabled = 0
    " needed so deoplete can auto select the first suggestion
    set completeopt+=noinsert
    " comment this line to enable autocompletion preview window
    " (displays documentation related to the selected completion option)
    " disabled by default because preview makes the window flicker
    set completeopt-=preview
    " Use deoplete.
    let g:deoplete#enable_at_startup = 1
    call deoplete#custom#option({
    \   'ignore_case': v:true,
    \   'smart_case': v:true,
    \})
    " complete with words from any opened file
    let g:context_filetype#same_filetypes = {}
    let g:context_filetype#same_filetypes._ = '_'
    " Error supouse
    let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

"Tag List
nmap <Leader>l :Tlist<CR>
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"ShortCuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qw :wq<Enter>
nmap <Leader>ep :!python
nmap <Leader>a A
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
