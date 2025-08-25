\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_141_1-9"
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
    I shall place my law in their hearts; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    I shall be their God,
    and they will be my peo -- ple.
}
sopNotesAnt = \relative e' {
    cis8 b8 e[ dis] cis gis'4 fis8 e \bar ""
    fis([ gis] fis4) \bar ","
    e8[ gis] gis fis e \bar "" fis4 \bar "'"
    fis8 \bar "" e e dis b \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*9/16 s2 s\breve*5/16 s4.
    cis4 a gis2
}
tenorNotesAnt = \relative g {
    gis\breve*9/16 b2 gis\breve*5/16 a4. gis4 fis4~ fis e
}
bassNotesAnt = \relative c {
    e\breve*9/16 dis2 cis\breve*5/16~ cis4.~ cis2~ cis
}
