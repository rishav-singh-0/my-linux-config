
"  _       _ _         _
" (_)_ __ (_) |___   _(_)_ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|


" General Settings
source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config.vim
" source $HOME/.config/nvim/general/settings.vim
" source $HOME/.config/nvim/general/functions.vim
" source $HOME/.config/nvim/keys/mappings.vim

" if exists('g:vscode')
"   " VS Code extension
"   source $HOME/.config/nvim/vscode/settings.vim
"   source $HOME/.config/nvim/plug-config/easymotion.vim
"   source $HOME/.config/nvim/plug-config/highlightyank.vim
" else
"   " Themes
"   " source $HOME/.config/nvim/themes/syntax.vim
"   " source $HOME/.config/nvim/themes/nvcode.vim

" endif
" source $HOME/.config/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif
