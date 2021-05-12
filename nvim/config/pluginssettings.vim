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

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" use jj to escape insert mode.
let g:better_escape_shortcut = 'jj'
let g:better_escape_interval = 225

"Floaterm
let g:floaterm_keymap_toggle = '<C-y>'
