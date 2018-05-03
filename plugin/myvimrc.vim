
if exists('g:zh4ui_myvimrc')
  finish
endif
let g:zh4ui_myvimrc = 1

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
inoremap <silent> <S-ENTER> <ESC>O

nnoremap <leader>s0 <esc>:%s/<c-r>"/
nnoremap <leader>s1 <esc>:%s/<c-r>"/<c-r>"
nnoremap <leader>sab <esc>:%s/<c-r>a/<c-r>b/gc
