\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "4"
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
  The Ho -- ly Spir -- it, the Par -- a -- clete,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  whom the Fa -- ther will send in my name, will teach you,
  and re -- mind you of all that I told you,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 a g c4 a8 c b[ a] g g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak e[ g]
  \allowBreak g
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak e[ d]
  \allowBreak d4 \bar "'"
  \allowBreak c8
  \allowBreak d[ a']
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak g
  \allowBreak a
  \allowBreak c4
  \allowBreak b8
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative e' {
  s2 g2~ 4. d2 s16 e2 f4.
  s\breve*5/16 d\breve*5/16 f2 g e\breve*5/16~ 4
  d2
}
tenorNotesAnt = \relative g {
  c\breve*8/16 d4. b2 s16 c2~ 4.
  a\breve*5/16~ a c2~ 2~ \breve*5/16~ 4~
  4 b
}
bassNotesAnt = \relative c {
  e\breve*8/16 g4.~ 2 s16 c,2 f4.~
  \breve*5/16~ f~ 2 e c\breve*5/16 f4
  g2
}
