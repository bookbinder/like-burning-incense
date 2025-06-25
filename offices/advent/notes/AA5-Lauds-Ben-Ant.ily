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
  I shall wait for my Lord and Sa -- vior
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and point him out when he is near, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  dis8 fis gis4 gis8 gis fis[ gis] ais gis[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ fis]
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak ais4 \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis2.~ dis4.~ dis\breve*5/16~ s16 dis4. cis\breve*5/16~
  cis4~ cis~ cis b
}
tenorNotesAnt = \relative g {
  gis2. ais4. b\breve*5/16 s16 ais4. gis\breve*5/16
  fis4 e gis2
}
bassNotesAnt = \relative c {
  b2. dis4. gis\breve*5/16 s16 fis4. e\breve*5/16
  fis4 cis gis2
}
