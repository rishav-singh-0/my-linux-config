
" --- Basic Config ---
set autoindent		                " New lines inherit the indentation of previous lines.
set expandtab		                " Convert tabs to spaces.
set shiftround		                " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4	                " When shifting, indent using four spaces.
set smarttab		                " Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4		                " Indent using four spaces.

set hlsearch                        " Enable search highlighting.
set ignorecase                      " Ignore case when searching.
set incsearch                       " Incremental search that shows partial matches.
set smartcase                       " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" set lazyredraw                      " Don’t update screen during macro and script execution.

" Text Rendering Options
" set display+=lastline             " Always try to show a paragraph’s last line.
" set encoding=utf-8                " Use an encoding that supports unicode.
set linebreak                       " Avoid wrapping a line in the middle of a word.
set scrolloff=1                     " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5                 " The number of screen columns to keep to the left and right of the cursor.
syntax enable                       " Enable syntax highlighting.
set wrap                            " Enable line wrapping.

" User Interface Options
set laststatus=2                    " Always display the status bar.
" set ruler                         " Always show cursor position.
set wildmenu                        " Display command line’s tab complete options as a menu.
" set tabpagemax=50                 " Maximum number of tab pages that can be opened from the command line.
" set cursorline                    " Highlight the line currently under cursor.
set number relativenumber           " Show line number on the current line and relative numbers on all other lines.
set noerrorbells                    " Disable beep on errors.
" set visualbell                    " Flash the screen instead of beeping on errors.
set mouse=a                         " Enable mouse for scrolling and resizing.
" set title                         " Set the window’s title, reflecting the file currently being edited.
set background=dark                 " Use colors that suit a dark background.

" set foldmethod=indent             " Fold based on indention levels.
" set foldnestmax=3                 " Only fold up to three nested levels.
" set nofoldenable                  " Disable folding by default.

set autoread                        " Automatically re-read files if unmodified inside Vim.
set backupdir=~/.cache/vim          " Directory to store backup files.
set dir=~/.cache/vim                " Directory to store swap files.
set history=1000

" Run programs
map <C-f5> :!g++ % -o %:r.out && %:p:h/%:r.out<CR>      " Run C/C++ Program


" Default Split at right no below
set splitbelow splitright

" Tab Navigation
map <silent> <C-t> :tabnew<CR>      " Open new Empty tab
map <silent> <C-w> :tabclose<CR>    " Close current tab
" map <silent> <C-Tab> :tabnext<CR>   " Navigate between tabs

" Clipboard
map <S-Insert> <C-V>                " Control shift v to paste from system clipboard
set clipboard=unnamedplus           " Set default clipboard to system clipboard
" requires gvim/neovim/vin-x11 installed
vnoremap <C-c> "+y                  " Control c in Visual mode to copy to system clipboard


autocmd BufWritePre * %s/\s\+$//e   " Automatically delete trailing white spaces on save



xnoremap K :move '<-2<CR>gv-gv      " move selected line above
xnoremap J :move '>+1<CR>gv-gv      " move selected line below

" nnoremap S <nop>
" nnoremap <C-s> :w<CR>

