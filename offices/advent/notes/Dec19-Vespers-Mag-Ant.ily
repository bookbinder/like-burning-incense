\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "52"
psalmtonestruct = "44"
psalmnum = "Magnificat"
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
  O Flower of Jes -- se's stem,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have been raised up as a sign
  for all peo -- ples; kings stand si -- lent in your pre -- sence; the
  na -- tions bow down in wor -- ship be -- fore you. Come, let
  no -- thing keep you from co -- ming to our aid.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes f \bar "" g[ f ees] f f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak aes
  \allowBreak g
  \allowBreak g[ f]
  \allowBreak f[ ees]
  \allowBreak ees4 \bar ","
  \allowBreak aes8[ g]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak f8
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g4
  \allowBreak g8
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes \bar ","
  \allowBreak c4
  \allowBreak c8
  \allowBreak bes[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak g
  \allowBreak aes
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c\breve*5/16 ees2 c4. s16 ees4~ ees\breve*13/16~
  ees\breve*7/16~ ees\breve*5/16 c\breve*5/16 ees2 f2 ees4.
  f4. des4. ees\breve*5/16 c4
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*5/16 bes2 aes4. s16 bes4~ bes\breve*9/16~ bes2
  aes\breve*7/16 bes\breve*5/16 aes\breve*5/16 bes2~ bes2
  g4. f4. bes4.~ bes\breve*5/16 aes4
}
bassNotesAnt = \relative c {
  g'4 f\breve*5/16 ees4 c4 f4. s16 g4 ees\breve*9/16 g2 c,\breve*7/16
  ees\breve*5/16 f\breve*5/16 ees2 des2 c4. des4. bes4.
  c\breve*5/16 f4
}
