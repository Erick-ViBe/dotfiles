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
nmap <TAB> :w <Enter> :tabn <Enter>
nmap <Leader>v V
map ff $
imap f<Enter> <End>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"

"Run C++ Code
"nnoremap <Leader>g :w <Enter> :!g++ %<Enter> :!./a.out<Enter>

"Run JavaScript Code
"nnoremap <C-x> :w <Enter> :!node %<Enter>
"nnoremap <C-x> :w <Enter> :!deno run %<Enter>

"Run Python Code
nnoremap <C-p> <Esc>:w<CR>:!clear;python %<CR>

"Fzf general code finder in current file mapping
nmap <C-f> :BLines<CR>

"Fzf finder in all files
nmap <Leader>f :FZF<CR>!^node_modules 

"Fzf grep in current directory
nmap <Leader>g :Rg<CR>

"GoTo definition Coc
nmap gd :w<Enter> <Plug>(coc-definition)
nmap gr :w<Enter> <Plug>(coc-references)
nmap gi :w<Enter> <Plug>(coc-implementation)

"NerdTree
nmap <C-t> :w<Enter>:NERDTreeFind<CR>

"EasyMotion
map <Leader>s <Plug>LineLetters
map s <Plug>(easymotion-s2)

"Camel Case Motion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"Snip Run
vmap r <Plug>SnipRun

"Harpoon
nmap <Leader>ma :lua require("harpoon.mark").add_file()<CR>
nmap <Leader>mm :lua require("harpoon.ui").toggle_quick_menu()<CR>
