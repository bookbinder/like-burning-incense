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
  In a lit -- tle while
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the world will no long -- er see me, but you will see me,
  for I live and you will live, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  d8 e f[ e] d d4
  \noBreak \noBreak \hideNotes d16 \unHideNotes
  \allowBreak c8
  \allowBreak d[ f]
  \allowBreak e
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak f[ e]
  \allowBreak e4 \bar ","
  \allowBreak e8
  \allowBreak f4
  \allowBreak e8[ d]
  \allowBreak d[ a']
  \allowBreak a4 \bar ","
  \allowBreak g8
  \allowBreak a
  \allowBreak c4
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  a\breve*12/16 s16 c4.~ c4~ c4. a2
  c2.~ c\breve*5/16~ c4.~ c4~ c4 b
}
tenorNotesAnt = \relative g {
  f\breve*12/16 s16 e4. a4 g4. f2~
  f2. e\breve*5/16~ e4. f4 d2
}
bassNotesAnt = \relative c {
  d\breve*12/16 s16 c4.~ c4~ c4. d2
  f,2. a\breve*5/16 c4. f,4 g2
}
