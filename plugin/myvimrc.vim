
if exists('g:zh4ui_myvimrc')
  finish
endif
let g:zh4ui_myvimrc = 1

set encoding=utf-8

set noundofile
set nobackup

" shortcuts
nnoremap <silent> <C-J> gT
nnoremap <silent> <C-K> gt

set switchbuf=usetab,newtab

" cursor
set nostartofline

" search
set ignorecase
set smartcase

set autowrite
set autochdir

set pastetoggle=<F11>

set selection=exclusive

" mappings
nnoremap <silent> <leader>nr :setl nowrap<CR>
nnoremap <silent> <leader>wr :setl wrap<CR>

nnoremap <silent> <leader>np :setl nopaste<CR>
nnoremap <silent> <leader>sp :setl paste<CR>

nnoremap <silent> <C-N> :silent noh<CR>

nnoremap <leader>s0 <esc>:%s/<c-r>"/
nnoremap <leader>s1 <esc>:%s/<c-r>"/<c-r>"
nnoremap <leader>sab <esc>:%s/<c-r>a/<c-r>b/gc

nnoremap <leader>fs <esc>: setlocal fdm=syntax<cr>

" for lightline
set laststatus=2
set noshowmode

" https://stackoverflow.com/questions/32154285/folding-expanding-and-colapsing-xml-tags-in-vim-xml-parsing
" http://vim.wikia.com/wiki/Vim_as_XML_Editor
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax foldopen-=block
