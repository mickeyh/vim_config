nnoremap <buffer> <silent> <c-]> :GoDef<CR>

nmap <leader>gr <Plug>(go-run)
nmap <leader>gb <Plug>(go-build)
nmap <leader>gt <Plug>(go-test)
nmap <leader>gc <Plug>(go-coverage)

nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)

nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>gD <Plug>(go-doc-vertical)

nmap <Leader>s <Plug>(go-implements)

nmap <Leader>i <Plug>(go-info)

nmap <Leader>e <Plug>(go-rename)

" Turn on all the syntax hilighting!
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Add $GOPATH to vim path so :find and gf work.
set path+=$GOPATH/src/**

" In Go we don't want to see tabs, so we disable list.
set nolist
" If we do want to see listchars we only care about tabs because these are the only common
" whitespace character that can be misused.
set listchars=tabs:>\ 
