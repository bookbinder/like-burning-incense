\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Ben"
psalmtone = "11"
psalmtonestruct = "x"
psalmnum = "x"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
     " * " 

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne

    

}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
}
