function! MyInclude()
    execute "%s#notes/C0-Vespers-2-Ant\.ily#notes/" . expand("%:r") . ".ily#"
    execute "%s#-Cantor\.ily#.ily#"
endfunction
