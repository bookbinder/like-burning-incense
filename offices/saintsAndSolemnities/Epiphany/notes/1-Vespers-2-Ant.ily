\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "6"
antKeysig = \key c \major
psalmnum = "Ps_112"
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
  A light has shone through the dark -- ness
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for the up -- right of heart; the Lord is gra -- cious,
  mer -- ci -- ful and just.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak g8
  \allowBreak g[ c]
  \allowBreak c
  \allowBreak d4
  \allowBreak c8
  \allowBreak c
  \allowBreak c[ b]
  \allowBreak b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s8 g'8~ \breve*7/16~ 2. s16 e2
  g4. e f~ 2 d4
}
tenorNotesAnt = \relative g {
  c4~ \breve*7/16 d2. s16 c2~
  4.~ 2.~ 2 b4
}
bassNotesAnt = \relative c {
  e4~ \breve*7/16 g2. s16 a2
  e4. c d f2 g4
}
