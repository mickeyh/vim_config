function HighlightNearCursor()
   if exists("s:highlightcursor")
      match None
   endif
   match WarningMsg /\k*\%#\k*/
   let s:highlightcursor=1
endfunction

function ClearHighlightNearCursor()
   match None
   if exists("s:highlightcursor")
      unlet s:highlightcursor
   endif
endfunction
