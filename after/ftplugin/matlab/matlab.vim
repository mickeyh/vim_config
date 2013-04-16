" Override retarded formatoptions. Auto-wrap text, comments, allow
" autoformatting with 'gq'. Recognize lists.
set fo=tcqn
" Wrap lines longer than 100 characters
set wrap linebreak textwidth=100
" Hilight 81st column.
set cc=+1
" Indenting options
set autoindent
set nocindent
" Define how to comment.
set comments=sl:%,mb:%,elx:%,:%
