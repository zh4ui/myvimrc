
runtime vimrc_example.vim

set belloff=all
set clipboard=unnamed
" set linebreak

" minpac configurations 

packadd minpac
packadd netrw

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive')
call minpac#add('vim-scripts/L9')
call minpac#add('vim-scripts/FuzzyFinder')
call minpac#add('rhysd/vim-clang-format')
call minpac#add('octol/vim-cpp-enhanced-highlight')
call minpac#add('jlanzarotta/bufexplorer')

" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office')
call minpac#add('itchyny/lightline.vim')
call minpac#add('rking/ag.vim')

call minpac#add('chriskempson/base16-vim')
call minpac#add('reedes/vim-pencil')

call minpac#add('zh4ui/netrw', {'type': 'opt'})
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

nnoremap <silent> sj     :FufBuffer<CR>

" plugin clang-format
let g:clang_format#code_style='file'
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" vim: ts=2 sw=2 expandtab ft=vim
