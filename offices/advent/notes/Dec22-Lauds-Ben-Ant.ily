\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    The mo -- ment your gree -- ting reached my "ears, * "
    the child with -- in my womb leapt for joy.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 e[ fis] fis e fis[ gis] fis e fis fis([ e] cis4) \bar "'"
    b8 cis[ e] e dis e fis([ gis] fis4) e8[ fis dis] e cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis4 cis2 cis\breve*5/16~ cis4 s4 s8 b\breve*5/16
    cis2 b2 gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e4~ e2 a\breve*5/16 gis4~ gis4. e\breve*5/16~
    e2~ e4 fis4 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4 a2~ a\breve*5/16 cis4 e4.~ e\breve*5/16
    a,2 gis4 b cis4
}
