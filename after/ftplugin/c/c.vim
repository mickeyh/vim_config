" Override retarded formatoptions. Auto-wrap text, comments, allow
" autoformatting with 'gq'. Insert comment leader on return.
set fo=tcqro
" Wrap lines longer than 80 characters
set wrap linebreak textwidth=80
" Hilight 81st column.
set cc=+1
" Indenting options
set autoindent
set nocindent
" Turn on line numbering.
set number
set comments=sl:/*,mb:\ *,elx:\ */,://
