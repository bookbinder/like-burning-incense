\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "7"
antKeysig = \key c \major
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
  Christ is bap -- tized,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the world is made ho -- ly; he has tak -- en a -- way our sins.
  We shall be pu -- ri -- fied by wa -- ter and the
  Ho -- ly Spir -- it.
}
sopNotesAnt = \relative e' {
  \allowBreak c'4
  \allowBreak a8
  \allowBreak g
  \allowBreak c4( b)
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak a[ b]
  \allowBreak a[ g]
  \allowBreak g4 \bar ","
  \allowBreak a4
  \allowBreak g8
  \allowBreak a
  \allowBreak b
  \allowBreak c
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak e
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4
  \allowBreak a'8
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  g'2~ \breve*5/16 s16 e\breve*6/16 s2. e4.~
  4 d4 e\breve*9/16 s\breve*5/16 f2 d
}
tenorNotesAnt = \relative g {
  c2 d\breve*5/16 s16 c\breve*6/16 d2. c4.~
  4 b4 c\breve*9/16~ \breve*5/16~ 2~
  4 b
}
bassNotesAnt = \relative c {
  e2 g\breve*5/16 s16 a\breve*6/16 b2. c4.
  f,4 g c,\breve*9/16 d\breve*5/16~ 4 f g2
}
