"CloseTag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.tsx'

"NerdTree
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

" use jj to escape insert mode.
let g:better_escape_shortcut = 'jj'
let g:better_escape_interval = 225
