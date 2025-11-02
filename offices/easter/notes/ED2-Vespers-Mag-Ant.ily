\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "7"
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
  I have oth -- er sheep
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that do not be -- long to this flock; these al -- so
  I must lead. They will hear my voice, and there will
  be one fold and one shep -- herd, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g4 g8 f[ g] a g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak b[ a]
  \allowBreak g4 \bar ","
  \allowBreak a4
  \allowBreak a8
  \allowBreak g
  \allowBreak f
  \allowBreak a4
  \allowBreak g
  \allowBreak r4 \bar "|"
  \allowBreak g8
  \allowBreak g
  \allowBreak e[ g]
  \allowBreak g
  \allowBreak f4 \bar "'"
  \allowBreak f8
  \allowBreak f
  \allowBreak e
  \allowBreak d4
  \allowBreak a'
  \allowBreak a8
  \allowBreak a
  \allowBreak f[ a]
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  e4. f e2 s16 f\breve*8/16 g4 f\breve*5/16
  d2. e\breve*5/16 d~ 4~ 2
  f4 d~ 4. e4 d2
}
tenorNotesAnt = \relative g {
  g4. a c2~ s16 c\breve*8/16~ 4~ \breve*5/16
  b2. c\breve*5/16 a~ 4 c2~
  4~ 4 b4. c4~ c b
}
bassNotesAnt = \relative c {
  c2.~ 2 s16 d\breve*8/16 e4 f\breve*5/16
  g2. c,\breve*5/16 d f4~ 2
  d4 g~ 4.~ 4~ 2
}
