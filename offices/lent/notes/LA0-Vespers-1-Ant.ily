\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
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
    Lord God, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    we ask you to re -- ceive us and be pleased with the
    sa -- cri -- fice we of -- fer you this day with hum -- ble and
    con -- trite hearts.
}
sopNotesAnt = \relative e' {
  f8[ g] g([ aes bes aes] g4)
  \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g[ aes]
  \allowBreak g4
  \allowBreak g8
  \allowBreak aes
  \allowBreak g[ f]
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak f
  \allowBreak f[ c']
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak aes[ c]
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes([ c] bes4) \bar "'"
  \allowBreak bes8
  \allowBreak aes([ bes] aes4)
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak g4
  \allowBreak g8([-- aes] f4) \bar "||"
}
altoNotesAnt = \relative c' {
    c4 f2 ees\breve*9/16 s16 des2. ees2 f\breve*6/16
    ees\breve*5/16~ ees\breve*5/16 c\breve*6/16 des2 c2
}
tenorNotesAnt = \relative g {
    aes4 bes2~ bes\breve*9/16~ s16 bes2. aes2~ aes\breve*6/16
    c\breve*5/16 g\breve*5/16 aes\breve*6/16 bes2 aes2

}
bassNotesAnt = \relative g {
    f4 des2 ees\breve*9/16 s16 bes2. c2 des\breve*6/16
    ees\breve*5/16~ ees\breve*5/16 f\breve*6/16~ f2~ f2
}
