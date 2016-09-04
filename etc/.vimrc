" Thomas Merkel <tm@core.io>
" This file is created from many other vim configs, i'm sorry that i couldn't
" tell any names who provided me with all the different config settings.

" Preamble {{{
set nocompatible
set runtimepath=${TM_HOME}/.vim,${VIMRUNTIME}

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=${TM_HOME}/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'vim-scripts/ack.vim'
Plugin 'vim-scripts/Clam'
Plugin 'vim-scripts/commentary.vim'
Plugin 'ompugao/ctrlp-locate'
Plugin 'vim-scripts/fugitive.vim'
Plugin 'vim-scripts/vim-gitgutter'
Plugin 'vim-scripts/gnupg.vim'
Plugin 'vim-scripts/Gundo'
Plugin 'vim-scripts/linediff.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'
Plugin 'tpope/vim-repeat'
Plugin 'saltstack/salt-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/surround.vim'
Plugin 'vim-scripts/Syntastic'
Plugin 'godlygeek/tabular'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" }}}

" Sources other config files {{{

runtime! configs/basic.vim
runtime! configs/abbreviations.vim
runtime! configs/mappings.vim
runtime! configs/plugins.vim
runtime! configs/gui.vim

" }}}
