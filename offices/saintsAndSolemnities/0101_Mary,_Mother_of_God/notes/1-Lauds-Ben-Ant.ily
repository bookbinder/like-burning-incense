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
  Mar -- velous is the mys -- tery pro -- claimed to -- day:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  man's na -- ture is made new as God be -- comes man;
  he re -- mains what he was and be -- comes what he was not.
  Yet each na -- ture stays dis -- tinct and for e -- ver un -- di -- vid -- ed.
}
sopNotesAnt = \relative c'' {
  \allowBreak c4
  \allowBreak c8
  \allowBreak b
  \allowBreak c
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g4
  \allowBreak a8
  \allowBreak g
  \allowBreak g
  \allowBreak b[ c a]
  \allowBreak a4
  \allowBreak a8
  \allowBreak b4
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak a4( g) \bar ","
  \allowBreak g8
  \allowBreak g
  \allowBreak b
  \allowBreak c
  \allowBreak a
  \allowBreak a4
  \allowBreak a8
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak a4
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak a4
  \allowBreak g8
  \allowBreak a
  \allowBreak c([ d] c4)
  \allowBreak c8
  \allowBreak b
  \allowBreak c
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative g' {
  g\breve*8/16 f4. d4 s16 e\breve*5/16
  f2. f\breve*5/16 d2. e\breve*7/16 d2~
  d4~ d2 s\breve*5/16 s2 e4~ e4. f4 d2
}
tenorNotesAnt = \relative g {
  c\breve*8/16~ 4. b4 s16 c\breve*5/16~
  2.~ \breve*5/16 b2. a\breve*7/16~ 2
  b4~ 2 e\breve*5/16 d2 c4~ 4.~ 4~ 4 b
}
bassNotesAnt = \relative c {
  e\breve*8/16 f4. g4 s16 c,\breve*5/16
  d2. f\breve*5/16 g2. c,\breve*7/16 f2
  g4~ 2 c\breve*5/16 b2 a4 a,4. d4 g2
}
