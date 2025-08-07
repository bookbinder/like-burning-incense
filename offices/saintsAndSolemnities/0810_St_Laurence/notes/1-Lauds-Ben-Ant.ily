\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "80"
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
  Do not be a -- fraid, my son,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for I am with you; if you should walk through the fire,
  the flames will not harm you, nor will the o -- dor
  of burn -- ing cling to you.
}
sopNotesAnt = \relative b' {
  \allowBreak r8
  \allowBreak c8
  \allowBreak c4
  \allowBreak b8
  \allowBreak c
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak f([ g] a4)
  \allowBreak a8
  \allowBreak a[ g]
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak e
  \allowBreak f4
  \allowBreak f8
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak g[ f]
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak d
  \allowBreak d[ f]
  \allowBreak f
  \allowBreak g[ a g]
  \allowBreak f
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2. f4. e4. s16 f\breve*5/16 d2 s2
  s\breve*7/16 f\breve*5/16 e\breve*7/16 d4.~
  d4. f2 d4
}
tenorNotesAnt = \relative g {
  g2. a4. c4.~ s16 c\breve*5/16~ c4 b c2~
  c\breve*7/16~ c\breve*5/16~ c\breve*7/16~ c4.~
  c4.~ c2 b4
}
bassNotesAnt = \relative c {
  c2.~ c2. s16 d\breve*5/16 g2 e2
  d\breve*7/16 f\breve*5/16 c\breve*7/16 d4.
  f4. a2 g4
}
