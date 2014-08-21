function HighlightNearCursor()
   if exists("s:highlightcursor")
      match None
   endif
   match WarningMsg /\k*\%#\k*/
   let s:highlightcursor=1
endfunction

function ClearHighlightNearCursor()
   match None
   unlet s:highlightcursor
endfunction
