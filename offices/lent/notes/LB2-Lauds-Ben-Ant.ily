\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "B"
psalmtone = "43"
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
    Be com -- pas -- sion -- ate and for -- gi -- "ving * " as your Fa -- ther
    is, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 gis8 gis a gis fis e \bar "" fis[ gis fis] fis4 \bar "'" fis8 gis
    \bar "" e[ fis] e e4 \bar "'" dis8[ e] dis \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b\breve*8/16 cis\breve*7/16 gis\breve*5/16 a4. gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*8/16~ e\breve*7/16~ e\breve*5/16 fis4. e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*8/16 a,\breve*7/16 cis\breve*5/16~ cis4.~ cis4
}
