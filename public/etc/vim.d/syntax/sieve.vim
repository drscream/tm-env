" Vim syntax file
" Language:	SIEVE
" Maintainer:	Antonio Puchol Climent <frontis at europe.com>
" Maintainer:	Michael M. Tung <michael.tung at uni-mainz.de>
" Last Change:	Thu Feb 19 18:10:44 CET 2004

" The sieve syntax file is based on 'Sieve: A Mail Filtering
" Language" (RFC3028) by The Internet Society 2001.
" This syntax file is still in development. Please send suggestions
" to the maintainer.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" sieve keywords
syn keyword sieveStatement	false fileinto not size true
syn keyword sieveStatement	allof anyof exists 
syn keyword sieveIdentifier	header address envelope 
syn keyword sieveStatement	keep discard redirect reject
syn keyword sieveStatement	require stop
syn keyword sieveConditional	if elseif else frontis

" pattern matching for comments
syn match   sieveComment	"^\ *\#.*$"
syn match   sieveComment        "\#.*"
syn region  sieveComment        start="/\*" end="\*/"

" pattern matching for tags
syn match   sieveTag		"^\=\:[a-zA-z][a-zA-Z0-9]*\>"

" pattern matching for strings
syn region  sieveString		start=+"+  end=+"+

" pattern matching for number
syn match   sieveNumber		"\<\d\+\>"
syn match   sieveNumber		"\d\+[K|M|G]" contains=Number

" hi User Labels
syn sync ccomment sieveComment minlines=10

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_sieve_syn_inits")
  if version < 508
    let did_sieve_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sieveConditional	Conditional
  HiLink sieveNumber		Number
  HiLink sieveStatement		Statement
  HiLink sieveComment		Comment
  HiLink sieveTag		PreProc
  HiLink sieveString		String
  HiLink sieveIdentifier	Identifier

  if !exists("sieve_enhanced_color")
    HiLink sieveHeaderStatement	Statement
  else
  " enhanced color mode
    HiLink sieveHeaderStatement	HeaderStatement
    " dark and a light background for local types
    if &background == "dark"
      hi HeaderStatement term=underline ctermfg=LightGreen guifg=LightGreen gui=bold
    else
      hi HeaderStatement term=underline ctermfg=DarkGreen guifg=SeaGreen gui=bold
    endif
    " change slightly the default for dark gvim
    if has("gui_running") && &background == "dark"
      hi Conditional guifg=LightBlue gui=bold
      hi Statement guifg=LightYellow
    endif
  endif

  delcommand HiLink
endif

  let b:current_syntax = "sieve"

" vim: ts=8
