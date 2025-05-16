\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Dan_3_57-88,_56"
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
  Tho -- mas, who was called the Twin,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  was not pre -- sent when Je -- sus ap -- peared to the
  a -- pos -- tles; so they told him: We have seen the Lord,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g4 g8 e f g[ a] a g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a[ c]
  \allowBreak c4
  \allowBreak c8
  \allowBreak c
  \allowBreak b
  \allowBreak c
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar ","
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4 \bar "'"
  \allowBreak a'8
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*11/16 s16 g4 e\breve*7/16 f2
  s2. s4. s4 f\breve*7/16 e4 d2
}
tenorNotesAnt = \relative g {
  c\breve*11/16~ s16 c4~ c\breve*7/16~ c2~
  c2. a4.~ a4 c\breve*7/16~ c4 c b
}
bassNotesAnt = \relative c {
  c\breve*11/16 s16 e4 a\breve*7/16 f2
  e2. d4. f4~ f\breve*7/16~ f4 g2
}
