\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "2"
antKeysig = \key c \major
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
  When they saw the star
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Ma -- gi were filled with great joy; en -- ter -- ing the house,
  they of -- fered their gifts to the Lord:
  gold, frank -- in -- cense and myrrh.
}
sopNotesAnt = \relative e' {
  \allowBreak e8
  \allowBreak e
  \allowBreak e[ f]
  \allowBreak d
  \allowBreak g([ a] g4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a4
  \allowBreak a8
  \allowBreak g
  \allowBreak a[ c]
  \allowBreak c
  \allowBreak b[ c a]
  \allowBreak g4
  \allowBreak r4 \bar "|"
  \allowBreak a8
  \allowBreak a
  \allowBreak a
  \allowBreak g
  \allowBreak a4
  \allowBreak a8
  \allowBreak g
  \allowBreak g
  \allowBreak e
  \allowBreak f4
  \allowBreak f8
  \allowBreak e
  \allowBreak e4( d) \bar ","
  \allowBreak a'4
  \allowBreak a8
  \allowBreak g
  \allowBreak f
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. s\breve*5/16 s16 f2 g4. f d2
  f\breve*7/16 e4. d2 s2 f4 f2
  d4
}
tenorNotesAnt = \relative g {
  g4 a4. c\breve*5/16~ s16 c2~ 4.~ 4. b2
  c\breve*7/16~ 4. a2~ 2 c4~ 2
  b4
}
bassNotesAnt = \relative c {
  c4 f4. e\breve*5/16 s16 f2 e4. d g2
  f\breve*7/16 c4. d2 f2~ 4 d2
  g4
}
