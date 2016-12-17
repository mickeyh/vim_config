" Override retarded formatoptions. Auto-wrap text, comments, allow
" autoformatting with 'gq'. Insert comment leader on return. Recognize lists.
set fo=tcqrn
" Wrap lines longer than 100 characters
set wrap linebreak textwidth=100
" Hilight column after textwidth.
set cc=+1
" Indenting options
set autoindent
set nocindent
" Define how to comment.
set comments=sl:/*,mb:\ *,elx:\ */,://
