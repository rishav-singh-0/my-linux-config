
set autoindent		" New lines inherit the indentation of previous lines.
set expandtab		" Convert tabs to spaces.
set shiftround		" When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4	" When shifting, indent using four spaces.
set smarttab		" Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4		" Indent using four spaces.

set hlsearch        " Enable search highlighting.
set ignorecase      " Ignore case when searching.
set incsearch       " Incremental search that shows partial matches.
set smartcase       " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" set lazyredraw      " Don’t update screen during macro and script execution.

" Text Rendering Options
" set display+=lastline       " Always try to show a paragraph’s last line.
" set encoding=utf-8      " Use an encoding that supports unicode.
set linebreak       " Avoid wrapping a line in the middle of a word.
set scrolloff=1     " The number of screen lines to keep above and below the cursor.
" set sidescrolloff=5     " The number of screen columns to keep to the left and right of the cursor.
syntax enable       " Enable syntax highlighting.
set wrap        " Enable line wrapping.

" User Interface Options
set laststatus=2            " Always display the status bar.
" set ruler                   " Always show cursor position.
set wildmenu                " Display command line’s tab complete options as a menu.
" set tabpagemax=50           " Maximum number of tab pages that can be opened from the command line.
" set cursorline              " Highlight the line currently under cursor.
set number                  " Show line numbers on the sidebar.
set relativenumber          " Show line number on the current line and relative numbers on all other lines.
set noerrorbells    " Disable beep on errors.
" set visualbell      " Flash the screen instead of beeping on errors.
" set mouse=a         " Enable mouse for scrolling and resizing.
" set title           " Set the window’s title, reflecting the file currently being edited.
set background=dark     " Use colors that suit a dark background.

set foldmethod=indent   " Fold based on indention levels.
set foldnestmax=3       " Only fold up to three nested levels.
" set nofoldenable        " Disable folding by default.

set autoread        " Automatically re-read files if unmodified inside Vim.
set backupdir=~/.cache/vim      " Directory to store backup files.
set dir=~/.cache/vim        " Directory to store swap files.
set history=1000        



" VIM-PLUG
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-fugitive'       " For Git
" Plug 'airblade/vim-gitgutter'   " Git changes
Plug 'preservim/NERDTree'       " NerdTree for file browsing
Plug 'tpope/vim-surround'       " Bracket completion
" Plug 'scrooloose/syntastic'     " syntax checking
Plug 'vim-airline/vim-airline'  " Airline Bottom Bar
Plug 'vim-airline/vim-airline-themes'
" AutoComplete
" Plug 'davidhalter/jedi-vim'      
" Plug 'zxqfl/tabnine-vim'
Plug 'tpope/vim-commentary'     " For Commenting

" Theme
Plug 'bignimbus/pop-punk.vim'   
Plug 'ParamagicDev/vim-medic_chalk'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}     " Multi-cursor

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" colorscheme 'pop-punk'
colorscheme medic_chalk

" pop-punk ANSI colors for vim terminal
" let g:terminal_ansi_colors = pop_punk#AnsiColors()

" let g:airline_theme = 'pop_punk'

" just for fun
let g:airline_section_c = '☯ ⚡ %F'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_powerline_fonts = 1



