call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'     " Better Syntax Support
    Plug 'scrooloose/NERDTree'      " File Explorer
    Plug 'jiangmiao/auto-pairs'     " Auto pairs for '(' '[' '{'
    Plug 'tpope/vim-fugitive'       " Git Integration
    Plug 'vim-airline/vim-airline'                " Airline Bottom Bar
    Plug 'mhinz/vim-signify'        " Staryup Manager
    Plug 'tpope/vim-commentary'     " Add Comments
    Plug 'ParamagicDev/vim-medic_chalk'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}     " Multi-cursor

    " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}     " Ranger File Manager
    Plug 'rbgrouleff/bclose.vim'    " Dependency for Ranger Plugin
    Plug 'francoiscabrol/ranger.vim'
    Plug 'airblade/vim-rooter'      " Always look in project root dir
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'                 " Fuzzy Finder
    Plug 'liuchengxu/vim-which-key'         " Key Binding

call plug#end()
