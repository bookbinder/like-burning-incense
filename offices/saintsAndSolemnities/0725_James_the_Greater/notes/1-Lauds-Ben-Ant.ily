\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
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
  Je -- sus took Pe -- ter,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  James and his bro -- ther John and led them up a high
  moun -- tain where they could be a -- lone, and he was
  trans -- fi -- gured be -- fore them.
}
sopNotesAnt = \relative e' {
  e4 b8 cis cis[ gis'] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak gis[ fis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis4( fis) \bar ","
  \allowBreak e8
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak dis([ e] fis4)
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b2~ b\breve*8/16~ s16 b2. gis\breve*7/16
  cis\breve*8/16~ cis\breve*8/16 b2~
  b4 gis2
}
tenorNotesAnt = \relative g {
  e2~ e\breve*8/16 s16 dis2. e\breve*7/16~
  e\breve*8/16 a\breve*8/16 fis4 dis fis4~ fis e
}
bassNotesAnt = \relative c {
  gis2 e\breve*8/16 s16 b'2. cis\breve*7/16
  a\breve*8/16~ a\breve*8/16 b2~ b4 cis2
}
