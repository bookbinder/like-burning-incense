\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e  \major
antiphon = "M"
psalmtone = "17"
psalmtonestruct = "44"
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
    On the eve -- ning of the first day of the "week, * "
    the dis -- ci -- ples were gath -- ered be -- hind locked doors;
    sud -- den -- ly, Je -- sus stood a -- mong them and said:
    Peace be with you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 e dis[ e] dis cis b \bar "" e4 \bar "" fis4 e8 fis \bar ""
    fis4( gis) \bar "'" gis8 gis \bar "" gis[ a] gis fis \bar ""
    gis4 gis8 gis fis[ e] \bar "" fis[ gis fis] fis4 \bar ","
    a8[ gis] fis fis4 \bar "" gis8[ a] \bar "" gis8
    gis8([-- a] b4) b8 \bar "" gis[ b] a gis \bar ""
    fis([ gis] a4) \bar "'" b4 e,8 \bar "" fis[ gis fis] fis4 \bar "'"
    fis8 \bar "" fis[ gis] e4 e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b4~ b4. s4 s2 s4 e2. b2~ b2. cis\breve*5/16
    e\breve*5/16~ e4. fis\breve*5/16 e2 cis4( e4)~
    e4. cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e4 fis4.~ fis4 gis4 b2~ \tieDown <e,~ b'>2. \tieUp e2~ e2. e\breve*5/16
    a\breve*5/16 b4.~ b\breve*5/16~ b2 a4~ a e4.~ e2. a4~ a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    gis4 b4. dis4 cis4 dis2 s2. e,2~ e2. a\breve*5/16
    cis\breve*5/16 e4. dis\breve*5/16 e2 a4( cis,) gis4.
    a2.~ a4 e'2
}
