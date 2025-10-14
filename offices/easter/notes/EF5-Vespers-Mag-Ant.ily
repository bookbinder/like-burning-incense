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
  Your sor -- row
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will be turned in -- to joy, and that joy no one will
  take from you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ f d] d4
  \noBreak \hideNotes d16 \unHideNotes
  \allowBreak d8
  \allowBreak d
  \allowBreak d[ a']
  \allowBreak g
  \allowBreak f
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak c4
  \allowBreak c
  \allowBreak b8
  \allowBreak c
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  c4 d\breve*7/16 s16 c2~ 4.~ 2 e\breve*5/16 c4.~ 4~ 4 b
}
tenorNotesAnt = \relative g {
  g4 a\breve*7/16 s16 f2 e4.~ 2 a\breve*5/16 e4. f4 d2
}
bassNotesAnt = \relative c {
  e4 f\breve*7/16 s16 f2 c4. a2 c\breve*5/16~ 4. f,4 g2
}
