
if exists('g:zh4ui_myvimrc')
  finish
endif
let g:zh4ui_myvimrc = 1

set encoding=utf-8

set noundofile
set nobackup

" shortcuts
nnoremap <silent> <C-J> gT
nnoremap <silent> g<C-J> :-tabmove<cr>
nnoremap <silent> <C-K> gt
nnoremap <silent> g<C-K> :+tabmove<cr>

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

" abbreviations

cabbr th tab h
cabbr te tabe
cabbr t. Texplore
cabbr t, Texplore ..

" for lightline
set laststatus=2
set noshowmode

" https://stackoverflow.com/questions/32154285/folding-expanding-and-colapsing-xml-tags-in-vim-xml-parsing
" http://vim.wikia.com/wiki/Vim_as_XML_Editor
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax foldopen-=block

" https://stackoverflow.com/questions/178257/how-to-avoid-syntax-highlighting-for-large-files-in-vim
autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif

set cmdwinheight=5

" http://vim.wikia.com/wiki/Search_for_visually_selected_text
" vnoremap // y`<h/\V<C-r>=escape(@",'/\')<CR><CR>gv
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>gv
vnoremap /0 yq:i%s/\V<C-r>"/<C-r>"<C-f><esc>


