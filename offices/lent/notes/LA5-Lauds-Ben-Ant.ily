\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    If you, e -- vil as you are, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    know how to give your
    chil -- dren what is good, how much more will your Fa -- ther
    in hea -- ven pour out his gifts on all who pray to him.
}
sopNotesAnt = \relative e' {
    r8 cis8 cis[ e] cis4 b8 e fis \bar "" fis4( gis) \bar "'"
    gis4 gis8[ a] gis gis gis \bar "" a8 gis fis fis \bar ""
    e([ gis] fis4) \bar "," fis8 \bar "" fis fis dis fis \bar ""
    gis4 fis8 e \bar "" e8[ fis] fis4 \bar "" e8[ fis] e e
    \bar "" dis([ e] fis4) gis8 \bar "" cis,[-- dis e dis] cis
    \bar "" b[ dis] dis cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*9/16 s2 b\breve*7/16 cis2~ cis\breve*5/16 dis2 b cis~ cis
    dis\breve*5/16 a\breve*5/16 b4. gis4
}
tenorNotesAnt = \relative g {
    gis\breve*9/16 b2 e,\breve*7/16~ e2 a\breve*5/16 fis2 e~ e a
    fis\breve*5/16~ fis\breve*5/16~ fis4. e4
}
bassNotesAnt = \relative c {
    e\breve*9/16~ e2~ e\breve*7/16 a,2~ a\breve*5/16 b2 e a,~ a
    gis\breve*5/16 fis\breve*5/16 gis4. cis4
}
