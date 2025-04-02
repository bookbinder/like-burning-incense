\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_150"
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
    Prase the "Lord * " in his hea -- ven -- ly power.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 fis8 \bar "" fis([ a gis] fis4) fis8 e \bar "" fis8 gis fis
    \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*10/16 cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b4. a\breve*7/16~ a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4.~ e\breve*7/16~ e4.~ e4
}
