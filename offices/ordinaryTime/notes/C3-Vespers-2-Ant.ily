\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_131"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Un -- less you ac -- \ll "quire  * " _
    the heart of a child, you can -- not en -- ter
    the king -- dom of God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 gis8 a gis gis fis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 a4 a8 a gis4 \bar "'"
    e8 e dis[ e] \bar "" cis[ b] b e \bar "" fis[ a] gis fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*5/16 cis\breve*7/16
    s16
    b2 cis4 s2 e2 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16~ e\breve*7/16~
    s16
    e2~ e4 dis2 a' gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16 a,\breve*7/16
    s16
    e4 gis fis b2 cis e4
}
