" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

    " OneDark theme
    Plug 'joshdick/onedark.vim'
    
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Git Integration 
    Plug 'tpope/vim-fugitive'
    "Plug 'vim-scripts/indentpython.vim'
    " Comment Management 
    Plug 'tpope/vim-commentary'
    
    " Python Context Enhancer
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    "
    " Splash Screen
    Plug 'mhinz/vim-startify'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Autocomplete & Language Server
    Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    
    " Fuzzy Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Changes root to opened file path
    Plug 'airblade/vim-rooter'
    
    " Adds different colors to brackets
    Plug 'frazrepo/vim-rainbow'

    " Shows CSS Colors
    Plug 'ap/vim-css-color'
    
    " Adds SPICE Syntax Highlighting
    Plug 'ftorres16/spice.vim'

    " Conda Virtual Envs
    " Plug 'cjrh/vim-conda' 

call plug#end()

" Rainbow Parenthesis Config
au FileType c,cpp,objc,objcpp,py call rainbow#load()
