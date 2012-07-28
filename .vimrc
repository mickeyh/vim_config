"""" Organizational Structure
" 0. Pathogen
" 1. Locale
" 2. Vim Behaviour
" 3. Key Bindings
" 4. Vim UI
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
" Search settings
set hlsearch " hilight
set incsearch " jump to best fit
" Make marks work on character positions by default.
nnoremap ' `
nnoremap ` '
" Tab settings
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
" Remove menubar, toolbar, scroll bars (lrb), in that order.
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b
" Make statusline appear even with only single window.
set laststatus=2
" Add git branch to statusline.
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P.
set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%-14.(%l,%c%V%)\ %P
" Set completion to bring up a popup with longest common text.
set completeopt=longest,menuone

"""" 3. Key Bindings
let mapleader=","
" Window movement.
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" Open TaskList plugin (5. Plugin Configuration).
" " map <leader>td <Plug>TaskList
" Open NERDTree plugin.
map <leader>n :NERDTreeToggle<CR>

"""" 4. Vim UI
set t_Co=256
colors zenburn

"""" 5. Plugin Configuration
" Display unified cursorline and cursorcolumn.
let g:zenburn_unified_CursorColumn=1
set cursorline cursorcolumn
