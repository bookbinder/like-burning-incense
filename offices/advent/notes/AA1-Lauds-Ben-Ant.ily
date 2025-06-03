\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "7"
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
  The Ho -- ly Spi -- rit will come u -- pon you, Ma -- ry;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will have no need to be a -- fraid. You will car -- ry in your
  womb the Son of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g4 d8 f g g a g f g a[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g[ c]
  \allowBreak c
  \allowBreak b
  \allowBreak c
  \allowBreak a4( g) \bar ","
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak g
  \allowBreak g([ f] d4) \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  e4 d\breve*6/16 f2 e2. s16 f4.
  c\breve*5/16 e\breve*10/16 f4. r4
  d\breve*5/16 r4 d2
}
tenorNotesAnt = \relative g {
  c4 a\breve*6/16 c2~ c2.~ s16 c4.
  g\breve*5/16 c\breve*10/16~ c4.~ c4
  a\breve*5/16 c4~ c b
}
bassNotesAnt = \relative c {
  c4 f\breve*6/16~ f2 c2. s16 d4.
  e\breve*5/16 c\breve*10/16 d4. e4 f\breve*5/16 a4 g2
}
