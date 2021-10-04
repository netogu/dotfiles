" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Git Integration 
    Plug 'tpope/vim-fugitive'
    "Plug 'vim-scripts/indentpython.vim'
    " Comment Management 
    Plug 'tpope/vim-commentary'
    " Theme : One Dark
    Plug 'joshdick/onedark.vim'
    " Python Context Enhancer
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    " Code Folding
    " Plug 'tmhedberg/SimpylFold'
    " Stable version of coc
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Splash Screen
    Plug 'mhinz/vim-startify'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    " Conda Environments
    Plug 'cjrh/vim-conda'
    "CCLS Language Server
    " Plug 'Maxattax97/coc-ccls' 
    " IPython Integration
    " Plug 'ivanov/vim-ipython'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'frazrepo/vim-rainbow'
    Plug 'ftorres16/spice.vim'
call plug#end()

" Rainbow Parenthesis Config
au FileType c,cpp,objc,objcpp,py call rainbow#load()
