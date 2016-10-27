nmap <buffer> <LocalLeader>m <Plug>(elm-make)
nmap <buffer> <LocalLeader>M <Plug>(elm-make-main)
" We are OK overriding the Tabularize plugin in Elm, because elm-format makes it obsolete.
nmap <buffer> <LocalLeader>T <Plug>(elm-test)
nmap <buffer> <LocalLeader>r <Plug>(elm-repl)
nmap <buffer> <LocalLeader>e <Plug>(elm-error-detail)
nmap <buffer> <LocalLeader>d <Plug>(elm-show-docs)
nmap <buffer> <LocalLeader>w <Plug>(elm-browse-docs)
