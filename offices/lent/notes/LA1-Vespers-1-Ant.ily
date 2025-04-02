\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "79"
psalmtonestruct = "43"
psalmnum = "Ps_110_1-5,_7"
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
    Wor -- ship your Lord and "God; * " serve him a -- lone.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 gis8 fis \bar "" gis[ a] fis \bar "" fis4( e) \bar ","
    fis8[ a] a[ b] a \bar "" gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*11/16 e\breve*5/16~ e4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b2 cis4. b2 a\breve*5/16 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2 a4. gis2 cis,\breve*5/16 e4
}
