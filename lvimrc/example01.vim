
set noautochdir


" plugin clang-format
let g:clang_format#code_style='file'
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" fuf
let g:fuf_coveragefile_globPatterns = ['src/**/*', 'include/**/*', 
  \ 'test/**/*', 'docs/**/*', 'muggle/**/*', 'fbs/**/*']

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFileChange<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>

nnoremap <silent> <C-P>	:FufCoverageFile<CR>
nnoremap <silent> <C-H> :exec 'FufCoverageFile ' . expand('%:t:r') . '.'<CR>

noremap <leader>cr :py3f ~/.vim/clang/clang-rename.py<cr>

set autoread

" https://jonasdevlieghere.com/vim-lsp-clangd/
"if executable('clangd')
"  augroup lsp_clangd
"    autocmd!
"    autocmd User lsp_setup call lsp#register_server({
"          \ 'name': 'clangd',
"          \ 'cmd': {server_info->['clangd']},
"          \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"          \ })
"    autocmd FileType c setlocal omnifunc=lsp#complete
"    autocmd FileType cpp setlocal omnifunc=lsp#complete
"    autocmd FileType objc setlocal omnifunc=lsp#complete
"    autocmd FileType objcpp setlocal omnifunc=lsp#complete
"  augroup end
"endif

let g:lsp_diagnostics_enabled = 0
let g:lsp_signs_enabled = 0
let g:lsp_highlight_references_enabled = 0

"let g:lsp_log_verbose = 1
"let g:lsp_log_file = expand('./vim-lsp.log')

"https://github.com/MaskRay/ccls/wiki/vim-lsp
"Register ccls C++ lanuage server.
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': '/tmp/ccls/cache' },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
      \ })
endif

" Key bindings for vim-lsp.
nn <silent> <M-d> :LspDefinition<cr>
nn <silent> <M-r> :LspReferences<cr>
nn <f2> :LspRename<cr>
nn <silent> <M-a> :LspWorkspaceSymbol<cr>
nn <silent> <M-l> :LspDocumentSymbol<cr>

autocmd FileType sql syn keyword sqlType	text


packadd asyncrun.vim
" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6

" ring the bell to notify you job finished
let g:asyncrun_bell = 1

" F10 to toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>


" https://github.com/Konfekt/FastFold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" https://stackoverflow.com/questions/5074191/vim-fold-top-level-folds-only
set foldnestmax=2


" https://stackoverflow.com/questions/890802/how-do-i-disable-the-press-enter-or-type-command-to-continue-prompt-in-vim
" https://vim.fandom.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
" make the current file to object
nn <leader>0 :exec 'make -C ./build ' . expand('%:.:r') . '.o'<cr><cr>

packadd vim-flatbuffers

function! QfFixNamingError()
  let cursor = getqflist({'idx': 0}).idx - 1
  let qflist = getqflist()
  let errmsg = qflist[cursor].text
  let matchresult = matchlist(errmsg, '.*''\(\w\+\)'' does not.*did you mean ''\(\w\+\)''?')
  if len(matchresult) > 0
    let wrong = matchresult[1]
    let right = matchresult[2]
    let lnum = qflist[cursor].lnum
    let text = getline(lnum)
    let newtext =  substitute(text, wrong, right, 'g')
    call setline(lnum, newtext)
  endif
endfunction

nn <leader>fn :call QfFixNamingError()<cr>

" https://vim.fandom.com/wiki/Automatically_open_the_quickfix_window_on_:make
"
" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow 4
autocmd QuickFixCmdPost    l* nested lwindow 4

" https://vi.stackexchange.com/questions/2843/how-to-automatically-set-wrapping-for-quickfix-window
augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

packadd vim-anyfold

"packadd ale
"
"" Write this in your vimrc file
"let g:ale_lint_on_text_changed = 'never'
"" You can disable this option too
"" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

nnoremap <leader>f0 :g/^{/normal zfa{<cr>
nnoremap K k

packadd vim-clang-format
packadd vim-cpp-enhanced-highlight
packadd L9
packadd FuzzyFinder
packadd async.vim
packadd vim-lsp
packadd VimCompletesMe

let base16colorspace=256
packadd base16-vim


" vim: ts=2 sw=2 expandtab
