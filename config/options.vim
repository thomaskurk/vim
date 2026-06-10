" XDG compliant vimrc
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')

set backupdir=$XDG_STATE_HOME/vim/backup
set directory=$XDG_STATE_HOME/vim/swap
set undodir=$XDG_STATE_HOME/vim/undo
set viewdir=$XDG_STATE_HOME/vim/view

set viminfofile=$XDG_STATE_HOME/vim/viminfo

set guicursor=n-v-c:block,i-ci-ve:ver25

set number
set relativenumber

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent

set backspace=indent,eol,start

syntax on
