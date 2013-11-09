"""" Organizational Structure
" 0. Vim Behaviour
" 1. Key Bindings
" 2. Vim Appearance
" 3. Plugin Configuration

"""" 0. Vim Behaviour.

"""" 1. Key Bindings.

"""" 2. Vim Appearance.
" Wrap lines longer than 100 characters.
set wrap linebreak textwidth=100
" Hilight 101st column.
set colorcolumn=+1
" Tabs.
set sw=3 ts=3 et
" Code folding.
" set foldmethod=indent " This seems annoying right now.
set foldnestmax=2
" Show line numbers.
set number

"""" 3. Plugin Configuration.
"" Eclim.
nnoremap <buffer> <silent> <c-]> :JavaSearch<CR>
nnoremap <buffer> <leader>s :JavaSearch 
nnoremap <buffer> <silent> <leader>i :JavaImportOrganize<CR>
nnoremap <buffer> <silent> <leader>c :JavaDocComment<CR>
