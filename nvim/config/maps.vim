"Leader key
let mapleader=" "

"Maps
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

"Run C++ Code
nnoremap <Leader>g :w <Enter> :!g++ %<Enter> :!./a.out<Enter>

"Run JavaScript Code
"nnoremap <C-x> :w <Enter> :!node %<Enter>
nnoremap <C-x> :w <Enter> :!deno run %<Enter>

"Fzf general code finder in current file mapping
nmap <C-f> :BLines<CR>

"GoTo definition Coc
nmap gd :w<Enter> <Plug>(coc-definition)

"NerdTree
nmap <C-t> :w<Enter>:NERDTreeFind<CR>

"EasyMotion
map <Leader>s <Plug>LineLetters
