\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    As Jo -- nah was three days and three nights 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in the bel -- ly
    of the whale, so will the Son of Man spend three days and three
    nights in the heart of the earth.
}
sopNotesAnt = \relative e' {
    r8 gis8 b ais gis gis[ b] cis4 gis8 \bar "" fis[ ais] ais4 fis8 gis
    \bar "" ais[ b] ais gis fis \bar "" gis4 \bar "," gis8[ ais] gis gis \bar ""
    fis[ gis] fis fis[ dis] dis4 \bar "" dis8[-- fis gis] gis4 gis8
    \bar "" fis[-- gis ais] ais4 fis8 gis \bar "" ais[ b] ais fis \bar "" gis4
    \bar "||"
}
altoNotesAnt = \relative c' {
    dis\breve*10/16 fis2. dis\breve*5/16 e2. s\breve*7/16 dis2.
    fis\breve*7/16~ fis2 dis4
}
tenorNotesAnt = \relative g {
    b\breve*10/16 ais2.~ ais\breve*5/16 b2.~ b\breve*7/16~ b2.
    ais\breve*7/16 cis2 b4
}
bassNotesAnt = \relative c {
    gis'\breve*10/16 dis2. fis\breve*5/16 e2. dis\breve*7/16 b2. dis\breve*7/16~
    dis2 gis4
}
