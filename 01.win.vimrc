
runtime minpac.vim

if exists('*minpac#init')
  packadd lightline.vim
  packadd bufexplorer
endif

nnoremap - zc

augroup filetypedetect
  au! BufNewFile,BufRead *.sig set filetype=c fdm=syntax
augroup END

set linebreak

" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

if !has("gui_running")
  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }
endif

" vim: ts=2 sw=2 expandtab
