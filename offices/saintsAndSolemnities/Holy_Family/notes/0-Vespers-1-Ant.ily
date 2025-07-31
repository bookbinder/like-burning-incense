\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "15"
antKeysig = \key cis \minor
psalmnum = "Ps_113"
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
  Ja -- cob was the fa -- ther of Jo -- seph,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the hus -- band of Ma -- ry; Ma -- ry gave birth to Je -- sus
  who is called the Christ.
}
sopNotesAnt = \relative e' {
  e4 e8 e e e b cis cis[ gis' a gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak dis[ fis]
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ gis fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 cis2 e\breve*6/16 s16 dis2
  s\breve*8/16 s4. s4 cis4 a4. gis2
}
tenorNotesAnt = \relative g {
  gis\breve*8/16 a2 b\breve*6/16~ s16 b2~
  b\breve*8/16 gis4. a4 gis4 fis4. e2
}
bassNotesAnt = \relative c {
  e\breve*8/16~ e2~ e\breve*6/16 s16 b2
  dis\breve*8/16 cis4.~ cis4~ cis4~ cis4.~ cis2
}
