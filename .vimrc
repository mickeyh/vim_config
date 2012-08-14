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
" Set completion to bring up a popup with longest common text.
set completeopt=longest,menuone

"""" 3. Key Bindings
let mapleader=","
" Window movement.
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

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

"""" 5. Plugin Configuration
" Zenburn.
" Display unified cursorline and cursorcolumn.
let g:zenburn_unified_CursorColumn=1
set cursorline cursorcolumn
colors zenburn
" Open NERDTree plugin.
map <leader>n :NERDTreeToggle<CR>
" Open taglist plugin.
noremap <Leader>g :TlistToggle<cr>
