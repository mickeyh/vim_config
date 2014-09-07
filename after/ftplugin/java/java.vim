"""" Organizational Structure
" 0. Vim Behaviour
" 1. Key Bindings
" 2. Vim Appearance
" 3. Plugin Configuration

"""" 0. Vim Behaviour.

"""" 1. Key Bindings.
" Eclim.
nnoremap <buffer> <silent> <c-]> :JavaSearch<CR>
nnoremap          <leader>s :JavaSearch 
nnoremap <buffer> <silent> <leader>i :JavaImportOrganize<CR>
" Overriding the syntastic error check is ok because it happens on save.
nnoremap <buffer> <silent> <leader>c :JavaDocComment<CR>
nnoremap          <silent> <leader>C :ProjectProblems<CR>

"""" 2. Vim Appearance.
" Wrap lines longer than 100 characters.
setlocal wrap linebreak textwidth=100
" Hilight 101st column.
setlocal colorcolumn=+1
" Tabs.
setlocal sw=3 ts=3 et
" Code folding.
setlocal foldmethod=syntax
setlocal foldnestmax=2
setlocal foldlevel=1
set nofoldenable

"""" 3. Plugin Configuration.
