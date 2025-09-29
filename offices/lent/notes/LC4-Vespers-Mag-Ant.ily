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
  The one who o -- beys God's law
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and teach -- es oth -- ers to do so will be great
  in the king -- dom of heav -- en.
}
sopNotesAnt = \relative e' {
  r8 g8 g4 e8 f g[ c] b[ a] a4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a4
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak f([ a] c4)
  \allowBreak b8
  \allowBreak c
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 f\breve*5/16~ s16 f\breve*6/16 e\breve*7/16
  f\breve*6/16~ 2 d
}
tenorNotesAnt = \relative g {
  c\breve*8/16~ \breve*5/16~ s16 c\breve*6/16~ \breve*7/16~
  \breve*6/16~ 2~ 4 b
}
bassNotesAnt = \relative c {
  e\breve*8/16 f\breve*5/16 s16 d\breve*6/16 c\breve*7/16
  d\breve*6/16 f2 g
}
