\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key  \minor
antiphon = ""
psalmtone = ""
psalmtonestruct = ""
psalmnum = ""
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
     " * " 
}
sopNotesAnt = \relative e' {
    \global
    \keysig

}
altoNotesAnt = \relative c' {
    \global
    \keysig

}
tenorNotesAnt = \relative g {
    \global
    \keysig

}
bassNotesAnt = \relative c {
    \global
    \keysig

}
