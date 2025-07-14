\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Would that I might know Christ
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and the pow -- er of his re -- sur -- rec -- tion and that
  I might share in his suf -- ferings.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis gis ais([ b] ais4) ais( gis)
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis
  \allowBreak dis
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak gis4 \bar ","
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak e8
  \allowBreak fis
  \allowBreak dis4
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*5/16 fis2 e2. s16 dis\breve*7/16 cis2.~
  cis\breve*7/16~ cis4 b
}
tenorNotesAnt = \relative g {
  b\breve*5/16 cis2~ cis2. s16 ais\breve*7/16 gis2.~
  gis\breve*7/16~ gis2
}
bassNotesAnt = \relative c {
  gis'\breve*5/16 fis2 cis2. s16 dis\breve*7/16 e2.
  cis\breve*7/16 gis2
}
