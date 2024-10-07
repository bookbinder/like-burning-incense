\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Mag."
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Not ev -- ery -- one who says 'Lord, "Lord,' * "
    will en -- ter the king -- dom of hea -- ven, but the one who does the will
    of my hea -- ven -- ly Fa -- ther will cer -- tain -- ly en -- ter it.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 e dis cis b e[ dis] cis[ gis'] gis([ a] gis4) \bar "'"
    gis8 fis gis fis e([ fis] gis4) \bar "" fis8 e dis[ cis] cis4 r4 \bar "|"
    e8 fis gis[ a] gis fis gis b4 gis8 gis a4 a8 gis \bar ""
    gis[ fis] fis fis e([ gis] fis4) fis8 e dis cis cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis2. b4 cis4 e\breve*5/16 dis4. cis4~ cis2
    a4 gis2 b4~ b\breve*5/16 e2 cis2~ cis~ cis2. a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e2. gis4 gis4 b\breve*5/16~ b4. gis4 e2~
    e2.~ e4~ e\breve*5/16~ e2 fis2~
    fis2 gis4 a gis fis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis2. b4 e4~ e\breve*5/16 b4. cis4~ cis2~
    cis2. gis4 e\breve*5/16 gis2 fis2
    a2 cis2.~ cis2
}
