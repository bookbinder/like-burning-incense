\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "M"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    If you are bring -- ing your gift to the al -- "tar, * " and there
    you re -- mem -- ber that your bro -- ther has some -- thing a -- gainst
    you, leave your gift in front of the al -- tar; go at once and make peace
    with your bro -- ther, and then come back and of -- fer your gift.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis4 cis8 dis e dis cis cis[ gis'] gis gis \bar "" fis4 fis \bar "'" fis8
    \bar "" fis[ gis] fis fis \bar "" gis cis, cis dis \bar "" fis8 e dis
    fis4 fis8 e \bar "" dis4 dis \bar "," cis8[ gis'] fis \bar ""
    gis[-- ais b] ais \bar "" gis[ b] b b \bar "" ais4 ais \bar ","
    ais8[ b] cis \bar "" cis4 b8 ais[ b] \bar "" gis([-- ais] b4) ais8 gis \bar ""
    gis[ fis] fis4 \bar "'" gis8 \bar "" fis[-- gis] cis,[ dis e] \bar ""
    fis4 fis8 \bar "" fis[ gis] fis e \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*11/16 s\breve*5/16 dis2 cis~ cis\breve*7/16~ cis4 b
    cis4. fis2~ fis2~ fis\breve*7/16 gis\breve*5/16 fis2. dis\breve*5/16~
    dis4 cis4. b4. cis2 gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*11/16 b\breve*5/16~ b2 gis2~ gis\breve*7/16~ gis2~
    gis4. b2~ b2 cis\breve*7/16~ cis\breve*5/16 b2.~ b\breve*5/16~
    b4 gis4. fis4. e2 gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*11/16 dis\breve*5/16 b2 e2 cis\breve*7/16 gis2
    e'4. dis2~ dis fis\breve*7/16 e\breve*5/16 dis2. b\breve*5/16~
    b4 e4. dis4. cis2 gis4
}
