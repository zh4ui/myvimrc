
runtime vimrc_example.vim

set belloff=all
set clipboard=unnamed
" set linebreak

" minpac configurations 

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive')
call minpac#add('cespare/vim-toml')
call minpac#add('keith/swift.vim')


" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office')
call minpac#add('itchyny/lightline.vim')
call minpac#add('rking/ag.vim')
call minpac#add('pangloss/vim-javascript')

call minpac#add('jlanzarotta/bufexplorer')
call minpac#add('chriskempson/base16-vim')
call minpac#add('junegunn/goyo.vim')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('fatih/vim-go')
call minpac#add('reedes/vim-pencil')
call minpac#add('zh4ui/vim-rfc-reader')
call minpac#add('vimwiki/vimwiki')
call minpac#add('octol/vim-cpp-enhanced-highlight')


call minpac#add('vim-scripts/FuzzyFinder', {'type': 'opt'})
call minpac#add('vim-scripts/DrawIt', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline', {'type': 'opt'})

if has("gui_running")
	colorscheme office-light
	set signcolumn=yes
endif

let g:lightline = {
      \ 'colorscheme': 'Tomorrow',
      \ }

" vim: ts=2 sw=2 expandtab ft=vim
