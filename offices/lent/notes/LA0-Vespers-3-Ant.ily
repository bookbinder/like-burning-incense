\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "1_Pet_2_21-24"
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
    Christ died for our "sins, * " the in -- no -- cent for the
    guil -- ty to bring us back to God. In the bo -- dy he was put
    to death, but in the spi -- rit he was raised to life.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 gis8[ a] gis fis \bar "" fis4( e) \bar "'" fis8 \bar ""
    fis8 gis fis e fis \bar "" gis[ b] b b cis[ b] a \bar ""
    gis[ a] fis \bar "" fis([ gis] e4) r4 \bar "|"
    e8 e dis[ dis] cis cis dis e[ dis] cis \bar "" b4 \bar "'"
    b8 \bar "" cis e \bar "" e[ fis] fis fis e \bar ""
    fis[-- gis a gis] fis \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*11/16 cis\breve*5/16 e\breve*7/16 cis4. b2
    s\breve*22/16 cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b2.~ b\breve*5/16 a\breve*5/16 gis\breve*7/16 a4. gis2.
    s\breve*10/16 fis4. gis4 cis\breve*5/16 a\breve*5/16 gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2. gis\breve*5/16 a\breve*5/16 e\breve*7/16~ e4.~ e2.~
    <gis, e'>\breve*10/16 dis'4. e4~ e\breve*5/16~ e\breve*5/16~ e4
}
