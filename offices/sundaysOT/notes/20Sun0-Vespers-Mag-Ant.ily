\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "M"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Wo -- man, great is your "faith; * " 
    what you ask, I give to you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis4 gis fis8[ a] a gis fis4 \bar "'" fis8[ a] a \allowBreak fis4 \allowBreak
    a8 a \allowBreak gis gis4 \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e1 fis4~ fis4. e4.~ e2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b2 cis4 b cis4~ cis4.~ cis4. b2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e1 a4 fis4. cis4. e2
}
