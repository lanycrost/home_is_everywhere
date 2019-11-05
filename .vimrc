filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


" All of your Plugins must be added before the following line
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'elixir-editors/vim-elixir'
Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'
Plugin 'slashmili/alchemist.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'ap/vim-css-color'
Plugin 'fatih/vim-go'

call vundle#end()            " required

set laststatus=2

set noshowmode

if !has('gui_running')
  set t_Co=256
endif

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender

" REQUIRED: set your API key
let g:codestats_api_key = '{CODESTATS_API_KEY}'

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
