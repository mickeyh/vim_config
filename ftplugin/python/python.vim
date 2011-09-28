"""" Organizational Structure
" 0. Vim Behaviour
" 1. Key Bindings
" 2. Vim UI
" 3. Plugin Configuration

"""" 0. Vim Behaviour
" Wrap lines longer than 79 characters
set wrap linebreak textwidth=79
" Code folding
set foldmethod=indent
set foldnestmax=2
" Set the default code completion function
set omnifunc=pythoncomplete#Complete

"""" 1. Key Bindings
" Bind PEP8 plugin to 8 (3. Plugin Configuration)
let g:pep8_map='<leader>8'
" Create Ropevim bindings (3. Plugin Configuration)
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"""" 2. Vim UI

"""" 3. Plugin Configuration
"" Pyflakes
" Don't use quickfix window
let g:pyflakes_use_quickfix=0
