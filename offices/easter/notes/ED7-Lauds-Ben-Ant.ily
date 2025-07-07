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
  When the prince of pas -- tors comes a -- gain,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will re -- ceive from him an un -- fa -- ding crown of glo -- ry,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis8 fis4 e8 fis[ gis] fis gis fis e4
  \noBreak \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e4
  \allowBreak gis8
  \allowBreak a
  \allowBreak b[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a[ b]
  \allowBreak cis
  \allowBreak b
  \allowBreak a
  \allowBreak b[-- e,]
  \allowBreak e4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s\breve*8/16 s4 s16 e\breve*7/16 cis2 e\breve*5/16~ e\breve*5/16 cis4 b2
}
tenorNotesAnt = \relative g {
  gis4 a\breve*8/16 gis4 s16 e\breve*7/16~ e2 a\breve*5/16 gis\breve*5/16 a4~ a gis
}
bassNotesAnt = \relative c {
  e4~ e\breve*8/16~ e4 s16 gis,\breve*7/16 a2 cis\breve*5/16 e\breve*5/16~ e4~ e2
}
