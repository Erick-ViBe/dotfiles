"Erick ViBe
"https://erickvibe.xyz/

set number
syntax enable
syntax on
set cursorline
set showmatch
set sw=4
set relativenumber
set noshowmode
set clipboard=unnamedplus
set mouse=
set nofixendofline

augroup FileTypeSpecificAutocommands
    autocmd FileType cpp set tabstop=4 shiftwidth=4
    autocmd FileType c set tabstop=4 shiftwidth=4
augroup END

"Syntax
"let g:python_highlight_all = 1

"Normal Vim Settings
runtime config/vimsettings.vim

"Plugins
runtime config/plugins.vim

"Themes
runtime config/themes.vim

"Maps
runtime config/maps.vim

"Plugins Settings
runtime config/pluginssettings.vim
