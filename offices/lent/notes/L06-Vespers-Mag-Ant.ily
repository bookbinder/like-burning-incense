\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "43"
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
    When the bride -- groom 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    is ta -- ken a -- way from them,
    then will be the time for the wed -- ding guests to fast.
}
sopNotesAnt = \relative e' {
    cis8 b \bar "" e[ fis] fis4 fis8 \bar "" gis[ a] gis fis gis fis \bar ""
    fis4 \bar "'" gis8 fis e fis \bar "" fis[ gis] fis fis \bar ""
    e fis dis e \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    a4 cis\breve*5/16 b2.~ b4~ b2~ b2~ b2 gis4
}
tenorNotesAnt = \relative g {
    e4~ e\breve*5/16~ e2. dis4 e2 dis gis4 fis e
}
bassNotesAnt = \relative c {
    cis4 a\breve*5/16 e2. b'4~ b2~ b2~ b2 cis4
}
