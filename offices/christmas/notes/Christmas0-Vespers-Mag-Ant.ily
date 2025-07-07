\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "7"
antKeysig = \key c \major
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
  When the sun ri -- ses in the mor -- ning sky,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will see the King of kings co -- ming forth from
  the Fa -- ther like a ra -- diant
  bride -- groom from the bri -- dal cham -- ber.
}
sopNotesAnt = \relative e' {
  g8 g g[ a] g[ f] d f g a[ g] f g4 
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak a[-- b c b]
  \allowBreak a
  \allowBreak g4
  \allowBreak a8[ b]
  \allowBreak a
  \allowBreak a4
  \allowBreak g8
  \allowBreak f
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e]
  \allowBreak f
  \allowBreak d[ e f]
  \allowBreak f4
  \allowBreak f8
  \allowBreak g
  \allowBreak a
  \allowBreak f
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  e2 d\breve*8/16 s2 s16 f4.
  g\breve*7/16 f\breve*7/16 e2. d4.~
  d\breve*7/16 c4~ c4 b4
}
tenorNotesAnt = \relative g {
  c2 a\breve*8/16 c2~ s16 c4.~
  c\breve*7/16~ c\breve*7/16~ c2. a4.~
  a\breve*7/16 d,4~ d2
}
bassNotesAnt = \relative c {
  c2 d\breve*8/16 e2 s16 d4.
  e\breve*7/16 f\breve*7/16 c2. d4.~
  d\breve*7/16~ d4 g,2
}
