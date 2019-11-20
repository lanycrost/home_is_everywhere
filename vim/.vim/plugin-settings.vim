syntax enable
colorscheme tender

set laststatus=2

if !has('gui_running')
   set t_Co=256
endif

set noshowmode

let g:lightline = {
      \ 'colorscheme': 'tenderplus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'codestats' ] ]
      \ },
      \ 'component_function': {
      \   'codestats': 'CodeStatsXp'
      \ },
      \ }

set number

filetype plugin indent on    " requiredet enc=utf8

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
