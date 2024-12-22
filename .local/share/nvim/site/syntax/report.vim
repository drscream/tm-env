" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

"runtime! syntax/markdown.vim

syn match reportDate    skipwhite nextgroup=reportProject "^\d\{4\}-\d\{2\}-\d\{2\}"
syn match reportProject skipwhite nextgroup=reportQty     "[a-zA-Z]*/[a-zA-Z]*"
syn match reportQty     skipwhite contained               "\d\+\.\?\d\?$"

syn keyword reportTodo  contained TODO FIXME XXX NOTE

syn match reportComment skipwhite                         "^[#].*" contains=reportTodo
syn match reportTemp    skipwhite                         "^>\ .*" contains=reportTodo

" Highlighting Settings
" ====================

hi def link reportDate    Keyword
hi def link reportProject Identifier
hi def link reportQty     Keyword

hi def link reportComment Comment
hi def link reportTemp    Comment

hi def link reportTodo    Todo

let b:current_syntax = "report"
