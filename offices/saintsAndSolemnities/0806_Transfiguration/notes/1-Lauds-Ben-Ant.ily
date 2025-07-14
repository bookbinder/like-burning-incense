\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "50"
antKeysig = \key f \minor
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
  A voice spoke from the cloud:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  This is my be -- lo -- ved Son in whom I am well pleased;
  li -- sten to him.
}
sopNotesAnt = \relative e' {
  r8 f f[ c] ees4 f8 g f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8[ c']
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak g4( f) \bar ","
  \allowBreak f8([ ees] f[ ees c])
  \allowBreak c
  \allowBreak ees
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c2 s2 s4 s16 c\breve*5/16 f\breve*6/16 ees2 des \bar ","
  c\breve*7/16~ c2
}
tenorNotesAnt = \relative g {
  aes2 g aes4 s16 f\breve*5/16 aes\breve*6/16~ aes2~ aes2
  g\breve*7/16 aes2
}
bassNotesAnt = \relative c {
  f2~ f~ f4 s16 aes,\breve*5/16 des\breve*6/16 c2 des
  ees\breve*7/16 f2
}
