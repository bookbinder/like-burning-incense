\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Ma -- ry Mag -- da "lene * "
    and the o -- ther Ma -- ry came to see the Lord's tomb,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 fis a gis gis4 \bar "'" gis8 gis fis e \bar ""
    gis8[ fis8] fis4 \bar "" fis8[ gis8] fis fis gis b8[ gis]
    \bar "" gis4( fis) \bar "'"
    fis8 fis[ gis] e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e4~ e1 cis2~ cis\breve*7/16~ cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 b1 a2 fis\breve*7/16 a\breve*7/16~ a4 gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4~ e1 a2 a,\breve*7/16~ a\breve*7/16 e'2
}
