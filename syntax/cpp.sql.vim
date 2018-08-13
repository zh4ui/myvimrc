
if exists('b:current_syntax')
  if b:current_syntax != 'cpp'
    finish
  else
    let b:main_syntax = 'cpp'
    unlet b:current_syntax
  endif
endif


syn include @cppSql $VIMRUNTIME/syntax/sql.vim

syntax region cppRawString matchgroup=cppRawDelimiter start=@\%(u8\|[uLU]\)\=R"\z([[:alnum:]_{}[\]#<>%:;.?*\+\-/\^&|~!=,"']\{,16}\)(@ end=/)\z1"/ contains=@cppSql

if exists('b:main_syntax')
  if b:main_syntax == 'cpp'
    let b:current_syntax = 'cpp'
  endif
endif


" vim: ts=2 sw=2 expandtab
