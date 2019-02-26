
" minpac configurations 

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive')
call minpac#add('itchyny/lightline.vim')
call minpac#add('kergoth/vim-bitbake')
call minpac#add('tpope/vim-ragtag')


"
" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office')

call minpac#add('zh4ui/myvimrc')
call minpac#add('jlanzarotta/bufexplorer')
call minpac#add('vim-scripts/FuzzyFinder', {'type': 'opt'})
call minpac#add('reedes/vim-pencil', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline', {'type': 'opt'})
call minpac#add('PProvost/vim-ps1', {'type': 'opt'})
call minpac#add('Shougo/vimshell.vim', {'type': 'opt'})

" colorscheme office-light

" TODO:: check if it's on a fold
nnoremap <CR> zo
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
