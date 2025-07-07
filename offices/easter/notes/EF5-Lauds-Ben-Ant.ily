\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "11"
antKeysig = \key e \major
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
  In a lit -- tle while
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will no long -- er see me, says the Lord; then a lit -- tle
  while la -- ter, you will see me a -- gain, since I am go -- ing
  to the Fa -- ther, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 gis gis[ a] gis gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak gis4
  \allowBreak r4 \bar "|"
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4
  \allowBreak gis8[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak a
  \allowBreak b4
  \allowBreak b8
  \allowBreak a
  \allowBreak a4( gis) \bar ","
  \allowBreak e8
  \allowBreak fis4
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak a
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s16 s\breve*9/16 s2 s4
  cis\breve*11/16 e2~ e\breve*5/16 cis\breve*8/16~ cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
  b\breve*9/16 s16 cis\breve*9/16 b2~ b4
  a\breve*11/16 gis4 cis b\breve*5/16 a\breve*8/16~ a\breve*7/16~ a4 gis 
}
bassNotesAnt = \relative c {
  e\breve*9/16~ s16 e\breve*9/16~ e2~ e4
  a\breve*11/16 e2~ e\breve*5/16 a\breve*8/16 a,\breve*7/16 e'2
}
