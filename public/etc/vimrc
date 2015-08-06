" Thomas Merkel <tm@core.io>
" This file is created from many other vim configs, i'm sorry that i couldn't
" tell any names who provided me with all the different config settings.

" Preamble {{{
set nocompatible
set runtimepath=${TM_HOME}/.vim.d,${VIMRUNTIME}

if !empty($SUDO_USER) && empty($TM_HOME)
	set runtimepath=${HOME}/.vim.d,${VIMRUNTIME}
	" source $HOME/.vim.d/autoload/pathogen.vim
endif

filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" }}}

" Sources other config files {{{

runtime! configs/basic.vim
runtime! configs/abbreviations.vim
runtime! configs/mappings.vim
runtime! configs/plugins.vim
runtime! configs/gui.vim

" }}}
