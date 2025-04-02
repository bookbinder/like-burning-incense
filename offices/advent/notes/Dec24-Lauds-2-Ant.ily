\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "77"
psalmtonestruct = "43"
psalmnum = ""
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
    Lift up your heads and "see; * " your re -- demp -- tion is now at hand.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 fis8 e fis[ a] a gis4 \bar "'"
    e8 fis gis a gis fis[ a] a gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*9/16 e4~ e4.~ e4.~ e4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b2 a4. b2~ b4. cis4. b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2~ e4.~ e2~ e4.~ e4.~ e4
}
