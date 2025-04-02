\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
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
    Son, re -- mem -- "ber * " the good things you re -- ceived in your
    life -- time and the bad things La -- za -- rus re -- ceived in his.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8[-- g aes g] f \bar "" aes[ g] g4 f8 \bar "" aes[ f] f ees f \bar ""
    g[ aes] g g[ aes] \bar "" f4 f \bar "'" ees8 f \bar ""
    f[ c'] c4 \bar "" bes8 aes g aes \bar "" bes[ c] c f,4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16 ees\breve*5/16 c\breve*5/16~ c\breve*5/16 des2.
    ees2 f2~ f4. c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*5/16 bes\breve*5/16 aes\breve*5/16 g\breve*5/16 aes2.~
    aes2 des2 bes4. aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*5/16 ees f ees des2.
    c2 des2~ des4. f4
}
