
" ftdetect
augroup filetypedetect
  au! BufNewFile,BufRead .tmux.conf*,tmux.conf* set filetype=tmux
  au! BufNewFile,BufRead *.xaml set filetype=xml
augroup END
