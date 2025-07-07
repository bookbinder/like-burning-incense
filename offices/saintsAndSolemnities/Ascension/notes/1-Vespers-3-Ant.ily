\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "6"
antKeysig = \key c \major
psalmnum = "Rev_11_17-18_and_12_10b-12a"
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
  Now the Son of Man has been glo -- ri -- fied
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and God has been glo -- ri -- fied in him, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  c'4 c8 b g b[ c] a g a[ g] f f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak a8
  \allowBreak c4
  \allowBreak b8
  \allowBreak g
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  g'\breve*5/16 f2~ f\breve*6/16 s16 g2 f\breve*5/16 d4. e4 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c2~ c\breve*6/16~ s16 c2~ c\breve*5/16
  b4. c4~ c4 b
}
bassNotesAnt = \relative c {
  e\breve*5/16 f2 d\breve*6/16 s16 e2 f\breve*5/16
  g4.~ g4~ g2
}
