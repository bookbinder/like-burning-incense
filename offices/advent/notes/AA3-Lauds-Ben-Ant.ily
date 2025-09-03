\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "55"
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
  From the root of Jes -- se
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a flower will blos -- som, the glo -- ry of the Lord will fill the earth,
  and all cre -- a -- tion shall see the sa -- ving pow -- er of God.
}
sopNotesAnt = \relative e' {
  dis8 dis gis[ ais] gis b[ ais gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak ais4
  \allowBreak gis8
  \allowBreak fis[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak gis[ ais]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis([ gis] ais4)
  \allowBreak ais8
  \allowBreak ais([ b] ais4)
  \allowBreak ais8
  \allowBreak ais4( gis) \bar ","
  \allowBreak gis8
  \allowBreak ais4
  \allowBreak gis8
  \allowBreak fis[ dis]
  \allowBreak dis4
  \allowBreak cis8[ dis]
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak gis([ ais] b4)
  \allowBreak b8
  \allowBreak ais4
  \allowBreak ais8
  \allowBreak fis
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*11/16~ dis4.~ dis4~ dis4. s16 cis\breve*5/16
  dis\breve*5/16 fis\breve*5/16 e\breve*5/16 dis\breve*7/16 s4 s4.
  b\breve*5/16 cis2 b4
}
tenorNotesAnt = \relative g {
  gis\breve*11/16 fis4. ais4 fis4. s16 gis\breve*5/16
  ais\breve*5/16 dis\breve*5/16 b\breve*5/16 ais\breve*7/16 gis4 fis4.
  gis\breve*5/16 e2 dis4
}
bassNotesAnt = \relative c {
  b\breve*11/16 s16 dis4.~ dis4~ dis4. e\breve*5/16
  fis\breve*5/16 dis\breve*5/16 e\breve*5/16 fis\breve*7/16 e4 b4.
  gis\breve*5/16~ gis2~ gis4
}
