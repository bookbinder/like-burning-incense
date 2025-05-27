\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  There was a wed -- ding in Ca -- na of Ga -- li -- lee,  
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
  and Je -- sus was there with Ma -- ry, his mo -- ther.
}
sopNotesAnt = \relative e' {
  r8 g8 e f \bar "" g[ c] c c \bar ""
  b([ c] a4) g8 f \bar "" a g g4
  \hideNotes e16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak f[ e f]
  \allowBreak e
  \allowBreak d
  \allowBreak d4( a')
  \allowBreak a8
  \allowBreak g[ c]
  \allowBreak b
  \allowBreak c
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2 c2 f\breve*6/16 e\breve*5/16 s16
  d\breve*5/16~ d\breve*5/16 g2 d2
}
tenorNotesAnt = \relative g {
  c2~ c~ c\breve*6/16~ c\breve*5/16 s16
  a\breve*5/16~ a\breve*5/16 c2~ c4 b
}
bassNotesAnt = \relative c {
  c'2 e, f\breve*6/16 c\breve*5/16 s16
  d\breve*5/16 f\breve*5/16 e2 g
}
