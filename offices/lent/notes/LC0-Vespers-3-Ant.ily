\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Phil_2_6-11"
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
    No one takes my life a -- way from "me; * " I lay it down free -- ly
    and I shall take it up a -- gain.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8[ fis e] e4 e8[ gis] gis \bar "" fis8[ gis] fis e[ dis] cis \bar "" b4
    \bar "'" e8 fis gis fis \bar "" gis[-- b] b4 \bar "'"
    e,8 \bar "" fis8 a gis fis e fis \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*8/16 cis\breve*12/16 b\breve*5/16
    cis2. gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*8/16 a\breve*6/16 \tieDown <e~ gis>2. \tieUp e\breve*5/16~
    e2.~ e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    gis'\breve*8/16 a\breve*6/16 s2. gis,\breve*5/16 a2. e4
}
