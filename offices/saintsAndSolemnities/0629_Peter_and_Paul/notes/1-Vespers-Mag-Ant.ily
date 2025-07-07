\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "49"
antKeysig = \key f \minor
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
  Pe -- ter the a -- pos -- tle
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and Paul the tea -- cher of the Gen -- tiles taught
  us your law, O Lord.
}
sopNotesAnt = \relative e' {
  f4 f8 ees f g[ aes bes] bes4
  \noBreak \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak bes8
  \allowBreak c4
  \allowBreak bes8
  \allowBreak aes[ c]
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes[ aes g]
  \allowBreak g4
  \allowBreak f8[ ees c]
  \allowBreak c4
  \allowBreak c8[ ees]
  \allowBreak ees4( f) \bar "'"
  \allowBreak g8([ aes] g4)
  \allowBreak g( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 ees2.~ s16 ees2.~ ees4~ ees4.~ ees4
  c\breve*5/16~ c4 des2~ des c2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes4. g4. s16 aes2.~ aes4 g4. bes4
  aes\breve*5/16 bes4 aes2 bes2~ bes4( aes)
}
bassNotesAnt = \relative c {
  f\breve*5/16 ees2. s16 aes,4. c4.~ c4 ees4.~ ees4
  aes\breve*5/16 g4 f2 ees2 f2
}
