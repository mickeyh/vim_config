" Override retarded formatoptions. Auto-wrap text, comments, allow
" autoformatting with 'gq'. Insert comment leader on return. Use second line's
" indent instead of first.
set fo=tcqr2
" Wrap lines longer than 80 characters
set wrap linebreak textwidth=80
" Hilight 81st column.
set cc=+1
" Indenting options
set autoindent
set nocindent
