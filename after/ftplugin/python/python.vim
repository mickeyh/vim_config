"""" Organizational Structure
" 0. Vim Behaviour
" 1. Key Bindings
" 2. Vim Appearance
" 3. Plugin Configuration

"""" 1. Key Bindings
" Bind PEP8 plugin to 8 (3. Plugin Configuration)
" TODO: Also should use flake8 for linting.
let g:pep8_map='<leader>8'
" Create Ropevim bindings (3. Plugin Configuration)
" TODO: Why not pyscope instead?
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"""" 2. Vim Appearance
" Wrap lines longer than 100 characters
set wrap linebreak textwidth=100
" Hilight 101st column.
set cc=+1
" Tabs.
set sw=3 ts=3 et
" Code folding
" set foldmethod=indent " This seems annoying right now.
set foldnestmax=2
" Set the default code completion function
set omnifunc=pythoncomplete#Complete
" Show line numbers.
set number

"""" 3. Plugin Configuration
"" Pyflakes
" TODO: Also should use flake8 for linting.
" Don't use quickfix window
let g:pyflakes_use_quickfix=0
