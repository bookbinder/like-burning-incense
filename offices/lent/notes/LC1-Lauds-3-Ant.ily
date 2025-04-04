\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "79"
psalmtonestruct = "43"
psalmnum = "Ps_148"
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
    All kings and peo -- ples of the "earth, * "
    give praise to God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 gis8[ a] gis gis fis e fis \bar "" fis([ a] gis4) \bar "'"
    gis8 \bar "" fis([-- gis] a4) a8 \bar "" gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*14/16 e\breve*5/16 e4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*9/16 a4 b4. a\breve*5/16 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16~ e4~ e4. cis\breve*5/16 e4
}
