" Thomas Merkel <tm@core.io>
" This file is created from many other vim configs, i'm sorry that i couldn't
" tell any names who provided me with all the different config settings.

" Preamble {{{
set nocompatible
set runtimepath=${TM_HOME}/.vim,${VIMRUNTIME}

filetype off

" set the runtime path to include vim-plug and initialize
call plug#begin($TM_HOME."/.vim/bundle/")

" let use vim-plug because it's so much faster
Plug 'VundleVim/Vundle.vim'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'vim-scripts/ack.vim'
Plug 'vim-scripts/Clam'
Plug 'vim-scripts/commentary.vim'
Plug 'ompugao/ctrlp-locate'
Plug 'vim-scripts/fugitive.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/gnupg.vim'
Plug 'vim-scripts/Gundo'
Plug 'vim-scripts/linediff.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'saltstack/salt-vim'
Plug 'ervandew/supertab'
Plug 'vim-scripts/surround.vim'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'vim-scripts/YankRing.vim'
Plug 'Yggdroot/indentLine'
Plug 'davidhalter/jedi-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call plug#end()
" }}}

" Sources other config files {{{

runtime! configs/basic.vim
runtime! configs/abbreviations.vim
runtime! configs/mappings.vim
runtime! configs/plugins.vim
runtime! configs/gui.vim

" }}}
