function! DeleteLastLineIfEmpty()
    normal G
    if match(line('.'), '^\s*$')
        normal dd
    endif
endfunction
