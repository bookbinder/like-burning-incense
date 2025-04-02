\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "M"
psalmtone = "14"
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
    What -- e -- ver you "do * " for the least of my bro -- thers,
    you do for me.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 gis8 gis a gis \bar "" fis4 fis8 e fis[ a] gis fis \bar ""
    gis4 gis \bar "'" gis8 \bar "" fis8[ gis] fis \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*5/16 s\breve*8/16 s\breve*5/16 cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*5/16 a\breve*8/16 b\breve*5/16 a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16~ e\breve*8/16~ e\breve*5/16~ e4. e4
}
