" Thomas Merkel <tm@core.io>
" This file is created from many other vim configs, i'm sorry that i couldn't
" tell any names who provided me with all the different config settings.

" Preamble {{{
set nocompatible
set runtimepath=${TM_HOME}/.vim,${VIMRUNTIME}

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
