\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Eph_1_3-10"
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
  When the Son of Man comes to earth,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  do you think he will find faith in men's hearts?
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis dis[ e] \allowBreak fis[ gis fis]
  \allowBreak e
  \allowBreak dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis[ e]
  \allowBreak dis
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4( gis8)
  \allowBreak gis
  \allowBreak fis[ e]
  \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 cis2 b2~ s16 b\breve*5/16~
  b2 cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16~ gis2~ gis2 s16 fis\breve*5/16
  e2 gis4~ gis2
}
bassNotesAnt = \relative c {
  e\breve*7/16 cis2 gis2 s16 dis'\breve*5/16
  e2 cis4 gis2
}
