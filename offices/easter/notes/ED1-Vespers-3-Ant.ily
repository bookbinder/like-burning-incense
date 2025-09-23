\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "68"
antKeysig = \key g \major
psalmnum = "Rev_19_1-7"
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
  Al -- le -- lu -- ia,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  sal -- va -- tion, glo -- ry, and power to our God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 a[ b] a4 a
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8
  \allowBreak b4
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak b
  \allowBreak b
  \allowBreak c
  \allowBreak d4 \bar "'"
  \allowBreak b8
  \allowBreak b[ a]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  d2~ \breve*5/16~ s16 d\breve*9/16~ 4. e4 c b
}
tenorNotesAnt = \relative g {
  g2 fis\breve*5/16 s16 g\breve*9/16~ 4.~ 4~ 2
}
bassNotesAnt = \relative c {
  b2 d\breve*5/16 s16 g\breve*9/16 b,4. c4 g2
}
