" Vim color file
" Maintainer:	Thorsten Maerz <info@netztorte.de>
" Last Change:	2006 Dec 07
" grey on black
" optimized for TFT panels

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "torte"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

">>
">> GUI
">>
highlight Search     guifg=Black	guibg=Red	gui=bold
highlight Visual     guifg=#404040			gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=#80a0ff
highlight Statement  guifg=Yellow			gui=NONE
highlight Type						gui=NONE
" Spell
highlight SpellBad	guifg=NONE	guibg=NONE	gui=underline
highlight SpellCap	guifg=NONE	guibg=NONE	gui=underline
highlight SpellRare	guifg=NONE	guibg=NONE	gui=underline
highlight SpellLocal	guifg=NONE	guibg=NONE	gui=underline
" Status
highlight StatusLineNC	guifg=grey	guibg=black	gui=NONE
highlight StatusLine	guifg=white	guibg=black	gui=bold,reverse
highlight Folded	guibg=black	guifg=cyan

">>
">> Console
">>
highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=blue	ctermbg=white
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Type						cterm=NONE
" Spell
highlight SpellBad	ctermfg=NONE	ctermbg=NONE	cterm=underline
highlight SpellCap	ctermfg=NONE	ctermbg=NONE	cterm=underline
highlight SpellRare	ctermfg=NONE	ctermbg=NONE	cterm=underline
highlight SpellLocal	ctermfg=NONE	ctermbg=NONE	cterm=underline
" Status
highlight StatusLineNC	ctermfg=grey	ctermbg=black	cterm=NONE
highlight StatusLine	ctermfg=white	ctermbg=black	cterm=bold,reverse
highlight Folded	ctermbg=black	ctermfg=cyan
" Diff
highlight DiffAdd       cterm=none      ctermfg=White   ctermbg=Black
highlight DiffDelete    cterm=none      ctermfg=Black   ctermbg=Red 
highlight DiffChange    cterm=none      ctermfg=Black   ctermbg=Yellow
highlight DiffText      cterm=none      ctermfg=Black   ctermbg=Magenta


" vim: ts=8
