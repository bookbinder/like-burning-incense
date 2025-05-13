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
  The Lord has ri -- sen from the dead
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  as he pro -- mised; let all the earth re -- joice and be glad,
  for he shall reign for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 c4 c8 d c b c a4
  \noBreak \hideNotes a16 \unHideNotes
  \allowBreak a8
  \allowBreak b
  \allowBreak a[ g]
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak e[ g]
  \allowBreak g
  \allowBreak a4
  \allowBreak g8
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak e
  \allowBreak e4( d) \bar "'"
  \allowBreak d8
  \allowBreak e
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  r8 g'8~ g\breve*7/16 f2 s16 d2 e\breve*5/16~
  e4. d2 s\breve*7/16 f4. d4~ d4. e4 d2
}
tenorNotesAnt = \relative g {
  c4~ c\breve*7/16~ c2 s16 b2 c\breve*5/16~
  c4. a2~ a\breve*7/16 c4.~ c4 b4. c4~ c b
}
bassNotesAnt = \relative c {
  e4~ e\breve*7/16 f2 s16 g2 c,\breve*5/16~
  c4. d2 f\breve*7/16~ f4. g4~ g4.~ g4~ g2
}
