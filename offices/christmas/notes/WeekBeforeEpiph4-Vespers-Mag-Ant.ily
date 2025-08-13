\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Magnificat"
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
  I have come forth from God in -- to the world;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have not come of my -- self, but the Fa -- ther sent me.
}
sopNotesAnt = \relative e' {
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis([ fis] dis4)
  \allowBreak dis8
  \allowBreak cis
  \allowBreak dis
  \allowBreak e([ fis e] cis4)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak dis[ fis]
  \allowBreak fis4
  \allowBreak dis8
  \allowBreak fis
  \allowBreak gis([ ais] gis4) \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*7/16 cis4 b\breve*5/16 gis\breve*5/16 s16 b4 cis2.~
  cis b4. cis4. b4
}
tenorNotesAnt = \relative g {
  dis\breve*7/16 e4 gis\breve*5/16 e\breve*5/16 s16 fis4~ 2.
  e2. fis4. e gis4
}
bassNotesAnt = \relative c {
  gis\breve*7/16~ 4~ \breve*5/16 cis s16 b4 ais2.
  cis gis4.~ 4.~ 4
}
