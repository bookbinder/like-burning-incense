\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Isa_42_10-16"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    From the far -- thest bounds of \ll "earth,  * " _
    may God be praised!
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    b8 cis e[ dis] cis dis e fis[( gis] fis4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis4 e8[ gis fis] a gis[( fis] e4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*7/16 cis2~ 
    s16
    cis4 e2~ e
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*7/16~ e2
    s16
    a4~ a2 b4( gis)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    gis\breve*7/16 a2~
    s16
    a4 cis2 e
}
