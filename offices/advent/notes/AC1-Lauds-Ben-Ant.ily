\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "56"
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
  When John, in pri -- son, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  heard of the works of Christ, he sent
  two of his dis -- ci -- ples with this ques -- tion: Are you the One
  whose co -- ming was fore -- told, or should we look for a -- no -- ther?
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] cis cis[ b] b4
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak fis
  \allowBreak fis4( gis) \bar "'"
  \allowBreak gis8
  \allowBreak gis4
  \allowBreak gis8[ fis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak fis4
  \allowBreak e8[ dis cis]
  \allowBreak cis4 \bar ","
  \allowBreak e8
  \allowBreak fis8
  \allowBreak gis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis([ e] cis4 b) \bar "'"
  \allowBreak b8[ cis]
  \allowBreak e
  \allowBreak e
  \allowBreak dis([ e] fis4)
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*19/16 s16 dis'\breve*7/16 b4. cis4 gis4.~ gis4.
  b4~ b4.~ b2 a4 s2 b4~ b4~ b4 cis b gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2 s16 gis\breve*5/16 a4( b4.) gis\breve*7/16
  fis4.~ fis4 fis4. e4. dis4 e4.~ e2~ e4
  dis2. e4 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 dis2 s16 e\breve*5/16~ e4~ e4. b\breve*7/16~
  b4. a4 cis4.~ cis4. b4 e,4. gis2 a4 b2. gis4 b a gis cis2
}
