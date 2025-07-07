\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "7"
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
  O Mo -- ther, how pure you are,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you are un -- touched by sin; yours was the
  pri -- vi -- lege to car -- ry God wi -- thin you.
}
sopNotesAnt = \relative e' {
  r8 g8 c4 c8 c b[ c] a g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g4
  \allowBreak e8
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak e4( d) \bar ","
  \allowBreak d8[ e]
  \allowBreak d
  \allowBreak e
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d
  \allowBreak c
  \allowBreak d[ a']
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 g2 f4. e4 s16 c2~ c4. s2 c4~
  c\breve*7/16~ c4.~ c4.~ c4 b
}
tenorNotesAnt = \relative g {
  c4~ c2~ c4.~ c4 s16 e,2 f4. a2 f4~
  f\breve*7/16~ f4.~ f4. d2
}
bassNotesAnt = \relative c {
  c'4 e,2 f4. c4~ s16 c2 f4.~ f2 a,4~
  a\breve*7/16 f4. d4. g2
}
