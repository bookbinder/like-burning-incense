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
  I have ma -- ny more things to tell you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  but they would be too much for you now. When the Spi -- rit of truth comes
  he will guide you too all truth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis e e dis4 cis8[ e] cis dis4 dis  
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak cis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak a8[-- gis]
  \allowBreak gis4
  \allowBreak e8
  \allowBreak e[ gis]
  \allowBreak fis4
  \allowBreak r4 \bar "|"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak gis[ cis,]
  \allowBreak cis
  \allowBreak cis
  \allowBreak b[ cis dis]
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 b\breve*5/16~ s16 b2~ b\breve*7/16~
  b2~ b4 cis2~ cis\breve*5/16~ cis\breve*7/16 r4.
  b4.~ b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*9/16 fis\breve*5/16 s16 e2~ e\breve*7/16
  dis2~ dis4 e2 a\breve*5/16 gis\breve*7/16 fis4.~
  fis4.~ fis4~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*9/16 b\breve*5/16 s16 gis2 e\breve*7/16
  b'2~ b4 a2~ a\breve*5/16 e'\breve*7/16 dis4.
  b4. gis4 cis2
}
