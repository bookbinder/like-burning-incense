\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
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
  All who once re -- viled you
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come and bow down in wor -- ship be -- fore
  your ve -- ry foot -- prints.
}
sopNotesAnt = \relative e' {
  \allowBreak e4
  \allowBreak dis8
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis[ e]
  \allowBreak fis[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2. b\breve*13/16 s16 cis\breve*6/16~
  4~ 4 b
}
tenorNotesAnt = \relative g {
  e2. fis\breve*13/16 s16 gis\breve*6/16~
  4~ 2
}
bassNotesAnt = \relative c {
  cis2. b\breve*13/16 s16 e\breve*6/16
  cis4 gis2
}
