\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "2"
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
  Tea -- cher, what is the great -- est com -- mand -- ment in the law?
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus said to him: You shall love the Lord your God
  with your whole heart.
}
sopNotesAnt = \relative e' {
  g8[ a] g e f g a4 a8 g a a g f g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak g
  \allowBreak a4 \bar "'"
  \allowBreak g8
  \allowBreak a
  \allowBreak a([-- c d] c4)
  \allowBreak c8
  \allowBreak a[ c]
  \allowBreak c
  \allowBreak b([ a] g4)
  \allowBreak g8
  \allowBreak a
  \allowBreak f[-- a b a]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*14/16 s4 s16 f\breve*5/16~
  2 g\breve*9/16~ 4 d2 f4 e d
}
tenorNotesAnt = \relative g {
  c\breve*14/16~ 4~ s16 c\breve*5/16~
  2~ \breve*9/16 d4( b2) c b4
}
bassNotesAnt = \relative c {
  c'\breve*14/16 g4 s16 d\breve*5/16~
  2 e\breve*9/16 g2. a4 f g
}
