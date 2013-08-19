"""" 0. Pathogen. {{{1
" Set up pathogen.
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""" 1. Locale. {{{1

"""" 2. Vim Behaviour. {{{1
" Allow switching away from unsaved buffers.
set hidden
" Use filetype-based syntax hilighting, ftplugins, and indentation.
syntax on
filetype plugin indent on
" Make marks work on character positions by default, and put mark at top of screen.
nnoremap <expr> ' printf("`%czz", getchar())
nnoremap <expr> ` printf("'%czz", getchar())
" Filetype-based omnicompletion.
set omnifunc=syntaxcomplete#Complete
" Set completion to bring up a popup with longest common text.
set completeopt=longest,menuone
" Make filename completion act like bash.
set wildmode=list:longest
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number
" Assume .tex files are latex files.
let g:tex_flavor='latex'

"""" 3. Key Bindings. {{{1
let mapleader='\'
" More convenient window movement.
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk

"""" 4. Vim Appearance. {{{1
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
set listchars=tab:>·,trail:·
" Don't hilight cursor line or column. These are slow (especially in .tex
" files).
set nocursorline nocursorcolumn

"""" 5. Plugin Configuration. {{{1
""" Colorscheme.
colorscheme zenburn
""" Eclim.
" Make Eclim play nicely with YouCompleteMe.
let g:EclimCompletionMethod='omnifunc'
""" Gundo.
" Open Gundo plugin.
map <leader>u :GundoToggle<CR>
""" Indent Guides plugin.
let g:indent_guides_guide_size=1
""" Tabular.
map <leader>a :Tabularize 
""" Tagbar.
" Open tagbar plugin.
map <leader>g :TagbarToggle<CR>
let g:tagbar_autoclose=1            " Tagbar window closes on tag jump.
let g:tagbar_autofocus=1            " Cursor moves to Tagbar window when it opens.
""" UltiSnips.
" Expand <c-f>, list snippets <c-tab>, forward <c-g>, backward <c-b>.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-g>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" Snippet read directory is "my_UltiSnips".
let g:UltiSnipsSnippetDirectories=["my_UltiSnips"]
" :UltiSnipsEdit will open the snippet file in a horizontal split.
let g:UltiSnipsEditSplit="horizontal"
""" YouCompleteMe.
" Only enable ycm in these filetypes.
let g:ycm_filetype_whitelist={'c':1,'cpp':1,'java':1,'matlab':1,'python':1}
let g:ycm_filetype_blacklist={'help':1}
" Specify a default YCM configuration file if none is found for the current project.
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_confs/default_ycm_extra_conf.py'

" vim: set ft=vim foldmethod=marker ts=3 sw=3 tw=80 et :
