\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Phil_2_6-11"
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
  The Lord will come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with migh -- ty power; all mor -- tal eyes shall see him.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ a] g g([ f] d4) 
  \noBreak \noBreak \hideNotes d16 \unHideNotes
  \allowBreak d8
  \allowBreak e
  \allowBreak f
  \allowBreak g4 \bar ","
  \allowBreak g4
  \allowBreak a8[ c]
  \allowBreak c
  \allowBreak b4
  \allowBreak c8
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 d\breve*7/16 s16 e4 g4 f2. d2
}
tenorNotesAnt = \relative g {
  g\breve*5/16 a\breve*7/16 s16 c2~ c2.~ c4 b
}
bassNotesAnt = \relative c {
  e\breve*5/16 f\breve*7/16 s16 c4 e f2. g2
}
