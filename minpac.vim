" minpac configurations 
" https://github.com/k-takata/minpac

packadd minpac

call minpac#init()

"call minpac#add('zh4ui/myvimrc')

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
call minpac#add('itchyny/lightline.vim', {'type': 'opt'})
call minpac#add('kergoth/vim-bitbake', {'type': 'opt'})
call minpac#add('tpope/vim-ragtag', {'type': 'opt'})

" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office', {'type': 'opt'})
call minpac#add('dracula/vim', {'type': 'opt'})

call minpac#add('jlanzarotta/bufexplorer', {'type': 'opt'})
call minpac#add('vim-scripts/FuzzyFinder', {'type': 'opt'})
call minpac#add('reedes/vim-pencil', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline', {'type': 'opt'})
call minpac#add('PProvost/vim-ps1', {'type': 'opt'})
call minpac#add('Shougo/vimshell.vim', {'type': 'opt'})

" vim: ts=2 sw=2 expandtab
