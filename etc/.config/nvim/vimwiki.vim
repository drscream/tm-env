" When set to 1, enables auto-cd feature.  Whenever Vimwiki page is opened,
" Vimwiki performs an |:lcd| to the Vimwiki folder to where the page belongs.
let g:vimwiki_auto_chdir=1

" Use .wiki file extension to prefent VimWiki to use every markdown file as
" temporary wiki file. Alternative to let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': $TM_HOME.'/documents/wiki',
                     \ 'syntax': 'markdown', 'ext': '.wiki'}]
