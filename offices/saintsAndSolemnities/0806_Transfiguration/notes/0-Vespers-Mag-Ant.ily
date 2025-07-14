\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "12"
antKeysig = \key f \major
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
  Christ Je -- sus,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you are the splen -- dor of the Fa -- ther and the per -- fect
  i -- mage of his be -- ing; you sus -- tain all cre -- a -- tion with
  your power -- ful word and cleanse us of all our sins. On this day
  you were e -- xal -- ted in glo -- ry u -- pon the high moun -- tain.
}
sopNotesAnt = \relative e' {
  f4 d8[ f] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f4
  \allowBreak g8
  \allowBreak a
  \allowBreak bes[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak d[ f g]
  \allowBreak g4 \bar "'"
  \allowBreak f8
  \allowBreak f
  \allowBreak f[ c']
  \allowBreak c
  \allowBreak c
  \allowBreak bes
  \allowBreak a
  \allowBreak bes
  \allowBreak d[ c]
  \allowBreak c4 \bar ","
  \allowBreak f,8
  \allowBreak g
  \allowBreak bes[ a]
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak d
  \allowBreak e
  \allowBreak f4 \bar "'"
  \allowBreak f8
  \allowBreak e[ d c]
  \allowBreak c4
  \allowBreak c8
  \allowBreak d
  \allowBreak e
  \allowBreak f4 \bar "|"
  \allowBreak r8
  \allowBreak f8
  \allowBreak f[ c']
  \allowBreak c4
  \allowBreak c
  \allowBreak a8
  \allowBreak bes
  \allowBreak d[ c]
  \allowBreak c
  \allowBreak a
  \allowBreak bes[ a bes]
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak d[ e]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c4 d2 s16 c2 bes\breve*5/16 d\breve*7/16 f4.~
  f\breve*10/16 bes,4 d\breve*7/16 c4
  a4. c4.~ c\breve*7/16~ c4 f\breve*12/16
  bes,\breve*5/16 d4 c bes a
}
tenorNotesAnt = \relative g {
  a4 bes2 s16 a2 f\breve*5/16~ f\breve*7/16~ f4.~
  f\breve*10/16~ f4~ f\breve*7/16~ f4~
  f4. g4. a\breve*7/16~ a4 f\breve*12/16~
  f\breve*5/16~ f2 c
}
bassNotesAnt = \relative c {
  f2.~ s16 f2 d\breve*5/16 bes\breve*7/16 a4.~
  a\breve*10/16 d4 bes\breve*7/16 a4
  d4. c4. f\breve*7/16~ f4 a,\breve*12/16
  d\breve*5/16 bes4 a f2
}
