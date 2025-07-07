\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Dan_3_26,_27,_29,_34-41"
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
  Let all the na -- tions, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  know the depths of your lo -- ving mer -- cy on us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ a] g a g g g([ f] d4)
  \noBreak \noBreak \hideNotes d16 \unHideNotes
  \allowBreak d8[ f]
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak c4
  \allowBreak b8
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s2 s16 c4.~ c\breve*7/16~ c2 g'4. f4 d2
}
tenorNotesAnt = \relative g {
  c\breve*8/16 a2 s16 f4. e\breve*7/16 f2 c'4.~ c4~ c4 b
}
bassNotesAnt = \relative c {
  e\breve*8/16 f2 s16 a,4. c\breve*7/16 d2 e4. f4 g2
}
