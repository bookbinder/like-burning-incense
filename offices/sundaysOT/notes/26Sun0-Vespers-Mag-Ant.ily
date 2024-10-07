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
    Not e -- very -- one who says 'Lord, "Lord,' * " 
    will en -- ter the king -- dom of hea -- ven, but the one who does the will
    of my hea -- ven -- ly Fa -- ther, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 e dis cis b e[ dis] cis[ gis'] gis([ a] gis4) \bar "'"
    gis8 \bar "" fis gis fis \bar "" e([ fis] gis4) fis8 e \bar "" dis[ cis] cis4 \bar "'"
    e8 fis \bar "" gis[ a] gis fis gis \bar "" b4 gis8 gis a4 a8 gis
    \bar "" gis[ fis] fis4 \bar "'"
    e8 \bar "" dis[ fis] \bar "" e--[ dis cis] \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis2. b4 cis4 e\breve*5/16 cis4. b4 dis2 s2 gis,4 b\breve*5/16 e\breve*8/16
    cis4~ cis4. b4 gis4.~ gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e2. fis4 gis b\breve*5/16 a4. gis4~ gis2 e2~ e4~ e\breve*5/16~ e\breve*8/16~
    e4 a4. fis4~ fis4. e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis2. b4 e4~ e\breve*5/16~ e4.~ e4 b2 cis2~ cis4 e,\breve*5/16 gis\breve*8/16
    a4~ a4. b4 cis4.~ cis4
}
