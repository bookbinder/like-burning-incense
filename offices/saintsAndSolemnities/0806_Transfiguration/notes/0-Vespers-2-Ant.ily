\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_117"
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
  Sud -- den -- ly
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Mo -- ses and E -- li -- jah ap -- peared be -- fore them and
  be -- gan talk -- ing with Je -- sus.
}
sopNotesAnt = \relative e' {
  c'8 c b4
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak b8
  \allowBreak c
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f[ e d]
  \allowBreak d
  \allowBreak a'
  \allowBreak g4 g \bar "||"
}
altoNotesAnt = \relative c' {
  g'2 s16 e2 f2. s2. f4
  d\breve*5/16~ d2
}
tenorNotesAnt = \relative g {
  c4 d s16 c2~ c2.~ c2.~ c4~
  c\breve*5/16~ c4 b
}
bassNotesAnt = \relative c {
  e4 g s16 c2 f,4. d e2. f4
  d\breve*5/16 g2
}
