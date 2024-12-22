" Abbreviations ----------------------------------------------------------- {{{

function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

call MakeSpacelessIabbrev('gh/',  'http://github.com/')
call MakeSpacelessIabbrev('ghd/', 'http://github.com/drscream/')

iabbrev tm@ tm@core.io
iabbrev vrcf `~/.vimrc` file

iabbrev sl SkyLime - Network Solutions
inoremap <c-l> <c-k>l*

" }}}

