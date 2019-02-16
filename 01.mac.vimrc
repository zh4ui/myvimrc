
runtime vimrc_example.vim

let s:extra_config = join([expand('<sfile>:p:h'), 'extra.vim'], '/')
if filereadable(s:extra_config)
  exec "source " . s:extra_config
endif

set belloff=all
set clipboard=unnamed
" set linebreak

" minpac configurations 

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive')
call minpac#add('vim-scripts/L9')
call minpac#add('vim-scripts/FuzzyFinder')
call minpac#add('rhysd/vim-clang-format')
call minpac#add('octol/vim-cpp-enhanced-highlight')
call minpac#add('jlanzarotta/bufexplorer')
call minpac#add('prabirshrestha/async.vim')
call minpac#add('prabirshrestha/vim-lsp')
call minpac#add('ajh17/VimCompletesMe')
call minpac#add('Konfekt/FastFold')
call minpac#add('embear/vim-localvimrc')
call minpac#add('terryma/vim-multiple-cursors')
call minpac#add('itchyny/lightline.vim')
call minpac#add('rking/ag.vim')

" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office')


call minpac#add('reedes/vim-pencil', {'type': 'opt'})
call minpac#add('uplus/vim-clang-rename', {'type': 'opt'})
call minpac#add('chriskempson/base16-vim', {'type': 'opt'})
call minpac#add('junegunn/fzf.vim', {'type': 'opt'})
call minpac#add('derekwyatt/vim-fswitch', {'type': 'opt'})
call minpac#add('junegunn/goyo.vim', {'type': 'opt'})
call minpac#add('zh4ui/vim-rfc-reader', {'type': 'opt'})
call minpac#add('cespare/vim-toml', {'type': 'opt'})
call minpac#add('pangloss/vim-javascript', {'type': 'opt'})
call minpac#add('leafgarland/typescript-vim', {'type': 'opt'})
call minpac#add('keith/swift.vim', {'type': 'opt'})
call minpac#add('fatih/vim-go', {'type': 'opt'})
call minpac#add('inkarkat/vim-mark', {'type': 'opt'})
call minpac#add('inkarkat/vim-ingo-library', {'type': 'opt'})
call minpac#add('vimwiki/vimwiki', {'type': 'opt'})
call minpac#add('vim-scripts/DrawIt', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline', {'type': 'opt'})

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
