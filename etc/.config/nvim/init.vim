" Preamble --------------------------------------------------------------- {{{
set runtimepath+=$TM_HOME/.config/nvim
set runtimepath+=$TM_HOME/.local/share/nvim/site

" set the runtime path to include vim-plug and initialize
call plug#begin($TM_HOME.'/.local/share/nvim/plugged')

" let use vim-plug because it's so much faster
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vimwiki/vimwiki'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call plug#end()
" }}}


" Basic options ---------------------------------------------------------- {{{

" Under default settings, making changes and then opening a new file will 
" display E37: No write since last change (add ! to override). With :set
" hidden, opening a new file when the current buffer has unsaved changes causes
" files to be hidden instead of closed The unsaved changes can still be
" accessed by typing :ls and then :b[N], where [N] is the number of a buffer.
set hidden

" Relative line numbers are helpful when moving around in normal mode, but
" absolute line numbers are more suited for insert mode. When the buffer
" doesn’t have focus, it’d also be more useful to show absolute line numbers.
" For example, when running tests from a separate terminal split, it’d make
" more sense to be able to see which test is on which absolute line number.
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" SHORTCUT: ctrl+l
nnoremap <c-l> :set number! relativenumber!<CR>

" Make sure vim returns to the same line when you reopen a file.
augroup line_return
  au!
  au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \     execute 'normal! g`"zvzz' |
  \ endif
augroup END

" If 'list' is on, whitespace characters are made visible. Also show tabs and
" trailing spaces.
set list
set lcs=tab:»·
set lcs+=trail:·
set lcs+=precedes:«
set lcs+=extends:»
set lcs+=nbsp:·

" This will get Vim to wrap existing text as desired. wrap tells Vim to word
" wrap visually (as opposed to changing the text in the buffer), and linebreak
" tells Vim to only wrap at a character in the breakat option.
set linebreak
set showbreak=↪

" Controls the wrap width you would like to use.
set textwidth=79

" Controls whether or not automatic text wrapping is enabled, depending on
" whether or not the t flag is set.
set formatoptions-=t

" Screen coloums that are highlighted with ColorColumn hl-ColorColumn. Use
" textwidth+1.
set colorcolumn=+1

" }}}

set background=dark
colorscheme gruvbox
highlight Normal ctermbg=None


set title

" Sources other config files --------------------------------------------- {{{
runtime! vimwiki.vim
runtime! nerdtree.vim
" }}}
