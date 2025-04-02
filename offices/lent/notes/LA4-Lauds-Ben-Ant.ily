\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
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
    This e -- vil and faith -- less ge -- ner -- a -- "tion * " asks
    for a sign, but no sign will be gi -- ven it ex -- cept the sign
    of the pro -- phet Jo -- nah.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 e4 dis8 e fis fis e dis \bar "" dis[ cis] cis4 \bar ""
    cis8[ gis'] gis fis \bar "" gis4 \bar "," fis8 gis[-- b] \bar ""
    cis4 b8 gis \bar "" fis8 e e gis fis gis \bar "" cis,[ dis] cis e
    fis4 e8 \bar "" dis[ cis] \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*10/16 a2 cis e\breve*5/16~ e2 cis2.~ cis\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*10/16~ e2 gis2 b\breve*5/16 a4 gis a2. fis\breve*7/16~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*10/16 a2 e'2~ e\breve*5/16~ e2 a2. a,\breve*7/16 cis2
}
