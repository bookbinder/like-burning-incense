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
  A wo -- man in the crowd called out:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  How hap -- py your moth -- er must be, who bore you and fed
  you at her breast. But Je -- sus an -- swered: Hap -- pier still
  those who hear the word of God and live by it.
}
sopNotesAnt = \relative e' {
  r8 g8 g a g a b[ c] a[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak b
  \allowBreak c
  \allowBreak d
  \allowBreak d
  \allowBreak e
  \allowBreak d
  \allowBreak c4 \bar "'"
  \allowBreak b8
  \allowBreak a[ b a]
  \allowBreak g4
  \allowBreak g8
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4 \bar "'"
  \allowBreak a'4
  \allowBreak g8
  \allowBreak f[ g]
  \allowBreak a4
  \allowBreak a8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak c[ b]
  \allowBreak a
  \allowBreak a4
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative e' {
  s\breve*8/16 s\breve*5/16 s16 g2. e4.
  f4. r4. f\breve*5/16 d4 c\breve*5/16 a
  c\breve*8/16~ 4.~ 4. f4.~ 4 d
}
tenorNotesAnt = \relative g {
  c\breve*8/16 b\breve*5/16~ s16 b2. c4.~
  4.~ 4.~ \breve*5/16 b4 e,\breve*5/16 f~
  \breve*8/16 e4. f a~ 4 b
}
bassNotesAnt = \relative c {
  e\breve*8/16 g\breve*5/16~ s16 g2. a4.
  f e d\breve*5/16 g4 c,\breve*5/16 d
  f,\breve*8/16 c'4. d~ d f4 g
}
