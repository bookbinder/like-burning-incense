\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "79"
psalmtonestruct = "43"
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
    Praise "God * " for his migh -- ty deeds.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis8[ a gis] \bar "" fis4 e8 fis \bar "" fis8[ a] a \bar "" gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*7/16 e4.~ e4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b4. a2 cis4. b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4.~ e2~ e4.~ e4
}
