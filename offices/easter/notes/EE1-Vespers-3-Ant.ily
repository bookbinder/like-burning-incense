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
  our God is king; glo -- ry and praise to him, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 a[ b] a4 a
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak a4( b) \bar ","
  \allowBreak b8[ c]
  \allowBreak b
  \allowBreak b
  \allowBreak a[ b]
  \allowBreak c
  \allowBreak c4 \bar "'"
  \allowBreak c8
  \allowBreak c[ d]
  \allowBreak d[ g,]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  d2~ \breve*5/16~ s16 d4~ \breve*8/16 e\breve*6/16
  g4 d2
}
tenorNotesAnt = \relative g {
  g2 fis\breve*5/16 s16 g4~ \breve*8/16~ \breve*6/16 c4~ 4 b
}
bassNotesAnt = \relative c {
  b2 d\breve*5/16 s16 b4 g\breve*8/16 c\breve*6/16 e4 g2
}
