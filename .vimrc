"""" Organizational Structure
" 0. Pathogen
" 1. Locale
" 2. Vim Behaviour
" 3. Key Bindings
" 4. Vim Appearance
" 5. Plugin Configuration

"""" 0. Pathogen
" Set up pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""" 1. Locale

"""" 2. Vim Behaviour
" Allow switching away from unsaved buffers.
set hidden
" Use filetype-based syntax hilighting, ftplugins, and indentation.
syntax on
filetype plugin indent on
" Make marks work on character positions by default.
nnoremap ' `
nnoremap ` '
" Filetype-based omnicompletion.
set omnifunc=syntaxcomplete#Complete
" Set completion to bring up a popup with longest common text.
set completeopt=longest,menuone
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number
" Assume .tex files are latex files.
let g:tex_flavor='latex'

"""" 3. Key Bindings
let mapleader=","
" More convenient window movement.
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"""" 4. Vim Appearance
" Search settings
set hlsearch " hilight
set incsearch " jump to best fit
" Tab settings
set autoindent
set smartindent
set tabstop=3
set shiftwidth=3
set expandtab
" Make statusline appear even with only single window.
set laststatus=2
" Add git branch to statusline.
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P.
set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%-14.(%l,%c%V%)\ %P
" Highlight whitespace.
set list
set listchars=tab:>-,trail:~
" Don't hilight cursor line or column. These are slow (especially in .tex
" files).
set nocursorline nocursorcolumn

"""" 5. Plugin Configuration
""" Zenburn.
colors zenburn
""" NERDTree.
" Open NERDTree plugin.
map <leader>n :NERDTreeToggle<CR>
""" Tagbar.
" Open tagbar plugin.
map <leader>g :TagbarToggle<CR>
""" Gundo.
" Open Gundo plugin.
map <leader>u :GundoToggle<CR>
""" UltiSnips.
" Expand <c-f>, list snippets <c-tab>, forward <c-g>, backward <c-b>.
let g:UltiSnipsExpandTrigger="<C-f>"
let g:UltiSnipsJumpForwardTrigger="<C-g>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
" Snippet read directory is "my_UltiSnips".
let g:UltiSnipsSnippetDirectories=["my_UltiSnips"]
" :UltiSnipsEdit will open the snippet file in a horizontal split.
let g:UltiSnipsEditSplit="horizontal"
