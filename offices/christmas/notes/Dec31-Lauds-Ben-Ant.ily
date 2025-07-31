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
  Sud -- den -- ly there was with the an -- gel
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a great com -- pa -- ny of the heav -- en -- ly hosts, prais -- ing God and
  sing -- ing:
  Glo -- ry to God in the high -- est and peace to his peo -- ple on earth,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak e[ fis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak fis[ e cis]
  \allowBreak b
  \allowBreak cis4
  \allowBreak cis \bar ","
  \allowBreak cis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis \bar "'"
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis([ e] cis4) \bar "'"
  \allowBreak gis'8
  \allowBreak fis[ e]
  \allowBreak fis[ e cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*15/16 s16 b\breve*5/16~
  b\breve*5/16 cis4.~ cis b8~ b4 a4 gis\breve*8/16
  b\breve*5/16~ b2 cis4.~ cis\breve*5/16~ cis4 a4. gis4
}
tenorNotesAnt = \relative g {
  e\breve*15/16~ s16 e\breve*5/16
  dis\breve*5/16 e\breve*7/16~ e2~ e\breve*8/16
  dis\breve*5/16 e2~ e4. a\breve*5/16 gis4 fis4. e4
}
bassNotesAnt = \relative c {
  cis\breve*15/16 s16 e,\breve*5/16
  b'\breve*5/16 a\breve*7/16~ a2 cis\breve*8/16
  b\breve*5/16 e,2 a4.~ a\breve*5/16 cis4~ cis4.~ cis4
}
