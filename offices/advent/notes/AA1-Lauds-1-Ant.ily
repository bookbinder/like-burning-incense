\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_63_2-9"
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
  On that day
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  sweet wine will flow from the moun -- tains, milk and
  ho -- ney from the hills, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 f[ a g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8[ a]
  \allowBreak a4
  \allowBreak g8
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak b
  \allowBreak b[ a]
  \allowBreak a4 \bar "'"
  \allowBreak a8[ b]
  \allowBreak a
  \allowBreak c4
  \allowBreak c8
  \allowBreak b
  \allowBreak a
  \allowBreak a4( g) \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  e4 f4. s4 s16 f\breve*5/16 e2 f\breve*7/16 g\breve*5/16
  e\breve*5/16 d4~ d2
}
tenorNotesAnt = \relative g {
  c4~ c4.~ c4~ s16 c\breve*5/16~ c2~ c\breve*7/16~ c\breve*5/16~
  c\breve*5/16~ c4~ c b
}
bassNotesAnt = \relative c {
  c4 d4. e4 s16 f\breve*5/16 a2 d,\breve*7/16 e\breve*5/16
  c\breve*5/16 f4 g2
}
