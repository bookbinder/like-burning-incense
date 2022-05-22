function! PutInclude()
    1,/header/-1normal gcc
    let NotesFile = 'notes/' . expand('%:r') . '.ily'
    let NotesFile = substitute(NotesFile, "Psalm-Organ", "Ant", "")
    0put ='\version \"2.20.0\"'
    1put =''
    2put ='\include \"../lbi_defs.ily\"'
    3put ='\include \"' . NotesFile . '\"'
    4put ='\include #(string-append \"../psalmtones/notes/\" psalmtone \"-notes.ily\")'
    5put =''
    6put =''
endfunction
