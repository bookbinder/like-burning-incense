function! PopulateOrganPsalmIncludesOnly()
    let NotesFile = 'notes/' . expand('%:r') . '.ily'
    let NotesFile = substitute(NotesFile, "Psalm-Organ", "Ant", "")
    0put ='\version \"2.20.0\"'
    put =''
    put ='\include \"../lbi_defs.ily\"'
    put ='\include \"' . NotesFile . '\"'
    put ='\include #(string-append \"../psalmtones/notes/\" psalmtone \"-notes.ily\")'
endfunction
