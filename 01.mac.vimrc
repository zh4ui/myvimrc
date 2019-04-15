
runtime vimrc_example.vim

let s:extra_config = join([expand('<sfile>:p:h'), 'extra.vim'], '/')
if filereadable(s:extra_config)
  exec "source " . s:extra_config
endif

" allow cursor to pass the last character
"set virtualedit=onemore

set belloff=all
set clipboard=unnamed
" set linebreak

" minpac configurations 
runtime minpac.vim

if exists('*minpac#init')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('vim-scripts/L9')
  call minpac#add('vim-scripts/FuzzyFinder')
  call minpac#add('rhysd/vim-clang-format')
  call minpac#add('octol/vim-cpp-enhanced-highlight')
  call minpac#add('jlanzarotta/bufexplorer')
  call minpac#add('prabirshrestha/async.vim')
  call minpac#add('prabirshrestha/vim-lsp')
  call minpac#add('ajh17/VimCompletesMe')
  call minpac#add('embear/vim-localvimrc')
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('rking/ag.vim')
endif

if has("gui_running")
  colorscheme office-light
  set signcolumn=yes
endif

let g:lightline = {
      \ 'colorscheme': 'Tomorrow',
      \ }

" plugin vim-localvimrc
let g:localvimrc_reverse = 1
let g:localvimrc_whitelist = expand('$HOME/.vim/lvimrc')

" let g:clangd#clangd_executable = expand('$HOME/.local/bin/clangd')

" vim: ts=2 sw=2 expandtab ft=vim
