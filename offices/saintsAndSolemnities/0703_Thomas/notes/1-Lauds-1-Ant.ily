\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_63_2-9"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Lord, we do not know
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  where you are go -- ing; how can we know the way? Je -- sus re -- plied:
  I am the way, the truth, and the life.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis e[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar ","
  \allowBreak gis'4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4
  \allowBreak r4 \bar "|"
  \allowBreak gis8[ b]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak e4
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*8/16 s16 s2 e2~ e4.
  dis2 e2 s4 s2 cis\breve*7/16 b4
}
tenorNotesAnt = \relative g {
  e2 fis\breve*8/16 s16 gis2 b2~ b4.~
  b2~ b2~ b4 gis2 e\breve*7/16 gis4
}
bassNotesAnt = \relative c {
  cis2 b\breve*8/16 s16 e2~ e2 b4.~
  b2 e2 dis4 cis2~ cis\breve*7/16 gis4
}
