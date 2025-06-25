\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "42"
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
  The an -- gel of the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  brought God's mes -- sage to Ma -- ry, and she con -- ceived
  by the pow -- er of the Ho -- ly Spi -- rit, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] cis cis b e([ fis] gis4)
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8[ a]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis([ b] gis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak cis,4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 e2~ s16 e4 e\breve*5/16 dis\breve*7/16
  e2. cis2. dis2. cis4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16~ gis2 s16 cis4 b\breve*5/16~ b\breve*7/16~
  b2. a2. fis2.~ fis4~ fis e
}
bassNotesAnt = \relative c {
  e\breve*7/16 cis2~ s16 cis4 e\breve*5/16 b\breve*7/16
  e2. fis2. b2. a4 cis2
}
