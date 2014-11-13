"""" 0. Pathogen. {{{1
" Set up pathogen.
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""" 1. Locale. {{{1

"""" 2. Vim Behaviour. {{{1
" Allow switching away from unsaved buffers.
set hidden
" Reload files automatically if they have changed.
set autoread
" Set swapfile directory to ~/.backup if possible.
set directory=~/.backup,.
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
" Ignore certain glob patterns.
set wildignore=*.o,.git,.hg,*.png,*.jpg
" Common files in Android projects.
set wildignore+=*.class,*.apk,*.apk.d
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number
" Assume .tex files are latex files.
let g:tex_flavor='latex'
" Use modelines.
set modeline
set modelines=5

"""" 3. Remappings. {{{1
let mapleader='\'
" More convenient window movement.
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
" More convenient movement when lines are wrapped.
nnoremap j gj
nnoremap k gk
" Improve search hilighting.
noremap n n:set cursorline<CR>
noremap N N:set cursorline<CR>
noremap * *:set cursorline<CR>
noremap # #:set cursorline<CR>
noremap / :set cursorline<CR>/
noremap ? :set cursorline<CR>?
" Turn off seach hilighting with <CR> or <ESC>.
nnoremap <CR> <CR>:nohlsearch<CR>:set nocursorline<CR>
nnoremap <ESC> <ESC>:nohlsearch<CR>:set nocursorline<CR>
" Avoid super annoying caps save/quit errors.
command WA wa
command Wa wa
command WQ wq
command Wq wq
command W w
command Q q

"""" 4. Vim Appearance. {{{1
" Colorscheme.
colorscheme zenburn
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
""" Ack. {{{2
" Use ag instead of ack.
let g:ackprg = 'ag --nogroup --nocolor --column'
nmap <silent> <leader>A :Ack <C-R><C-W><CR>
nmap <leader>a :Ack 
""" Eclim. {{{2
" Make Eclim play nicely with YouCompleteMe.
let g:EclimCompletionMethod='omnifunc'
" Open hierarchies in a vertical split.
let g:EclimJavaHierarchyDefaultAction='vsplit'
let g:EclimJavaCallHierarchyDefaultAction='vsplit'
" If JavaSearch returns a single result, open it in the current window.
let g:EclimJavaSearchSingleResult='edit'
""" Gundo. {{{2
" Open Gundo plugin.
nmap <leader>u :GundoToggle<CR>
""" Indent Guides plugin. {{{2
let g:indent_guides_guide_size=1
""" Multiple Cursors plugin. {{{2
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-q>'
""" Syntastic plugin. {{{2
" Toggle syntastic autochecking on write.
nmap <buffer> <leader>S :SyntasticToggleMode<CR>
" Force a syntax check (useful for passive_filetypes).
nmap <buffer> <leader>c :SyntasticCheck<CR>:Errors<CR>
""" Tabular. {{{2
map <leader>T :Tabularize
""" Tagbar. {{{2
" Open tagbar plugin.
nmap <leader>g :TagbarToggle<CR>
let g:tagbar_autoclose=1            " Tagbar window closes on tag jump.
let g:tagbar_autofocus=1            " Cursor moves to Tagbar window when it opens.
""" UltiSnips. {{{2
" Expand <c-f>, list snippets <c-tab>, forward <c-g>, backward <c-b>.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-g>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" Snippet read directory is "my_UltiSnips".
let g:UltiSnipsSnippetDirectories=["my_UltiSnips"]
" :UltiSnipsEdit will open the snippet file in a horizontal split.
let g:UltiSnipsEditSplit="horizontal"
""" YouCompleteMe. {{{2
" Only enable ycm in these filetypes.
let g:ycm_filetype_whitelist={'c':1,'cpp':1,'haskell':1,'java':1,'matlab':1,'python':1,'r':1}
let g:ycm_filetype_blacklist={'help':1}
" Specify a default YCM configuration file if none is found for the current project.
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_confs/default_ycm_extra_conf.py'
" Enable autocompletions with haskell.
let g:ycm_semantic_triggers = {'haskell':['.']}

" vim: set ft=vim foldmethod=marker ts=3 sw=3 tw=80 et :
