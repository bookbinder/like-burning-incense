\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Phil_2_6-11"
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
  Was it not nec -- es -- sa -- ry for Christ to suf -- fer
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and so en -- ter in -- to his glo -- ry? Al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis[ e]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak dis[ e]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s4 cis4~ \breve*9/16 gis\breve*5/16 s16 b4~ \breve*6/16
  s\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  gis2 fis\breve*9/16 e\breve*5/16 s16 fis4 dis\breve*6/16
  gis\breve*5/16 fis4~ fis e
}
bassNotesAnt = \relative c {
  e2 a,\breve*9/16 cis\breve*5/16 s16 b4~ \breve*6/16
  e\breve*5/16 b4 cis2
}
