\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "77"
antKeysig = \key f \major
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
  Si -- mon Pe -- ter said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Lord, to whom shall we go? You have the words of e -- ter -- nal life;
  and we be -- lieve and we are con -- vinced that you are the Christ,
  the Son of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  a8[ bes] a g f g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak f4
  \allowBreak d8
  \allowBreak f
  \allowBreak f4( g) \bar ","
  \allowBreak a4
  \allowBreak f8
  \allowBreak g
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak g[ f]
  \allowBreak d
  \allowBreak d4 \bar "|"
  \allowBreak r8
  \allowBreak d8
  \allowBreak d
  \allowBreak c
  \allowBreak d[ f]
  \allowBreak d
  \allowBreak d4
  \allowBreak d8
  \allowBreak c
  \allowBreak d[ f]
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak a4( g) \bar "'"
  \allowBreak g8
  \allowBreak f[ a]
  \allowBreak c
  \allowBreak d4
  \allowBreak c8
  \allowBreak a[ g]
  \allowBreak a[ g f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  f\breve*5/16^"Different psalm tone. Does it work?" e4 s16 c4.~ c2~ c2~ c2
  d\breve*7/16 a4 s2 s\breve*7/16 c4.~
  c2 e\breve*5/16 f2.~ f4 d4. c4
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c4 s16 e,4. a4 f4 d4( e) f2
  g\breve*7/16 f4 g2 a\breve*7/16~ a4.
  g2 c\breve*5/16 a4. bes4. c4 bes4. a4
}
bassNotesAnt = \relative c {
  f\breve*5/16 c4~ s16 c4.~ c2~ c2 f,2
  bes\breve*7/16 d4 e2 f\breve*7/16~ f4.
  e2 c\breve*5/16 f2.~ f4~ f4.~ f4
}
