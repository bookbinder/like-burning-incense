\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "1"
antKeysig = \key c \major
psalmnum = "Ps_126"
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
  Wil -- ling -- ly
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I boast of my weak -- ness -- es, that the pow -- er
  of Christ may live in me.
}
sopNotesAnt = \relative e' {
  c'8 c b4
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak f([ g] a4)
  \allowBreak a8
  \allowBreak g[ a g]
  \allowBreak f
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  g'\breve*5/16 s16 e2 d2 e4 f4. f\breve*5/16 d2~ d4
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ s16 c2 d2 c4~ c4.~ c\breve*5/16~ c2 b4
}
bassNotesAnt = \relative c {
  e\breve*5/16 s16 a2 b2 c4 f,4. d\breve*5/16 g2~ g4
}
