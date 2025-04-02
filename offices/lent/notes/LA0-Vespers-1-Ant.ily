\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_141_1-9"
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
    Lord "God, * " we ask you to re -- ceive us and be pleased with the
    sa -- cri -- fice we of -- fer you this day with hum -- ble and
    con -- trite hearts.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8[ g] \bar "" g([ aes bes aes] \bar "" g4) \bar "'"
    g8 g[ aes] g4 g8 aes \bar "" g[ f] f4 \bar "'" ees8 f
    \bar "" f[ c'] bes aes \bar "" bes[ c] bes bes4 bes8
    \bar "" aes[ c] c bes aes \bar "" bes([ c] bes4) \bar "'"
    bes8 \bar "" aes([ bes] aes4) aes8 aes \bar "" g[ aes] g4
    \bar "" g8([-- aes] f4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c4 f2 ees\breve*9/16 des2. ees2 f\breve*6/16
    ees\breve*5/16~ ees\breve*5/16 c\breve*6/16 des2 c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4 bes2~ bes\breve*9/16~ bes2. aes2~ aes\breve*6/16
    c\breve*5/16 g\breve*5/16 aes\breve*6/16 bes2 aes2

}
bassNotesAnt = \relative g {
    \global
    \keysig
    \voiceTwo
    f4 des2 ees\breve*9/16 bes2. c2 des\breve*6/16
    ees\breve*5/16~ ees\breve*5/16 f\breve*6/16~ f2~ f2
}
