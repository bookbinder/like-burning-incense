\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Magnificat"
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
  Of what use is it to a man
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to gain the whole world, if he pays for it by
  lo -- sing his soul?
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e dis dis dis e fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*5/16~ b4. s16 cis4. dis\breve*6/16 cis2~
  cis2 b4
}
tenorNotesAnt = \relative g {
  e2 fis\breve*5/16 dis4. s16 e4. b'\breve*6/16 gis2~
  gis2~ gis4
}
bassNotesAnt = \relative c {
  cis2 b\breve*5/16~ b4.~ s16 b4.~ b\breve*6/16 e2
  cis2 gis4
}
