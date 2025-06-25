\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_113"
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
  He comes in splen -- dor,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the King who is our peace; the whole world longs
  to see him.
}
sopNotesAnt = \relative e' {
  r8 g8 f4 d8 f8[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f4 \bar ","
  \allowBreak f8
  \allowBreak g[ a]
  \allowBreak a([ b] c4)
  \allowBreak b8([ c] a4)
  \allowBreak b8
  \allowBreak a([~ a] a[ g])
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. f4 e4. s16 s2 s4. e4~ e2
  f\breve*5/16 e2 d4
}
tenorNotesAnt = \relative g {
  c4 a4. c4~ c4. s16 a2~ a4.~ a4~ a2~
  a\breve*5/16~ a2 b4
}
bassNotesAnt = \relative c {
  c4~ c4.~ c4~ c4. s16 f2 d4. c4 b4( a)
  d\breve*5/16 f2 g4
}
