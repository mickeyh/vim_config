nnoremap <buffer> <silent> <c-]> :YcmCompleter GoTo<CR>

nmap <Leader>ds :TernDefSplit<CR>
nmap <Leader>dp :TernDefPreview<CR>
nmap <Leader>dt :TernDefTab<CR>

nmap <Leader>gd :YcmCompleter GetDoc<CR>
nmap <Leader>gDB :TernDocBrowse<CR>

nmap <Leader>T :YcmCompleter GetType<CR>

nmap <Leader>r :YcmCompleter GoToReferences<CR>

nmap <Leader>e :YcmCompleter RefactorRename<CR>

" Set tabs to 2.
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
