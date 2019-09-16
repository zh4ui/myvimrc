" minpac configurations 
" https://github.com/k-takata/minpac

packadd minpac

call minpac#init()


" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" langauge

call minpac#add('fatih/vim-go', {'type': 'opt'})
call minpac#add('cespare/vim-toml', {'type': 'opt'})
call minpac#add('PProvost/vim-ps1', {'type': 'opt'})
call minpac#add('pangloss/vim-javascript', {'type': 'opt'})
call minpac#add('zh4ui/vim-rfc-reader', {'type': 'opt'})
call minpac#add('kergoth/vim-bitbake', {'type': 'opt'})

call minpac#add('jlanzarotta/bufexplorer', {'type': 'opt'})
call minpac#add('embear/vim-localvimrc', {'type': 'opt'})
call minpac#add('itchyny/lightline.vim', {'type': 'opt'})
call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
call minpac#add('rking/ag.vim', {'type': 'opt'})
call minpac#add('vim-scripts/L9', {'type': 'opt'})
call minpac#add('vim-scripts/FuzzyFinder', {'type': 'opt'})
call minpac#add('rhysd/vim-clang-format', {'type': 'opt'})
call minpac#add('octol/vim-cpp-enhanced-highlight', {'type': 'opt'})
call minpac#add('ajh17/VimCompletesMe', {'type': 'opt'})

call minpac#add('prabirshrestha/async.vim', {'type': 'opt'})
call minpac#add('prabirshrestha/vim-lsp', {'type': 'opt'})
call minpac#add('Konfekt/FastFold', {'type': 'opt'})
call minpac#add('Shougo/vimshell.vim', {'type': 'opt'})
call minpac#add('derekwyatt/vim-fswitch', {'type': 'opt'})
call minpac#add('junegunn/fzf.vim', {'type': 'opt'})
call minpac#add('junegunn/goyo.vim', {'type': 'opt'})
call minpac#add('keith/swift.vim', {'type': 'opt'})
call minpac#add('leafgarland/typescript-vim', {'type': 'opt'})
call minpac#add('pseewald/vim-anyfold', {'type': 'opt'})
call minpac#add('reedes/vim-pencil', {'type': 'opt'})
call minpac#add('skywind3000/asyncrun.vim', {'type': 'opt'})
call minpac#add('terryma/vim-multiple-cursors', {'type': 'opt'})
call minpac#add('tpope/vim-dispatch', {'type': 'opt'})
call minpac#add('tpope/vim-ragtag', {'type': 'opt'})
call minpac#add('uplus/vim-clang-rename', {'type': 'opt'})
call minpac#add('vim-scripts/DrawIt', {'type': 'opt'})
call minpac#add('vimwiki/vimwiki', {'type': 'opt'})
call minpac#add('zchee/vim-flatbuffers', {'type': 'opt'})
call minpac#add('inkarkat/vim-ingo-library', {'type': 'opt'})
call minpac#add('inkarkat/vim-mark', {'type': 'opt'})

" colorschema

" more vim colorschemes:
" - http://vimcolors.com/

call minpac#add('nightsense/office', {'type': 'opt'})
call minpac#add('dracula/vim', {'name': 'dracula', 'type': 'opt'})
call minpac#add('chriskempson/base16-vim', {'type': 'opt'})
call minpac#add('andreypopp/vim-colors-plain', {'type': 'opt'})


" frozen

call minpac#add('w0rp/ale', {'type': 'opt', 'frozen': 1})
call minpac#add('vim-airline/vim-airline', {'type': 'opt', 'frozen': 1})
call minpac#add('neoclide/coc.nvim', {'type': 'opt', 'frozen': 1})


" removed

"call minpac#add('zh4ui/myvimrc')

" vim: ts=2 sw=2 expandtab ff=unix
