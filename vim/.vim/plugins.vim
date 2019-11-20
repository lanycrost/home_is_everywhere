set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

call plug#begin('~/.vim/plugged')

" Programming
Plug 'shougo/deoplete.nvim', has('nvim') ? {} : { 'do': [ ':UpdateRemotePlugins', ':set runtimepath+=~/.vim/plugged/deoplete.nvim/' ]}
Plug 'ajh17/VimCompletesMe'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plugin 'elixir-editors/vim-elixir'
Plugin 'fatih/vim-go'

" features
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'
Plugin 'slashmili/alchemist.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'ap/vim-css-color'

call plug#end()
