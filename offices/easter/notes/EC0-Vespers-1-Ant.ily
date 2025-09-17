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
  The Lord our God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is high a -- bove the heav -- ens; he rais -- es up the low -- ly
  from the dust, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ c] b b4( a)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8
  \allowBreak g
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d
  \allowBreak e
  \allowBreak f([ g] a4)
  \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 f~ s16 f2 d\breve*5/16 e
  d f4~ 4. e4 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c~ s16 c2 b\breve*5/16 c~
  c~ 4~ 4.~ 4~ 4 b
}
bassNotesAnt = \relative c {
  e\breve*5/16 f s16 d2 g\breve*5/16 c,
  d a'4 f4.~ 4 g2
}
