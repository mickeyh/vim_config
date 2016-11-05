"""" 0. NeoBundle. {{{1
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Make sure YouCompleteMe checkout doesn't time out.
let g:neobundle#install_process_timeout=18000

NeoBundle 'editorconfig/editorconfig-vim.git'
NeoBundle 'elmcast/elm-vim'
NeoBundleLazy 'flowtype/vim-flow', {
         \ 'autoload': {
         \     'filetypes': 'javascript'
         \ },
         \ 'build': {
         \     'mac': 'npm install -g flow-bin',
         \     'unix': 'npm install -g flow-bin'
         \ }}
NeoBundle 'godlygeek/tabular'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundleLazy 'majutsushi/tagbar'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'nelstrom/vim-markdown-folding'
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'pangloss/vim-javascript'
NeoBundleLazy 'ruanyl/vim-fixmyjs', {
         \ 'autoload': {
         \     'filetypes': 'javascript'
         \ },
         \ 'build': {
         \     'mac': 'npm install -g babel-eslint eslint eslint-config-standard eslint-config-standard-react eslint-plugin-flow-vars eslint-plugin-promise eslint-plugin-react eslint-plugin-standard',
         \ }}

NeoBundle 'Shougo/vimproc.vim', {
         \ 'build' : {
         \     'windows' : 'make -f make_mingw32.mak',
         \     'cygwin' : 'make -f make_cygwin.mak',
         \     'mac' : 'make -f make_mac.mak',
         \     'unix' : 'make -f make_unix.mak',
         \    },
         \ }
NeoBundle 'SirVer/ultisnips'
NeoBundleLazy 'sjl/gundo.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thinca/vim-fontzoom'
NeoBundle 'thinca/vim-localrc'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'Valloric/ListToggle'
NeoBundle 'Valloric/YouCompleteMe', {'build' : {
         \ 'linux' : 'git checkout master && ./install.sh --clang-completer --system-libclang --system-boost',
         \ 'mac' : 'git checkout master && ./install.sh --clang-completer'}}
NeoBundle 'wincent/command-t', { 'build' : {
         \ 'linux' : 'sh -c "cd ruby/command-t && make clean && ruby extconf.rb && make"',
         \ 'mac'   : 'sh -c "cd ruby/command-t && make clean && ruby extconf.rb && make"'}}

call neobundle#end()
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
set wildignore=.git,.hg,elm-stuff,node_modules,*.png,*.jpg,*.o
" Common files in Android projects.
set wildignore+=*.class,*.apk,*.apk.d
" Common files in Python projects.
set wildignore+=*.pyc
" node_modules.
set wildignore+=node_modules
" Ignore build dirs when Command-T-ing
set wildignore+=build_client
set wildignore+=build_server
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number
" Assume .tex files are latex files.
let g:tex_flavor='latex'
" Use modelines.
set modeline
set modelines=5
" No spell checking by default. Use English as language.
set nospell spelllang=en_us

"""" 3. Remappings. {{{1
let mapleader='\'
" Spell checking.
map <silent> <leader>L :setlocal spell!<CR>
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
" Turn off search hilighting with <CR> or <ESC>.
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
set tabstop=4
set shiftwidth=4
set expandtab
" Default to 100 character lines.
set textwidth=100
" Make statusline appear even with only single window.
set laststatus=2
" Add git branch to statusline.
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P.
"set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%-14.(%l,%c%V%)\ %P
" Highlight whitespace.
set list
set listchars=tab:>·
" Don't hilight cursor line or column. These are slow (especially in .tex
" files).
set nocursorline nocursorcolumn

"""" 5. Plugin Configuration. {{{1
""" Ack. {{{2
" Use ag instead of ack.
let g:ackprg = 'ag --nogroup --nocolor --column'
nmap <silent> <leader>A :Ack <C-R><C-W><CR>
nmap <leader>a :Ack 
""" Command-T. {{{2
" Use Vim's pwd as the search root.
let g:CommandTTraverseSCM='pwd'
""" Eclim. {{{2
" Make Eclim play nicely with YouCompleteMe.
let g:EclimCompletionMethod='omnifunc'
" Open hierarchies in a vertical split.
let g:EclimJavaHierarchyDefaultAction='vsplit'
let g:EclimJavaCallHierarchyDefaultAction='vsplit'
" If JavaSearch returns a single result, open it in the current window.
let g:EclimJavaSearchSingleResult='edit'
""" Elm-Vim. {{{2
" Run elm-format on autosave.
let g:elm_format_autosave=1
" Compile to /tmp instead of polluting the current directory.
let g:elm_make_output_file = "/tmp/.elm.js"
" Stop elm-vim from setting up keybindings that clobber mine.
let g:elm_setup_keybindings=0
""" Flow. {{{2
" Disable Flow checking on save.
let g:flow#enable=0
""" Gundo. {{{2
" Open Gundo plugin.
nmap <leader>u :GundoToggle<CR>
""" Indent Guides plugin. {{{2
let g:indent_guides_guide_size=1
""" jedi-vim. {{{2
let g:jedi#goto_command='<C-]>'
""" Multiple Cursors plugin. {{{2
let g:multi_cursor_use_default_mapping=1
""" Syntastic plugin. {{{2
" Toggle syntastic autochecking on write.
nmap <buffer> <leader>S :SyntasticToggleMode<CR>
" Force a syntax check (useful for passive_filetypes).
nmap <buffer> <leader>c :SyntasticCheck<CR>:Errors<CR>
" Use JSXHint checker.
let g:syntastic_javascript_checkers = ['eslint']
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
" :UltiSnipsEdit will open the snippet file in a horizontal split.
let g:UltiSnipsEditSplit="horizontal"
""" vim-flow. {{{2
" Do not automatically typecheck on file save. I bind this to <leader>m instead.
let g:flow#enable=0
""" vim-jsx. {{{2
" Turn on vim-jsx in .js files.
let g:jsx_ext_required=0
""" YouCompleteMe. {{{2
" Make sure YCM uses system Python (not Anaconda Python).
let g:ycm_path_to_python_interpreter='/usr/local/bin/python2'
" Only enable ycm in these filetypes.
let g:ycm_filetype_whitelist={'c':1,'cpp':1,'go':1,'haskell':1,'java':1,'javascript':1,'matlab':1,'python':1,'r':1}
let g:ycm_filetype_blacklist={'help':1}
" Specify a default YCM configuration file if none is found for the current project.
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_confs/default_ycm_extra_conf.py'
" Enable autocompletions with go, haskell.
let g:ycm_semantic_triggers={'go':['.'],'haskell':['.']}

" vim: set ft=vim foldmethod=marker ts=3 sw=3 tw=80 et :
