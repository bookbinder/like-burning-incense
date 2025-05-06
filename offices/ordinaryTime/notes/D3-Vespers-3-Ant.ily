\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Rev_4_11_and_5_9,_10,_12"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    A -- do -- ra -- tion and glo -- ry  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    be -- long by right to the Lamb who was slain.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    b8 b e dis e gis[ fis] fis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 gis fis \bar "" e[ gis] b b \bar "" cis4( b) a8 gis
    \bar "" fis[( gis] e4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*5/16 cis\breve*7/16
    s16
    e2~ e2. a,4( gis)
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*5/16 a\breve*7/16
    s16
    gis2 e2.~ e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16~ e\breve*7/16~
    s16
    e2 gis,2. e2
}
