
" minpac configurations 

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive')
call minpac#add('vim-airline/vim-airline')

"
" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office')

call minpac#add('zh4ui/myvimrc')
call minpac#add('jlanzarotta/bufexplorer')
call minpac#add('vim-scripts/FuzzyFinder', {'type': 'opt'})
call minpac#add('reedes/vim-pencil', {'type': 'opt'})

colorscheme office-light

" vim: ts=2 sw=2 expandtab
