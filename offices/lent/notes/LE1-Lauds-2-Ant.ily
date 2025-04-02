\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "2"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Dan_3_57-88,_56"
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
    Free us by your won -- der -- ful "works; * " de -- li -- ver us from
    the pow -- er of death.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4^"Different psalm tone than original. Does it work?" e8 \bar ""
    b8 cis \bar "" gis' gis a \bar "" gis4 \bar "," gis8 \bar ""
    fis[ gis] fis e e e \bar "" dis e dis \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*5/16 cis4. b4. cis2. b4. gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4. dis4 e4.~ e4.~ e4. a4. fis4. e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4.~ cis4~ cis4. e,4. fis2. gis4. cis4
}
