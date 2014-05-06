"""" Organizational Structure
" 0. Vim Behaviour
" 1. Key Bindings
" 2. Vim Appearance
" 3. Plugin Configuration

"""" 0. Vim Behaviour.
" Uset necoghc completion backend.
setlocal omnifunc=necoghc#omnifunc

"""" 1. Key Bindings.
""" ghcmod.
nnoremap <buffer> <leader>C :GhcModLint<CR>
noremap <buffer> <leader>T :GhcModType<CR>
" Chain clearing of hilighted things on <CR>.
" TODO: There must be a better way than redoing nohlsearch.
nmap <CR> <CR>:GhcModTypeClear<CR>:nohlsearch<CR>

"""" 2. Vim Appearance.
" Wrap lines longer than 80 characters.
setlocal wrap linebreak textwidth=80
" Hilight 101st column.
setlocal colorcolumn=+1
" Tabs.
setlocal sw=2 ts=4 et
" Code folding.
setlocal foldnestmax=2

"""" 3. Plugin Configuration.
