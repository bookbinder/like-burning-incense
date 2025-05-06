\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Col_1_12-20"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Through him all things were made;  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    he holds all cre -- a -- tion to -- ge -- ther in him -- self.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 cis8[ e] fis[ e] dis cis b4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    e8 fis[ a] gis[ b] cis b4 b8 a gis a gis fis fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b2 cis4 s2
    s16
    s8 e4 gis\breve*7/16 cis,2 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis2 a gis4.
    s16
    a4 b\breve*7/16 a2~ a4 gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e2~ e2~ e4.~
    s16
    e4~ e\breve*7/16~ e2~ e
}
