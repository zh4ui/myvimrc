
runtime vimrc_example.vim

let mapleader = "\<space>"

let s:extra_config = join([expand('<sfile>:p:h'), 'extra.vim'], '/')
if filereadable(s:extra_config)
  exec "source " . s:extra_config
endif

set belloff=all
set clipboard=unnamed

" allow cursor to pass the last character
"set virtualedit=onemore
"set linebreak

" plugin vim-localvimrc
let g:localvimrc_reverse = 1
let g:localvimrc_whitelist = expand('$HOME/.vim/lvimrc')

" minpac configurations 
runtime minpac.vim

if exists('*minpac#init')
  packadd vim-fugitive
  packadd ag.vim
  packadd lightline.vim
  packadd vim-localvimrc
  packadd bufexplorer
endif

if has("gui_running")
  colorscheme office-light
  set signcolumn=yes
endif

let g:lightline = {
      \ 'colorscheme': 'Tomorrow',
      \ }


" vim: ts=2 sw=2 expandtab ft=vim
