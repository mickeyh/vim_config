" Override retarded formatoptions. Auto-wrap text, comments, allow
" autoformatting with 'gq'. Insert comment leader on return. Recognize lists.
set fo=tcqron
" Wrap lines longer than 80 characters
set wrap linebreak textwidth=80
" Hilight 81st column.
set cc=+1
" Indenting options
set autoindent
set nocindent
" Define how to comment.
set comments=sl:/*,mb:\ *,elx:\ */,://
